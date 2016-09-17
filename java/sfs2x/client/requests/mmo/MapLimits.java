package sfs2x.client.requests.mmo;

import sfs2x.client.entities.data.Vec3D;

public final class MapLimits {
    private Vec3D higherLimit;
    private Vec3D lowerLimit;

    public MapLimits(Vec3D low, Vec3D high) {
        if (low == null || high == null) {
            throw new IllegalArgumentException("Map Limits arguments must be both non null!");
        }
        this.lowerLimit = low;
        this.higherLimit = high;
    }

    public Vec3D getLowerLimit() {
        return this.lowerLimit;
    }

    public Vec3D getHigherLimit() {
        return this.higherLimit;
    }
}
