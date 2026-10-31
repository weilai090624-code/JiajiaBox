.class public abstract Lcom/google/common/util/concurrent/Service$Listener;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;
    .param p2, "failure"    # Ljava/lang/Throwable;

    .line 256
    return-void
.end method

.method public running()V
    .registers 1

    .line 223
    return-void
.end method

.method public starting()V
    .registers 1

    .line 217
    return-void
.end method

.method public stopping(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .line 232
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .registers 2
    .param p1, "from"    # Lcom/google/common/util/concurrent/Service$State;

    .line 244
    return-void
.end method
