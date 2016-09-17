package com.smartfoxserver.v2.entities.data;

public class SFSDataWrapper {
    private Object object;
    private SFSDataType typeId;

    public SFSDataWrapper(SFSDataType typeId, Object object) {
        this.typeId = typeId;
        this.object = object;
    }

    public SFSDataType getTypeId() {
        return this.typeId;
    }

    public Object getObject() {
        return this.object;
    }
}
