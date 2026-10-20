.class public interface abstract Llibcore/BoxPlatformInterface;
.super Ljava/lang/Object;
.source "BoxPlatformInterface.java"


# virtual methods
.method public abstract autoDetectInterfaceControl(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract findConnectionOwner(ILjava/lang/String;ILjava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract openTun(Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract packageNameByUid(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract uidByPackageName(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract useProcFS()Z
.end method

.method public abstract wifiState()Ljava/lang/String;
.end method
