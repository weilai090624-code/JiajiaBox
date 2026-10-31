.class public final Landroidx/work/ListenableWorker$Result$Retry;
.super Landroidx/work/ListenableWorker$Result;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Retry"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 545
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result;-><init>()V

    .line 546
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 550
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 552
    :cond_4
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getOutputData()Landroidx/work/Data;
    .registers 2

    .line 564
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 557
    const-class v0, Landroidx/work/ListenableWorker$Result$Retry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 571
    const-string v0, "Retry"

    return-object v0
.end method
