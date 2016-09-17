package org.jboss.netty.handler.codec.http;

import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.util.constants.KeyValueStoreColumns;
import com.playstudios.popslots.R;
import java.nio.charset.Charset;
import java.util.List;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.util.CharsetUtil;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.util.Base64;
import sfs2x.client.util.BuddyOnlineState;

class HttpCodecUtil {
    static final byte COLON = (byte) 58;
    static final byte COMMA = (byte) 44;
    static final byte CR = (byte) 13;
    static final byte[] CRLF = new byte[]{CR, LF};
    static final Charset DEFAULT_CHARSET = CharsetUtil.UTF_8;
    static final byte DOUBLE_QUOTE = (byte) 34;
    static final byte EQUALS = (byte) 61;
    static final byte HT = (byte) 9;
    static final byte LF = (byte) 10;
    static final byte SEMICOLON = (byte) 59;
    static final byte SP = (byte) 32;

    private HttpCodecUtil() {
    }

    static void validateHeaderName(String name) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        }
        int i = 0;
        while (i < name.length()) {
            char c = name.charAt(i);
            if (c > '\u007f') {
                throw new IllegalArgumentException("name contains non-ascii character: " + name);
            }
            switch (c) {
                case BaseRequest.ChangeRoomPassword /*9*/:
                case BaseRequest.ObjectMessage /*10*/:
                case BaseRequest.SetRoomVariables /*11*/:
                case BaseRequest.SetUserVariables /*12*/:
                case BaseRequest.CallExtension /*13*/:
                case Base64.ORDERED /*32*/:
                case R.styleable.Theme_listDividerAlertDialog /*44*/:
                case R.styleable.Theme_toolbarStyle /*58*/:
                case R.styleable.Theme_toolbarNavigationButtonStyle /*59*/:
                case R.styleable.Theme_popupWindowStyle /*61*/:
                    throw new IllegalArgumentException("name contains one of the following prohibited characters: =,;: \\t\\r\\n\\v\\f: " + name);
                default:
                    i++;
            }
        }
    }

    static void validateHeaderValue(String value) {
        if (value == null) {
            throw new NullPointerException(KeyValueStoreColumns.value);
        }
        int state = 0;
        int i = 0;
        while (i < value.length()) {
            char c = value.charAt(i);
            switch (c) {
                case BaseRequest.SetRoomVariables /*11*/:
                    throw new IllegalArgumentException("value contains a prohibited character '\\v': " + value);
                case BaseRequest.SetUserVariables /*12*/:
                    throw new IllegalArgumentException("value contains a prohibited character '\\f': " + value);
                default:
                    switch (state) {
                        case Base64.NO_OPTIONS /*0*/:
                            switch (c) {
                                case BaseRequest.ObjectMessage /*10*/:
                                    state = 2;
                                    break;
                                case BaseRequest.CallExtension /*13*/:
                                    state = 1;
                                    break;
                                default:
                                    break;
                            }
                        case BuddyOnlineState.OFFLINE /*1*/:
                            switch (c) {
                                case BaseRequest.ObjectMessage /*10*/:
                                    state = 2;
                                    break;
                                default:
                                    throw new IllegalArgumentException("Only '\\n' is allowed after '\\r': " + value);
                            }
                        case BuddyOnlineState.LEFT_THE_SERVER /*2*/:
                            switch (c) {
                                case BaseRequest.ChangeRoomPassword /*9*/:
                                case Base64.ORDERED /*32*/:
                                    state = 0;
                                    break;
                                default:
                                    throw new IllegalArgumentException("Only ' ' and '\\t' are allowed after '\\n': " + value);
                            }
                        default:
                            break;
                    }
                    i++;
            }
        }
        if (state != 0) {
            throw new IllegalArgumentException("value must not end with '\\r' or '\\n':" + value);
        }
    }

    static boolean isTransferEncodingChunked(HttpMessage m) {
        List<String> chunked = m.getHeaders(Names.TRANSFER_ENCODING);
        if (chunked.isEmpty()) {
            return false;
        }
        for (String v : chunked) {
            if (v.equalsIgnoreCase(Values.CHUNKED)) {
                return true;
            }
        }
        return false;
    }
}
