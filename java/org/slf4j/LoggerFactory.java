package org.slf4j;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;
import org.slf4j.helpers.NOPLoggerFactory;
import org.slf4j.helpers.SubstituteLoggerFactory;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticLoggerBinder;

public final class LoggerFactory {
    private static final String[] API_COMPATIBILITY_LIST;
    static final String CODES_PREFIX = "http://www.slf4j.org/codes.html";
    static final int FAILED_INITILIZATION = 2;
    static int INITIALIZATION_STATE = UNINITIALIZED;
    static final String MULTIPLE_BINDINGS_URL = "http://www.slf4j.org/codes.html#multiple_bindings";
    static NOPLoggerFactory NOP_FALLBACK_FACTORY = new NOPLoggerFactory();
    static final int NOP_FALLBACK_INITILIZATION = 4;
    static final String NO_STATICLOGGERBINDER_URL = "http://www.slf4j.org/codes.html#StaticLoggerBinder";
    static final String NULL_LF_URL = "http://www.slf4j.org/codes.html#null_LF";
    static final int ONGOING_INITILIZATION = 1;
    private static String STATIC_LOGGER_BINDER_PATH = "org/slf4j/impl/StaticLoggerBinder.class";
    static final String SUBSTITUTE_LOGGER_URL = "http://www.slf4j.org/codes.html#substituteLogger";
    static final int SUCCESSFUL_INITILIZATION = 3;
    static SubstituteLoggerFactory TEMP_FACTORY = new SubstituteLoggerFactory();
    static final int UNINITIALIZED = 0;
    static final String UNSUCCESSFUL_INIT_MSG = "org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit";
    static final String UNSUCCESSFUL_INIT_URL = "http://www.slf4j.org/codes.html#unsuccessfulInit";
    static final String VERSION_MISMATCH = "http://www.slf4j.org/codes.html#version_mismatch";
    static Class class$org$slf4j$LoggerFactory;

    static {
        String[] strArr = new String[ONGOING_INITILIZATION];
        strArr[UNINITIALIZED] = "1.6";
        API_COMPATIBILITY_LIST = strArr;
    }

    private LoggerFactory() {
    }

    static void reset() {
        INITIALIZATION_STATE = UNINITIALIZED;
        TEMP_FACTORY = new SubstituteLoggerFactory();
    }

    private static final void performInitialization() {
        singleImplementationSanityCheck();
        bind();
        if (INITIALIZATION_STATE == SUCCESSFUL_INITILIZATION) {
            versionSanityCheck();
        }
    }

    private static final void bind() {
        String msg;
        try {
            StaticLoggerBinder.getSingleton();
            INITIALIZATION_STATE = SUCCESSFUL_INITILIZATION;
            emitSubstituteLoggerWarning();
        } catch (NoClassDefFoundError ncde) {
            msg = ncde.getMessage();
            if (msg == null || msg.indexOf("org/slf4j/impl/StaticLoggerBinder") == -1) {
                failedBinding(ncde);
                throw ncde;
            }
            INITIALIZATION_STATE = NOP_FALLBACK_INITILIZATION;
            Util.report("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
            Util.report("Defaulting to no-operation (NOP) logger implementation");
            Util.report("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
        } catch (NoSuchMethodError nsme) {
            msg = nsme.getMessage();
            if (!(msg == null || msg.indexOf("org.slf4j.impl.StaticLoggerBinder.getSingleton()") == -1)) {
                INITIALIZATION_STATE = FAILED_INITILIZATION;
                Util.report("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                Util.report("Your binding is version 1.5.5 or earlier.");
                Util.report("Upgrade your binding to version 1.6.x. or 2.0.x");
            }
            throw nsme;
        } catch (Exception e) {
            failedBinding(e);
            throw new IllegalStateException("Unexpected initialization failure", e);
        }
    }

    static void failedBinding(Throwable t) {
        INITIALIZATION_STATE = FAILED_INITILIZATION;
        Util.report("Failed to instantiate SLF4J LoggerFactory", t);
    }

    private static final void emitSubstituteLoggerWarning() {
        List loggerNameList = TEMP_FACTORY.getLoggerNameList();
        if (loggerNameList.size() != 0) {
            Util.report("The following loggers will not work becasue they were created");
            Util.report("during the default configuration phase of the underlying logging system.");
            Util.report("See also http://www.slf4j.org/codes.html#substituteLogger");
            for (int i = UNINITIALIZED; i < loggerNameList.size(); i += ONGOING_INITILIZATION) {
                Util.report((String) loggerNameList.get(i));
            }
        }
    }

    private static final void versionSanityCheck() {
        try {
            String requested = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean match = false;
            for (int i = UNINITIALIZED; i < API_COMPATIBILITY_LIST.length; i += ONGOING_INITILIZATION) {
                if (requested.startsWith(API_COMPATIBILITY_LIST[i])) {
                    match = true;
                }
            }
            if (!match) {
                Util.report(new StringBuffer().append("The requested version ").append(requested).append(" by your slf4j binding is not compatible with ").append(Arrays.asList(API_COMPATIBILITY_LIST).toString()).toString());
                Util.report("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
            }
        } catch (NoSuchFieldError e) {
        } catch (Throwable e2) {
            Util.report("Unexpected problem occured during version sanity check", e2);
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    private static void singleImplementationSanityCheck() {
        try {
            Class class$;
            Enumeration paths;
            if (class$org$slf4j$LoggerFactory == null) {
                class$ = class$("org.slf4j.LoggerFactory");
                class$org$slf4j$LoggerFactory = class$;
            } else {
                class$ = class$org$slf4j$LoggerFactory;
            }
            ClassLoader loggerFactoryClassLoader = class$.getClassLoader();
            if (loggerFactoryClassLoader == null) {
                paths = ClassLoader.getSystemResources(STATIC_LOGGER_BINDER_PATH);
            } else {
                paths = loggerFactoryClassLoader.getResources(STATIC_LOGGER_BINDER_PATH);
            }
            List implementationList = new ArrayList();
            while (paths.hasMoreElements()) {
                implementationList.add((URL) paths.nextElement());
            }
            if (implementationList.size() > ONGOING_INITILIZATION) {
                Util.report("Class path contains multiple SLF4J bindings.");
                for (int i = UNINITIALIZED; i < implementationList.size(); i += ONGOING_INITILIZATION) {
                    Util.report(new StringBuffer().append("Found binding in [").append(implementationList.get(i)).append("]").toString());
                }
                Util.report("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
            }
        } catch (IOException ioe) {
            Util.report("Error getting resources from path", ioe);
        }
    }

    public static Logger getLogger(String name) {
        return getILoggerFactory().getLogger(name);
    }

    public static Logger getLogger(Class clazz) {
        return getLogger(clazz.getName());
    }

    public static ILoggerFactory getILoggerFactory() {
        if (INITIALIZATION_STATE == 0) {
            INITIALIZATION_STATE = ONGOING_INITILIZATION;
            performInitialization();
        }
        switch (INITIALIZATION_STATE) {
            case ONGOING_INITILIZATION /*1*/:
                return TEMP_FACTORY;
            case FAILED_INITILIZATION /*2*/:
                throw new IllegalStateException(UNSUCCESSFUL_INIT_MSG);
            case SUCCESSFUL_INITILIZATION /*3*/:
                return StaticLoggerBinder.getSingleton().getLoggerFactory();
            case NOP_FALLBACK_INITILIZATION /*4*/:
                return NOP_FALLBACK_FACTORY;
            default:
                throw new IllegalStateException("Unreachable code");
        }
    }
}
