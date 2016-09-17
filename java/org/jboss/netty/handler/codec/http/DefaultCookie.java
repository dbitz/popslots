package org.jboss.netty.handler.codec.http;

import com.helpshift.support.storage.ProfilesDBHelper;
import com.helpshift.util.constants.KeyValueStoreColumns;
import com.playstudios.popslots.R;
import java.util.Collections;
import java.util.Set;
import java.util.TreeSet;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;
import sfs2x.client.requests.BaseRequest;
import sfs2x.client.util.Base64;

public class DefaultCookie implements Cookie {
    private static final Set<String> RESERVED_NAMES = new TreeSet(CaseIgnoringComparator.INSTANCE);
    private String comment;
    private String commentUrl;
    private boolean discard;
    private String domain;
    private boolean httpOnly;
    private int maxAge = -1;
    private final String name;
    private String path;
    private Set<Integer> ports = Collections.emptySet();
    private boolean secure;
    private Set<Integer> unmodifiablePorts = this.ports;
    private String value;
    private int version;

    static {
        RESERVED_NAMES.add("Domain");
        RESERVED_NAMES.add("Path");
        RESERVED_NAMES.add("Comment");
        RESERVED_NAMES.add("CommentURL");
        RESERVED_NAMES.add("Discard");
        RESERVED_NAMES.add("Port");
        RESERVED_NAMES.add("Max-Age");
        RESERVED_NAMES.add(Names.EXPIRES);
        RESERVED_NAMES.add("Version");
        RESERVED_NAMES.add("Secure");
        RESERVED_NAMES.add("HTTPOnly");
    }

