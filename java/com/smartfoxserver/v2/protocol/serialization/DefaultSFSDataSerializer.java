package com.smartfoxserver.v2.protocol.serialization;

import com.smartfoxserver.v2.entities.data.ISFSArray;
import com.smartfoxserver.v2.entities.data.ISFSObject;
import com.smartfoxserver.v2.entities.data.SFSArray;
import com.smartfoxserver.v2.entities.data.SFSDataType;
import com.smartfoxserver.v2.entities.data.SFSDataWrapper;
import com.smartfoxserver.v2.entities.data.SFSObject;
import com.smartfoxserver.v2.exceptions.SFSCodecException;
import com.smartfoxserver.v2.exceptions.SFSRuntimeException;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.PriorityQueue;
import java.util.TreeSet;
import java.util.Vector;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.DelayQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.requests.MessageRecipientMode;
import sfs2x.client.requests.game.InviteUsersRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

public class DefaultSFSDataSerializer implements ISFSDataSerializer {
    private static /* synthetic */ int[] $SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType = null;
    private static int BUFFER_CHUNK_SIZE = 512;
    private static final String CLASS_FIELDS_KEY = "$F";
    private static final String CLASS_MARKER_KEY = "$C";
    private static final String FIELD_NAME_KEY = "N";
    private static final String FIELD_VALUE_KEY = "V";
    private static DefaultSFSDataSerializer instance = new DefaultSFSDataSerializer();
    private final Logger logger = LoggerFactory.getLogger(getClass());

