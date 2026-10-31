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


# static fields
.field private static final TASK_TAG:I = 0x7f0a0f89


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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

    return-void
.end method

.method static synthetic lambda$post$0(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerRows;)V
    .registers 5

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const v0, 0x7f0a0f89

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 23
    instance-of v2, v1, Lio/nekohasekai/sagernet/ui/DrawerRows;

    if-eqz v2, :cond_17

    check-cast v1, Lio/nekohasekai/sagernet/ui/DrawerRows;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    :cond_17
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/DrawerRows;->run()V

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

    .line 19
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerRows;

    invoke-direct {v0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerRows;-><init>(Landroid/view/View;Ljava/util/List;Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;)V

    .line 20
    new-instance p2, Lio/nekohasekai/sagernet/ui/DrawerRows$0;

    invoke-direct {p2, p1, v0}, Lio/nekohasekai/sagernet/ui/DrawerRows$0;-><init>(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerRows;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 30
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    const v1, 0x7f0a0f89

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_15

    goto/16 :goto_d9

    .line 31
    :cond_15
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_20

    :cond_1f
    move-object v0, v3

    .line 32
    :goto_20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v2, v4, :cond_32

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutSuppressed()Z

    move-result v2

    if-nez v2, :cond_32

    const/4 v2, 0x1

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    if-eqz v2, :cond_38

    .line 33
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 34
    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    .line 36
    :try_start_3f
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v4, v5}, Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;->render(Ljava/util/List;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_bb

    if-eqz v2, :cond_53

    .line 41
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 42
    :cond_53
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_d9

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_d9

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void

    .line 38
    :cond_6b
    :try_start_6b
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->renderer:Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;

    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    iget v10, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    add-int/lit8 v11, v10, 0x1

    invoke-interface {v9, v10, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v4, v9}, Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;->render(Ljava/util/List;)V

    iget v4, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    add-int/2addr v4, v5

    iput v4, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    .line 39
    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_8b
    .catchall {:try_start_6b .. :try_end_8b} :catchall_bb

    cmp-long v4, v9, v7

    if-ltz v4, :cond_6b

    :cond_8f
    if-eqz v2, :cond_94

    .line 41
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 42
    :cond_94
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_ab

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_ab

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    :cond_ab
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d9

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :catchall_bb
    move-exception v4

    if-eqz v2, :cond_c1

    .line 41
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 42
    :cond_c1
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->next:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->rows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_d8

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_d8

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRows;->owner:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    :cond_d8
    throw v4

    :cond_d9
    :goto_d9
    return-void
.end method
