.class public final Lio/nekohasekai/sagernet/ui/DrawerRows;
.super Ljava/lang/Object;
.source "DrawerRows.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;
    }
.end annotation


# instance fields
.field private next:I

.field private final owner:Landroid/view/View;

.field private final renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/util/List;Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "*>;",
            "Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

    return-void
.end method

.method public static post(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "*>;",
            "Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;",
            ")Z"
        }
    .end annotation

    .line 17
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerRows;

    invoke-direct {v0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerRows;-><init>(Landroid/view/View;Ljava/util/List;Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;)V

    invoke-static {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->post(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 20
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-static {v0, p0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate;->defer(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5e

    .line 21
    :cond_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;->render(Ljava/util/List;)V

    return-void

    .line 22
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 23
    :cond_28
    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 24
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    iget v4, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    add-int/lit8 v5, v4, 0x1

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;->render(Ljava/util/List;)V

    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_28

    .line 27
    :cond_4f
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5e

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5e
    :goto_5e
    return-void
.end method