    static /* synthetic */ int[] $SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType() {
        int[] iArr = $SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType;
        if (iArr == null) {
            iArr = new int[SFSDataType.values().length];
            try {
                iArr[SFSDataType.BOOL.ordinal()] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[SFSDataType.BOOL_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[SFSDataType.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[SFSDataType.BYTE_ARRAY.ordinal()] = 11;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[SFSDataType.CLASS.ordinal()] = 20;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[SFSDataType.DOUBLE.ordinal()] = 8;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[SFSDataType.DOUBLE_ARRAY.ordinal()] = 16;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[SFSDataType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[SFSDataType.FLOAT_ARRAY.ordinal()] = 15;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[SFSDataType.INT.ordinal()] = 5;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[SFSDataType.INT_ARRAY.ordinal()] = 13;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[SFSDataType.LONG.ordinal()] = 6;
            } catch (NoSuchFieldError e12) {
            }
            try {
                iArr[SFSDataType.LONG_ARRAY.ordinal()] = 14;
            } catch (NoSuchFieldError e13) {
            }
            try {
                iArr[SFSDataType.NULL.ordinal()] = 1;
            } catch (NoSuchFieldError e14) {
            }
            try {
                iArr[SFSDataType.SFS_ARRAY.ordinal()] = 18;
            } catch (NoSuchFieldError e15) {
            }
            try {
                iArr[SFSDataType.SFS_OBJECT.ordinal()] = 19;
            } catch (NoSuchFieldError e16) {
            }
            try {
                iArr[SFSDataType.SHORT.ordinal()] = 4;
            } catch (NoSuchFieldError e17) {
            }
            try {
                iArr[SFSDataType.SHORT_ARRAY.ordinal()] = 12;
            } catch (NoSuchFieldError e18) {
            }
            try {
                iArr[SFSDataType.UTF_STRING.ordinal()] = 9;
            } catch (NoSuchFieldError e19) {
            }
            try {
                iArr[SFSDataType.UTF_STRING_ARRAY.ordinal()] = 17;
            } catch (NoSuchFieldError e20) {
            }
            $SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType = iArr;
        }
        return iArr;
    }

    public static DefaultSFSDataSerializer getInstance() {
        return instance;
    }

    private DefaultSFSDataSerializer() {
    }

    public int getUnsignedByte(byte b) {
        return b & 255;
    }

    public String array2json(List<Object> array) {
        return JSONArray.fromObject(array).toString();
    }

    public ISFSArray binary2array(byte[] data) {
        if (data.length < 3) {
            throw new IllegalStateException("Can't decode an SFSArray. Byte data is insufficient. Size: " + data.length + " bytes");
        }
        ByteBuffer buffer = ByteBuffer.allocate(data.length);
        buffer.put(data);
        buffer.flip();
        return decodeSFSArray(buffer);
    }

    private ISFSArray decodeSFSArray(ByteBuffer buffer) {
        ISFSArray sfsArray = SFSArray.newInstance();
        byte headerBuffer = buffer.get();
        if (headerBuffer != SFSDataType.SFS_ARRAY.getTypeID()) {
            throw new IllegalStateException("Invalid SFSDataType. Expected: " + SFSDataType.SFS_ARRAY.getTypeID() + ", found: " + headerBuffer);
        }
        short size = buffer.getShort();
        if (size < (short) 0) {
            throw new IllegalStateException("Can't decode SFSArray. Size is negative = " + size);
        }
        short i = (short) 0;
        while (i < size) {
            try {
                SFSDataWrapper decodedObject = decodeObject(buffer);
                if (decodedObject != null) {
                    sfsArray.add(decodedObject);
                    i++;
                } else {
                    throw new IllegalStateException("Could not decode SFSArray item at index: " + i);
                }
            } catch (SFSCodecException codecError) {
                throw new IllegalArgumentException(codecError.getMessage());
            }
        }
        return sfsArray;
    }

    public ISFSObject binary2object(byte[] data) {
        if (data.length < 3) {
            throw new IllegalStateException("Can't decode an SFSObject. Byte data is insufficient. Size: " + data.length + " bytes");
        }
        ByteBuffer buffer = ByteBuffer.allocate(data.length);
        buffer.put(data);
        buffer.flip();
        return decodeSFSObject(buffer);
    }

    private ISFSObject decodeSFSObject(ByteBuffer buffer) {
        ISFSObject sfsObject = SFSObject.newInstance();
        byte headerBuffer = buffer.get();
        if (headerBuffer != SFSDataType.SFS_OBJECT.getTypeID()) {
            throw new IllegalStateException("Invalid SFSDataType. Expected: " + SFSDataType.SFS_OBJECT.getTypeID() + ", found: " + headerBuffer);
        }
        short size = buffer.getShort();
        if (size < (short) 0) {
            throw new IllegalStateException("Can't decode SFSObject. Size is negative = " + size);
        }
        short i = (short) 0;
        while (i < size) {
            short keySize = buffer.getShort();
            if (keySize < (short) 0 || keySize > (short) 255) {
                throw new IllegalStateException("Invalid SFSObject key length. Found = " + keySize);
            }
            try {
                byte[] keyData = new byte[keySize];
                buffer.get(keyData, 0, keyData.length);
                String key = new String(keyData);
                SFSDataWrapper decodedObject = decodeObject(buffer);
                if (decodedObject != null) {
                    sfsObject.put(key, decodedObject);
                    i++;
                } else {
                    throw new IllegalStateException("Could not decode value for key: " + keyData);
                }
            } catch (SFSCodecException codecError) {
                throw new IllegalArgumentException(codecError.getMessage());
            }
        }
        return sfsObject;
    }

    public ISFSArray json2array(String jsonStr) {
        if (jsonStr.length() >= 2) {
            return decodeSFSArray(JSONArray.fromObject(jsonStr));
        }
        throw new IllegalStateException("Can't decode SFSObject. JSON String is too short. Len: " + jsonStr.length());
    }

    private ISFSArray decodeSFSArray(JSONArray jsa) {
        ISFSArray sfsArray = SFSArray.newInstance();
        Iterator<Object> iter = jsa.iterator();
        while (iter.hasNext()) {
            Object value = iter.next();
            SFSDataWrapper decodedObject = decodeJsonObject(value);
            if (decodedObject != null) {
                sfsArray.add(decodedObject);
            } else {
                throw new IllegalStateException("(json2sfarray) Could not decode value for object: " + value);
            }
        }
        return sfsArray;
    }

    public ISFSObject json2object(String jsonStr) {
        if (jsonStr.length() >= 2) {
            return decodeSFSObject(JSONObject.fromObject(jsonStr));
        }
        throw new IllegalStateException("Can't decode SFSObject. JSON String is too short. Len: " + jsonStr.length());
    }

    private ISFSObject decodeSFSObject(JSONObject jso) {
        ISFSObject sfsObject = SFSObject.newInstance();
        for (Object key : jso.keySet()) {
            SFSDataWrapper decodedObject = decodeJsonObject(jso.get(key));
            if (decodedObject != null) {
                sfsObject.put((String) key, decodedObject);
            } else {
                throw new IllegalStateException("(json2sfsobj) Could not decode value for key: " + key);
            }
        }
        return sfsObject;
    }

    private SFSDataWrapper decodeJsonObject(Object o) {
        if (o instanceof Integer) {
            return new SFSDataWrapper(SFSDataType.INT, o);
        }
        if (o instanceof Long) {
            return new SFSDataWrapper(SFSDataType.LONG, o);
        }
        if (o instanceof Double) {
            return new SFSDataWrapper(SFSDataType.DOUBLE, o);
        }
        if (o instanceof Boolean) {
            return new SFSDataWrapper(SFSDataType.BOOL, o);
        }
        if (o instanceof String) {
            return new SFSDataWrapper(SFSDataType.UTF_STRING, o);
        }
        if (o instanceof JSONObject) {
            JSONObject jso = (JSONObject) o;
            if (jso.isNullObject()) {
                return new SFSDataWrapper(SFSDataType.NULL, o);
            }
            return new SFSDataWrapper(SFSDataType.SFS_OBJECT, decodeSFSObject(jso));
        } else if (o instanceof JSONArray) {
            return new SFSDataWrapper(SFSDataType.SFS_ARRAY, decodeSFSArray((JSONArray) o));
        } else {
            String str = "Unrecognized DataType while converting JSONObject 2 SFSObject. Object: %s, Type: %s";
            Object[] objArr = new Object[2];
            objArr[0] = o;
            objArr[1] = o == null ? "null" : o.getClass();
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public SFSObject resultSet2object(ResultSet rset) throws SQLException {
        ResultSetMetaData metaData = rset.getMetaData();
        SFSObject sfso = new SFSObject();
        if (rset.isBeforeFirst()) {
            rset.next();
        }
        for (int col = 1; col <= metaData.getColumnCount(); col++) {
            String colName = metaData.getColumnName(col);
            int type = metaData.getColumnType(col);
            if (rset.getObject(col) != null) {
                if (type == 0) {
                    sfso.putNull(colName);
                } else if (type == 16) {
                    sfso.putBool(colName, rset.getBoolean(col));
                } else if (type == 91) {
                    sfso.putLong(colName, rset.getDate(col).getTime());
                } else if (type == 6 || type == 3 || type == 8 || type == 7) {
                    sfso.putDouble(colName, rset.getDouble(col));
                } else if (type == 4 || type == -6 || type == 5) {
                    sfso.putInt(colName, rset.getInt(col));
                } else if (type == -1 || type == 12 || type == 1) {
                    sfso.putUtfString(colName, rset.getString(col));
                } else if (type == -9 || type == -16 || type == -15) {
                    sfso.putUtfString(colName, rset.getNString(col));
                } else if (type == 93) {
                    sfso.putLong(colName, rset.getTimestamp(col).getTime());
                } else if (type == -5) {
                    sfso.putLong(colName, rset.getLong(col));
                } else if (type == -4) {
                    byte[] binData = getBlobData(colName, rset.getBinaryStream(col));
                    if (binData != null) {
                        sfso.putByteArray(colName, binData);
                    }
                } else if (type == 2004) {
                    Blob blob = rset.getBlob(col);
                    sfso.putByteArray(colName, blob.getBytes(0, (int) blob.length()));
                } else {
                    this.logger.info("Skipping Unsupported SQL TYPE: " + type + ", Column:" + colName);
                }
            }
        }
        return sfso;
    }

    private byte[] getBlobData(String colName, InputStream stream) {
        BufferedInputStream bis = new BufferedInputStream(stream);
        byte[] bytes = null;
        try {
            bytes = new byte[bis.available()];
            bis.read(bytes);
        } catch (IOException e) {
            this.logger.warn("SFSObject serialize error. Failed reading BLOB data for column: " + colName);
        } finally {
            IOUtils.closeQuietly(bis);
        }
        return bytes;
    }

    public SFSArray resultSet2array(ResultSet rset) throws SQLException {
        SFSArray sfsa = new SFSArray();
        while (rset.next()) {
            sfsa.addSFSObject(resultSet2object(rset));
        }
        return sfsa;
    }

    public byte[] object2binary(ISFSObject object) {
        ByteBuffer buffer = ByteBuffer.allocate(BUFFER_CHUNK_SIZE);
        buffer.put((byte) SFSDataType.SFS_OBJECT.getTypeID());
        buffer.putShort((short) object.size());
        return obj2bin(object, buffer);
    }

    private byte[] obj2bin(ISFSObject object, ByteBuffer buffer) {
        for (String key : object.getKeys()) {
            SFSDataWrapper wrapper = object.get(key);
            buffer = encodeObject(encodeSFSObjectKey(buffer, key), wrapper.getTypeId(), wrapper.getObject());
        }
        int pos = buffer.position();
        byte[] result = new byte[pos];
        buffer.flip();
        buffer.get(result, 0, pos);
        return result;
    }

    public byte[] array2binary(ISFSArray array) {
        ByteBuffer buffer = ByteBuffer.allocate(BUFFER_CHUNK_SIZE);
        buffer.put((byte) SFSDataType.SFS_ARRAY.getTypeID());
        buffer.putShort((short) array.size());
        return arr2bin(array, buffer);
    }

    private byte[] arr2bin(ISFSArray array, ByteBuffer buffer) {
        for (SFSDataWrapper wrapper : array) {
            buffer = encodeObject(buffer, wrapper.getTypeId(), wrapper.getObject());
        }
        int pos = buffer.position();
        byte[] result = new byte[pos];
        buffer.flip();
        buffer.get(result, 0, pos);
        return result;
    }

    public String object2json(Map<String, Object> map) {
        return JSONObject.fromObject(map).toString();
    }

    public void flattenObject(Map<String, Object> map, SFSObject sfsObj) {
        Iterator<Entry<String, SFSDataWrapper>> it = sfsObj.iterator();
        while (it.hasNext()) {
            Entry<String, SFSDataWrapper> entry = (Entry) it.next();
            String key = (String) entry.getKey();
            SFSDataWrapper value = (SFSDataWrapper) entry.getValue();
            if (value.getTypeId() == SFSDataType.SFS_OBJECT) {
                Map<String, Object> newMap = new HashMap();
                map.put(key, newMap);
                flattenObject(newMap, (SFSObject) value.getObject());
            } else if (value.getTypeId() == SFSDataType.SFS_ARRAY) {
                List<Object> newList = new ArrayList();
                map.put(key, newList);
                flattenArray(newList, (SFSArray) value.getObject());
            } else {
                map.put(key, value.getObject());
            }
        }
    }

    public void flattenArray(List<Object> array, SFSArray sfsArray) {
        Iterator<SFSDataWrapper> it = sfsArray.iterator();
        while (it.hasNext()) {
            SFSDataWrapper value = (SFSDataWrapper) it.next();
            if (value.getTypeId() == SFSDataType.SFS_OBJECT) {
                Map<String, Object> newMap = new HashMap();
                array.add(newMap);
                flattenObject(newMap, (SFSObject) value.getObject());
            } else if (value.getTypeId() == SFSDataType.SFS_ARRAY) {
                List<Object> newList = new ArrayList();
                array.add(newList);
                flattenArray(newList, (SFSArray) value.getObject());
            } else {
                array.add(value.getObject());
            }
        }
    }

    private SFSDataWrapper decodeObject(ByteBuffer buffer) throws SFSCodecException {
        byte headerByte = buffer.get();
        if (headerByte == SFSDataType.NULL.getTypeID()) {
            return binDecode_NULL(buffer);
        }
        if (headerByte == SFSDataType.BOOL.getTypeID()) {
            return binDecode_BOOL(buffer);
        }
        if (headerByte == SFSDataType.BOOL_ARRAY.getTypeID()) {
            return binDecode_BOOL_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.BYTE.getTypeID()) {
            return binDecode_BYTE(buffer);
        }
        if (headerByte == SFSDataType.BYTE_ARRAY.getTypeID()) {
            return binDecode_BYTE_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.SHORT.getTypeID()) {
            return binDecode_SHORT(buffer);
        }
        if (headerByte == SFSDataType.SHORT_ARRAY.getTypeID()) {
            return binDecode_SHORT_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.INT.getTypeID()) {
            return binDecode_INT(buffer);
        }
        if (headerByte == SFSDataType.INT_ARRAY.getTypeID()) {
            return binDecode_INT_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.LONG.getTypeID()) {
            return binDecode_LONG(buffer);
        }
        if (headerByte == SFSDataType.LONG_ARRAY.getTypeID()) {
            return binDecode_LONG_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.FLOAT.getTypeID()) {
            return binDecode_FLOAT(buffer);
        }
        if (headerByte == SFSDataType.FLOAT_ARRAY.getTypeID()) {
            return binDecode_FLOAT_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.DOUBLE.getTypeID()) {
            return binDecode_DOUBLE(buffer);
        }
        if (headerByte == SFSDataType.DOUBLE_ARRAY.getTypeID()) {
            return binDecode_DOUBLE_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.UTF_STRING.getTypeID()) {
            return binDecode_UTF_STRING(buffer);
        }
        if (headerByte == SFSDataType.UTF_STRING_ARRAY.getTypeID()) {
            return binDecode_UTF_STRING_ARRAY(buffer);
        }
        if (headerByte == SFSDataType.SFS_ARRAY.getTypeID()) {
            buffer.position(buffer.position() - 1);
            return new SFSDataWrapper(SFSDataType.SFS_ARRAY, decodeSFSArray(buffer));
        } else if (headerByte == SFSDataType.SFS_OBJECT.getTypeID()) {
            buffer.position(buffer.position() - 1);
            ISFSObject sfsObj = decodeSFSObject(buffer);
            SFSDataType type = SFSDataType.SFS_OBJECT;
            Object finalSfsObj = sfsObj;
            if (sfsObj.containsKey(CLASS_MARKER_KEY) && sfsObj.containsKey(CLASS_FIELDS_KEY)) {
                type = SFSDataType.CLASS;
                finalSfsObj = sfs2pojo(sfsObj);
            }
            return new SFSDataWrapper(type, finalSfsObj);
        } else {
            throw new SFSCodecException("Unknow SFSDataType ID: " + headerByte);
        }
    }

    private ByteBuffer encodeObject(ByteBuffer buffer, SFSDataType typeId, Object object) {
        switch ($SWITCH_TABLE$com$smartfoxserver$v2$entities$data$SFSDataType()[typeId.ordinal()]) {
            case BuddyOnlineState.OFFLINE /*1*/:
                return binEncode_NULL(buffer);
            case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                return binEncode_BOOL(buffer, (Boolean) object);
            case MessageRecipientMode.TO_ZONE /*3*/:
                return binEncode_BYTE(buffer, (Byte) object);
            case Base64.DONT_GUNZIP /*4*/:
                return binEncode_SHORT(buffer, (Short) object);
            case InviteUsersRequest.MIN_EXPIRY_TIME /*5*/:
                return binEncode_INT(buffer, (Integer) object);
            case BaseRequest.CreateRoom /*6*/:
                return binEncode_LONG(buffer, (Long) object);
            case BaseRequest.GenericMessage /*7*/:
                return binEncode_FLOAT(buffer, (Float) object);
            case Base64.DO_BREAK_LINES /*8*/:
                return binEncode_DOUBLE(buffer, (Double) object);
            case BaseRequest.ChangeRoomPassword /*9*/:
                return binEncode_UTF_STRING(buffer, (String) object);
            case BaseRequest.ObjectMessage /*10*/:
                return binEncode_BOOL_ARRAY(buffer, (Collection) object);
            case BaseRequest.SetRoomVariables /*11*/:
                return binEncode_BYTE_ARRAY(buffer, (byte[]) object);
            case BaseRequest.SetUserVariables /*12*/:
                return binEncode_SHORT_ARRAY(buffer, (Collection) object);
            case BaseRequest.CallExtension /*13*/:
                return binEncode_INT_ARRAY(buffer, (Collection) object);
            case BaseRequest.LeaveRoom /*14*/:
                return binEncode_LONG_ARRAY(buffer, (Collection) object);
            case BaseRequest.SubscribeRoomGroup /*15*/:
                return binEncode_FLOAT_ARRAY(buffer, (Collection) object);
            case Base64.URL_SAFE /*16*/:
                return binEncode_DOUBLE_ARRAY(buffer, (Collection) object);
            case BaseRequest.SpectatorToPlayer /*17*/:
                return binEncode_UTF_STRING_ARRAY(buffer, (Collection) object);
            case BaseRequest.PlayerToSpectator /*18*/:
                return addData(buffer, array2binary((SFSArray) object));
            case BaseRequest.ChangeRoomCapacity /*19*/:
                return addData(buffer, object2binary((SFSObject) object));
            case BaseRequest.PublicMessage /*20*/:
                return addData(buffer, object2binary(pojo2sfs(object)));
            default:
                throw new IllegalArgumentException("Unrecognized type in SFSObject serialization: " + typeId);
        }
    }

    private SFSDataWrapper binDecode_NULL(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.NULL, null);
    }

    private SFSDataWrapper binDecode_BOOL(ByteBuffer buffer) throws SFSCodecException {
        Boolean bool;
        byte boolByte = buffer.get();
        if (boolByte == (byte) 0) {
            bool = new Boolean(false);
        } else if (boolByte == (byte) 1) {
            bool = new Boolean(true);
        } else {
            throw new SFSCodecException("Error decoding Bool type. Illegal value: " + null);
        }
        return new SFSDataWrapper(SFSDataType.BOOL, bool);
    }

    private SFSDataWrapper binDecode_BYTE(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.BYTE, Byte.valueOf(buffer.get()));
    }

    private SFSDataWrapper binDecode_SHORT(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.SHORT, Short.valueOf(buffer.getShort()));
    }

    private SFSDataWrapper binDecode_INT(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.INT, Integer.valueOf(buffer.getInt()));
    }

    private SFSDataWrapper binDecode_LONG(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.LONG, Long.valueOf(buffer.getLong()));
    }

