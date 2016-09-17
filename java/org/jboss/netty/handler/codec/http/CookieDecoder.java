package org.jboss.netty.handler.codec.http;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Names;

public class CookieDecoder {
    private static final String COMMA = ",";
    private static final Pattern PATTERN = Pattern.compile("(?:\\s|[;,])*\\$*([^;=]+)(?:=(?:[\"']((?:\\\\.|[^\"])*)[\"']|([^;,]*)))?(\\s*(?:[;,]+\\s*|$))");

    public Set<Cookie> decode(String header) {
        List<String> arrayList = new ArrayList(8);
        arrayList = new ArrayList(8);
        extractKeyValuePairs(header, arrayList, arrayList);
        if (arrayList.isEmpty()) {
            return Collections.emptySet();
        }
        int i;
        int version = 0;
        if (((String) arrayList.get(0)).equalsIgnoreCase("Version")) {
            try {
                version = Integer.parseInt((String) arrayList.get(0));
            } catch (NumberFormatException e) {
            }
            i = 1;
        } else {
            i = 0;
        }
        if (arrayList.size() <= i) {
            return Collections.emptySet();
        }
        Set<Cookie> cookies = new TreeSet();
        while (i < arrayList.size()) {
            String name = (String) arrayList.get(i);
            String value = (String) arrayList.get(i);
            if (value == null) {
                value = "";
            }
            Cookie c = new DefaultCookie(name, value);
            cookies.add(c);
            boolean discard = false;
            boolean secure = false;
            boolean httpOnly = false;
            String comment = null;
            String commentURL = null;
            String domain = null;
            String path = null;
            int maxAge = -1;
            List<Integer> arrayList2 = new ArrayList(2);
            int j = i + 1;
            while (j < arrayList.size()) {
                name = (String) arrayList.get(j);
                value = (String) arrayList.get(j);
                if (!"Discard".equalsIgnoreCase(name)) {
                    if (!"Secure".equalsIgnoreCase(name)) {
                        if (!"HTTPOnly".equalsIgnoreCase(name)) {
                            if (!"Comment".equalsIgnoreCase(name)) {
                                if (!"CommentURL".equalsIgnoreCase(name)) {
                                    if (!"Domain".equalsIgnoreCase(name)) {
                                        if (!"Path".equalsIgnoreCase(name)) {
                                            if (!Names.EXPIRES.equalsIgnoreCase(name)) {
                                                if (!"Max-Age".equalsIgnoreCase(name)) {
                                                    if (!"Version".equalsIgnoreCase(name)) {
                                                        if (!"Port".equalsIgnoreCase(name)) {
                                                            break;
                                                        }
                                                        for (String s1 : value.split(COMMA)) {
                                                            try {
                                                                arrayList2.add(Integer.valueOf(s1));
                                                            } catch (NumberFormatException e2) {
                                                            }
                                                        }
                                                    } else {
                                                        version = Integer.parseInt(value);
                                                    }
                                                } else {
                                                    maxAge = Integer.parseInt(value);
                                                }
                                            } else {
                                                try {
                                                    long maxAgeMillis = new CookieDateFormat().parse(value).getTime() - System.currentTimeMillis();
                                                    if (maxAgeMillis <= 0) {
                                                        maxAge = 0;
                                                    } else {
                                                        maxAge = ((int) (maxAgeMillis / 1000)) + (maxAgeMillis % 1000 != 0 ? 1 : 0);
                                                    }
                                                } catch (ParseException e3) {
                                                }
                                            }
                                        } else {
                                            path = value;
                                        }
                                    } else {
                                        domain = value;
                                    }
                                } else {
                                    commentURL = value;
                                }
                            } else {
                                comment = value;
                            }
                        } else {
                            httpOnly = true;
                        }
                    } else {
                        secure = true;
                    }
                } else {
                    discard = true;
                }
                j++;
                i++;
            }
            c.setVersion(version);
            c.setMaxAge(maxAge);
            c.setPath(path);
            c.setDomain(domain);
            c.setSecure(secure);
            c.setHttpOnly(httpOnly);
            if (version > 0) {
                c.setComment(comment);
            }
            if (version > 1) {
                c.setCommentUrl(commentURL);
                c.setPorts((Iterable) arrayList2);
                c.setDiscard(discard);
            }
            i++;
        }
        return cookies;
    }

    private void extractKeyValuePairs(String header, List<String> names, List<String> values) {
        Matcher m = PATTERN.matcher(header);
        int pos = 0;
        String name = null;
        String value = null;
        String separator = null;
        while (m.find(pos)) {
            pos = m.end();
            String newName = m.group(1);
            String newValue = m.group(3);
            if (newValue == null) {
                newValue = decodeValue(m.group(2));
            }
            String newSeparator = m.group(4);
            if (name == null) {
                name = newName;
                if (newValue == null) {
                    value = "";
                } else {
                    value = newValue;
                }
                separator = newSeparator;
            } else if (newValue != null || "Discard".equalsIgnoreCase(newName) || "Secure".equalsIgnoreCase(newName) || "HTTPOnly".equalsIgnoreCase(newName)) {
                names.add(name);
                values.add(value);
                name = newName;
                value = newValue;
                separator = newSeparator;
            } else {
                value = value + separator + newName;
                separator = newSeparator;
            }
        }
        if (name != null) {
            names.add(name);
            values.add(value);
        }
    }

    private String decodeValue(String value) {
        return value == null ? value : value.replace("\\\"", "\"").replace("\\\\", "\\");
    }
}
