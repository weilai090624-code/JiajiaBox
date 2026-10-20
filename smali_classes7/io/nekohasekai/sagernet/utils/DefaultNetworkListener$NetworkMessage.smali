.class abstract Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;
.super Ljava/lang/Object;
.source "DefaultNetworkListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/utils/DefaultNetworkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NetworkMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;,
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Lost;,
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;,
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;,
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;,
        Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Update;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\u0008\tB\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u0082\u0001\u0006\n\u000b\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;",
        "",
        "<init>",
        "()V",
        "Start",
        "Get",
        "Stop",
        "Put",
        "Update",
        "Lost",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Get;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Lost;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Put;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Start;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Stop;",
        "Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage$Update;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/utils/DefaultNetworkListener$NetworkMessage;-><init>()V

    return-void
.end method
