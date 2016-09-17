package defpackage;

import com.facebook.internal.ServerProtocol;
import com.helpshift.support.constants.MessageColumns;
import com.helpshift.support.constants.SectionsColumns;
import com.helpshift.support.res.values.HSConsts;
import com.helpshift.support.storage.ProfilesDBHelper;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.jdom.Element;
import org.jdom.input.SAXBuilder;

class JDOMAbout$Info {
    private static final String INFO_FILENAME = "META-INF/jdom-info.xml";
    final List authors = new ArrayList();
    final String copyright;
    final String description;
    final String license;
    final String support;
    final String title;
    final String version;
    final String website;

    JDOMAbout$Info() throws Exception {
        Element root = new SAXBuilder().build(getInfoFileStream()).getRootElement();
        this.title = root.getChildTextTrim(SectionsColumns.TITLE);
        this.version = root.getChildTextTrim(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);
        this.copyright = root.getChildTextTrim("copyright");
        this.description = root.getChildTextTrim("description");
        this.license = root.getChildTextTrim("license");
        this.support = root.getChildTextTrim(HSConsts.SRC_SUPPORT);
        this.website = root.getChildTextTrim("web-site");
        for (Element element : root.getChildren(MessageColumns.AUTHOR)) {
            this.authors.add(new JDOMAbout$Author(element.getChildTextTrim(ProfilesDBHelper.COLUMN_NAME), element.getChildTextTrim("e-mail")));
        }
    }

    private InputStream getInfoFileStream() throws FileNotFoundException {
        InputStream inputStream = getClass().getResourceAsStream(INFO_FILENAME);
        if (inputStream != null) {
            return inputStream;
        }
        throw new FileNotFoundException("META-INF/jdom-info.xml not found; it should be within the JDOM JAR but wasn't found on the classpath");
    }
}
