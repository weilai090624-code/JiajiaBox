.class Landroidx/work/multiprocess/RemoteClientUtils$1;
.super Ljava/lang/Object;
.source "RemoteClientUtils.java"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteClientUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function<",
        "[B",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteClientUtils$1;->apply([B)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public apply([B)Ljava/lang/Void;
    .locals 1
    .param p1, "input"    # [B

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