    private SFSDataWrapper binDecode_FLOAT(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.FLOAT, Float.valueOf(buffer.getFloat()));
    }

    private SFSDataWrapper binDecode_DOUBLE(ByteBuffer buffer) {
        return new SFSDataWrapper(SFSDataType.DOUBLE, Double.valueOf(buffer.getDouble()));
    }

    private SFSDataWrapper binDecode_UTF_STRING(ByteBuffer buffer) throws SFSCodecException {
        short strLen = buffer.getShort();
        if (strLen < (short) 0) {
            throw new SFSCodecException("Error decoding UtfString. Negative size: " + strLen);
        }
        byte[] strData = new byte[strLen];
        buffer.get(strData, 0, strLen);
        return new SFSDataWrapper(SFSDataType.UTF_STRING, new String(strData));
    }

    private SFSDataWrapper binDecode_BOOL_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<Boolean> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            byte boolData = buffer.get();
            if (boolData == (byte) 0) {
                array.add(Boolean.valueOf(false));
            } else if (boolData == (byte) 1) {
                array.add(Boolean.valueOf(true));
            } else {
                throw new SFSCodecException("Error decoding BoolArray. Invalid bool value: " + boolData);
            }
        }
        return new SFSDataWrapper(SFSDataType.BOOL_ARRAY, array);
    }

    private SFSDataWrapper binDecode_BYTE_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        int arraySize = buffer.getInt();
        if (arraySize < 0) {
            throw new SFSCodecException("Error decoding typed array size. Negative size: " + arraySize);
        }
        byte[] byteData = new byte[arraySize];
        buffer.get(byteData, 0, arraySize);
        return new SFSDataWrapper(SFSDataType.BYTE_ARRAY, byteData);
    }

    private SFSDataWrapper binDecode_SHORT_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<Short> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            array.add(Short.valueOf(buffer.getShort()));
        }
        return new SFSDataWrapper(SFSDataType.SHORT_ARRAY, array);
    }

    private SFSDataWrapper binDecode_INT_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<Integer> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            array.add(Integer.valueOf(buffer.getInt()));
        }
        return new SFSDataWrapper(SFSDataType.INT_ARRAY, array);
    }

    private SFSDataWrapper binDecode_LONG_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<Long> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            array.add(Long.valueOf(buffer.getLong()));
        }
        return new SFSDataWrapper(SFSDataType.LONG_ARRAY, array);
    }

    private SFSDataWrapper binDecode_FLOAT_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<Float> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            array.add(Float.valueOf(buffer.getFloat()));
        }
        return new SFSDataWrapper(SFSDataType.FLOAT_ARRAY, array);
    }

    private SFSDataWrapper binDecode_DOUBLE_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<Double> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            array.add(Double.valueOf(buffer.getDouble()));
        }
        return new SFSDataWrapper(SFSDataType.DOUBLE_ARRAY, array);
    }

    private SFSDataWrapper binDecode_UTF_STRING_ARRAY(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = getTypeArraySize(buffer);
        List<String> array = new ArrayList();
        for (short j = (short) 0; j < arraySize; j++) {
            short strLen = buffer.getShort();
            if (strLen < (short) 0) {
                throw new SFSCodecException("Error decoding UtfStringArray element. Element has negative size: " + strLen);
            }
            byte[] strData = new byte[strLen];
            buffer.get(strData, 0, strLen);
            array.add(new String(strData));
        }
        return new SFSDataWrapper(SFSDataType.UTF_STRING_ARRAY, array);
    }

    private short getTypeArraySize(ByteBuffer buffer) throws SFSCodecException {
        short arraySize = buffer.getShort();
        if (arraySize >= (short) 0) {
            return arraySize;
        }
        throw new SFSCodecException("Error decoding typed array size. Negative size: " + arraySize);
    }

    private ByteBuffer binEncode_NULL(ByteBuffer buffer) {
        return addData(buffer, new byte[1]);
    }

    private ByteBuffer binEncode_BOOL(ByteBuffer buffer, Boolean value) {
        byte b = (byte) 0;
        byte[] data = new byte[2];
        data[0] = (byte) SFSDataType.BOOL.getTypeID();
        if (value.booleanValue()) {
            b = (byte) 1;
        }
        data[1] = b;
        return addData(buffer, data);
    }

    private ByteBuffer binEncode_BYTE(ByteBuffer buffer, Byte value) {
        return addData(buffer, new byte[]{(byte) SFSDataType.BYTE.getTypeID(), value.byteValue()});
    }

    private ByteBuffer binEncode_SHORT(ByteBuffer buffer, Short value) {
        ByteBuffer buf = ByteBuffer.allocate(3);
        buf.put((byte) SFSDataType.SHORT.getTypeID());
        buf.putShort(value.shortValue());
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_INT(ByteBuffer buffer, Integer value) {
        ByteBuffer buf = ByteBuffer.allocate(5);
        buf.put((byte) SFSDataType.INT.getTypeID());
        buf.putInt(value.intValue());
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_LONG(ByteBuffer buffer, Long value) {
        ByteBuffer buf = ByteBuffer.allocate(9);
        buf.put((byte) SFSDataType.LONG.getTypeID());
        buf.putLong(value.longValue());
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_FLOAT(ByteBuffer buffer, Float value) {
        ByteBuffer buf = ByteBuffer.allocate(5);
        buf.put((byte) SFSDataType.FLOAT.getTypeID());
        buf.putFloat(value.floatValue());
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_DOUBLE(ByteBuffer buffer, Double value) {
        ByteBuffer buf = ByteBuffer.allocate(9);
        buf.put((byte) SFSDataType.DOUBLE.getTypeID());
        buf.putDouble(value.doubleValue());
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_UTF_STRING(ByteBuffer buffer, String value) {
        byte[] stringBytes = value.getBytes();
        ByteBuffer buf = ByteBuffer.allocate(stringBytes.length + 3);
        buf.put((byte) SFSDataType.UTF_STRING.getTypeID());
        buf.putShort((short) stringBytes.length);
        buf.put(stringBytes);
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_BOOL_ARRAY(ByteBuffer buffer, Collection<Boolean> value) {
        ByteBuffer buf = ByteBuffer.allocate(value.size() + 3);
        buf.put((byte) SFSDataType.BOOL_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (Boolean booleanValue : value) {
            buf.put(booleanValue.booleanValue() ? (byte) 1 : (byte) 0);
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_BYTE_ARRAY(ByteBuffer buffer, byte[] value) {
        ByteBuffer buf = ByteBuffer.allocate(value.length + 5);
        buf.put((byte) SFSDataType.BYTE_ARRAY.getTypeID());
        buf.putInt(value.length);
        buf.put(value);
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_SHORT_ARRAY(ByteBuffer buffer, Collection<Short> value) {
        ByteBuffer buf = ByteBuffer.allocate((value.size() * 2) + 3);
        buf.put((byte) SFSDataType.SHORT_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (Short shortValue : value) {
            buf.putShort(shortValue.shortValue());
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_INT_ARRAY(ByteBuffer buffer, Collection<Integer> value) {
        ByteBuffer buf = ByteBuffer.allocate((value.size() * 4) + 3);
        buf.put((byte) SFSDataType.INT_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (Integer intValue : value) {
            buf.putInt(intValue.intValue());
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_LONG_ARRAY(ByteBuffer buffer, Collection<Long> value) {
        ByteBuffer buf = ByteBuffer.allocate((value.size() * 8) + 3);
        buf.put((byte) SFSDataType.LONG_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (Long longValue : value) {
            buf.putLong(longValue.longValue());
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_FLOAT_ARRAY(ByteBuffer buffer, Collection<Float> value) {
        ByteBuffer buf = ByteBuffer.allocate((value.size() * 4) + 3);
        buf.put((byte) SFSDataType.FLOAT_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (Float floatValue : value) {
            buf.putFloat(floatValue.floatValue());
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_DOUBLE_ARRAY(ByteBuffer buffer, Collection<Double> value) {
        ByteBuffer buf = ByteBuffer.allocate((value.size() * 8) + 3);
        buf.put((byte) SFSDataType.DOUBLE_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (Double doubleValue : value) {
            buf.putDouble(doubleValue.doubleValue());
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer binEncode_UTF_STRING_ARRAY(ByteBuffer buffer, Collection<String> value) {
        int stringDataLen = 0;
        byte[][] binStrings = new byte[value.size()][];
        int count = 0;
        for (String item : value) {
            byte[] binStr = item.getBytes();
            int count2 = count + 1;
            binStrings[count] = binStr;
            stringDataLen += binStr.length + 2;
            count = count2;
        }
        ByteBuffer buf = ByteBuffer.allocate(stringDataLen + 3);
        buf.put((byte) SFSDataType.UTF_STRING_ARRAY.getTypeID());
        buf.putShort((short) value.size());
        for (byte[] binItem : binStrings) {
            buf.putShort((short) binItem.length);
            buf.put(binItem);
        }
        return addData(buffer, buf.array());
    }

    private ByteBuffer encodeSFSObjectKey(ByteBuffer buffer, String value) {
        ByteBuffer buf = ByteBuffer.allocate(value.length() + 2);
        buf.putShort((short) value.length());
        buf.put(value.getBytes());
        return addData(buffer, buf.array());
    }

    private ByteBuffer addData(ByteBuffer buffer, byte[] newData) {
        if (buffer.remaining() < newData.length) {
            int newSize = BUFFER_CHUNK_SIZE;
            if (newSize < newData.length) {
                newSize = newData.length;
            }
            ByteBuffer newBuffer = ByteBuffer.allocate(buffer.capacity() + newSize);
            buffer.flip();
            newBuffer.put(buffer);
            buffer = newBuffer;
        }
        buffer.put(newData);
        return buffer;
    }

    public ISFSObject pojo2sfs(Object pojo) {
        ISFSObject sfsObj = SFSObject.newInstance();
        try {
            convertPojo(pojo, sfsObj);
            return sfsObj;
        } catch (Throwable e) {
            throw new SFSRuntimeException(e);
        }
    }

    private void convertPojo(Object pojo, ISFSObject sfsObj) throws Exception {
        Class<?> pojoClazz = pojo.getClass();
        String classFullName = pojoClazz.getCanonicalName();
        if (classFullName == null) {
            throw new IllegalArgumentException("Anonymous classes cannot be serialized!");
        } else if (pojo instanceof SerializableSFSType) {
            ISFSArray fieldList = SFSArray.newInstance();
            sfsObj.putUtfString(CLASS_MARKER_KEY, classFullName);
            sfsObj.putSFSArray(CLASS_FIELDS_KEY, fieldList);
            for (Field field : pojoClazz.getDeclaredFields()) {
                try {
                    int modifiers = field.getModifiers();
                    if (!(Modifier.isTransient(modifiers) || Modifier.isStatic(modifiers))) {
                        Object fieldValue;
                        String fieldName = field.getName();
                        if (Modifier.isPublic(modifiers)) {
                            fieldValue = field.get(pojo);
                        } else {
                            fieldValue = readValueFromGetter(fieldName, field.getType().getSimpleName(), pojo);
                        }
                        ISFSObject fieldDescriptor = SFSObject.newInstance();
                        fieldDescriptor.putUtfString(FIELD_NAME_KEY, fieldName);
                        fieldDescriptor.put(FIELD_VALUE_KEY, wrapPojoField(fieldValue));
                        fieldList.addSFSObject(fieldDescriptor);
                    }
                } catch (NoSuchMethodException err) {
                    this.logger.info("-- No public getter -- Serializer skipping private field: " + field.getName() + ", from class: " + pojoClazz);
                    err.printStackTrace();
                }
            }
        } else {
            throw new IllegalStateException("Cannot serialize object: " + pojo + ", type: " + classFullName + " -- It doesn't implement the SerializableSFSType interface");
        }
    }

    private Object readValueFromGetter(String fieldName, String type, Object pojo) throws Exception {
        return pojo.getClass().getMethod(type.equalsIgnoreCase("boolean") ? "is" + StringUtils.capitalize(fieldName) : "get" + StringUtils.capitalize(fieldName), new Class[0]).invoke(pojo, new Object[0]);
    }

    private SFSDataWrapper wrapPojoField(Object value) {
        if (value == null) {
            return new SFSDataWrapper(SFSDataType.NULL, null);
        }
        if (value instanceof Boolean) {
            return new SFSDataWrapper(SFSDataType.BOOL, value);
        }
        if (value instanceof Byte) {
            return new SFSDataWrapper(SFSDataType.BYTE, value);
        }
        if (value instanceof Short) {
            return new SFSDataWrapper(SFSDataType.SHORT, value);
        }
        if (value instanceof Integer) {
            return new SFSDataWrapper(SFSDataType.INT, value);
        }
        if (value instanceof Long) {
            return new SFSDataWrapper(SFSDataType.LONG, value);
        }
        if (value instanceof Float) {
            return new SFSDataWrapper(SFSDataType.FLOAT, value);
        }
        if (value instanceof Double) {
            return new SFSDataWrapper(SFSDataType.DOUBLE, value);
        }
        if (value instanceof String) {
            return new SFSDataWrapper(SFSDataType.UTF_STRING, value);
        }
        if (value.getClass().isArray()) {
            return new SFSDataWrapper(SFSDataType.SFS_ARRAY, unrollArray((Object[]) value));
        }
        if (value instanceof Collection) {
            return new SFSDataWrapper(SFSDataType.SFS_ARRAY, unrollCollection((Collection) value));
        }
        if (value instanceof Map) {
            return new SFSDataWrapper(SFSDataType.SFS_OBJECT, unrollMap((Map) value));
        }
        if (value instanceof SerializableSFSType) {
            return new SFSDataWrapper(SFSDataType.SFS_OBJECT, pojo2sfs(value));
        }
        return null;
    }

    private ISFSArray unrollArray(Object[] arr) {
        ISFSArray array = SFSArray.newInstance();
        for (Object item : arr) {
            array.add(wrapPojoField(item));
        }
        return array;
    }

    private ISFSArray unrollCollection(Collection collection) {
        ISFSArray array = SFSArray.newInstance();
        for (Object item : collection) {
            array.add(wrapPojoField(item));
        }
        return array;
    }

    private ISFSObject unrollMap(Map map) {
        ISFSObject sfsObj = SFSObject.newInstance();
        for (Entry item : map.entrySet()) {
            Object key = item.getKey();
            if (key instanceof String) {
                sfsObj.put((String) key, wrapPojoField(item.getValue()));
            }
        }
        return sfsObj;
    }

    public Object sfs2pojo(ISFSObject sfsObj) {
        if (sfsObj.containsKey(CLASS_MARKER_KEY) || sfsObj.containsKey(CLASS_FIELDS_KEY)) {
            try {
                String className = sfsObj.getUtfString(CLASS_MARKER_KEY);
                Object pojo = Class.forName(className).newInstance();
                if (pojo instanceof SerializableSFSType) {
                    convertSFSObject(sfsObj.getSFSArray(CLASS_FIELDS_KEY), pojo);
                    return pojo;
                }
                throw new IllegalStateException("Cannot deserialize object: " + pojo + ", type: " + className + " -- It doesn't implement the SerializableSFSType interface");
            } catch (Throwable e) {
                throw new SFSRuntimeException(e);
            }
        }
        throw new SFSRuntimeException("The SFSObject passed does not represent any serialized class.");
    }

    private void convertSFSObject(ISFSArray fieldList, Object pojo) throws Exception {
        for (int j = 0; j < fieldList.size(); j++) {
            ISFSObject fieldDescriptor = fieldList.getSFSObject(j);
            setObjectField(pojo, fieldDescriptor.getUtfString(FIELD_NAME_KEY), unwrapPojoField(fieldDescriptor.get(FIELD_VALUE_KEY)));
        }
    }

    private void setObjectField(Object pojo, String fieldName, Object fieldValue) throws Exception {
        Field field = pojo.getClass().getDeclaredField(fieldName);
        int fieldModifier = field.getModifiers();
        if (!Modifier.isTransient(fieldModifier)) {
            LinkedBlockingDeque fieldValue2;
            Collection collection;
            if (field.getType().isArray()) {
                if (fieldValue instanceof Collection) {
                    collection = (Collection) fieldValue;
                    Object[] fieldValue3 = collection.toArray();
                    int arraySize = collection.size();
                    LinkedBlockingDeque typedArray = Array.newInstance(field.getType().getComponentType(), arraySize);
                    System.arraycopy(fieldValue3, 0, typedArray, 0, arraySize);
                    fieldValue2 = typedArray;
                } else {
                    throw new SFSRuntimeException("Problem during SFSObject => POJO conversion. Found array field in POJO: " + fieldName + ", but data is not a Collection!");
                }
            } else if (fieldValue instanceof Collection) {
                collection = (Collection) fieldValue;
                String fieldClass = field.getType().getSimpleName();
                if (fieldClass.equals("ArrayList") || fieldClass.equals("List")) {
                    fieldValue2 = new ArrayList(collection);
                }
                if (fieldClass.equals("CopyOnWriteArrayList")) {
                    fieldValue2 = new CopyOnWriteArrayList(collection);
                } else if (fieldClass.equals("LinkedList")) {
                    fieldValue2 = new LinkedList(collection);
                } else if (fieldClass.equals("Vector")) {
                    fieldValue2 = new Vector(collection);
                } else if (fieldClass.equals("Set") || fieldClass.equals("HashSet")) {
                    fieldValue2 = new HashSet(collection);
                } else if (fieldClass.equals("LinkedHashSet")) {
                    fieldValue2 = new LinkedHashSet(collection);
                } else if (fieldClass.equals("TreeSet")) {
                    fieldValue2 = new TreeSet(collection);
                } else if (fieldClass.equals("CopyOnWriteArraySet")) {
                    fieldValue2 = new CopyOnWriteArraySet(collection);
                } else if (fieldClass.equals("Queue") || fieldClass.equals("PriorityQueue")) {
                    fieldValue2 = new PriorityQueue(collection);
                } else if (fieldClass.equals("BlockingQueue") || fieldClass.equals("LinkedBlockingQueue")) {
                    fieldValue2 = new LinkedBlockingQueue(collection);
                } else if (fieldClass.equals("PriorityBlockingQueue")) {
                    fieldValue2 = new PriorityBlockingQueue(collection);
                } else if (fieldClass.equals("ConcurrentLinkedQueue")) {
                    fieldValue2 = new ConcurrentLinkedQueue(collection);
                } else if (fieldClass.equals("DelayQueue")) {
                    fieldValue2 = new DelayQueue(collection);
                } else if (fieldClass.equals("Deque") || fieldClass.equals("ArrayDeque")) {
                    fieldValue2 = new ArrayDeque(collection);
                } else if (fieldClass.equals("LinkedBlockingDeque")) {
                    fieldValue2 = new LinkedBlockingDeque(collection);
                }
            }
            if (Modifier.isPublic(fieldModifier)) {
                field.set(pojo, fieldValue2);
            } else {
                writeValueFromSetter(field, pojo, fieldValue2);
            }
        }
    }

    private void writeValueFromSetter(Field field, Object pojo, Object fieldValue) throws Exception {
        String setterName = "set" + StringUtils.capitalize(field.getName());
        try {
            pojo.getClass().getMethod(setterName, new Class[]{field.getType()}).invoke(pojo, new Object[]{fieldValue});
        } catch (NoSuchMethodException e) {
            this.logger.info("-- No public setter -- Serializer skipping private field: " + field.getName() + ", from class: " + pojo.getClass().getName());
        }
    }

    private Object unwrapPojoField(SFSDataWrapper wrapper) {
        SFSDataType type = wrapper.getTypeId();
        if (type.getTypeID() <= SFSDataType.UTF_STRING.getTypeID()) {
            return wrapper.getObject();
        }
        if (type == SFSDataType.SFS_ARRAY) {
            return rebuildArray((ISFSArray) wrapper.getObject());
        }
        if (type == SFSDataType.SFS_OBJECT) {
            return rebuildMap((ISFSObject) wrapper.getObject());
        }
        if (type == SFSDataType.CLASS) {
            return wrapper.getObject();
        }
        return null;
    }

    private Object rebuildArray(ISFSArray sfsArray) {
        Collection<Object> collection = new ArrayList();
        for (SFSDataWrapper unwrapPojoField : sfsArray) {
            collection.add(unwrapPojoField(unwrapPojoField));
        }
        return collection;
    }

    private Object rebuildMap(ISFSObject sfsObj) {
        Map<String, Object> map = new HashMap();
        for (String key : sfsObj.getKeys()) {
            map.put(key, unwrapPojoField(sfsObj.get(key)));
        }
        return map;
    }
}
