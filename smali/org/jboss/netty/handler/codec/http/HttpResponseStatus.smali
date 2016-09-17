.class public Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
.super Ljava/lang/Object;
.source "HttpResponseStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

.field public static final VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;


# instance fields
.field private final code:I

.field private final reasonPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x64

    const-string/jumbo v2, "Continue"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 40
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x65

    const-string/jumbo v2, "Switching Protocols"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 45
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x66

    const-string/jumbo v2, "Processing"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 50
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xc8

    const-string/jumbo v2, "OK"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 55
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xc9

    const-string/jumbo v2, "Created"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 60
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xca

    const-string/jumbo v2, "Accepted"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 65
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcb

    const-string/jumbo v2, "Non-Authoritative Information"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 70
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcc

    const-string/jumbo v2, "No Content"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 75
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcd

    const-string/jumbo v2, "Reset Content"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 80
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xce

    const-string/jumbo v2, "Partial Content"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 85
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0xcf

    const-string/jumbo v2, "Multi-Status"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 90
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12c

    const-string/jumbo v2, "Multiple Choices"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 95
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12d

    const-string/jumbo v2, "Moved Permanently"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 100
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12e

    const-string/jumbo v2, "Found"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 105
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x12f

    const-string/jumbo v2, "See Other"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 110
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x130

    const-string/jumbo v2, "Not Modified"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 115
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x131

    const-string/jumbo v2, "Use Proxy"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 120
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x133

    const-string/jumbo v2, "Temporary Redirect"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 125
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x190

    const-string/jumbo v2, "Bad Request"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 130
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x191

    const-string/jumbo v2, "Unauthorized"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 135
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x192

    const-string/jumbo v2, "Payment Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 140
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x193

    const-string/jumbo v2, "Forbidden"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 145
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x194

    const-string/jumbo v2, "Not Found"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 150
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x195

    const-string/jumbo v2, "Method Not Allowed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 155
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x196

    const-string/jumbo v2, "Not Acceptable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 160
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x197

    const-string/jumbo v2, "Proxy Authentication Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 165
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x198

    const-string/jumbo v2, "Request Timeout"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 170
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x199

    const-string/jumbo v2, "Conflict"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 175
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19a

    const-string/jumbo v2, "Gone"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 180
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19b

    const-string/jumbo v2, "Length Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 185
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19c

    const-string/jumbo v2, "Precondition Failed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 190
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19d

    const-string/jumbo v2, "Request Entity Too Large"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 195
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19e

    const-string/jumbo v2, "Request-URI Too Long"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 200
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x19f

    const-string/jumbo v2, "Unsupported Media Type"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 205
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a0

    const-string/jumbo v2, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 210
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a1

    const-string/jumbo v2, "Expectation Failed"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 215
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a6

    const-string/jumbo v2, "Unprocessable Entity"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 220
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a7

    const-string/jumbo v2, "Locked"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 225
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a8

    const-string/jumbo v2, "Failed Dependency"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 230
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1a9

    const-string/jumbo v2, "Unordered Collection"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 235
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1aa

    const-string/jumbo v2, "Upgrade Required"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 240
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f4

    const-string/jumbo v2, "Internal Server Error"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 245
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f5

    const-string/jumbo v2, "Not Implemented"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 250
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f6

    const-string/jumbo v2, "Bad Gateway"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 255
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f7

    const-string/jumbo v2, "Service Unavailable"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 260
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f8

    const-string/jumbo v2, "Gateway Timeout"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 265
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1f9

    const-string/jumbo v2, "HTTP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 270
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1fa

    const-string/jumbo v2, "Variant Also Negotiates"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 275
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1fb

    const-string/jumbo v2, "Insufficient Storage"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .line 280
    new-instance v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    const/16 v1, 0x1fe

    const-string/jumbo v2, "Not Extended"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    if-gez p1, :cond_0

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (expected: 0+)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 426
    :cond_0
    if-nez p2, :cond_1

    .line 427
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "reasonPhrase"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 431
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 433
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 430
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :pswitch_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reasonPhrase contains one of the following prohibited characters: \\r\\n: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    .end local v0    # "c":C
    :cond_2
    iput p1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    .line 442
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    .line 443
    return-void

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;
    .locals 4
    .param p0, "code"    # I

    .prologue
    .line 288
    sparse-switch p0, :sswitch_data_0

    .line 393
    const/16 v1, 0x64

    if-ge p0, v1, :cond_0

    .line 394
    const-string/jumbo v0, "Unknown Status"

    .line 409
    .local v0, "reasonPhrase":Ljava/lang/String;
    :goto_0
    new-instance v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 290
    :sswitch_0
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONTINUE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 292
    :sswitch_1
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 294
    :sswitch_2
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROCESSING:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 296
    :sswitch_3
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->OK:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 298
    :sswitch_4
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CREATED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 300
    :sswitch_5
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->ACCEPTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 302
    :sswitch_6
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NON_AUTHORITATIVE_INFORMATION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 304
    :sswitch_7
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 306
    :sswitch_8
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 308
    :sswitch_9
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PARTIAL_CONTENT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 310
    :sswitch_a
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTI_STATUS:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 312
    :sswitch_b
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MULTIPLE_CHOICES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 314
    :sswitch_c
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->MOVED_PERMANENTLY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 316
    :sswitch_d
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 318
    :sswitch_e
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SEE_OTHER:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 320
    :sswitch_f
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 322
    :sswitch_10
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->USE_PROXY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 324
    :sswitch_11
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->TEMPORARY_REDIRECT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 326
    :sswitch_12
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_REQUEST:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 328
    :sswitch_13
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNAUTHORIZED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 330
    :sswitch_14
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PAYMENT_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 332
    :sswitch_15
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FORBIDDEN:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 334
    :sswitch_16
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_FOUND:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 336
    :sswitch_17
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->METHOD_NOT_ALLOWED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 338
    :sswitch_18
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_ACCEPTABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 340
    :sswitch_19
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 342
    :sswitch_1a
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 344
    :sswitch_1b
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->CONFLICT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 346
    :sswitch_1c
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GONE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 348
    :sswitch_1d
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LENGTH_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 350
    :sswitch_1e
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->PRECONDITION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 352
    :sswitch_1f
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_ENTITY_TOO_LARGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 354
    :sswitch_20
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUEST_URI_TOO_LONG:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 356
    :sswitch_21
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNSUPPORTED_MEDIA_TYPE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 358
    :sswitch_22
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 360
    :sswitch_23
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->EXPECTATION_FAILED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 362
    :sswitch_24
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNPROCESSABLE_ENTITY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 364
    :sswitch_25
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->LOCKED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 366
    :sswitch_26
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->FAILED_DEPENDENCY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 368
    :sswitch_27
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UNORDERED_COLLECTION:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 370
    :sswitch_28
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->UPGRADE_REQUIRED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 372
    :sswitch_29
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INTERNAL_SERVER_ERROR:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto :goto_1

    .line 374
    :sswitch_2a
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_IMPLEMENTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 376
    :sswitch_2b
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->BAD_GATEWAY:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 378
    :sswitch_2c
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->SERVICE_UNAVAILABLE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 380
    :sswitch_2d
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->GATEWAY_TIMEOUT:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 382
    :sswitch_2e
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->HTTP_VERSION_NOT_SUPPORTED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 384
    :sswitch_2f
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->VARIANT_ALSO_NEGOTIATES:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 386
    :sswitch_30
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->INSUFFICIENT_STORAGE:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 388
    :sswitch_31
    sget-object v1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->NOT_EXTENDED:Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    goto/16 :goto_1

    .line 395
    :cond_0
    const/16 v1, 0xc8

    if-ge p0, v1, :cond_1

    .line 396
    const-string/jumbo v0, "Informational"

    .restart local v0    # "reasonPhrase":Ljava/lang/String;
    goto/16 :goto_0

    .line 397
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x12c

    if-ge p0, v1, :cond_2

    .line 398
    const-string/jumbo v0, "Successful"

    .restart local v0    # "reasonPhrase":Ljava/lang/String;
    goto/16 :goto_0

    .line 399
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :cond_2
    const/16 v1, 0x190

    if-ge p0, v1, :cond_3

    .line 400
    const-string/jumbo v0, "Redirection"

    .restart local v0    # "reasonPhrase":Ljava/lang/String;
    goto/16 :goto_0

    .line 401
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x1f4

    if-ge p0, v1, :cond_4

    .line 402
    const-string/jumbo v0, "Client Error"

    .restart local v0    # "reasonPhrase":Ljava/lang/String;
    goto/16 :goto_0

    .line 403
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :cond_4
    const/16 v1, 0x258

    if-ge p0, v1, :cond_5

    .line 404
    const-string/jumbo v0, "Server Error"

    .restart local v0    # "reasonPhrase":Ljava/lang/String;
    goto/16 :goto_0

    .line 406
    .end local v0    # "reasonPhrase":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "Unknown Status"

    .restart local v0    # "reasonPhrase":Ljava/lang/String;
    goto/16 :goto_0

    .line 288
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xca -> :sswitch_5
        0xcb -> :sswitch_6
        0xcc -> :sswitch_7
        0xcd -> :sswitch_8
        0xce -> :sswitch_9
        0xcf -> :sswitch_a
        0x12c -> :sswitch_b
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x12f -> :sswitch_e
        0x130 -> :sswitch_f
        0x131 -> :sswitch_10
        0x133 -> :sswitch_11
        0x190 -> :sswitch_12
        0x191 -> :sswitch_13
        0x192 -> :sswitch_14
        0x193 -> :sswitch_15
        0x194 -> :sswitch_16
        0x195 -> :sswitch_17
        0x196 -> :sswitch_18
        0x197 -> :sswitch_19
        0x198 -> :sswitch_1a
        0x199 -> :sswitch_1b
        0x19a -> :sswitch_1c
        0x19b -> :sswitch_1d
        0x19c -> :sswitch_1e
        0x19d -> :sswitch_1f
        0x19e -> :sswitch_20
        0x19f -> :sswitch_21
        0x1a0 -> :sswitch_22
        0x1a1 -> :sswitch_23
        0x1a6 -> :sswitch_24
        0x1a7 -> :sswitch_25
        0x1a8 -> :sswitch_26
        0x1a9 -> :sswitch_27
        0x1aa -> :sswitch_28
        0x1f4 -> :sswitch_29
        0x1f5 -> :sswitch_2a
        0x1f6 -> :sswitch_2b
        0x1f7 -> :sswitch_2c
        0x1f8 -> :sswitch_2d
        0x1f9 -> :sswitch_2e
        0x1fa -> :sswitch_2f
        0x1fb -> :sswitch_30
        0x1fe -> :sswitch_31
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->compareTo(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;)I
    .locals 2
    .param p1, "o"    # Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .prologue
    .line 474
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 466
    instance-of v1, p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    if-nez v1, :cond_1

    .line 470
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v1

    check-cast p1, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    return v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 480
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
