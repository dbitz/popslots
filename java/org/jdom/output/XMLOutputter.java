package org.jdom.output;

import com.adjust.sdk.Constants;
import com.playstudios.popslots.R;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.List;
import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;
import org.jdom.Verifier;
import org.jdom.output.Format.TextMode;
import sfs2x.client.entities.SFSConstants;
import sfs2x.client.requests.BaseRequest;

public class XMLOutputter implements Cloneable {
    private static final String CVS_ID = "@(#) $RCSfile: XMLOutputter.java,v $ $Revision: 1.116 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $";
    protected static final Format preserveFormat = Format.getRawFormat();
    protected Format currentFormat = this.userFormat;
    private boolean escapeOutput = true;
    private Format userFormat = Format.getRawFormat();

    protected class NamespaceStack extends NamespaceStack {
        private final XMLOutputter this$0;

        protected NamespaceStack(XMLOutputter xMLOutputter) {
            this.this$0 = xMLOutputter;
        }
    }

    public XMLOutputter(Format format) {
        this.userFormat = (Format) format.clone();
        this.currentFormat = this.userFormat;
    }

    public XMLOutputter(XMLOutputter that) {
        this.userFormat = (Format) that.userFormat.clone();
        this.currentFormat = this.userFormat;
    }

    public void setFormat(Format newFormat) {
        this.userFormat = (Format) newFormat.clone();
        this.currentFormat = this.userFormat;
    }

    public Format getFormat() {
        return (Format) this.userFormat.clone();
    }

    public void output(Document doc, OutputStream out) throws IOException {
        output(doc, makeWriter(out));
    }

    public void output(DocType doctype, OutputStream out) throws IOException {
        output(doctype, makeWriter(out));
    }

    public void output(Element element, OutputStream out) throws IOException {
        output(element, makeWriter(out));
    }

    public void outputElementContent(Element element, OutputStream out) throws IOException {
        outputElementContent(element, makeWriter(out));
    }

    public void output(List list, OutputStream out) throws IOException {
        output(list, makeWriter(out));
    }

    public void output(CDATA cdata, OutputStream out) throws IOException {
        output(cdata, makeWriter(out));
    }

    public void output(Text text, OutputStream out) throws IOException {
        output(text, makeWriter(out));
    }

    public void output(Comment comment, OutputStream out) throws IOException {
        output(comment, makeWriter(out));
    }

    public void output(ProcessingInstruction pi, OutputStream out) throws IOException {
        output(pi, makeWriter(out));
    }

    public void output(EntityRef entity, OutputStream out) throws IOException {
        output(entity, makeWriter(out));
    }

    private Writer makeWriter(OutputStream out) throws UnsupportedEncodingException {
        return makeWriter(out, this.userFormat.encoding);
    }

    private static Writer makeWriter(OutputStream out, String enc) throws UnsupportedEncodingException {
        if (Constants.ENCODING.equals(enc)) {
            enc = "UTF8";
        }
        return new BufferedWriter(new OutputStreamWriter(new BufferedOutputStream(out), enc));
    }

    public void output(Document doc, Writer out) throws IOException {
        printDeclaration(out, doc, this.userFormat.encoding);
        List content = doc.getContent();
        int size = content.size();
        for (int i = 0; i < size; i++) {
            Object obj = content.get(i);
            if (obj instanceof Element) {
                printElement(out, doc.getRootElement(), 0, createNamespaceStack());
            } else if (obj instanceof Comment) {
                printComment(out, (Comment) obj);
            } else if (obj instanceof ProcessingInstruction) {
                printProcessingInstruction(out, (ProcessingInstruction) obj);
            } else if (obj instanceof DocType) {
                printDocType(out, doc.getDocType());
                out.write(this.currentFormat.lineSeparator);
            }
            newline(out);
            indent(out, 0);
        }
        out.write(this.currentFormat.lineSeparator);
        out.flush();
    }

    public void output(DocType doctype, Writer out) throws IOException {
        printDocType(out, doctype);
        out.flush();
    }

    public void output(Element element, Writer out) throws IOException {
        printElement(out, element, 0, createNamespaceStack());
        out.flush();
    }

    public void outputElementContent(Element element, Writer out) throws IOException {
        List content = element.getContent();
        printContentRange(out, content, 0, content.size(), 0, createNamespaceStack());
        out.flush();
    }

    public void output(List list, Writer out) throws IOException {
        printContentRange(out, list, 0, list.size(), 0, createNamespaceStack());
        out.flush();
    }

