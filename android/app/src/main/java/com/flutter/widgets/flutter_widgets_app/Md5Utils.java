package com.flutter.widgets.flutter_widgets_app;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Utils {

    private static MessageDigest digest = null;

    public synchronized static final String hash(String data) {
        if (digest == null) {
            try {
                digest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException nsae) {
                System.err.println("Failed to load the MD5 MessageDigest. "
                        + "Jive will be unable to function normally.");
                nsae.printStackTrace();
            }
        }
        digest.update(data.getBytes());
        return toHex(digest.digest());
    }

    public static final String toHex(byte hash[]) {
        StringBuffer buf = new StringBuffer(hash.length * 2);
        int i;

        for (i = 0; i < hash.length; i++) {
            if (((int) hash[i] & 0xff) < 0x10) {
                buf.append("0");
            }
            buf.append(Long.toString((int) hash[i] & 0xff, 16));
        }
        return buf.toString();
    }

    public synchronized static final byte[] hash16(String data) {
        if (digest == null) {
            try {
                digest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException nsae) {
                System.err.println("Failed to load the MD5 MessageDigest. "
                        + "Jive will be unable to function normally.");
                nsae.printStackTrace();
            }
        }
        digest.update(data.getBytes());
        return digest.digest();
    }
}