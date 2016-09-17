package org.jboss.netty.handler.codec.http;

import com.playstudios.popslots.R;
import com.smartfoxserver.v2.protocol.serialization.DefaultObjectDumpFormatter;
import java.util.Date;
import java.util.Set;
import java.util.TreeSet;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import org.jdom.filter.ContentFilter;
import org.slf4j.spi.LocationAwareLogger;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.util.Base64;

public class CookieEncoder {
    private final Set<Cookie> cookies = new TreeSet();
    private final boolean server;

    public CookieEncoder(boolean server) {
        this.server = server;
    }

    public void addCookie(String name, String value) {
        this.cookies.add(new DefaultCookie(name, value));
    }

    public void addCookie(Cookie cookie) {
        this.cookies.add(cookie);
    }

    public String encode() {
        String answer;
        if (this.server) {
            answer = encodeServerSide();
        } else {
            answer = encodeClientSide();
        }
        this.cookies.clear();
        return answer;
    }

    private String encodeServerSide() {
        StringBuilder sb = new StringBuilder();
        for (Cookie cookie : this.cookies) {
            add(sb, cookie.getName(), cookie.getValue());
            if (cookie.getMaxAge() >= 0) {
                if (cookie.getVersion() == 0) {
                    addUnquoted(sb, Names.EXPIRES, new CookieDateFormat().format(new Date(System.currentTimeMillis() + (((long) cookie.getMaxAge()) * 1000))));
                } else {
                    add(sb, "Max-Age", cookie.getMaxAge());
                }
            }
            if (cookie.getPath() != null) {
                if (cookie.getVersion() > 0) {
                    add(sb, "Path", cookie.getPath());
                } else {
                    addUnquoted(sb, "Path", cookie.getPath());
                }
            }
            if (cookie.getDomain() != null) {
                if (cookie.getVersion() > 0) {
                    add(sb, "Domain", cookie.getDomain());
                } else {
                    addUnquoted(sb, "Domain", cookie.getDomain());
                }
            }
            if (cookie.isSecure()) {
                sb.append("Secure");
                sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
            }
            if (cookie.isHttpOnly()) {
                sb.append("HTTPOnly");
                sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
            }
            if (cookie.getVersion() >= 1) {
                if (cookie.getComment() != null) {
                    add(sb, "Comment", cookie.getComment());
                }
                add(sb, "Version", 1);
                if (cookie.getCommentUrl() != null) {
                    addQuoted(sb, "CommentURL", cookie.getCommentUrl());
                }
                if (!cookie.getPorts().isEmpty()) {
                    sb.append("Port");
                    sb.append('=');
                    sb.append('\"');
                    for (Integer intValue : cookie.getPorts()) {
                        sb.append(intValue.intValue());
                        sb.append(',');
                    }
                    sb.setCharAt(sb.length() - 1, '\"');
                    sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
                }
                if (cookie.isDiscard()) {
                    sb.append("Discard");
                    sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
                }
            }
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    private String encodeClientSide() {
        StringBuilder sb = new StringBuilder();
        for (Cookie cookie : this.cookies) {
            if (cookie.getVersion() >= 1) {
                add(sb, "$Version", 1);
            }
            add(sb, cookie.getName(), cookie.getValue());
            if (cookie.getPath() != null) {
                add(sb, "$Path", cookie.getPath());
            }
            if (cookie.getDomain() != null) {
                add(sb, "$Domain", cookie.getDomain());
            }
            if (cookie.getVersion() >= 1 && !cookie.getPorts().isEmpty()) {
                sb.append('$');
                sb.append("Port");
                sb.append('=');
                sb.append('\"');
                for (Integer intValue : cookie.getPorts()) {
                    sb.append(intValue.intValue());
                    sb.append(',');
                }
                sb.setCharAt(sb.length() - 1, '\"');
                sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
            }
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    private static void add(StringBuilder sb, String name, String val) {
        if (val == null) {
            addQuoted(sb, name, "");
            return;
        }
        int i = 0;
        while (i < val.length()) {
            switch (val.charAt(i)) {
                case BaseRequest.ChangeRoomPassword /*9*/:
                case Base64.ORDERED /*32*/:
                case R.styleable.Theme_actionModePasteDrawable /*34*/:
                case LocationAwareLogger.ERROR_INT /*40*/:
                case R.styleable.Theme_textAppearanceSmallPopupMenu /*41*/:
                case R.styleable.Theme_listDividerAlertDialog /*44*/:
                case R.styleable.Theme_spinnerDropDownItemStyle /*47*/:
                case R.styleable.Theme_toolbarStyle /*58*/:
                case R.styleable.Theme_toolbarNavigationButtonStyle /*59*/:
                case R.styleable.Theme_popupMenuStyle /*60*/:
                case R.styleable.Theme_popupWindowStyle /*61*/:
                case R.styleable.Theme_editTextColor /*62*/:
                case R.styleable.Theme_editTextBackground /*63*/:
                case ContentFilter.DOCUMENT /*64*/:
                case R.styleable.Theme_alertDialogStyle /*91*/:
                case R.styleable.Theme_alertDialogButtonGroupStyle /*92*/:
                case R.styleable.Theme_alertDialogCenterButtons /*93*/:
                case '{':
                case '}':
                    addQuoted(sb, name, val);
                    return;
                default:
                    i++;
            }
        }
        addUnquoted(sb, name, val);
    }

    private static void addUnquoted(StringBuilder sb, String name, String val) {
        sb.append(name);
        sb.append('=');
        sb.append(val);
        sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
    }

    private static void addQuoted(StringBuilder sb, String name, String val) {
        if (val == null) {
            val = "";
        }
        sb.append(name);
        sb.append('=');
        sb.append('\"');
        sb.append(val.replace("\\", "\\\\").replace("\"", "\\\""));
        sb.append('\"');
        sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
    }

    private static void add(StringBuilder sb, String name, int val) {
        sb.append(name);
        sb.append('=');
        sb.append(val);
        sb.append(DefaultObjectDumpFormatter.TOKEN_DIVIDER);
    }
}
