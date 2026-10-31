.class public abstract Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PENDING_ACCESSIBILITY_STATE_NOT_SET:I = -0x1


# instance fields
.field public final itemView:Landroid/view/View;

.field mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mFlags:I

.field mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mNestedRecyclerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field mOldPosition:I

.field mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAccessibilityState:I

.field mPosition:I

.field mPreLayoutPosition:I

.field mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11782
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;

    .line 11812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11676
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11677
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11678
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 11679
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 11680
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11683
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11685
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11784
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 11785
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 11787
    const/4 v2, 0x0

    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 11791
    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 11793
    iput-boolean v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 11797
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 11800
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11813
    if-eqz p1, :cond_29

    .line 11816
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11817
    return-void

    .line 11814
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createPayloadsIfNeeded()V
    .registers 2

    .line 12124
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_13

    .line 12125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 12126
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 12128
    :cond_13
    return-void
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .registers 4
    .param p1, "payload"    # Ljava/lang/Object;

    .line 12115
    const/16 v0, 0x400

    if-nez p1, :cond_8

    .line 12116
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_15

    .line 12117
    :cond_8
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 12118
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 12119
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12121
    :cond_15
    :goto_15
    return-void
.end method

.method addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 12111
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12112
    return-void
.end method

.method clearOldPosition()V
    .registers 2

    .line 11842
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11843
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11844
    return-void
.end method

.method clearPayload()V
    .registers 2

    .line 12131
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 12132
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12134
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12135
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .registers 2

    .line 12058
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12059
    return-void
.end method

.method clearTmpDetachFlag()V
    .registers 2

    .line 12062
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12063
    return-void
.end method

.method doesTransientStatePreventRecycling()Z
    .registers 2

    .line 12269
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .registers 5
    .param p1, "mNewPosition"    # I
    .param p2, "offset"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 11820
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 11821
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 11822
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11823
    return-void
.end method

.method public final getAbsoluteAdapterPosition()I
    .registers 2

    .line 11995
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_6

    .line 11996
    const/4 v0, -0x1

    return v0

    .line 11998
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method public final getAdapterPosition()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11907
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    return v0
.end method

.method public final getBindingAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 12010
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public final getBindingAdapterPosition()I
    .registers 4

    .line 11942
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 11943
    return v1

    .line 11945
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_b

    .line 11946
    return v1

    .line 11949
    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 11950
    .local v0, "rvAdapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<+Landroidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    if-nez v0, :cond_14

    .line 11951
    return v1

    .line 11953
    :cond_14
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 11954
    .local v2, "globalPosition":I
    if-ne v2, v1, :cond_1d

    .line 11955
    return v1

    .line 11957
    :cond_1d
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mBindingAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->findRelativeAdapterPositionIn(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v1

    return v1
.end method

.method public final getItemId()J
    .registers 3

    .line 12035
    iget-wide v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .registers 2

    .line 12042
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .registers 3

    .line 11894
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_a

    :cond_8
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_a
    return v0
.end method

.method public final getOldPosition()I
    .registers 2

    .line 12025
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11867
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    goto :goto_a

    :cond_8
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :goto_a
    return v0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 12138
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_19

    .line 12139
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_16

    .line 12144
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    return-object v0

    .line 12141
    :cond_16
    :goto_16
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0

    .line 12147
    :cond_19
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-object v0
.end method

.method hasAnyOfTheFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 12091
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isAdapterPositionUnknown()Z
    .registers 2

    .line 12103
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

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

.method isAttachedToTransitionOverlay()Z
    .registers 3

    .line 12099
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isBound()Z
    .registers 3

    .line 12083
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method isInvalid()Z
    .registers 2

    .line 12075
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isRecyclable()Z
    .registers 2

    .line 12252
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12253
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 12252
    :goto_11
    return v0
.end method

.method isRemoved()Z
    .registers 2

    .line 12087
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isScrap()Z
    .registers 2

    .line 12046
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTmpDetached()Z
    .registers 2

    .line 12095
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isUpdated()Z
    .registers 2

    .line 12273
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method needsUpdate()Z
    .registers 2

    .line 12079
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method offsetPosition(IZ)V
    .registers 5
    .param p1, "offset"    # I
    .param p2, "applyToPreLayout"    # Z

    .line 11826
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 11827
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11829
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_11

    .line 11830
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11832
    :cond_11
    if-eqz p2, :cond_18

    .line 11833
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 11835
    :cond_18
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 11836
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 11837
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11839
    :cond_30
    return-void
.end method

.method onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 12171
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 12172
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    goto :goto_12

    .line 12174
    :cond_a
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12175
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 12177
    :goto_12
    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    .line 12179
    return-void
.end method

.method onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 12185
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setChildImportantForAccessibilityInternal(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    .line 12187
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 12188
    return-void
.end method

.method resetInternal()V
    .registers 5

    .line 12152
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12153
    const/4 v1, -0x1

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 12154
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 12155
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 12156
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 12157
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 12158
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12159
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12160
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 12161
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 12162
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 12163
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12164
    return-void
.end method

.method saveOldPosition()V
    .registers 3

    .line 11847
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 11848
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 11850
    :cond_9
    return-void
.end method

.method setFlags(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 12107
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12108
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .registers 4
    .param p1, "recyclable"    # Z

    .line 12228
    const/4 v0, 0x1

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-eqz p1, :cond_7

    sub-int/2addr v1, v0

    goto :goto_8

    :cond_7
    add-int/2addr v1, v0

    :goto_8
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 12229
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v1, :cond_2a

    .line 12230
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 12235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 12237
    :cond_2a
    if-nez p1, :cond_37

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-ne v1, v0, :cond_37

    .line 12238
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_43

    .line 12239
    :cond_37
    if-eqz p1, :cond_43

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v0, :cond_43

    .line 12240
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12245
    :cond_43
    :goto_43
    return-void
.end method

.method setScrapContainer(Landroidx/recyclerview/widget/RecyclerView$Recycler;Z)V
    .registers 3
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "isChangeScrap"    # Z

    .line 12070
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 12071
    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 12072
    return-void
.end method

.method shouldBeKeptAsChild()Z
    .registers 2

    .line 12261
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method shouldIgnore()Z
    .registers 2

    .line 11853
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method stopIgnoring()V
    .registers 2

    .line 12066
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 12067
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 12193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "ViewHolder"

    goto :goto_15

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 12194
    .local v0, "className":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12195
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pLpos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12197
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 12198
    const-string v2, " scrap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12199
    iget-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v3, :cond_7d

    const-string v3, "[changeScrap]"

    goto :goto_7f

    :cond_7d
    const-string v3, "[attachedScrap]"

    :goto_7f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12201
    :cond_82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_8d

    const-string v2, " invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12202
    :cond_8d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_98

    const-string v2, " unbound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12203
    :cond_98
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string v2, " update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12204
    :cond_a3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12205
    :cond_ae
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_b9

    const-string v2, " ignored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12206
    :cond_b9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string v2, " tmpDetached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12207
    :cond_c4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v2

    if-nez v2, :cond_e8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " not recyclable("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12208
    :cond_e8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v2

    if-eqz v2, :cond_f3

    const-string v2, " undefined adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12210
    :cond_f3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_100

    const-string v2, " no parent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12211
    :cond_100
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unScrap()V
    .registers 2

    .line 12050
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 12051
    return-void
.end method

.method wasReturnedFromScrap()Z
    .registers 2

    .line 12054
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
