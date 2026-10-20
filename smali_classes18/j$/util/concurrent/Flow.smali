.class public final Lj$/util/concurrent/Flow;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/concurrent/Flow$Processor;,
        Lj$/util/concurrent/Flow$Subscription;,
        Lj$/util/concurrent/Flow$Subscriber;,
        Lj$/util/concurrent/Flow$Publisher;
    }
.end annotation


# static fields
.field static final DEFAULT_BUFFER_SIZE:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultBufferSize()I
    .locals 1

    .line 316
    const/16 v0, 0x100

    return v0
.end method
