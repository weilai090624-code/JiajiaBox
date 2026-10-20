.class public final Lio/nekohasekai/sagernet/Action;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/Action;",
        "",
        "<init>",
        "()V",
        "SERVICE",
        "",
        "CLOSE",
        "RELOAD",
        "RESET_UPSTREAM_CONNECTIONS",
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


# static fields
.field public static final CLOSE:Ljava/lang/String; = "io.nekohasekai.sagernet.CLOSE"

.field public static final INSTANCE:Lio/nekohasekai/sagernet/Action;

.field public static final RELOAD:Ljava/lang/String; = "io.nekohasekai.sagernet.RELOAD"

.field public static final RESET_UPSTREAM_CONNECTIONS:Ljava/lang/String; = "com.linjiajia.top.RESET_UPSTREAM_CONNECTIONS"

.field public static final SERVICE:Ljava/lang/String; = "io.nekohasekai.sagernet.SERVICE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/Action;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/Action;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/Action;->INSTANCE:Lio/nekohasekai/sagernet/Action;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
