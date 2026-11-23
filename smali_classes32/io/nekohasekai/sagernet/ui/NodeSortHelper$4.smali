.class Lio/nekohasekai/sagernet/ui/NodeSortHelper$4;
.super Ljava/lang/Object;
.source "NodeSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/NodeSortHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    .line 187
    # invokes: Lio/nekohasekai/sagernet/ui/NodeSortHelper;->pingOf(Ljava/lang/Object;)I
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->access$000(Ljava/lang/Object;)I

    move-result v0

    .line 188
    # invokes: Lio/nekohasekai/sagernet/ui/NodeSortHelper;->pingOf(Ljava/lang/Object;)I
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->access$000(Ljava/lang/Object;)I

    move-result v1

    .line 189
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    .line 190
    :goto_f
    if-lez v1, :cond_12

    const/4 v2, 0x1

    .line 191
    :cond_12
    if-eq v4, v2, :cond_18

    if-eqz v4, :cond_17

    const/4 v3, -0x1

    :cond_17
    return v3

    .line 192
    :cond_18
    if-eqz v4, :cond_21

    if-eq v0, v1, :cond_21

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1

    .line 193
    :cond_21
    # invokes: Lio/nekohasekai/sagernet/ui/NodeSortHelper;->idOf(Ljava/lang/Object;)J
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->access$100(Ljava/lang/Object;)J

    move-result-wide v0

    # invokes: Lio/nekohasekai/sagernet/ui/NodeSortHelper;->idOf(Ljava/lang/Object;)J
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->access$100(Ljava/lang/Object;)J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
