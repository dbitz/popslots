package com.helpshift.storage;

import java.io.Serializable;
import java.util.List;

public interface KeyValueStorage {
    Object get(String str);

    List<String> getAllKeys();

    void removeAllKeys();

    void removeKey(String str);

    boolean set(String str, Serializable serializable);

    void setWithBackup(String str, Serializable serializable);
}
