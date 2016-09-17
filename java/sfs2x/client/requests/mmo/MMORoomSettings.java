package sfs2x.client.requests.mmo;

import sfs2x.client.entities.data.Vec3D;
import sfs2x.client.requests.RoomSettings;

public class MMORoomSettings extends RoomSettings {
    private Vec3D defaultAOI;
    private MapLimits mapLimits;
    private int proximityListUpdateMillis = 250;
    private boolean sendAOIEntryPoint = true;
    private int userMaxLimboSeconds = 50;

    public MMORoomSettings(String name) {
        super(name);
    }

    public Vec3D getDefaultAOI() {
        return this.defaultAOI;
    }

    public void setDefaultAOI(Vec3D defaultAOI) {
        this.defaultAOI = defaultAOI;
    }

    public MapLimits getMapLimits() {
        return this.mapLimits;
    }

    public void setMapLimits(MapLimits mapLimits) {
        this.mapLimits = mapLimits;
    }

    public int getUserMaxLimboSeconds() {
        return this.userMaxLimboSeconds;
    }

    public void setUserMaxLimboSeconds(int userMaxLimboSeconds) {
        this.userMaxLimboSeconds = userMaxLimboSeconds;
    }

    public int getProximityListUpdateMillis() {
        return this.proximityListUpdateMillis;
    }

    public void setProximityListUpdateMillis(int proximityListUpdateMillis) {
        this.proximityListUpdateMillis = proximityListUpdateMillis;
    }

    public boolean isSendAOIEntryPoint() {
        return this.sendAOIEntryPoint;
    }

    public void setSendAOIEntryPoint(boolean sendAOIEntryPoint) {
        this.sendAOIEntryPoint = sendAOIEntryPoint;
    }
}
