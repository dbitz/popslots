package sfs2x.client.requests;

public class RoomExtension {
    private String className;
    private String id;
    private String propertiesFile = "";

    public RoomExtension(String id, String className) {
        this.id = id;
        this.className = className;
    }

    public String getId() {
        return this.id;
    }

    public String getClassName() {
        return this.className;
    }

    public String getPropertiesFile() {
        return this.propertiesFile;
    }

    public void setPropertiesFile(String fileName) {
        this.propertiesFile = fileName;
    }
}
