.class public Landroidx/recyclerview/widget/DefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;,
        Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 202
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 203
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 204
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 221
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p2, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 406
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_22

    .line 407
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 408
    .local v1, "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 409
    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 410
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 406
    .end local v1    # "changeInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 414
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 3
    .param p1, "changeInfo"    # Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 417
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_9

    .line 418
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 420
    :cond_9
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_12

    .line 421
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 423
    :cond_12
    return-void
.end method

.method private endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 6
    .param p1, "changeInfo"    # Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "oldItem":Z
    iget-object v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_9

    .line 427
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_10

    .line 428
    :cond_9
    iget-object v1, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_27

    .line 429
    iput-object v2, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 430
    const/4 v0, 0x1

    .line 434
    :goto_10
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 435
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 436
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 437
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 438
    const/4 v1, 0x1

    return v1

    .line 432
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 529
    sget-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 530
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 532
    :cond_f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/DefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 533
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 534
    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 226
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 227
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 228
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 233
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 234
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 235
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$5;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 237
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 24
    .param p1, "oldHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "fromLeft"    # I
    .param p4, "fromTop"    # I
    .param p5, "toLeft"    # I
    .param p6, "toTop"    # I

    .line 327
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-ne v14, v15, :cond_19

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 332
    :cond_19
    iget-object v0, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 333
    .local v0, "prevTranslationX":F
    iget-object v1, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 334
    .local v1, "prevTranslationY":F
    iget-object v2, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 335
    .local v2, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 336
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 337
    .local v3, "deltaX":I
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 339
    .local v4, "deltaY":I
    iget-object v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 340
    iget-object v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 341
    iget-object v5, v14, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 342
    if-eqz v15, :cond_60

    .line 344
    invoke-direct {v6, v15}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 345
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 346
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 347
    iget-object v5, v15, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 349
    :cond_60
    iget-object v5, v6, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    move-object v7, v13

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v16, v0

    move-object v0, v13

    .end local v0    # "prevTranslationX":F
    .local v16, "prevTranslationX":F
    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const/4 v0, 0x1

    return v0
.end method

