.class Lio/nekohasekai/sagernet/ui/NodeSortHelper$2;
.super Ljava/lang/Object;
.source "NodeSortHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/NodeSortHelper;->applyTo(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 118
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
