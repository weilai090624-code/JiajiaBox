.class public final Landroidx/work/Operation$State$IN_PROGRESS;
.super Landroidx/work/Operation$State;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Operation$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IN_PROGRESS"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Landroidx/work/Operation$State;-><init>()V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/Operation$1;)V
    .registers 2
    .param p1, "x0"    # Landroidx/work/Operation$1;

    .line 110
    invoke-direct {p0}, Landroidx/work/Operation$State$IN_PROGRESS;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 118
    const-string v0, "IN_PROGRESS"

    return-object v0
.end method
