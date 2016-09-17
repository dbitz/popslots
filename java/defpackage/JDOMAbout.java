package defpackage;

public class JDOMAbout {
    public static void main(String[] args) throws Exception {
        JDOMAbout$Info info = new JDOMAbout$Info();
        String title = info.title;
        System.out.println(new StringBuffer().append(title).append(" version ").append(info.version).toString());
        System.out.println(new StringBuffer().append("Copyright ").append(info.copyright).toString());
        System.out.println();
        System.out.println(info.description);
        System.out.println();
        System.out.println("Authors:");
        for (JDOMAbout$Author author : info.authors) {
            System.out.print(new StringBuffer().append("  ").append(author.name).toString());
            if (author.email == null) {
                System.out.println();
            } else {
                System.out.println(new StringBuffer().append(" <").append(author.email).append(">").toString());
            }
        }
        System.out.println();
        System.out.println(new StringBuffer().append(title).append(" license:").toString());
        System.out.println(info.license);
        System.out.println();
        System.out.println(new StringBuffer().append(title).append(" support:").toString());
        System.out.println(info.support);
        System.out.println();
        System.out.println(new StringBuffer().append(title).append(" web site: ").append(info.website).toString());
        System.out.println();
    }
}
