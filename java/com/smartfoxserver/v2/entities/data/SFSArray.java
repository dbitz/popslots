package com.smartfoxserver.v2.entities.data;

import com.smartfoxserver.bitswarm.util.ByteUtils;
import com.smartfoxserver.v2.protocol.serialization.DefaultObjectDumpFormatter;
import com.smartfoxserver.v2.protocol.serialization.DefaultSFSDataSerializer;
import com.smartfoxserver.v2.protocol.serialization.ISFSDataSerializer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class SFSArray implements ISFSArray {
    private List<SFSDataWrapper> dataHolder = new ArrayList();
    private ISFSDataSerializer serializer = DefaultSFSDataSerializer.getInstance();

    public static SFSArray newFromBinaryData(byte[] bytes) {
        return (SFSArray) DefaultSFSDataSerializer.getInstance().binary2array(bytes);
    }

    public static SFSArray newFromResultSet(ResultSet rset) throws SQLException {
        return DefaultSFSDataSerializer.getInstance().resultSet2array(rset);
    }

    public static SFSArray newFromJsonData(String jsonStr) {
        return (SFSArray) DefaultSFSDataSerializer.getInstance().json2array(jsonStr);
    }

    public static SFSArray newInstance() {
        return new SFSArray();
    }

    public String getDump() {
        if (size() == 0) {
            return "[ Empty SFSArray ]";
        }
        return DefaultObjectDumpFormatter.prettyPrintDump(dump());
    }

    public String getDump(boolean noFormat) {
        if (noFormat) {
            return getDump();
        }
        return dump();
    }

    private String dump() {
        StringBuilder sb = new StringBuilder();
        sb.append(DefaultObjectDumpFormatter.TOKEN_INDENT_OPEN);
        for (SFSDataWrapper wrappedObject : this.dataHolder) {
            Object dump;
            if (wrappedObject.getTypeId() == SFSDataType.SFS_OBJECT) {
                dump = ((ISFSObject) wrappedObject.getObject()).getDump(false);
            } else if (wrappedObject.getTypeId() == SFSDataType.SFS_ARRAY) {
                dump = ((ISFSArray) wrappedObject.getObject()).getDump(false);
            } else if (wrappedObject.getTypeId() == SFSDataType.BYTE_ARRAY) {
                dump = DefaultObjectDumpFormatter.prettyPrintByteArray((byte[]) wrappedObject.getObject());
            } else if (wrappedObject.getTypeId() == SFSDataType.CLASS) {
                dump = wrappedObject.getObject().getClass().getName();
            } else {
                dump = wrappedObject.getObject();
            }
            sb.append(" (").append(wrappedObject.getTypeId().name().toLowerCase()).append(") ").append(dump).append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
        }
        if (size() > 0) {
            sb.delete(sb.length() - 1, sb.length());
        }
        sb.append(DefaultObjectDumpFormatter.TOKEN_INDENT_CLOSE);
        return sb.toString();
    }

    public String getHexDump() {
        return ByteUtils.fullHexDump(toBinary());
    }

    public byte[] toBinary() {
        return this.serializer.array2binary(this);
    }

    public String toJson() {
        return DefaultSFSDataSerializer.getInstance().array2json(flatten());
    }

    public boolean isNull(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        if (wrapper != null && wrapper.getTypeId() == SFSDataType.NULL) {
            return true;
        }
        return false;
    }

    public SFSDataWrapper get(int index) {
        return (SFSDataWrapper) this.dataHolder.get(index);
    }

    public Boolean getBool(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Boolean) wrapper.getObject() : null;
    }

    public Byte getByte(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Byte) wrapper.getObject() : null;
    }

    public Integer getUnsignedByte(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? Integer.valueOf(DefaultSFSDataSerializer.getInstance().getUnsignedByte(((Byte) wrapper.getObject()).byteValue())) : null;
    }

    public Short getShort(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Short) wrapper.getObject() : null;
    }

    public Integer getInt(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Integer) wrapper.getObject() : null;
    }

    public Long getLong(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Long) wrapper.getObject() : null;
    }

    public Float getFloat(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Float) wrapper.getObject() : null;
    }

    public Double getDouble(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Double) wrapper.getObject() : null;
    }

    public String getUtfString(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (String) wrapper.getObject() : null;
    }

    public Collection<Boolean> getBoolArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public byte[] getByteArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (byte[]) wrapper.getObject() : null;
    }

    public Collection<Integer> getUnsignedByteArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        if (wrapper == null) {
            return null;
        }
        DefaultSFSDataSerializer serializer = DefaultSFSDataSerializer.getInstance();
        Collection<Integer> intCollection = new ArrayList();
        for (byte b : (byte[]) wrapper.getObject()) {
            intCollection.add(Integer.valueOf(serializer.getUnsignedByte(b)));
        }
        return intCollection;
    }

    public Collection<Short> getShortArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public Collection<Integer> getIntArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public Collection<Long> getLongArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public Collection<Float> getFloatArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public Collection<Double> getDoubleArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public Collection<String> getUtfStringArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (Collection) wrapper.getObject() : null;
    }

    public ISFSArray getSFSArray(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (ISFSArray) wrapper.getObject() : null;
    }

    public ISFSObject getSFSObject(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? (ISFSObject) wrapper.getObject() : null;
    }

    public Object getClass(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        return wrapper != null ? wrapper.getObject() : null;
    }

    public void addBool(boolean value) {
        addObject(Boolean.valueOf(value), SFSDataType.BOOL);
    }

    public void addBoolArray(Collection<Boolean> value) {
        addObject(value, SFSDataType.BOOL_ARRAY);
    }

    public void addByte(byte value) {
        addObject(Byte.valueOf(value), SFSDataType.BYTE);
    }

    public void addByteArray(byte[] value) {
        addObject(value, SFSDataType.BYTE_ARRAY);
    }

    public void addDouble(double value) {
        addObject(Double.valueOf(value), SFSDataType.DOUBLE);
    }

    public void addDoubleArray(Collection<Double> value) {
        addObject(value, SFSDataType.DOUBLE_ARRAY);
    }

    public void addFloat(float value) {
        addObject(Float.valueOf(value), SFSDataType.FLOAT);
    }

    public void addFloatArray(Collection<Float> value) {
        addObject(value, SFSDataType.FLOAT_ARRAY);
    }

    public void addInt(int value) {
        addObject(Integer.valueOf(value), SFSDataType.INT);
    }

    public void addIntArray(Collection<Integer> value) {
        addObject(value, SFSDataType.INT_ARRAY);
    }

    public void addLong(long value) {
        addObject(Long.valueOf(value), SFSDataType.LONG);
    }

    public void addLongArray(Collection<Long> value) {
        addObject(value, SFSDataType.LONG_ARRAY);
    }

    public void addNull() {
        addObject(null, SFSDataType.NULL);
    }

    public void addSFSArray(ISFSArray value) {
        addObject(value, SFSDataType.SFS_ARRAY);
    }

    public void addSFSObject(ISFSObject value) {
        addObject(value, SFSDataType.SFS_OBJECT);
    }

    public void addShort(short value) {
        addObject(Short.valueOf(value), SFSDataType.SHORT);
    }

    public void addShortArray(Collection<Short> value) {
        addObject(value, SFSDataType.SHORT_ARRAY);
    }

    public void addUtfString(String value) {
        addObject(value, SFSDataType.UTF_STRING);
    }

    public void addUtfStringArray(Collection<String> value) {
        addObject(value, SFSDataType.UTF_STRING_ARRAY);
    }

    public void addClass(Object o) {
        addObject(o, SFSDataType.CLASS);
    }

    public void add(SFSDataWrapper wrappedObject) {
        this.dataHolder.add(wrappedObject);
    }

    public boolean contains(Object obj) {
        if ((obj instanceof ISFSArray) || (obj instanceof ISFSObject)) {
            throw new UnsupportedOperationException("ISFSArray and ISFSObject are not supported by this method.");
        }
        for (SFSDataWrapper object : this.dataHolder) {
            if (object.getObject().equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public Object getElementAt(int index) {
        SFSDataWrapper wrapper = (SFSDataWrapper) this.dataHolder.get(index);
        if (wrapper != null) {
        }
        return wrapper.getObject();
    }

    public Iterator<SFSDataWrapper> iterator() {
        return this.dataHolder.iterator();
    }

    public void removeElementAt(int index) {
        this.dataHolder.remove(index);
    }

    public int size() {
        return this.dataHolder.size();
    }

    public String toString() {
        return "[SFSArray, size: " + size() + "]";
    }

    private void addObject(Object value, SFSDataType typeId) {
        this.dataHolder.add(new SFSDataWrapper(typeId, value));
    }

    private List<Object> flatten() {
        List<Object> list = new ArrayList();
        DefaultSFSDataSerializer.getInstance().flattenArray(list, this);
        return list;
    }
}