    public DefaultCookie(String name, String value) {
        if (name == null) {
            throw new NullPointerException(ProfilesDBHelper.COLUMN_NAME);
        }
        name = name.trim();
        if (name.length() == 0) {
            throw new IllegalArgumentException("empty name");
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
                case R.styleable.Theme_toolbarNavigationButtonStyle /*59*/:
                case R.styleable.Theme_popupWindowStyle /*61*/:
                    throw new IllegalArgumentException("name contains one of the following prohibited characters: =,; \\t\\r\\n\\v\\f: " + name);
                default:
                    i++;
            }
        }
        if (RESERVED_NAMES.contains(name)) {
            throw new IllegalArgumentException("reserved name: " + name);
        }
        this.name = name;
        setValue(value);
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String value) {
        if (value == null) {
            throw new NullPointerException(KeyValueStoreColumns.value);
        }
        this.value = value;
    }

    public String getDomain() {
        return this.domain;
    }

    public void setDomain(String domain) {
        this.domain = validateValue("domain", domain);
    }

    public String getPath() {
        return this.path;
    }

    public void setPath(String path) {
        this.path = validateValue("path", path);
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String comment) {
        this.comment = validateValue("comment", comment);
    }

    public String getCommentUrl() {
        return this.commentUrl;
    }

    public void setCommentUrl(String commentUrl) {
        this.commentUrl = validateValue("commentUrl", commentUrl);
    }

    public boolean isDiscard() {
        return this.discard;
    }

    public void setDiscard(boolean discard) {
        this.discard = discard;
    }

    public Set<Integer> getPorts() {
        if (this.unmodifiablePorts == null) {
            this.unmodifiablePorts = Collections.unmodifiableSet(this.ports);
        }
        return this.unmodifiablePorts;
    }

    public void setPorts(int... ports) {
        if (ports == null) {
            throw new NullPointerException("ports");
        }
        int[] portsCopy = (int[]) ports.clone();
        if (portsCopy.length == 0) {
            Set emptySet = Collections.emptySet();
            this.ports = emptySet;
            this.unmodifiablePorts = emptySet;
            return;
        }
        Set<Integer> newPorts = new TreeSet();
        for (int p : portsCopy) {
            if (p <= 0 || p > 65535) {
                throw new IllegalArgumentException("port out of range: " + p);
            }
            newPorts.add(Integer.valueOf(p));
        }
        this.ports = newPorts;
        this.unmodifiablePorts = null;
    }

    public void setPorts(Iterable<Integer> ports) {
        Set<Integer> newPorts = new TreeSet();
        for (Integer intValue : ports) {
            int p = intValue.intValue();
            if (p <= 0 || p > 65535) {
                throw new IllegalArgumentException("port out of range: " + p);
            }
            newPorts.add(Integer.valueOf(p));
        }
        if (newPorts.isEmpty()) {
            Set emptySet = Collections.emptySet();
            this.ports = emptySet;
            this.unmodifiablePorts = emptySet;
            return;
        }
        this.ports = newPorts;
        this.unmodifiablePorts = null;
    }

    public int getMaxAge() {
        return this.maxAge;
    }

    public void setMaxAge(int maxAge) {
        if (maxAge < -1) {
            throw new IllegalArgumentException("maxAge must be either -1, 0, or a positive integer: " + maxAge);
        }
        this.maxAge = maxAge;
    }

    public int getVersion() {
        return this.version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public boolean isSecure() {
        return this.secure;
    }

    public void setSecure(boolean secure) {
        this.secure = secure;
    }

    public boolean isHttpOnly() {
        return this.httpOnly;
    }

    public void setHttpOnly(boolean httpOnly) {
        this.httpOnly = httpOnly;
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean equals(Object o) {
        if (!(o instanceof Cookie)) {
            return false;
        }
        Cookie that = (Cookie) o;
        if (!getName().equalsIgnoreCase(that.getName())) {
            return false;
        }
        if ((getPath() == null && that.getPath() != null) || that.getPath() == null || !getPath().equals(that.getPath())) {
            return false;
        }
        if ((getDomain() != null || that.getDomain() == null) && that.getDomain() != null && getDomain().equalsIgnoreCase(that.getDomain())) {
            return true;
        }
        return false;
    }

    public int compareTo(Cookie c) {
        int v = getName().compareToIgnoreCase(c.getName());
        if (v != 0) {
            return v;
        }
        if (getPath() == null && c.getPath() != null) {
            return -1;
        }
        if (c.getPath() == null) {
            return 1;
        }
        v = getPath().compareTo(c.getPath());
        if (v != 0) {
            return v;
        }
        if (getDomain() == null && c.getDomain() != null) {
            return -1;
        }
        if (c.getDomain() == null) {
            return 1;
        }
        return getDomain().compareToIgnoreCase(c.getDomain());
    }

    public String toString() {
        StringBuilder buf = new StringBuilder();
        buf.append(getName());
        buf.append('=');
        buf.append(getValue());
        if (getDomain() != null) {
            buf.append(", domain=");
            buf.append(getDomain());
        }
        if (getPath() != null) {
            buf.append(", path=");
            buf.append(getPath());
        }
        if (getComment() != null) {
            buf.append(", comment=");
            buf.append(getComment());
        }
        if (getMaxAge() >= 0) {
            buf.append(", maxAge=");
            buf.append(getMaxAge());
            buf.append('s');
        }
        if (isSecure()) {
            buf.append(", secure");
        }
        if (isHttpOnly()) {
            buf.append(", HTTPOnly");
        }
        return buf.toString();
    }

    private static String validateValue(String name, String value) {
        if (value == null) {
            return null;
        }
        value = value.trim();
        if (value.length() == 0) {
            return null;
        }
        int i = 0;
        while (i < value.length()) {
            switch (value.charAt(i)) {
                case BaseRequest.ObjectMessage /*10*/:
                case BaseRequest.SetRoomVariables /*11*/:
                case BaseRequest.SetUserVariables /*12*/:
                case BaseRequest.CallExtension /*13*/:
                case R.styleable.Theme_toolbarNavigationButtonStyle /*59*/:
                    throw new IllegalArgumentException(name + " contains one of the following prohibited characters: " + ";\\r\\n\\f\\v (" + value + ')');
                default:
                    i++;
            }
        }
        return value;
    }
}
