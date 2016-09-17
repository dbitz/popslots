package org.jdom.output;

import java.lang.reflect.Method;

public class Format implements Cloneable {
    private static final String CVS_ID = "@(#) $RCSfile: Format.java,v $ $Revision: 1.13 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $";
    private static final String STANDARD_ENCODING = "UTF-8";
    private static final String STANDARD_INDENT = "  ";
    private static final String STANDARD_LINE_SEPARATOR = "\r\n";
    static Class class$java$lang$String;
    String encoding = STANDARD_ENCODING;
    EscapeStrategy escapeStrategy = new DefaultEscapeStrategy(this, this.encoding);
    boolean expandEmptyElements = false;
    boolean ignoreTrAXEscapingPIs = false;
    String indent = null;
    String lineSeparator = STANDARD_LINE_SEPARATOR;
    TextMode mode = TextMode.PRESERVE;
    boolean omitDeclaration = false;
    boolean omitEncoding = false;

    class DefaultEscapeStrategy implements EscapeStrategy {
        private int bits;
        Method canEncode;
        Object encoder;
        private final Format this$0;

        public DefaultEscapeStrategy(Format format, String encoding) {
            this.this$0 = format;
            if (Format.STANDARD_ENCODING.equalsIgnoreCase(encoding) || "UTF-16".equalsIgnoreCase(encoding)) {
                this.bits = 16;
            } else if ("ISO-8859-1".equalsIgnoreCase(encoding) || "Latin1".equalsIgnoreCase(encoding)) {
                this.bits = 8;
            } else if ("US-ASCII".equalsIgnoreCase(encoding) || "ASCII".equalsIgnoreCase(encoding)) {
                this.bits = 7;
            } else {
                this.bits = 0;
                try {
                    Class class$;
                    Class charsetClass = Class.forName("java.nio.charset.Charset");
                    Class encoderClass = Class.forName("java.nio.charset.CharsetEncoder");
                    String str = "forName";
                    Class[] clsArr = new Class[1];
                    if (Format.class$java$lang$String == null) {
                        class$ = Format.class$("java.lang.String");
                        Format.class$java$lang$String = class$;
                    } else {
                        class$ = Format.class$java$lang$String;
                    }
                    clsArr[0] = class$;
                    this.encoder = charsetClass.getMethod("newEncoder", null).invoke(charsetClass.getMethod(str, clsArr).invoke(null, new Object[]{encoding}), null);
                    this.canEncode = encoderClass.getMethod("canEncode", new Class[]{Character.TYPE});
                } catch (Exception e) {
                }
            }
        }

        public boolean shouldEscape(char ch) {
            boolean z = true;
            if (this.bits == 16) {
                return false;
            }
            if (this.bits == 8) {
                if (ch > '\u00ff') {
                    return true;
                }
                return false;
            } else if (this.bits == 7) {
                if (ch > '\u007f') {
                    return true;
                }
                return false;
            } else if (this.canEncode == null || this.encoder == null) {
                return false;
            } else {
                try {
                    if (((Boolean) this.canEncode.invoke(this.encoder, new Object[]{new Character(ch)})).booleanValue()) {
                        z = false;
                    }
                    return z;
                } catch (Exception e) {
                    return false;
                }
            }
        }
    }

    public static class TextMode {
        public static final TextMode NORMALIZE = new TextMode("NORMALIZE");
        public static final TextMode PRESERVE = new TextMode("PRESERVE");
        public static final TextMode TRIM = new TextMode("TRIM");
        public static final TextMode TRIM_FULL_WHITE = new TextMode("TRIM_FULL_WHITE");
        private final String name;

        private TextMode(String name) {
            this.name = name;
        }

        public String toString() {
            return this.name;
        }
    }

    public static Format getRawFormat() {
        return new Format();
    }

    public static Format getPrettyFormat() {
        Format f = new Format();
        f.setIndent(STANDARD_INDENT);
        f.setTextMode(TextMode.TRIM);
        return f;
    }

    public static Format getCompactFormat() {
        Format f = new Format();
        f.setTextMode(TextMode.NORMALIZE);
        return f;
    }

    private Format() {
    }

    public Format setEscapeStrategy(EscapeStrategy strategy) {
        this.escapeStrategy = strategy;
        return this;
    }

    public EscapeStrategy getEscapeStrategy() {
        return this.escapeStrategy;
    }

    public Format setLineSeparator(String separator) {
        this.lineSeparator = separator;
        return this;
    }

    public String getLineSeparator() {
        return this.lineSeparator;
    }

    public Format setOmitEncoding(boolean omitEncoding) {
        this.omitEncoding = omitEncoding;
        return this;
    }

    public boolean getOmitEncoding() {
        return this.omitEncoding;
    }

    public Format setOmitDeclaration(boolean omitDeclaration) {
        this.omitDeclaration = omitDeclaration;
        return this;
    }

    public boolean getOmitDeclaration() {
        return this.omitDeclaration;
    }

    public Format setExpandEmptyElements(boolean expandEmptyElements) {
        this.expandEmptyElements = expandEmptyElements;
        return this;
    }

    public boolean getExpandEmptyElements() {
        return this.expandEmptyElements;
    }

    public void setIgnoreTrAXEscapingPIs(boolean ignoreTrAXEscapingPIs) {
        this.ignoreTrAXEscapingPIs = ignoreTrAXEscapingPIs;
    }

    public boolean getIgnoreTrAXEscapingPIs() {
        return this.ignoreTrAXEscapingPIs;
    }

    public Format setTextMode(TextMode mode) {
        this.mode = mode;
        return this;
    }

    public TextMode getTextMode() {
        return this.mode;
    }

    public Format setIndent(String indent) {
        this.indent = indent;
        return this;
    }

    public String getIndent() {
        return this.indent;
    }

    public Format setEncoding(String encoding) {
        this.encoding = encoding;
        this.escapeStrategy = new DefaultEscapeStrategy(this, encoding);
        return this;
    }

    public String getEncoding() {
        return this.encoding;
    }

    protected Object clone() {
        Format format = null;
        try {
            return (Format) super.clone();
        } catch (CloneNotSupportedException e) {
            return format;
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }
}
