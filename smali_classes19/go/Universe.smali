.class public abstract Lgo/Universe;
.super Ljava/lang/Object;
.source "Universe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgo/Universe$proxyerror;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 12
    invoke-static {}, Lgo/Seq;->touch()V

    .line 13
    invoke-static {}, Lgo/Universe;->_init()V

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

.method public static touch()V
    .locals 0

    .line 19
    return-void
.end method
