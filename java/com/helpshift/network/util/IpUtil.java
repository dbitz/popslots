package com.helpshift.network.util;

import com.helpshift.util.HSPattern;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;

public class IpUtil {
    private static String getInterfaceAddress(boolean useIPv4) {
        try {
            for (NetworkInterface intf : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress addr : Collections.list(intf.getInetAddresses())) {
                    if (!addr.isLoopbackAddress()) {
                        String sAddr = addr.getHostAddress().toUpperCase();
                        boolean isIPv4 = InetAddressUtils.isIPv4Address(sAddr);
                        if (useIPv4) {
                            if (isIPv4) {
                                return sAddr;
                            }
                        } else if (!isIPv4) {
                            int delim = sAddr.indexOf(37);
                            if (delim >= 0) {
                                return sAddr.substring(0, delim);
                            }
                            return sAddr;
                        }
                    }
                }
            }
        } catch (Exception e) {
        }
        return "";
    }

    private static String validateIPAddress(String address, boolean useIPv4) {
        return (!useIPv4 || HSPattern.checkIpv4Address(address)) ? address : null;
    }

    public static String getIPAddress(boolean useIPv4) {
        return validateIPAddress(getInterfaceAddress(useIPv4), useIPv4);
    }
}
