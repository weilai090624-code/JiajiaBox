.class public final Lio/nekohasekai/sagernet/ui/DrawerHistory;
.super Ljava/lang/Object;
.source "DrawerHistory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final pages:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TP;>;"
        }
    .end annotation
.end field

.field private root:I

.field private final snapshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "TS;>;"
        }
    .end annotation
.end field

.field private transitioning:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pages:Ljava/util/Deque;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->snapshots:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public begin()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->transitioning:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->transitioning:Z

    return v0
.end method

.method public complete()V
    .registers 2

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->transitioning:Z

    return-void
.end method

.method public current()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .registers 2

    .line 13
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pages:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public remember(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 11
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->snapshots:Ljava/util/Map;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public resetPages()V
    .registers 2

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->pages:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->transitioning:Z

    return-void
.end method

.method public root()I
    .registers 2

    .line 10
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root:I

    return v0
.end method

.method public root(I)V
    .registers 2

    .line 9
    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root:I

    return-void
.end method

.method public snapshot()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->snapshots:Ljava/util/Map;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->root:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public transitioning()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerHistory;->transitioning:Z

    return v0
.end method
