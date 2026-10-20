.class public abstract Llibcore/Libcore;
.super Ljava/lang/Object;
.source "Libcore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/Libcore$proxyNB4AInterface;,
        Llibcore/Libcore$proxyLocalDNSTransport;,
        Llibcore/Libcore$proxyHTTPResponse;,
        Llibcore/Libcore$proxyHTTPRequest;,
        Llibcore/Libcore$proxyHTTPClient;,
        Llibcore/Libcore$proxyFunc;,
        Llibcore/Libcore$proxyBoxPlatformInterface;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lgo/Seq;->touch()V

    .line 13
    invoke-static {}, Llibcore/Libcore;->_init()V

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _init()V
.end method

.method public static native forceGc()V
.end method

.method public static native initCore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLlibcore/NB4AInterface;Llibcore/BoxPlatformInterface;Llibcore/LocalDNSTransport;)V
.end method

.method public static native nekoLogClear()V
.end method

.method public static native nekoLogPrintln(Ljava/lang/String;)V
.end method

.method public static native newHttpClient()Llibcore/HTTPClient;
.end method

.method public static native newSingBoxInstance(Ljava/lang/String;Llibcore/LocalDNSTransport;)Llibcore/BoxInstance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native resetAllConnections(Z)V
.end method

.method public static native sha1([B)[B
.end method

.method public static native sha256Hex([B)Ljava/lang/String;
.end method

.method public static native stunTest(Ljava/lang/String;)Llibcore/StunResult;
.end method

.method public static touch()V
    .locals 0

    .line 19
    return-void
.end method

.method public static native unxz(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native unzip(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native urlTest(Llibcore/BoxInstance;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native versionBox()Ljava/lang/String;
.end method
