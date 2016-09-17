package com.helpshift.util;

import android.annotation.SuppressLint;
import android.location.Location;
import android.location.LocationManager;
import sfs2x.client.requests.BaseRequest;

public class LocationUtil {
    private static final float LOCATION_MIN_DISTANCE = 10.0f;
    private static final long LOCATION_MIN_TIME = 2000;
    private static final int TWO_MINUTES = 120000;
    private static Location currentLocation = null;

    public static boolean isBetterLocation(Location location, Location currentBestLocation) {
        if (currentBestLocation == null) {
            return true;
        }
        long timeDelta = location.getTime() - currentBestLocation.getTime();
        boolean isSignificantlyNewer = timeDelta > 120000;
        boolean isSignificantlyOlder = timeDelta < -120000;
        boolean isNewer = timeDelta > 0;
        if (isSignificantlyNewer) {
            return true;
        }
        if (isSignificantlyOlder) {
            return false;
        }
        int accuracyDelta = (int) (location.getAccuracy() - currentBestLocation.getAccuracy());
        boolean isLessAccurate = accuracyDelta > 0;
        boolean isMoreAccurate = accuracyDelta < 0;
        boolean isSignificantlyLessAccurate = accuracyDelta > BaseRequest.InitBuddyList;
        boolean isFromSameProvider = isSameProvider(location.getProvider(), currentBestLocation.getProvider());
        if (isMoreAccurate) {
            return true;
        }
        if (isNewer && !isLessAccurate) {
            return true;
        }
        if (isNewer && !isSignificantlyLessAccurate && isFromSameProvider) {
            return true;
        }
        return false;
    }

    public static Location sanitizeLocation(Location location) {
        Location limitedLocation = limitLatitude(location.getLatitude(), location.getLongitude());
        location.setLatitude(limitedLocation.getLatitude());
        location.setLongitude(limitedLocation.getLongitude());
        return location;
    }

    private static double limitLongitude(double longitudeDegrees) {
        double longitudeReduced = longitudeDegrees % 360.0d;
        if (longitudeReduced > 180.0d) {
            return longitudeReduced - 360.0d;
        }
        if (longitudeReduced <= -180.0d) {
            return longitudeReduced + 360.0d;
        }
        return longitudeReduced;
    }

    private static Location limitLatitude(double latitudeDegrees, double longitudeDegrees) {
        double d = -180.0d;
        latitudeDegrees = limitLongitude(latitudeDegrees);
        boolean flip = false;
        if (latitudeDegrees > 90.0d) {
            latitudeDegrees = 180.0d - latitudeDegrees;
            flip = true;
        } else if (latitudeDegrees < -90.0d) {
            latitudeDegrees = -180.0d - latitudeDegrees;
            flip = true;
        }
        if (flip) {
            if (longitudeDegrees <= 0.0d) {
                d = 180.0d;
            }
            longitudeDegrees += d;
        }
        longitudeDegrees = limitLongitude(longitudeDegrees);
        Location location = new Location("");
        location.setLatitude(latitudeDegrees);
        location.setLongitude(longitudeDegrees);
        return location;
    }

    public static boolean isSameLocation(Location location1, Location location2) {
        if (location1 == null || location2 == null) {
            if (location1 == null && location2 == null) {
                return true;
            }
            return false;
        } else if (location1.distanceTo(location2) <= LOCATION_MIN_DISTANCE) {
            return true;
        } else {
            return false;
        }
    }

    private static boolean isSameProvider(String provider1, String provider2) {
        if (provider1 == null) {
            return provider2 == null;
        } else {
            return provider1.equals(provider2);
        }
    }

    @SuppressLint({"all"})
    public static Location getUpdatedCurrentLocation() {
        Location betterLocation;
        LocationManager locationManager = (LocationManager) HelpshiftContext.getApplicationContext().getSystemService("location");
        Location nwLocation = null;
        Location gpsLocation = null;
        if (locationManager.getAllProviders().contains("network")) {
            nwLocation = locationManager.getLastKnownLocation("network");
        }
        if (locationManager.getAllProviders().contains("gps")) {
            gpsLocation = locationManager.getLastKnownLocation("gps");
        }
        if (gpsLocation != null) {
            betterLocation = gpsLocation;
        } else {
            betterLocation = nwLocation;
        }
        if (!(gpsLocation == null || nwLocation == null || !isBetterLocation(nwLocation, gpsLocation))) {
            betterLocation = nwLocation;
        }
        if (isBetterLocation(betterLocation, currentLocation)) {
            currentLocation = betterLocation;
        }
        return currentLocation;
    }
}
