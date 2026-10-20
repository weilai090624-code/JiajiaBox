.class public interface abstract Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
.super Ljava/lang/Object;
.source "SagerConnection.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/SagerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/bg/SagerConnection$Callback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J$\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H&J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0016H&J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;",
        "",
        "cbSpeedUpdate",
        "",
        "stats",
        "Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;",
        "cbTrafficUpdate",
        "data",
        "Lio/nekohasekai/sagernet/aidl/TrafficData;",
        "cbSelectorUpdate",
        "id",
        "",
        "stateChanged",
        "state",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "profileName",
        "",
        "msg",
        "missingPlugin",
        "pluginName",
        "onServiceConnected",
        "service",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetService;",
        "onServiceDisconnected",
        "onBinderDied",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cbSelectorUpdate(J)V
.end method

.method public abstract cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
.end method

.method public abstract cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
.end method

.method public abstract missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onBinderDied()V
.end method

.method public abstract onServiceConnected(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract stateChanged(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Ljava/lang/String;)V
.end method
