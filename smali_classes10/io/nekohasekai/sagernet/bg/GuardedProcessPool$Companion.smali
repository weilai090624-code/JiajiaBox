.class public final Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;
.super Ljava/lang/Object;
.source "GuardedProcessPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/bg/GuardedProcessPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R#\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;",
        "",
        "<init>",
        "()V",
        "pid",
        "Ljava/lang/reflect/Field;",
        "kotlin.jvm.PlatformType",
        "getPid",
        "()Ljava/lang/reflect/Field;",
        "pid$delegate",
        "Lkotlin/Lazy;",
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

    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPid(Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;

    .line 21
    invoke-direct {p0}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool$Companion;->getPid()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private final getPid()Ljava/lang/reflect/Field;
    .locals 1

    .line 22
    invoke-static {}, Lio/nekohasekai/sagernet/bg/GuardedProcessPool;->access$getPid$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method