    public void output(CDATA cdata, Writer out) throws IOException {
        printCDATA(out, cdata);
        out.flush();
    }

    public void output(Text text, Writer out) throws IOException {
        printText(out, text);
        out.flush();
    }

    public void output(Comment comment, Writer out) throws IOException {
        printComment(out, comment);
        out.flush();
    }

    public void output(ProcessingInstruction pi, Writer out) throws IOException {
        boolean currentEscapingPolicy = this.currentFormat.ignoreTrAXEscapingPIs;
        this.currentFormat.setIgnoreTrAXEscapingPIs(true);
        printProcessingInstruction(out, pi);
        this.currentFormat.setIgnoreTrAXEscapingPIs(currentEscapingPolicy);
        out.flush();
    }

    public void output(EntityRef entity, Writer out) throws IOException {
        printEntityRef(out, entity);
        out.flush();
    }

    public String outputString(Document doc) {
        Writer out = new StringWriter();
        try {
            output(doc, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(DocType doctype) {
        Writer out = new StringWriter();
        try {
            output(doctype, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(Element element) {
        Writer out = new StringWriter();
        try {
            output(element, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(List list) {
        Writer out = new StringWriter();
        try {
            output(list, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(CDATA cdata) {
        Writer out = new StringWriter();
        try {
            output(cdata, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(Text text) {
        Writer out = new StringWriter();
        try {
            output(text, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(Comment comment) {
        Writer out = new StringWriter();
        try {
            output(comment, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(ProcessingInstruction pi) {
        Writer out = new StringWriter();
        try {
            output(pi, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(EntityRef entity) {
        Writer out = new StringWriter();
        try {
            output(entity, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    protected void printDeclaration(Writer out, Document doc, String encoding) throws IOException {
        if (!this.userFormat.omitDeclaration) {
            out.write("<?xml version=\"1.0\"");
            if (!this.userFormat.omitEncoding) {
                out.write(new StringBuffer().append(" encoding=\"").append(encoding).append("\"").toString());
            }
            out.write("?>");
            out.write(this.currentFormat.lineSeparator);
        }
    }

    protected void printDocType(Writer out, DocType docType) throws IOException {
        String publicID = docType.getPublicID();
        String systemID = docType.getSystemID();
        String internalSubset = docType.getInternalSubset();
        boolean hasPublic = false;
        out.write("<!DOCTYPE ");
        out.write(docType.getElementName());
        if (publicID != null) {
            out.write(" PUBLIC \"");
            out.write(publicID);
            out.write("\"");
            hasPublic = true;
        }
        if (systemID != null) {
            if (!hasPublic) {
                out.write(" SYSTEM");
            }
            out.write(" \"");
            out.write(systemID);
            out.write("\"");
        }
        if (!(internalSubset == null || internalSubset.equals(""))) {
            out.write(" [");
            out.write(this.currentFormat.lineSeparator);
            out.write(docType.getInternalSubset());
            out.write("]");
        }
        out.write(">");
    }

    protected void printComment(Writer out, Comment comment) throws IOException {
        out.write("<!--");
        out.write(comment.getText());
        out.write("-->");
    }

    protected void printProcessingInstruction(Writer out, ProcessingInstruction pi) throws IOException {
        String target = pi.getTarget();
        boolean piProcessed = false;
        if (!this.currentFormat.ignoreTrAXEscapingPIs) {
            if (target.equals("javax.xml.transform.disable-output-escaping")) {
                this.escapeOutput = false;
                piProcessed = true;
            } else if (target.equals("javax.xml.transform.enable-output-escaping")) {
                this.escapeOutput = true;
                piProcessed = true;
            }
        }
        if (!piProcessed) {
            String rawData = pi.getData();
            if ("".equals(rawData)) {
                out.write("<?");
                out.write(target);
                out.write("?>");
                return;
            }
            out.write("<?");
            out.write(target);
            out.write(" ");
            out.write(rawData);
            out.write("?>");
        }
    }

    protected void printEntityRef(Writer out, EntityRef entity) throws IOException {
        out.write("&");
        out.write(entity.getName());
        out.write(";");
    }

    protected void printCDATA(Writer out, CDATA cdata) throws IOException {
        String str = this.currentFormat.mode == TextMode.NORMALIZE ? cdata.getTextNormalize() : this.currentFormat.mode == TextMode.TRIM ? cdata.getText().trim() : cdata.getText();
        out.write("<![CDATA[");
        out.write(str);
        out.write("]]>");
    }

    protected void printText(Writer out, Text text) throws IOException {
        String str = this.currentFormat.mode == TextMode.NORMALIZE ? text.getTextNormalize() : this.currentFormat.mode == TextMode.TRIM ? text.getText().trim() : text.getText();
        out.write(escapeElementEntities(str));
    }

    private void printString(Writer out, String str) throws IOException {
        if (this.currentFormat.mode == TextMode.NORMALIZE) {
            str = Text.normalizeString(str);
        } else if (this.currentFormat.mode == TextMode.TRIM) {
            str = str.trim();
        }
        out.write(escapeElementEntities(str));
    }

    protected void printElement(Writer out, Element element, int level, NamespaceStack namespaces) throws IOException {
        List attributes = element.getAttributes();
        List content = element.getContent();
        String space = null;
        if (attributes != null) {
            space = element.getAttributeValue("space", Namespace.XML_NAMESPACE);
        }
        Format previousFormat = this.currentFormat;
        if (SFSConstants.DEFAULT_GROUP_ID.equals(space)) {
            this.currentFormat = this.userFormat;
        } else if ("preserve".equals(space)) {
            this.currentFormat = preserveFormat;
        }
        out.write("<");
        printQualifiedName(out, element);
        int previouslyDeclaredNamespaces = namespaces.size();
        printElementNamespace(out, element, namespaces);
        printAdditionalNamespaces(out, element, namespaces);
        if (attributes != null) {
            printAttributes(out, attributes, element, namespaces);
        }
        int start = skipLeadingWhite(content, 0);
        int size = content.size();
        if (start < size) {
            out.write(">");
            if (nextNonText(content, start) < size) {
                newline(out);
                printContentRange(out, content, start, size, level + 1, namespaces);
                newline(out);
                indent(out, level);
            } else {
                printTextRange(out, content, start, size);
            }
            out.write("</");
            printQualifiedName(out, element);
            out.write(">");
        } else if (this.currentFormat.expandEmptyElements) {
            out.write("></");
            printQualifiedName(out, element);
            out.write(">");
        } else {
            out.write(" />");
        }
        while (namespaces.size() > previouslyDeclaredNamespaces) {
            namespaces.pop();
        }
        this.currentFormat = previousFormat;
    }

    private void printContentRange(Writer out, List content, int start, int end, int level, NamespaceStack namespaces) throws IOException {
        int index = start;
        while (index < end) {
            boolean firstNode = index == start;
            Object next = content.get(index);
            if ((next instanceof Text) || (next instanceof EntityRef)) {
                int first = skipLeadingWhite(content, index);
                index = nextNonText(content, first);
                if (first < index) {
                    if (!firstNode) {
                        newline(out);
                    }
                    indent(out, level);
                    printTextRange(out, content, first, index);
                }
            } else {
                if (!firstNode) {
                    newline(out);
                }
                indent(out, level);
                if (next instanceof Comment) {
                    printComment(out, (Comment) next);
                } else if (next instanceof Element) {
                    printElement(out, (Element) next, level, namespaces);
                } else if (next instanceof ProcessingInstruction) {
                    printProcessingInstruction(out, (ProcessingInstruction) next);
                }
                index++;
            }
        }
    }

    private void printTextRange(Writer out, List content, int start, int end) throws IOException {
        String previous = null;
        start = skipLeadingWhite(content, start);
        if (start < content.size()) {
            end = skipTrailingWhite(content, end);
            for (int i = start; i < end; i++) {
                String next;
                Object node = content.get(i);
                if (node instanceof Text) {
                    next = ((Text) node).getText();
                } else if (node instanceof EntityRef) {
                    next = new StringBuffer().append("&").append(((EntityRef) node).getValue()).append(";").toString();
                } else {
                    throw new IllegalStateException("Should see only CDATA, Text, or EntityRef");
                }
                if (!(next == null || "".equals(next))) {
                    if (previous != null && ((this.currentFormat.mode == TextMode.NORMALIZE || this.currentFormat.mode == TextMode.TRIM) && (endsWithWhite(previous) || startsWithWhite(next)))) {
                        out.write(" ");
                    }
                    if (node instanceof CDATA) {
                        printCDATA(out, (CDATA) node);
                    } else if (node instanceof EntityRef) {
                        printEntityRef(out, (EntityRef) node);
                    } else {
                        printString(out, next);
                    }
                    previous = next;
                }
            }
        }
    }

    private void printNamespace(Writer out, Namespace ns, NamespaceStack namespaces) throws IOException {
        String prefix = ns.getPrefix();
        String uri = ns.getURI();
        if (!uri.equals(namespaces.getURI(prefix))) {
            out.write(" xmlns");
            if (!prefix.equals("")) {
                out.write(":");
                out.write(prefix);
            }
            out.write("=\"");
            out.write(escapeAttributeEntities(uri));
            out.write("\"");
            namespaces.push(ns);
        }
    }

    protected void printAttributes(Writer out, List attributes, Element parent, NamespaceStack namespaces) throws IOException {
        for (int i = 0; i < attributes.size(); i++) {
            Attribute attribute = (Attribute) attributes.get(i);
            Namespace ns = attribute.getNamespace();
            if (!(ns == Namespace.NO_NAMESPACE || ns == Namespace.XML_NAMESPACE)) {
                printNamespace(out, ns, namespaces);
            }
            out.write(" ");
            printQualifiedName(out, attribute);
            out.write("=");
            out.write("\"");
            out.write(escapeAttributeEntities(attribute.getValue()));
            out.write("\"");
        }
    }

    private void printElementNamespace(Writer out, Element element, NamespaceStack namespaces) throws IOException {
        Namespace ns = element.getNamespace();
        if (ns != Namespace.XML_NAMESPACE) {
            if (ns != Namespace.NO_NAMESPACE || namespaces.getURI("") != null) {
                printNamespace(out, ns, namespaces);
            }
        }
    }

    private void printAdditionalNamespaces(Writer out, Element element, NamespaceStack namespaces) throws IOException {
        List list = element.getAdditionalNamespaces();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                printNamespace(out, (Namespace) list.get(i), namespaces);
            }
        }
    }

    private void newline(Writer out) throws IOException {
        if (this.currentFormat.indent != null) {
            out.write(this.currentFormat.lineSeparator);
        }
    }

    private void indent(Writer out, int level) throws IOException {
        if (this.currentFormat.indent != null && !this.currentFormat.indent.equals("")) {
            for (int i = 0; i < level; i++) {
                out.write(this.currentFormat.indent);
            }
        }
    }

    private int skipLeadingWhite(List content, int start) {
        if (start < 0) {
            start = 0;
        }
        int index = start;
        int size = content.size();
        if (this.currentFormat.mode == TextMode.TRIM_FULL_WHITE || this.currentFormat.mode == TextMode.NORMALIZE || this.currentFormat.mode == TextMode.TRIM) {
            while (index < size) {
                if (!isAllWhitespace(content.get(index))) {
                    return index;
                }
                index++;
            }
        }
        return index;
    }

    private int skipTrailingWhite(List content, int start) {
        int size = content.size();
        if (start > size) {
            start = size;
        }
        int index = start;
        if (this.currentFormat.mode == TextMode.TRIM_FULL_WHITE || this.currentFormat.mode == TextMode.NORMALIZE || this.currentFormat.mode == TextMode.TRIM) {
            while (index >= 0 && isAllWhitespace(content.get(index - 1))) {
                index--;
            }
        }
        return index;
    }

    private static int nextNonText(List content, int start) {
        if (start < 0) {
            start = 0;
        }
        int size = content.size();
        for (int index = start; index < size; index++) {
            Object node = content.get(index);
            if (!(node instanceof Text) && !(node instanceof EntityRef)) {
                return index;
            }
        }
        return size;
    }

    private boolean isAllWhitespace(Object obj) {
        String str;
        if (obj instanceof String) {
            str = (String) obj;
        } else if (!(obj instanceof Text)) {
            return obj instanceof EntityRef ? false : false;
        } else {
            str = ((Text) obj).getText();
        }
        for (int i = 0; i < str.length(); i++) {
            if (!Verifier.isXMLWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private boolean startsWithWhite(String str) {
        if (str == null || str.length() <= 0 || !Verifier.isXMLWhitespace(str.charAt(0))) {
            return false;
        }
        return true;
    }

    private boolean endsWithWhite(String str) {
        if (str == null || str.length() <= 0 || !Verifier.isXMLWhitespace(str.charAt(str.length() - 1))) {
            return false;
        }
        return true;
    }

    public String escapeAttributeEntities(String str) {
        EscapeStrategy strategy = this.currentFormat.escapeStrategy;
        StringBuffer buffer = null;
        for (int i = 0; i < str.length(); i++) {
            String entity;
            char ch = str.charAt(i);
            switch (ch) {
                case BaseRequest.ChangeRoomPassword /*9*/:
                    entity = "&#x9;";
                    break;
                case BaseRequest.ObjectMessage /*10*/:
                    entity = "&#xA;";
                    break;
                case BaseRequest.CallExtension /*13*/:
                    entity = "&#xD;";
                    break;
                case R.styleable.Theme_actionModePasteDrawable /*34*/:
                    entity = "&quot;";
                    break;
                case R.styleable.Theme_actionModeWebSearchDrawable /*38*/:
                    entity = "&amp;";
                    break;
                case R.styleable.Theme_popupMenuStyle /*60*/:
                    entity = "&lt;";
                    break;
                case R.styleable.Theme_editTextColor /*62*/:
                    entity = "&gt;";
                    break;
                default:
                    if (!strategy.shouldEscape(ch)) {
                        entity = null;
                        break;
                    }
                    entity = new StringBuffer().append("&#x").append(Integer.toHexString(ch)).append(";").toString();
                    break;
            }
            if (buffer == null) {
                if (entity != null) {
                    buffer = new StringBuffer(str.length() + 20);
                    buffer.append(str.substring(0, i));
                    buffer.append(entity);
                }
            } else if (entity == null) {
                buffer.append(ch);
            } else {
                buffer.append(entity);
            }
        }
        return buffer == null ? str : buffer.toString();
    }

    public String escapeElementEntities(String str) {
        if (!this.escapeOutput) {
            return str;
        }
        EscapeStrategy strategy = this.currentFormat.escapeStrategy;
        StringBuffer buffer = null;
        for (int i = 0; i < str.length(); i++) {
            String entity;
            char ch = str.charAt(i);
            switch (ch) {
                case BaseRequest.ObjectMessage /*10*/:
                    entity = this.currentFormat.lineSeparator;
                    break;
                case BaseRequest.CallExtension /*13*/:
                    entity = "&#xD;";
                    break;
                case R.styleable.Theme_actionModeWebSearchDrawable /*38*/:
                    entity = "&amp;";
                    break;
                case R.styleable.Theme_popupMenuStyle /*60*/:
                    entity = "&lt;";
                    break;
                case R.styleable.Theme_editTextColor /*62*/:
                    entity = "&gt;";
                    break;
                default:
                    if (!strategy.shouldEscape(ch)) {
                        entity = null;
                        break;
                    }
                    entity = new StringBuffer().append("&#x").append(Integer.toHexString(ch)).append(";").toString();
                    break;
            }
            if (buffer == null) {
                if (entity != null) {
                    buffer = new StringBuffer(str.length() + 20);
                    buffer.append(str.substring(0, i));
                    buffer.append(entity);
                }
            } else if (entity == null) {
                buffer.append(ch);
            } else {
                buffer.append(entity);
            }
        }
        if (buffer != null) {
            return buffer.toString();
        }
        return str;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e.toString());
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < this.userFormat.lineSeparator.length(); i++) {
            char ch = this.userFormat.lineSeparator.charAt(i);
            switch (ch) {
                case BaseRequest.ChangeRoomPassword /*9*/:
                    buffer.append("\\t");
                    break;
                case BaseRequest.ObjectMessage /*10*/:
                    buffer.append("\\n");
                    break;
                case BaseRequest.CallExtension /*13*/:
                    buffer.append("\\r");
                    break;
                default:
                    buffer.append(new StringBuffer().append("[").append(ch).append("]").toString());
                    break;
            }
        }
        return new StringBuffer().append("XMLOutputter[omitDeclaration = ").append(this.userFormat.omitDeclaration).append(", ").append("encoding = ").append(this.userFormat.encoding).append(", ").append("omitEncoding = ").append(this.userFormat.omitEncoding).append(", ").append("indent = '").append(this.userFormat.indent).append("'").append(", ").append("expandEmptyElements = ").append(this.userFormat.expandEmptyElements).append(", ").append("lineSeparator = '").append(buffer.toString()).append("', ").append("textMode = ").append(this.userFormat.mode).append("]").toString();
    }

    private NamespaceStack createNamespaceStack() {
        return new NamespaceStack(this);
    }

    private void printQualifiedName(Writer out, Element e) throws IOException {
        if (e.getNamespace().getPrefix().length() == 0) {
            out.write(e.getName());
            return;
        }
        out.write(e.getNamespace().getPrefix());
        out.write(58);
        out.write(e.getName());
    }

    private void printQualifiedName(Writer out, Attribute a) throws IOException {
        String prefix = a.getNamespace().getPrefix();
        if (prefix == null || prefix.equals("")) {
            out.write(a.getName());
            return;
        }
        out.write(prefix);
        out.write(58);
        out.write(a.getName());
    }
}