.method animateChangeImpl(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .registers 10
    .param p1, "changeInfo"    # Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 354
    iget-object v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 355
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v2, v1

    goto :goto_9

    :cond_7
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 356
    .local v2, "view":Landroid/view/View;
    :goto_9
    iget-object v3, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 357
    .local v3, "newHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_f

    iget-object v1, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 358
    .local v1, "newView":Landroid/view/View;
    :cond_f
    const/4 v4, 0x0

    if-eqz v2, :cond_47

    .line 359
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 360
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 359
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 361
    .local v5, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget v6, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 363
    iget v6, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 364
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroidx/recyclerview/widget/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v5, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator$7;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 380
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 382
    .end local v5    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_47
    if-eqz v1, :cond_76

    .line 383
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 384
    .local v5, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 386
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator$8;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 401
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 403
    .end local v5    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_76
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 21
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 262
    move-object/from16 v6, p1

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 263
    .local v7, "view":Landroid/view/View;
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    add-int v8, p2, v0

    .line 264
    .end local p2    # "fromX":I
    .local v8, "fromX":I
    iget-object v0, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    add-int v9, p3, v0

    .line 265
    .end local p3    # "fromY":I
    .local v9, "fromY":I
    invoke-direct/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 266
    sub-int v10, p4, v8

    .line 267
    .local v10, "deltaX":I
    sub-int v11, p5, v9

    .line 268
    .local v11, "deltaY":I
    if-nez v10, :cond_26

    if-nez v11, :cond_26

    .line 269
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 270
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_26
    if-eqz v10, :cond_2d

    .line 273
    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 275
    :cond_2d
    if-eqz v11, :cond_34

    .line 276
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 278
    :cond_34
    move-object v12, p0

    iget-object v13, v12, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v14, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 21
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 283
    move-object/from16 v7, p1

    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 284
    .local v8, "view":Landroid/view/View;
    sub-int v9, p4, p2

    .line 285
    .local v9, "deltaX":I
    sub-int v10, p5, p3

    .line 286
    .local v10, "deltaY":I
    const/4 v0, 0x0

    if-eqz v9, :cond_12

    .line 287
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 289
    :cond_12
    if-eqz v10, :cond_1b

    .line 290
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 295
    :cond_1b
    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 296
    .local v11, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v12, p0

    iget-object v0, v12, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Landroidx/recyclerview/widget/DefaultItemAnimator$6;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move-object v4, v8

    move v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$6;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 321
    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 196
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 197
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 672
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 648
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1a

    .line 649
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 648
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 651
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .registers 2

    .line 557
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 558
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 560
    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 10
    .param p1, "item"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 444
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 446
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 448
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_11
    const/4 v2, 0x0

    if-ltz v1, :cond_31

    .line 449
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 450
    .local v3, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_2e

    .line 451
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 452
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 453
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 454
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 448
    .end local v3    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 457
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 458
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_46

    .line 459
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 460
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 462
    :cond_46
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 463
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 464
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 467
    :cond_54
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5c
    if-ltz v1, :cond_77

    .line 468
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 469
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 470
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_74

    .line 471
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 474
    .end local v1    # "i":I
    :cond_77
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_7f
    if-ltz v1, :cond_b9

    .line 475
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 476
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_8f
    if-ltz v5, :cond_b6

    .line 477
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 478
    .local v6, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v7, v6, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_b3

    .line 479
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 480
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 481
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 482
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 483
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 484
    iget-object v7, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 476
    .end local v6    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    :cond_b3
    add-int/lit8 v5, v5, -0x1

    goto :goto_8f

    .line 474
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 490
    .end local v1    # "i":I
    :cond_b9
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_c1
    if-ltz v1, :cond_e5

    .line 491
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 492
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 493
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 494
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 495
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 496
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 490
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    :cond_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 503
    .end local v1    # "i":I
    :cond_e5
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 526
    return-void
.end method

.method public endAnimations()V
    .registers 12

    .line 564
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 565
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v1, :cond_2a

    .line 566
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 567
    .local v3, "item":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v4, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 568
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 569
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 570
    iget-object v2, v3, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 571
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    .end local v3    # "item":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 573
    .end local v1    # "i":I
    :cond_2a
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 574
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_32
    if-ltz v1, :cond_47

    .line 575
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 576
    .local v3, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 577
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    .end local v3    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_32

    .line 579
    .end local v1    # "i":I
    :cond_47
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_4f
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_6b

    .line 581
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 582
    .local v4, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 583
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 584
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 580
    .end local v4    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_4f

    .line 586
    .end local v1    # "i":I
    :cond_6b
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 587
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_73
    if-ltz v1, :cond_83

    .line 588
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 587
    add-int/lit8 v1, v1, -0x1

    goto :goto_73

    .line 590
    .end local v1    # "i":I
    :cond_83
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 591
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 592
    return-void

    .line 595
    :cond_8f
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 596
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_97
    if-ltz v4, :cond_d2

    .line 597
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 598
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 599
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_a7
    if-ltz v6, :cond_cf

    .line 600
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 601
    .local v7, "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    iget-object v8, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 602
    .local v8, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 603
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 604
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 605
    iget-object v10, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 606
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 607
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 608
    iget-object v10, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 599
    .end local v7    # "moveInfo":Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    .end local v8    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_cc
    add-int/lit8 v6, v6, -0x1

    goto :goto_a7

    .line 596
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_cf
    add-int/lit8 v4, v4, -0x1

    goto :goto_97

    .line 612
    .end local v4    # "i":I
    :cond_d2
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 613
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_da
    if-ltz v2, :cond_10e

    .line 614
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 615
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 616
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_ea
    if-ltz v5, :cond_10b

    .line 617
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 618
    .local v6, "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 619
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 620
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 621
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 622
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_108

    .line 623
    iget-object v8, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 616
    .end local v6    # "item":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_108
    add-int/lit8 v5, v5, -0x1

    goto :goto_ea

    .line 613
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_10b
    add-int/lit8 v2, v2, -0x1

    goto :goto_da

    .line 627
    .end local v2    # "i":I
    :cond_10e
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 628
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_116
    if-ltz v2, :cond_142

    .line 629
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 630
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_126
    if-ltz v4, :cond_13f

    .line 632
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 633
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13c

    .line 634
    iget-object v5, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 631
    :cond_13c
    add-int/lit8 v4, v4, -0x1

    goto :goto_126

    .line 628
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_13f
    add-int/lit8 v2, v2, -0x1

    goto :goto_116

    .line 639
    .end local v2    # "i":I
    :cond_142
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 640
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 641
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 642
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 644
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 645
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 538
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 544
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 545
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 547
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    .line 538
    :goto_5c
    return v0
.end method

.method public runPendingAnimations()V
    .registers 16

    .line 104
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 105
    .local v0, "removalsPending":Z
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 106
    .local v1, "movesPending":Z
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 107
    .local v2, "changesPending":Z
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 108
    .local v3, "additionsPending":Z
    if-nez v0, :cond_29

    if-nez v1, :cond_29

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    .line 110
    return-void

    .line 113
    :cond_29
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    .local v5, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 115
    .end local v5    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_2f

    .line 116
    :cond_3f
    iget-object v4, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 118
    const/4 v4, 0x0

    if-eqz v1, :cond_77

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$1;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 134
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_74

    .line 135
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-static {v7, v6, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 137
    .end local v7    # "view":Landroid/view/View;
    goto :goto_77

    .line 138
    :cond_74
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 142
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_77
    :goto_77
    if-eqz v2, :cond_a9

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$2;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 157
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_a6

    .line 158
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 159
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-static {v8, v6, v9, v10}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 160
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_a9

    .line 161
    :cond_a6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 165
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_a9
    :goto_a9
    if-eqz v3, :cond_f8

    .line 166
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v6, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 170
    new-instance v6, Landroidx/recyclerview/widget/DefaultItemAnimator$3;

    invoke-direct {v6, p0, v5}, Landroidx/recyclerview/widget/DefaultItemAnimator$3;-><init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 180
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_cf

    if-nez v1, :cond_cf

    if-eqz v2, :cond_cb

    goto :goto_cf

    .line 188
    :cond_cb
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_f8

    .line 181
    :cond_cf
    :goto_cf
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_d8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_d9

    :cond_d8
    move-wide v9, v7

    .line 182
    .local v9, "removeDuration":J
    :goto_d9
    if-eqz v1, :cond_e0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_e1

    :cond_e0
    move-wide v11, v7

    .line 183
    .local v11, "moveDuration":J
    :goto_e1
    if-eqz v2, :cond_e7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 184
    .local v7, "changeDuration":J
    :cond_e7
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 185
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 186
    .local v4, "view":Landroid/view/View;
    invoke-static {v4, v6, v13, v14}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 187
    .end local v4    # "view":Landroid/view/View;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    nop

    .line 191
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    :cond_f8
    :goto_f8
    return-void
.end method
