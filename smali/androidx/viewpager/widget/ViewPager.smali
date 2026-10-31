.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;,
        Landroidx/viewpager/widget/ViewPager$LayoutParams;,
        Landroidx/viewpager/widget/ViewPager$PagerObserver;,
        Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;,
        Landroidx/viewpager/widget/ViewPager$SavedState;,
        Landroidx/viewpager/widget/ViewPager$DecorView;,
        Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;,
        Landroidx/viewpager/widget/ViewPager$PageTransformer;,
        Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;,
        Landroidx/viewpager/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/viewpager/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 122
    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 140
    new-instance v0, Landroidx/viewpager/widget/ViewPager$1;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$1;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 147
    new-instance v0, Landroidx/viewpager/widget/ViewPager$2;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$2;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 251
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 391
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    const v1, -0x800001

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 180
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 207
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 234
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance v1, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 392
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    .line 393
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 396
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 164
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 179
    const v1, -0x800001

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 180
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 189
    const/4 v1, 0x1

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 207
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 234
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 269
    new-instance v1, Landroidx/viewpager/widget/ViewPager$3;

    invoke-direct {v1, p0}, Landroidx/viewpager/widget/ViewPager$3;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 277
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 397
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->initViewPager()V

    .line 398
    return-void
.end method

.method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V
    .registers 15
    .param p1, "curItem"    # Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1298
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1299
    .local v0, "N":I
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v1

    .line 1300
    .local v1, "width":I
    if-lez v1, :cond_12

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1302
    .local v2, "marginOffset":F
    :goto_13
    if-eqz p3, :cond_b7

    .line 1303
    iget v3, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1305
    .local v3, "oldCurPosition":I
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6c

    .line 1306
    const/4 v4, 0x0

    .line 1307
    .local v4, "itemIndex":I
    const/4 v5, 0x0

    .line 1308
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v6, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1309
    .local v6, "offset":F
    add-int/lit8 v7, v3, 0x1

    .line 1310
    .local v7, "pos":I
    :goto_25
    iget v8, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-gt v7, v8, :cond_b6

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b6

    .line 1311
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1312
    :goto_3a
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_54

    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_54

    .line 1313
    add-int/lit8 v4, v4, 0x1

    .line 1314
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_3a

    .line 1316
    :cond_54
    :goto_54
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_63

    .line 1319
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v7}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1320
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 1322
    :cond_63
    iput v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1323
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1310
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1325
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_6c
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b6

    .line 1326
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1327
    .restart local v4    # "itemIndex":I
    const/4 v5, 0x0

    .line 1328
    .restart local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v6, p3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1329
    .restart local v6    # "offset":F
    add-int/lit8 v7, v3, -0x1

    .line 1330
    .restart local v7    # "pos":I
    :goto_7d
    iget v8, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-lt v7, v8, :cond_b7

    if-ltz v4, :cond_b7

    .line 1331
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1332
    :goto_8c
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_9e

    if-lez v4, :cond_9e

    .line 1333
    add-int/lit8 v4, v4, -0x1

    .line 1334
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_8c

    .line 1336
    :cond_9e
    :goto_9e
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_ad

    .line 1339
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v8, v7}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1340
    add-int/lit8 v7, v7, -0x1

    goto :goto_9e

    .line 1342
    :cond_ad
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1343
    iput v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1330
    add-int/lit8 v7, v7, -0x1

    goto :goto_7d

    .line 1325
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_b6
    nop

    .line 1349
    .end local v3    # "oldCurPosition":I
    :cond_b7
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1350
    .local v3, "itemCount":I
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1351
    .local v4, "offset":F
    iget v5, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1352
    .local v5, "pos":I
    iget v6, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_ca

    iget v6, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_cd

    :cond_ca
    const v6, -0x800001

    :goto_cd
    iput v6, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 1353
    iget v6, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_de

    iget v6, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_e1

    :cond_de
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_e1
    iput v6, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 1356
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_e5
    if-ltz v6, :cond_110

    .line 1357
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1358
    .local v7, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_ef
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_ff

    .line 1359
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .end local v5    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_ef

    .line 1361
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_ff
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1362
    iput v4, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1363
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_10b

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    .line 1356
    .end local v7    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_10b
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_e5

    .line 1365
    .end local v6    # "i":I
    :cond_110
    iget v6, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1366
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1368
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_11c
    if-ge v5, v3, :cond_14d

    .line 1369
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1370
    .restart local v7    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_126
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_136

    .line 1371
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_126

    .line 1373
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_136
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_142

    .line 1374
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 1376
    :cond_142
    iput v6, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 1377
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1368
    .end local v7    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    .line 1380
    .end local v5    # "i":I
    :cond_14d
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1381
    return-void
.end method

.method private completeScroll(Z)V
    .registers 9
    .param p1, "postEvents"    # Z

    .line 1974
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1975
    .local v0, "needPopulate":Z
    :goto_a
    if-eqz v0, :cond_3d

    .line 1977
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1978
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 1979
    .local v1, "wasScrolling":Z
    if-eqz v1, :cond_3d

    .line 1980
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1981
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1982
    .local v2, "oldX":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v4

    .line 1983
    .local v4, "oldY":I
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1984
    .local v5, "x":I
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1985
    .local v6, "y":I
    if-ne v2, v5, :cond_35

    if-eq v4, v6, :cond_3d

    .line 1986
    :cond_35
    invoke-virtual {p0, v5, v6}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1987
    if-eq v5, v2, :cond_3d

    .line 1988
    invoke-direct {p0, v5}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 1993
    .end local v1    # "wasScrolling":Z
    .end local v2    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_3d
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 1994
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 1995
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1996
    .local v2, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-boolean v4, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_57

    .line 1997
    const/4 v0, 0x1

    .line 1998
    iput-boolean v3, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1994
    .end local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 2001
    .end local v1    # "i":I
    :cond_5a
    if-eqz v0, :cond_69

    .line 2002
    if-eqz p1, :cond_64

    .line 2003
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_69

    .line 2005
    :cond_64
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2008
    :cond_69
    :goto_69
    return-void
.end method

.method private determineTargetPage(IFII)I
    .registers 10
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2406
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_17

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_17

    .line 2407
    if-lez p3, :cond_14

    move v0, p1

    goto :goto_16

    :cond_14
    add-int/lit8 v0, p1, 0x1

    .local v0, "targetPage":I
    :goto_16
    goto :goto_27

    .line 2409
    .end local v0    # "targetPage":I
    :cond_17
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_1f

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_22

    :cond_1f
    const v0, 0x3f19999a    # 0.6f

    .line 2410
    .local v0, "truncator":F
    :goto_22
    add-float v1, p2, v0

    float-to-int v1, v1

    add-int/2addr v1, p1

    move v0, v1

    .line 2413
    .local v0, "targetPage":I
    :goto_27
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 2414
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2415
    .local v1, "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2418
    .local v2, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v4, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2421
    .end local v1    # "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_54
    return v0
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1923
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1924
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1926
    :cond_9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 1927
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "z":I
    :goto_14
    if-ge v0, v1, :cond_26

    .line 1928
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1929
    .local v2, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_23

    .line 1930
    invoke-interface {v2, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1927
    .end local v2    # "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1934
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    .line 1935
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1937
    :cond_2f
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .line 1940
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1941
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1943
    :cond_9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 1944
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "z":I
    :goto_14
    if-ge v0, v1, :cond_26

    .line 1945
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1946
    .local v2, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_23

    .line 1947
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1944
    .end local v2    # "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1951
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    .line 1952
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1954
    :cond_2f
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 1957
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1958
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1960
    :cond_9
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 1961
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "z":I
    :goto_14
    if-ge v0, v1, :cond_26

    .line 1962
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 1963
    .local v2, "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_23

    .line 1964
    invoke-interface {v2, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1961
    .end local v2    # "listener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1968
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_26
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    .line 1969
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1971
    :cond_2f
    return-void
.end method

.method private enableLayers(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 2015
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2016
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 2017
    if-eqz p1, :cond_c

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 2019
    .local v2, "layerType":I
    :goto_d
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2016
    .end local v2    # "layerType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2021
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method private endDrag()V
    .registers 2

    .line 2659
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2660
    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2662
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2663
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2664
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2666
    :cond_11
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2859
    if-nez p1, :cond_8

    .line 2860
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2862
    :cond_8
    if-nez p2, :cond_f

    .line 2863
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2864
    return-object p1

    .line 2866
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2867
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2868
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2869
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2871
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2872
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_2b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    if-eq v0, p0, :cond_5d

    .line 2873
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2874
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2875
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2876
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2877
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2879
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2880
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_2b

    .line 2881
    :cond_5d
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    .line 600
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 15

    .line 2363
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 2364
    .local v0, "width":I
    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 2365
    .local v2, "scrollOffset":F
    :goto_10
    if-lez v0, :cond_17

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 2366
    .local v1, "marginOffset":F
    :cond_17
    const/4 v3, -0x1

    .line 2367
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .line 2368
    .local v4, "lastOffset":F
    const/4 v5, 0x0

    .line 2369
    .local v5, "lastWidth":F
    const/4 v6, 0x1

    .line 2371
    .local v6, "first":Z
    const/4 v7, 0x0

    .line 2372
    .local v7, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_75

    .line 2373
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2375
    .local v9, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-nez v6, :cond_4c

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v3, 0x1

    if-eq v10, v11, :cond_4c

    .line 2377
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mTempItem:Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2378
    add-float v10, v4, v5

    add-float/2addr v10, v1

    iput v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2379
    add-int/lit8 v10, v3, 0x1

    iput v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2380
    iget-object v10, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v11, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v10

    iput v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2381
    add-int/lit8 v8, v8, -0x1

    .line 2383
    :cond_4c
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2385
    .local v10, "offset":F
    move v11, v10

    .line 2386
    .local v11, "leftBound":F
    iget v12, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    .line 2387
    .local v12, "rightBound":F
    if-nez v6, :cond_5b

    cmpl-float v13, v2, v11

    if-ltz v13, :cond_5a

    goto :goto_5b

    .line 2392
    :cond_5a
    return-object v7

    .line 2388
    :cond_5b
    :goto_5b
    cmpg-float v13, v2, v12

    if-ltz v13, :cond_74

    iget-object v13, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_6a

    goto :goto_74

    .line 2394
    :cond_6a
    const/4 v6, 0x0

    .line 2395
    iget v3, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2396
    move v4, v10

    .line 2397
    iget v5, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2398
    move-object v7, v9

    .line 2372
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 2389
    .restart local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v10    # "offset":F
    .restart local v11    # "leftBound":F
    .restart local v12    # "rightBound":F
    :cond_74
    :goto_74
    return-object v9

    .line 2401
    .end local v8    # "i":I
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    :cond_75
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1498
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1499
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroidx/viewpager/widget/ViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isGutterDrag(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 2011
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2645
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2646
    .local v1, "pointerId":I
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_26

    .line 2649
    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2650
    .local v2, "newPointerIndex":I
    :goto_11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2651
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2652
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_26

    .line 2653
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2656
    .end local v2    # "newPointerIndex":I
    :cond_26
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 11
    .param p1, "xpos"    # I

    .line 1818
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 1819
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_10

    .line 1822
    return v2

    .line 1824
    :cond_10
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1825
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1826
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_1b

    .line 1830
    return v2

    .line 1827
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1832
    :cond_21
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1833
    .local v0, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 1834
    .local v3, "width":I
    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    .line 1835
    .local v4, "widthWithMargin":I
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 1836
    .local v5, "marginOffset":F
    iget v6, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1837
    .local v6, "currentPage":I
    int-to-float v7, p1

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 1839
    .local v7, "pageOffset":F
    int-to-float v8, v4

    mul-float v8, v8, v7

    float-to-int v8, v8

    .line 1841
    .local v8, "offsetPixels":I
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1842
    invoke-virtual {p0, v6, v7, v8}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1843
    iget-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_4c

    .line 1847
    const/4 v1, 0x1

    return v1

    .line 1844
    :cond_4c
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private performDrag(F)Z
    .registers 18
    .param p1, "x"    # F

    .line 2310
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2312
    .local v2, "needsInvalidate":Z
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    .line 2313
    .local v3, "deltaX":F
    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2315
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    .line 2316
    .local v4, "oldScrollX":F
    add-float v5, v4, v3

    .line 2317
    .local v5, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v6

    .line 2319
    .local v6, "width":I
    int-to-float v7, v6

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float v7, v7, v8

    .line 2320
    .local v7, "leftBound":F
    int-to-float v8, v6

    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float v8, v8, v9

    .line 2321
    .local v8, "rightBound":F
    const/4 v9, 0x1

    .line 2322
    .local v9, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2324
    .local v10, "rightAbsolute":Z
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2325
    .local v11, "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2326
    .local v12, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v13, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_44

    .line 2327
    const/4 v9, 0x0

    .line 2328
    iget v13, v11, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v7, v13, v14

    .line 2330
    :cond_44
    iget v13, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v14}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_56

    .line 2331
    const/4 v10, 0x0

    .line 2332
    iget v13, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v8, v13, v14

    .line 2335
    :cond_56
    cmpg-float v13, v5, v7

    if-gez v13, :cond_6c

    .line 2336
    if-eqz v9, :cond_6a

    .line 2337
    sub-float v13, v7, v5

    .line 2338
    .local v13, "over":F
    iget-object v14, v0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v1, v6

    div-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2339
    const/4 v2, 0x1

    .line 2341
    .end local v13    # "over":F
    :cond_6a
    move v5, v7

    goto :goto_81

    .line 2342
    :cond_6c
    cmpl-float v1, v5, v8

    if-lez v1, :cond_81

    .line 2343
    if-eqz v10, :cond_80

    .line 2344
    sub-float v1, v5, v8

    .line 2345
    .local v1, "over":F
    iget-object v13, v0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2346
    const/4 v2, 0x1

    .line 2348
    .end local v1    # "over":F
    :cond_80
    move v5, v8

    .line 2351
    :cond_81
    :goto_81
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v13, v5

    int-to-float v13, v13

    sub-float v13, v5, v13

    add-float/2addr v1, v13

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2352
    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2353
    float-to-int v1, v5

    invoke-direct {v0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 2355
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1655
    if-lez p2, :cond_4d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1656
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1657
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_80

    .line 1659
    :cond_22
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1660
    .local v0, "widthWithMargin":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1662
    .local v1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1663
    .local v2, "xpos":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1664
    .local v3, "pageOffset":F
    int-to-float v4, v0

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 1666
    .local v4, "newOffsetPixels":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1667
    .end local v0    # "widthWithMargin":I
    .end local v1    # "oldWidthWithMargin":I
    .end local v2    # "xpos":I
    .end local v3    # "pageOffset":F
    .end local v4    # "newOffsetPixels":I
    goto :goto_80

    .line 1669
    :cond_4d
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1670
    .local v0, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v0, :cond_5e

    iget v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    .line 1671
    .local v1, "scrollOffset":F
    :goto_5f
    nop

    .line 1672
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 1673
    .local v2, "scrollPos":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_80

    .line 1674
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 1675
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1678
    .end local v0    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v1    # "scrollOffset":F
    .end local v2    # "scrollPos":I
    :cond_80
    :goto_80
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 5

    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 556
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 557
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 558
    .local v2, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1a

    .line 559
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeViewAt(I)V

    .line 560
    add-int/lit8 v0, v0, -0x1

    .line 555
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 2303
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2304
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_9

    .line 2305
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2307
    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    .line 2294
    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2295
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    .line 2296
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2297
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2298
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 2299
    .local v0, "needsInvalidate":Z
    :goto_24
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 12
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 676
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 677
    .local v0, "curInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 678
    .local v1, "destX":I
    if-eqz v0, :cond_1d

    .line 679
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v2

    .line 680
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    iget v5, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    .line 681
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 680
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v1, v3

    .line 683
    .end local v2    # "width":I
    :cond_1d
    const/4 v2, 0x0

    if-eqz p2, :cond_29

    .line 684
    invoke-virtual {p0, v1, v2, p3}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    .line 685
    if-eqz p4, :cond_37

    .line 686
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_37

    .line 689
    :cond_29
    if-eqz p4, :cond_2e

    .line 690
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 692
    :cond_2e
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 693
    invoke-virtual {p0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 694
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 696
    :cond_37
    :goto_37
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 2669
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2670
    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2681
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    .line 1282
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2f

    .line 1283
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_15

    .line 1286
    :cond_10
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1288
    :goto_15
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1289
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_28

    .line 1290
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1291
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1293
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Landroidx/viewpager/widget/ViewPager;->sPositionComparator:Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1295
    .end local v0    # "childCount":I
    :cond_2f
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2905
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2907
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2909
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    .line 2910
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2911
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2912
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2913
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2914
    .local v4, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_2c

    iget v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2c

    .line 2915
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2910
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2925
    .end local v2    # "i":I
    :cond_2f
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_39

    .line 2926
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_57

    .line 2929
    :cond_39
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_40

    .line 2930
    return-void

    .line 2932
    :cond_40
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    .line 2933
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_52

    .line 2934
    return-void

    .line 2936
    :cond_52
    if-eqz p1, :cond_57

    .line 2937
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2940
    :cond_57
    return-void
.end method

.method addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 1008
    new-instance v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$ItemInfo;-><init>()V

    .line 1009
    .local v0, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iput p1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1010
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1011
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1012
    if-ltz p2, :cond_28

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_22

    goto :goto_28

    .line 1015
    :cond_22
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 1013
    :cond_28
    :goto_28
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    :goto_2d
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    .line 581
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 584
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    return-void
.end method

.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 723
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 726
    :cond_b
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2950
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2951
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2952
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2953
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2954
    .local v2, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_20

    iget v3, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_20

    .line 2955
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2950
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2959
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1472
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1473
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1475
    :cond_a
    move-object v0, p3

    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1477
    .local v0, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroidx/viewpager/widget/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1478
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_30

    .line 1479
    if-eqz v0, :cond_29

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_21

    goto :goto_29

    .line 1480
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1482
    :cond_29
    :goto_29
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1483
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_33

    .line 1485
    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1495
    :goto_33
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2793
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2794
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_8

    .line 2795
    const/4 v0, 0x0

    goto :goto_69

    .line 2796
    :cond_8
    if-eqz v0, :cond_69

    .line 2797
    const/4 v1, 0x0

    .line 2798
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_f
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    .line 2800
    if-ne v2, p0, :cond_17

    .line 2801
    const/4 v1, 0x1

    .line 2802
    goto :goto_1c

    .line 2799
    :cond_17
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_f

    .line 2805
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_1c
    :goto_1c
    if-nez v1, :cond_69

    .line 2807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2808
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_32
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4c

    .line 2811
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_32

    .line 2813
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2814
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2813
    const-string v4, "ViewPager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v0, 0x0

    .line 2819
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_69
    :goto_69
    const/4 v1, 0x0

    .line 2821
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2823
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_ba

    if-eq v2, v0, :cond_ba

    .line 2824
    if-ne p1, v4, :cond_9a

    .line 2827
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2828
    .local v3, "nextLeft":I
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2829
    .local v4, "currLeft":I
    if-eqz v0, :cond_95

    if-lt v3, v4, :cond_95

    .line 2830
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_99

    .line 2832
    :cond_95
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2834
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :cond_99
    :goto_99
    goto :goto_ce

    :cond_9a
    if-ne p1, v3, :cond_99

    .line 2837
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2838
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroidx/viewpager/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2839
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_b5

    if-gt v3, v4, :cond_b5

    .line 2840
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_b9

    .line 2842
    :cond_b5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2844
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_b9
    goto :goto_ce

    .line 2845
    :cond_ba
    if-eq p1, v4, :cond_ca

    const/4 v4, 0x1

    if-ne p1, v4, :cond_c0

    goto :goto_ca

    .line 2848
    :cond_c0
    if-eq p1, v3, :cond_c5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_ce

    .line 2850
    :cond_c5
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_ce

    .line 2847
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v1

    .line 2852
    :cond_ce
    :goto_ce
    if-eqz v1, :cond_d7

    .line 2853
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->playSoundEffect(I)V

    .line 2855
    :cond_d7
    return v1
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 2528
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 2529
    const/4 v0, 0x0

    return v0

    .line 2531
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 2532
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2533
    const/4 v1, 0x0

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    .line 2534
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    .line 2535
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_21

    .line 2537
    :cond_1c
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2539
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2540
    .local v10, "time":J
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2541
    .local v1, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2542
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2543
    iput-wide v10, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    .line 2544
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 2719
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5c

    .line 2720
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2721
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2722
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2723
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2725
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_17
    if-ltz v6, :cond_5c

    .line 2728
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2729
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_59

    add-int v7, p5, v4

    .line 2730
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_59

    add-int v7, p4, v3

    .line 2731
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2732
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2731
    const/4 v9, 0x1

    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2733
    return v2

    .line 2725
    .end local v13    # "child":Landroid/view/View;
    :cond_59
    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 2738
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_5c
    if-eqz p2, :cond_68

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_6b

    :cond_68
    move/from16 v1, p3

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2692
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2693
    return v1

    .line 2696
    :cond_6
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v0

    .line 2697
    .local v0, "width":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2698
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_1b

    .line 2699
    int-to-float v4, v0

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 2700
    :cond_1b
    if-lez p1, :cond_27

    .line 2701
    int-to-float v4, v0

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    .line 2703
    :cond_27
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3029
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public clearOnPageChangeListeners()V
    .registers 2

    .line 745
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 748
    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 6

    .line 1793
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 1794
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1795
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1796
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1797
    .local v1, "oldY":I
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1798
    .local v2, "x":I
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1800
    .local v3, "y":I
    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    .line 1801
    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1802
    invoke-direct {p0, v2}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1803
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1804
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 1809
    :cond_3d
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1810
    return-void

    .line 1814
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_41
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 1815
    return-void
.end method

.method dataSetChanged()V
    .registers 13

    .line 1023
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1024
    .local v0, "adapterCount":I
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 1025
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1026
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 1027
    .local v1, "needPopulate":Z
    :goto_22
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 1029
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 1030
    .local v5, "isUpdating":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    .line 1031
    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1032
    .local v7, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-object v8, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 1034
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    .line 1035
    goto :goto_80

    .line 1038
    :cond_42
    const/4 v9, -0x2

    if-ne v8, v9, :cond_72

    .line 1039
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1040
    add-int/lit8 v6, v6, -0x1

    .line 1042
    if-nez v5, :cond_54

    .line 1043
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v9, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1044
    const/4 v5, 0x1

    .line 1047
    :cond_54
    iget-object v9, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v10, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1048
    const/4 v1, 0x1

    .line 1050
    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget v10, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_80

    .line 1052
    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1053
    const/4 v1, 0x1

    goto :goto_80

    .line 1058
    :cond_72
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_80

    .line 1059
    iget v9, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v10, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_7d

    .line 1061
    move v2, v8

    .line 1064
    :cond_7d
    iput v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 1065
    const/4 v1, 0x1

    .line 1030
    .end local v7    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_80
    :goto_80
    add-int/2addr v6, v3

    goto :goto_26

    .line 1069
    .end local v6    # "i":I
    :cond_82
    if-eqz v5, :cond_89

    .line 1070
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v6, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1073
    :cond_89
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Landroidx/viewpager/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1075
    if-eqz v1, :cond_b3

    .line 1077
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 1078
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_97
    if-ge v7, v6, :cond_ad

    .line 1079
    invoke-virtual {p0, v7}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1080
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1081
    .local v9, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_aa

    .line 1082
    const/4 v10, 0x0

    iput v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1078
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 1086
    .end local v7    # "i":I
    :cond_ad
    invoke-virtual {p0, v2, v4, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1087
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 1089
    .end local v6    # "childCount":I
    :cond_b3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2744
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2997
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 2998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 3002
    :cond_d
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 3003
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_35

    .line 3004
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3005
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_32

    .line 3006
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v3

    .line 3007
    .local v3, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v3, :cond_32

    iget v4, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_32

    .line 3008
    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3009
    const/4 v4, 0x1

    return v4

    .line 3003
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 3014
    .end local v1    # "i":I
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 4
    .param p1, "f"    # F

    .line 927
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 928
    const v0, 0x3ef1463b

    mul-float p1, p1, v0

    .line 929
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2426
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2427
    const/4 v0, 0x0

    .line 2429
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2430
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_26

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 2432
    invoke-virtual {v3}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_1a

    goto :goto_26

    .line 2456
    :cond_1a
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2457
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_ac

    .line 2433
    :cond_26
    :goto_26
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_67

    .line 2434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2435
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2436
    .local v3, "height":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2438
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2439
    neg-int v5, v3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float v6, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2440
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2441
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2442
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2444
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_67
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_ac

    .line 2445
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2446
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2447
    .local v3, "width":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2449
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2450
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float v6, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2451
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2452
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2453
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2454
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    nop

    .line 2460
    :cond_ac
    :goto_ac
    if-eqz v0, :cond_b1

    .line 2462
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2464
    :cond_b1
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 915
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 916
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 917
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 918
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 920
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 11

    .line 2554
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_47

    .line 2558
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_40

    .line 2559
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2560
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2561
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 2562
    .local v1, "initialVelocity":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2563
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 2564
    .local v3, "width":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 2565
    .local v4, "scrollX":I
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 2566
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2567
    .local v6, "currentPage":I
    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v8

    .line 2568
    .local v7, "pageOffset":F
    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    iget v9, p0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 2569
    .local v8, "totalDelta":I
    invoke-direct {p0, v6, v7, v1, v8}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v9

    .line 2571
    .local v9, "nextPage":I
    invoke-virtual {p0, v9, v2, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2573
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    .end local v3    # "width":I
    .end local v4    # "scrollX":I
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "currentPage":I
    .end local v7    # "pageOffset":F
    .end local v8    # "totalDelta":I
    .end local v9    # "nextPage":I
    :cond_40
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->endDrag()V

    .line 2575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    .line 2576
    return-void

    .line 2555
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2756
    const/4 v0, 0x0

    .line 2757
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4b

    .line 2758
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_4c

    goto :goto_4b

    .line 2774
    :sswitch_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2775
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_4b

    .line 2776
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2777
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_4b

    .line 2767
    :sswitch_27
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2768
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_4b

    .line 2770
    :cond_32
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2772
    goto :goto_4b

    .line 2760
    :sswitch_39
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2761
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_4b

    .line 2763
    :cond_44
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2765
    nop

    .line 2782
    :cond_4b
    :goto_4b
    return v0

    :sswitch_data_4c
    .sparse-switch
        0x15 -> :sswitch_39
        0x16 -> :sswitch_27
        0x3d -> :sswitch_10
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .registers 21
    .param p1, "xOffset"    # F

    .line 2586
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    if-eqz v1, :cond_94

    .line 2590
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v1, :cond_b

    .line 2591
    return-void

    .line 2594
    :cond_b
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2596
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2597
    .local v1, "oldScrollX":F
    sub-float v2, v1, p1

    .line 2598
    .local v2, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 2600
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Landroidx/viewpager/widget/ViewPager;->mFirstOffset:F

    mul-float v4, v4, v5

    .line 2601
    .local v4, "leftBound":F
    int-to-float v5, v3

    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mLastOffset:F

    mul-float v5, v5, v6

    .line 2603
    .local v5, "rightBound":F
    iget-object v6, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2604
    .local v6, "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-object v7, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2605
    .local v7, "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v8, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_48

    .line 2606
    iget v8, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v4, v8, v9

    .line 2608
    :cond_48
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v9}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_59

    .line 2609
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v5, v8, v9

    .line 2612
    :cond_59
    cmpg-float v8, v2, v4

    if-gez v8, :cond_5f

    .line 2613
    move v2, v4

    goto :goto_64

    .line 2614
    :cond_5f
    cmpl-float v8, v2, v5

    if-lez v8, :cond_64

    .line 2615
    move v2, v5

    .line 2618
    :cond_64
    :goto_64
    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    float-to-int v9, v2

    int-to-float v9, v9

    sub-float v9, v2, v9

    add-float/2addr v8, v9

    iput v8, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2619
    float-to-int v8, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 2620
    float-to-int v8, v2

    invoke-direct {v0, v8}, Landroidx/viewpager/widget/ViewPager;->pageScrolled(I)Z

    .line 2623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 2624
    .local v17, "time":J
    iget-wide v9, v0, Landroidx/viewpager/widget/ViewPager;->mFakeDragBeginTime:J

    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x2

    move-wide/from16 v11, v17

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2626
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2627
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2628
    return-void

    .line 2587
    .end local v1    # "oldScrollX":F
    .end local v2    # "scrollX":F
    .end local v3    # "width":I
    .end local v4    # "leftBound":F
    .end local v5    # "rightBound":F
    .end local v6    # "firstItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v8    # "ev":Landroid/view/MotionEvent;
    .end local v17    # "time":J
    :cond_94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 3019
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 3034
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 3024
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .registers 2

    .line 572
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 802
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_a

    :cond_9
    move v0, p2

    .line 803
    .local v0, "index":I
    :goto_a
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 804
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iget v1, v1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    .line 805
    .local v1, "result":I
    return v1
.end method

.method public getCurrentItem()I
    .registers 2

    .line 627
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 828
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .line 884
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1523
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_15

    .line 1524
    if-eqz v1, :cond_13

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_f

    goto :goto_13

    .line 1527
    :cond_f
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_1

    .line 1525
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return-object v0

    .line 1529
    :cond_15
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 1512
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1513
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1514
    .local v1, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v3, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1515
    return-object v1

    .line 1512
    .end local v1    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1518
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I

    .line 1533
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1534
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1535
    .local v1, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v2, v1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    .line 1536
    return-object v1

    .line 1533
    .end local v1    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1539
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method initViewPager()V
    .registers 6

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 402
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setDescendantFocusability(I)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setFocusable(Z)V

    .line 404
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 405
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroidx/viewpager/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 406
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 407
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 409
    .local v3, "density":F
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    .line 410
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mMinimumVelocity:I

    .line 411
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    .line 412
    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 413
    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 415
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mFlingDistance:I

    .line 416
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    .line 417
    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    .line 419
    new-instance v4, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 421
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_6f

    .line 423
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 427
    :cond_6f
    new-instance v0, Landroidx/viewpager/widget/ViewPager$4;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/ViewPager$4;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 475
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    .line 2640
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1544
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 1546
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 479
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 481
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 482
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 484
    :cond_16
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 485
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2468
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2471
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_bc

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_bc

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_bc

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_bc

    .line 2472
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2473
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2475
    .local v2, "width":I
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2476
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2477
    .local v4, "itemIndex":I
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 2478
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v6, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    .line 2479
    .local v6, "offset":F
    iget-object v7, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2480
    .local v7, "itemCount":I
    iget v8, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2481
    .local v8, "firstPos":I
    iget-object v9, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iget v9, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2482
    .local v9, "lastPos":I
    move v10, v8

    .local v10, "pos":I
    :goto_47
    if-ge v10, v9, :cond_b7

    .line 2483
    :goto_49
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_5b

    if-ge v4, v7, :cond_5b

    .line 2484
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_49

    .line 2488
    :cond_5b
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_6f

    .line 2489
    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    int-to-float v12, v2

    mul-float v11, v11, v12

    .line 2490
    .local v11, "drawAt":F
    iget v12, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    iget v13, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float/2addr v12, v3

    move v6, v12

    .end local v6    # "offset":F
    .local v12, "offset":F
    goto :goto_7e

    .line 2492
    .end local v11    # "drawAt":F
    .end local v12    # "offset":F
    .restart local v6    # "offset":F
    :cond_6f
    iget-object v11, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v11, v10}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2493
    .local v11, "widthFactor":F
    add-float v12, v6, v11

    int-to-float v13, v2

    mul-float v12, v12, v13

    .line 2494
    .local v12, "drawAt":F
    add-float v13, v11, v3

    add-float/2addr v6, v13

    move v11, v12

    .line 2497
    .end local v12    # "drawAt":F
    .local v11, "drawAt":F
    :goto_7e
    iget v12, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a6

    .line 2498
    iget-object v12, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v11

    .line 2499
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 2498
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2500
    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_aa

    .line 2497
    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_a6
    move-object/from16 v12, p1

    move/from16 v16, v3

    .line 2503
    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    :goto_aa
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_b2

    .line 2504
    goto :goto_be

    .line 2482
    .end local v11    # "drawAt":F
    :cond_b2
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_47

    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_b7
    move-object/from16 v12, p1

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    goto :goto_be

    .line 2471
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "pos":I
    .end local v16    # "marginOffset":F
    :cond_bc
    move-object/from16 v12, p1

    .line 2508
    :goto_be
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2031
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 2034
    .local v8, "action":I
    const/4 v0, 0x3

    const/4 v9, 0x0

    if-eq v8, v0, :cond_127

    const/4 v10, 0x1

    if-ne v8, v10, :cond_13

    goto/16 :goto_127

    .line 2043
    :cond_13
    if-eqz v8, :cond_1f

    .line 2044
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_1a

    .line 2046
    return v10

    .line 2048
    :cond_1a
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_1f

    .line 2050
    return v9

    .line 2054
    :cond_1f
    sparse-switch v8, :sswitch_data_12c

    goto/16 :goto_115

    .line 2148
    :sswitch_24
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_115

    .line 2065
    :sswitch_29
    iget v11, v6, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2066
    .local v11, "activePointerId":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_30

    .line 2068
    goto/16 :goto_115

    .line 2071
    :cond_30
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 2072
    .local v12, "pointerIndex":I
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 2073
    .local v13, "x":F
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 2074
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 2075
    .local v15, "xDiff":F
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2076
    .local v5, "y":F
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2079
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_78

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Landroidx/viewpager/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_78

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v2, v5

    .line 2080
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v19, v2

    move/from16 v2, v18

    move v9, v5

    .end local v5    # "y":F
    .local v9, "y":F
    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Landroidx/viewpager/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2082
    iput v13, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2083
    iput v9, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2084
    iput-boolean v10, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2085
    const/4 v0, 0x0

    return v0

    .line 2079
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_78
    move v9, v5

    .line 2087
    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_79
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_a9

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v0, v0, v15

    cmpl-float v0, v0, v16

    if-lez v0, :cond_a9

    .line 2089
    iput-boolean v10, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2090
    invoke-direct {v6, v10}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2091
    invoke-virtual {v6, v10}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2092
    cmpl-float v0, v14, v17

    if-lez v0, :cond_9b

    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_a1

    :cond_9b
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_a1
    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2094
    iput v9, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2095
    invoke-direct {v6, v10}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_b2

    .line 2096
    :cond_a9
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_b2

    .line 2102
    iput-boolean v10, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2104
    :cond_b2
    :goto_b2
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_115

    .line 2106
    invoke-direct {v6, v13}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 2107
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_115

    .line 2118
    .end local v9    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :sswitch_c0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2119
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v0, v6, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2120
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2121
    iput-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2123
    iput-boolean v10, v6, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 2124
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2125
    iget v0, v6, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10e

    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2126
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroidx/viewpager/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_10e

    .line 2128
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2129
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2130
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 2131
    iput-boolean v10, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2132
    invoke-direct {v6, v10}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2133
    invoke-virtual {v6, v10}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    goto :goto_115

    .line 2135
    :cond_10e
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 2136
    iput-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2144
    nop

    .line 2152
    :cond_115
    :goto_115
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_11f

    .line 2153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2155
    :cond_11f
    iget-object v0, v6, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2161
    iget-boolean v0, v6, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 2037
    :cond_127
    :goto_127
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    .line 2038
    const/4 v0, 0x0

    return v0

    :sswitch_data_12c
    .sparse-switch
        0x0 -> :sswitch_c0
        0x2 -> :sswitch_29
        0x6 -> :sswitch_24
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1682
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1683
    .local v1, "count":I
    sub-int v2, p4, p2

    .line 1684
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 1685
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1686
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1687
    .local v5, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1688
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1689
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 1691
    .local v8, "scrollX":I
    const/4 v9, 0x0

    .line 1695
    .local v9, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    const/16 v11, 0x8

    if-ge v10, v1, :cond_c3

    .line 1696
    invoke-virtual {v0, v10}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1697
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_bf

    .line 1698
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1699
    .local v11, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    const/4 v13, 0x0

    .line 1700
    .local v13, "childLeft":I
    const/4 v14, 0x0

    .line 1701
    .local v14, "childTop":I
    iget-boolean v15, v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_bb

    .line 1702
    iget v15, v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1703
    .local v15, "hgrav":I
    move/from16 v16, v13

    .end local v13    # "childLeft":I
    .local v16, "childLeft":I
    iget v13, v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1704
    .local v13, "vgrav":I
    packed-switch v15, :pswitch_data_16e

    .line 1706
    :pswitch_47
    move-object/from16 v18, v11

    .end local v11    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .local v18, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    move/from16 v17, v4

    .line 1707
    .end local v16    # "childLeft":I
    .local v17, "childLeft":I
    goto :goto_77

    .line 1717
    .end local v17    # "childLeft":I
    .end local v18    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .restart local v11    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .restart local v16    # "childLeft":I
    :pswitch_4c
    sub-int v17, v2, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    .line 1718
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v6, v6, v16

    move-object/from16 v18, v11

    goto :goto_77

    .line 1709
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_5d
    move/from16 v17, v4

    .line 1710
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v4, v4, v16

    .line 1711
    move-object/from16 v18, v11

    goto :goto_77

    .line 1713
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_68
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v2, v17

    move-object/from16 v18, v11

    .end local v11    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .restart local v18    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    div-int/lit8 v11, v17, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1715
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    nop

    .line 1721
    :goto_77
    sparse-switch v13, :sswitch_data_17c

    .line 1723
    move v11, v5

    .line 1724
    .end local v14    # "childTop":I
    .local v11, "childTop":I
    goto :goto_9e

    .line 1734
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_7c
    sub-int v11, v3, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v11, v11, v16

    .line 1735
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_9e

    .line 1726
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_8a
    move v11, v5

    .line 1727
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v5, v14

    .line 1728
    goto :goto_9e

    .line 1730
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_91
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v3, v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1732
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    nop

    .line 1738
    :goto_9e
    add-int v14, v17, v8

    .line 1739
    .end local v17    # "childLeft":I
    .local v14, "childLeft":I
    nop

    .line 1740
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v4

    .end local v4    # "paddingLeft":I
    .local v17, "paddingLeft":I
    add-int v4, v14, v16

    .line 1741
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v19, v5

    .end local v5    # "paddingTop":I
    .local v19, "paddingTop":I
    add-int v5, v11, v16

    .line 1739
    invoke-virtual {v12, v14, v11, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1742
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    move/from16 v5, v19

    goto :goto_bf

    .line 1701
    .end local v15    # "hgrav":I
    .end local v17    # "paddingLeft":I
    .end local v18    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v19    # "paddingTop":I
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingTop":I
    .local v11, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .local v13, "childLeft":I
    .local v14, "childTop":I
    :cond_bb
    move-object/from16 v18, v11

    move/from16 v16, v13

    .line 1695
    .end local v11    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    :cond_bf
    :goto_bf
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    .line 1747
    .end local v10    # "i":I
    :cond_c3
    sub-int v10, v2, v4

    sub-int/2addr v10, v6

    .line 1749
    .local v10, "childWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c7
    if-ge v12, v1, :cond_150

    .line 1750
    invoke-virtual {v0, v12}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1751
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_13e

    .line 1752
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1754
    .local v15, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v11, v15, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_137

    invoke-virtual {v0, v14}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v11

    move-object/from16 v17, v11

    .local v17, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_12e

    .line 1755
    int-to-float v11, v10

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .local v13, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v17, "count":I
    iget v1, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    mul-float v11, v11, v1

    float-to-int v1, v11

    .line 1756
    .local v1, "loff":I
    add-int v11, v4, v1

    .line 1757
    .local v11, "childLeft":I
    move/from16 v19, v5

    .line 1758
    .local v19, "childTop":I
    move/from16 v20, v1

    .end local v1    # "loff":I
    .local v20, "loff":I
    iget-boolean v1, v15, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v1, :cond_118

    .line 1761
    const/4 v1, 0x0

    iput-boolean v1, v15, Landroidx/viewpager/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1762
    int-to-float v1, v10

    move/from16 v21, v2

    .end local v2    # "width":I
    .local v21, "width":I
    iget v2, v15, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1765
    .local v1, "widthSpec":I
    sub-int v18, v3, v5

    move/from16 v22, v4

    .end local v4    # "paddingLeft":I
    .local v22, "paddingLeft":I
    sub-int v4, v18, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1768
    .local v2, "heightSpec":I
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_11c

    .line 1758
    .end local v1    # "widthSpec":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v2, "width":I
    .restart local v4    # "paddingLeft":I
    :cond_118
    move/from16 v21, v2

    move/from16 v22, v4

    .line 1775
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_11c
    nop

    .line 1776
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    .line 1777
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v19, v2

    .line 1775
    move/from16 v4, v19

    .end local v19    # "childTop":I
    .local v4, "childTop":I
    invoke-virtual {v14, v11, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_144

    .line 1754
    .end local v11    # "childLeft":I
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v20    # "loff":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v1, "count":I
    .restart local v2    # "width":I
    .local v4, "paddingLeft":I
    .local v17, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_12e
    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v17, "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_144

    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_137
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_144

    .line 1751
    .end local v15    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_13e
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1749
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_144
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v4, v22

    const/16 v11, 0x8

    goto/16 :goto_c7

    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_150
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1781
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v12    # "i":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    iput v5, v0, Landroidx/viewpager/widget/ViewPager;->mTopPageBounds:I

    .line 1782
    sub-int v1, v3, v7

    iput v1, v0, Landroidx/viewpager/widget/ViewPager;->mBottomPageBounds:I

    .line 1783
    iput v9, v0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    .line 1785
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_169

    .line 1786
    iget v1, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_16a

    .line 1785
    :cond_169
    const/4 v2, 0x0

    .line 1788
    :goto_16a
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 1789
    return-void

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_68
        :pswitch_47
        :pswitch_5d
        :pswitch_47
        :pswitch_4c
    .end packed-switch

    :sswitch_data_17c
    .sparse-switch
        0x10 -> :sswitch_91
        0x30 -> :sswitch_8a
        0x50 -> :sswitch_7c
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1555
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1556
    move/from16 v4, p2

    invoke-static {v1, v4}, Landroidx/viewpager/widget/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1555
    invoke-virtual {v0, v3, v5}, Landroidx/viewpager/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1558
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1559
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1560
    .local v5, "maxGutterSize":I
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroidx/viewpager/widget/ViewPager;->mGutterSize:I

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1564
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1571
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v8

    .line 1572
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e
    const/16 v10, 0x8

    if-ge v9, v8, :cond_ef

    .line 1573
    invoke-virtual {v0, v9}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1574
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_de

    .line 1575
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1576
    .local v10, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    if-eqz v10, :cond_d9

    iget-boolean v13, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_d9

    .line 1577
    iget v13, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1578
    .local v13, "hgrav":I
    iget v14, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1579
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1580
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1581
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_6f

    const/16 v1, 0x50

    if-ne v14, v1, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v1, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    .line 1582
    .local v1, "consumeVertical":Z
    :goto_70
    const/4 v11, 0x3

    if-eq v13, v11, :cond_79

    const/4 v11, 0x5

    if-ne v13, v11, :cond_77

    goto :goto_79

    :cond_77
    const/4 v11, 0x0

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v11, 0x1

    .line 1584
    .local v11, "consumeHorizontal":Z
    :goto_7a
    if-eqz v1, :cond_7f

    .line 1585
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_83

    .line 1586
    :cond_7f
    if-eqz v11, :cond_83

    .line 1587
    const/high16 v16, 0x40000000    # 2.0f

    .line 1590
    :cond_83
    :goto_83
    move/from16 v17, v6

    .line 1591
    .local v17, "widthSize":I
    move/from16 v18, v7

    .line 1592
    .local v18, "heightSize":I
    iget v2, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_9b

    .line 1593
    const/high16 v15, 0x40000000    # 2.0f

    .line 1594
    iget v2, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_98

    .line 1595
    iget v2, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_9d

    .line 1594
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_98
    move/from16 v2, v17

    goto :goto_9d

    .line 1592
    :cond_9b
    move/from16 v2, v17

    .line 1598
    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_9d
    iget v3, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_b4

    .line 1599
    const/high16 v16, 0x40000000    # 2.0f

    .line 1600
    iget v3, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_af

    .line 1601
    iget v3, v10, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    move v4, v3

    move/from16 v3, v16

    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_b8

    .line 1600
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_af
    move/from16 v3, v16

    move/from16 v4, v18

    goto :goto_b8

    .line 1598
    :cond_b4
    move/from16 v3, v16

    move/from16 v4, v18

    .line 1604
    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .local v3, "heightMode":I
    .local v4, "heightSize":I
    :goto_b8
    move/from16 v16, v5

    .end local v5    # "maxGutterSize":I
    .local v16, "maxGutterSize":I
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1605
    .local v5, "widthSpec":I
    move/from16 v17, v2

    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1606
    .local v2, "heightSpec":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1608
    if-eqz v1, :cond_d0

    .line 1609
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v7, v7, v18

    goto :goto_e2

    .line 1610
    :cond_d0
    if-eqz v11, :cond_e2

    .line 1611
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v6, v6, v18

    goto :goto_e2

    .line 1576
    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v4    # "heightSize":I
    .end local v11    # "consumeHorizontal":Z
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "maxGutterSize":I
    .end local v17    # "widthSize":I
    .end local v19    # "measuredWidth":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_d9
    move/from16 v19, v3

    move/from16 v16, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    goto :goto_e2

    .line 1574
    .end local v10    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_de
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1572
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    :cond_e2
    :goto_e2
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v3, v19

    const/4 v1, 0x0

    goto/16 :goto_3e

    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_ef
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1617
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v9    # "i":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1618
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1621
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    .line 1622
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 1623
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    .line 1626
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1627
    .end local v8    # "size":I
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10f
    if-ge v3, v2, :cond_139

    .line 1628
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1629
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_136

    .line 1634
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1635
    .local v5, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    if-eqz v5, :cond_127

    iget-boolean v8, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_136

    .line 1636
    :cond_127
    int-to-float v8, v6

    iget v9, v5, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1638
    .local v8, "widthSpec":I
    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1627
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v8    # "widthSpec":I
    :cond_136
    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    .line 1642
    .end local v3    # "i":I
    :cond_139
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 16
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1865
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_64

    .line 1866
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1867
    .local v0, "scrollX":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1868
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1869
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v3

    .line 1870
    .local v3, "width":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1871
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_64

    .line 1872
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1873
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1874
    .local v7, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v8, v7, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_2a

    goto :goto_61

    .line 1876
    :cond_2a
    iget v8, v7, Landroidx/viewpager/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    .line 1877
    .local v8, "hgrav":I
    const/4 v9, 0x0

    .line 1878
    .local v9, "childLeft":I
    packed-switch v8, :pswitch_data_9e

    .line 1880
    :pswitch_32
    move v10, v1

    .line 1881
    .end local v9    # "childLeft":I
    .local v10, "childLeft":I
    goto :goto_55

    .line 1891
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_34
    sub-int v10, v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1892
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_55

    .line 1883
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_41
    move v10, v1

    .line 1884
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v1, v9

    .line 1885
    goto :goto_55

    .line 1887
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_48
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1889
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    nop

    .line 1895
    :goto_55
    add-int/2addr v10, v0

    .line 1897
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v10, v9

    .line 1898
    .local v9, "childOffset":I
    if-eqz v9, :cond_61

    .line 1899
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1871
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v8    # "hgrav":I
    .end local v9    # "childOffset":I
    .end local v10    # "childLeft":I
    :cond_61
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1904
    .end local v0    # "scrollX":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "width":I
    .end local v4    # "childCount":I
    .end local v5    # "i":I
    :cond_64
    invoke-direct {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1906
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_99

    .line 1907
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1908
    .restart local v0    # "scrollX":I
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1909
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    if-ge v2, v1, :cond_99

    .line 1910
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1911
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1913
    .local v4, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v5, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_85

    goto :goto_96

    .line 1914
    :cond_85
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1915
    .local v5, "transformPos":F
    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-interface {v6, v3, v5}, Landroidx/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1909
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    .end local v5    # "transformPos":F
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 1919
    .end local v0    # "scrollX":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mCalledSuper:Z

    .line 1920
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_32
        :pswitch_41
        :pswitch_32
        :pswitch_34
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2970
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2971
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    .line 2972
    const/4 v1, 0x0

    .line 2973
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2974
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_10

    .line 2976
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .line 2977
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2978
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2980
    .restart local v3    # "end":I
    :goto_10
    move v4, v1

    .local v4, "i":I
    :goto_11
    if-eq v4, v3, :cond_33

    .line 2981
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2982
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2983
    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2984
    .local v6, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_31

    iget v7, v6, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_31

    .line 2985
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2986
    const/4 v7, 0x1

    return v7

    .line 2980
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_31
    add-int/2addr v4, v2

    goto :goto_11

    .line 2991
    .end local v4    # "i":I
    :cond_33
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1452
    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1453
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1454
    return-void

    .line 1457
    :cond_8
    move-object v0, p1

    check-cast v0, Landroidx/viewpager/widget/ViewPager$SavedState;

    .line 1458
    .local v0, "ss":Landroidx/viewpager/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1460
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v1, :cond_27

    .line 1461
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1462
    iget v1, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_33

    .line 1464
    :cond_27
    iget v1, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 1465
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1466
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1468
    :goto_33
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1441
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1442
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/viewpager/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1443
    .local v1, "ss":Landroidx/viewpager/widget/ViewPager$SavedState;
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iput v2, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->position:I

    .line 1444
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v2, :cond_19

    .line 1445
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroidx/viewpager/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1447
    :cond_19
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1649
    if-eq p1, p3, :cond_c

    .line 1650
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1652
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mFakeDragging:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 2170
    return v3

    .line 2173
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_18

    .line 2176
    return v4

    .line 2179
    :cond_18
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v2, :cond_17d

    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_17d

    .line 2184
    :cond_26
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_30

    .line 2185
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2187
    :cond_30
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2190
    .local v2, "action":I
    const/4 v5, 0x0

    .line 2192
    .local v5, "needsInvalidate":Z
    and-int/lit16 v6, v2, 0xff

    packed-switch v6, :pswitch_data_17e

    :pswitch_3f
    move/from16 v16, v2

    .end local v2    # "action":I
    .local v16, "action":I
    goto/16 :goto_177

    .line 2282
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :pswitch_43
    invoke-direct/range {p0 .. p1}, Landroidx/viewpager/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2283
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    move/from16 v16, v2

    goto/16 :goto_177

    .line 2275
    :pswitch_56
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 2276
    .local v4, "index":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2277
    .local v6, "x":F
    iput v6, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2278
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2279
    move/from16 v16, v2

    goto/16 :goto_177

    .line 2269
    .end local v4    # "index":I
    .end local v6    # "x":F
    :pswitch_6a
    iget-boolean v6, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v6, :cond_7b

    .line 2270
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v6, v3, v4, v4}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2271
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v5

    move/from16 v16, v2

    goto/16 :goto_177

    .line 2269
    :cond_7b
    move/from16 v16, v2

    goto/16 :goto_177

    .line 2205
    :pswitch_7f
    iget-boolean v4, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v4, :cond_e5

    .line 2206
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2207
    .local v4, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_94

    .line 2210
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v5

    .line 2211
    move/from16 v16, v2

    goto/16 :goto_177

    .line 2213
    :cond_94
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2214
    .restart local v6    # "x":F
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2215
    .local v7, "xDiff":F
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 2216
    .local v8, "y":F
    iget v9, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2220
    .local v9, "yDiff":F
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_e5

    cmpl-float v10, v7, v9

    if-lez v10, :cond_e5

    .line 2222
    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    .line 2223
    invoke-direct {v0, v3}, Landroidx/viewpager/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2224
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float v10, v6, v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_cc

    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_d2

    :cond_cc
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iget v11, v0, Landroidx/viewpager/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_d2
    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2226
    iput v8, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2227
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 2228
    invoke-direct {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2231
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 2232
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_e5

    .line 2233
    invoke-interface {v10, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2238
    .end local v4    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_e5
    iget-boolean v4, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_fc

    .line 2240
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2241
    .local v4, "activePointerIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2242
    .restart local v6    # "x":F
    invoke-direct {v0, v6}, Landroidx/viewpager/widget/ViewPager;->performDrag(F)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2243
    .end local v4    # "activePointerIndex":I
    .end local v6    # "x":F
    move/from16 v16, v2

    goto/16 :goto_177

    .line 2238
    :cond_fc
    move/from16 v16, v2

    goto/16 :goto_177

    .line 2246
    :pswitch_100
    iget-boolean v4, v0, Landroidx/viewpager/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_151

    .line 2247
    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2248
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v6, v6

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2249
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    float-to-int v6, v6

    .line 2250
    .local v6, "initialVelocity":I
    iput-boolean v3, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2251
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v7

    .line 2252
    .local v7, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 2253
    .local v8, "scrollX":I
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->infoForCurrentScrollPosition()Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 2254
    .local v9, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v10, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    .line 2255
    .local v10, "marginOffset":F
    iget v11, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 2256
    .local v11, "currentPage":I
    int-to-float v12, v8

    int-to-float v13, v7

    div-float/2addr v12, v13

    iget v13, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v13

    iget v13, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v10

    div-float/2addr v12, v13

    .line 2258
    .local v12, "pageOffset":F
    iget v13, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2259
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2260
    .local v14, "x":F
    iget v15, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2261
    .local v15, "totalDelta":I
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    invoke-direct {v0, v11, v12, v6, v15}, Landroidx/viewpager/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2263
    .local v2, "nextPage":I
    invoke-virtual {v0, v2, v3, v3, v6}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2265
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->resetTouch()Z

    move-result v5

    .line 2266
    .end local v2    # "nextPage":I
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "initialVelocity":I
    .end local v7    # "width":I
    .end local v8    # "scrollX":I
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v10    # "marginOffset":F
    .end local v11    # "currentPage":I
    .end local v12    # "pageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_177

    .line 2246
    .end local v16    # "action":I
    .local v2, "action":I
    :cond_151
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    goto :goto_177

    .line 2194
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :pswitch_154
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2195
    iput-boolean v4, v0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 2196
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 2199
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionX:F

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionX:F

    .line 2200
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mInitialMotionY:F

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mLastMotionY:F

    .line 2201
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Landroidx/viewpager/widget/ViewPager;->mActivePointerId:I

    .line 2202
    nop

    .line 2286
    :goto_177
    if-eqz v5, :cond_17c

    .line 2287
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2289
    :cond_17c
    return v3

    .line 2181
    .end local v5    # "needsInvalidate":Z
    .end local v16    # "action":I
    :cond_17d
    :goto_17d
    return v4

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_154
        :pswitch_100
        :pswitch_7f
        :pswitch_6a
        :pswitch_3f
        :pswitch_56
        :pswitch_43
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    .line 2885
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lez v0, :cond_c

    .line 2886
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2887
    return v1

    .line 2889
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .registers 4

    .line 2893
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_17

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_17

    .line 2894
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2895
    return v2

    .line 2897
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .registers 2

    .line 1092
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    .line 1093
    return-void
.end method

.method populate(I)V
    .registers 20
    .param p1, "newCurrentItem"    # I

    .line 1096
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 1097
    .local v0, "oldCurInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v3, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v3, v2, :cond_13

    .line 1098
    iget v3, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->infoForPosition(I)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1099
    iput v2, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    move-object v3, v0

    goto :goto_14

    .line 1097
    :cond_13
    move-object v3, v0

    .line 1102
    .end local v0    # "oldCurInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_14
    iget-object v0, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-nez v0, :cond_1c

    .line 1103
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1104
    return-void

    .line 1111
    :cond_1c
    iget-boolean v0, v1, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_24

    .line 1113
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1114
    return-void

    .line 1120
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 1121
    return-void

    .line 1124
    :cond_2b
    iget-object v0, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1126
    iget v4, v1, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 1127
    .local v4, "pageLimit":I
    iget v0, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1128
    .local v5, "startPos":I
    iget-object v0, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v6

    .line 1129
    .local v6, "N":I
    add-int/lit8 v0, v6, -0x1

    iget v7, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1131
    .local v7, "endPos":I
    iget v0, v1, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v0, :cond_255

    .line 1147
    const/4 v0, -0x1

    .line 1148
    .local v0, "curIndex":I
    const/4 v8, 0x0

    .line 1149
    .local v8, "curItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_50
    iget-object v9, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_71

    .line 1150
    iget-object v9, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 1151
    .local v9, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_6e

    .line 1152
    iget v10, v9, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_71

    move-object v8, v9

    goto :goto_71

    .line 1149
    .end local v9    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 1157
    :cond_71
    :goto_71
    if-nez v8, :cond_7b

    if-lez v6, :cond_7b

    .line 1158
    iget v9, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v9, v0}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v8

    .line 1164
    :cond_7b
    if-eqz v8, :cond_1da

    .line 1165
    const/4 v11, 0x0

    .line 1166
    .local v11, "extraWidthLeft":F
    add-int/lit8 v12, v0, -0x1

    .line 1167
    .local v12, "itemIndex":I
    if-ltz v12, :cond_8b

    iget-object v13, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_8c

    :cond_8b
    const/4 v13, 0x0

    .line 1168
    .local v13, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_8c
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v14

    .line 1169
    .local v14, "clientWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    if-gtz v14, :cond_96

    const/4 v10, 0x0

    goto :goto_a2

    :cond_96
    iget v10, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v15, v10

    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    int-to-float v15, v14

    div-float/2addr v9, v15

    add-float/2addr v10, v9

    :goto_a2
    move v9, v10

    .line 1171
    .local v9, "leftWidthNeeded":F
    iget v10, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    .local v10, "pos":I
    :goto_a7
    if-ltz v10, :cond_10e

    .line 1172
    cmpl-float v15, v11, v9

    if-ltz v15, :cond_d8

    if-ge v10, v5, :cond_d8

    .line 1173
    if-nez v13, :cond_b2

    .line 1174
    goto :goto_10e

    .line 1176
    :cond_b2
    iget v15, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_109

    iget-boolean v15, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v15, :cond_109

    .line 1177
    iget-object v15, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget-object v15, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v2, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v15, v1, v10, v2}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1183
    add-int/lit8 v12, v12, -0x1

    .line 1184
    add-int/lit8 v0, v0, -0x1

    .line 1185
    if-ltz v12, :cond_d5

    iget-object v2, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_d6

    :cond_d5
    const/4 v2, 0x0

    :goto_d6
    move-object v13, v2

    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v2, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    goto :goto_109

    .line 1187
    .end local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_d8
    if-eqz v13, :cond_f1

    iget v2, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v2, :cond_f1

    .line 1188
    iget v2, v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v2

    .line 1189
    add-int/lit8 v12, v12, -0x1

    .line 1190
    if-ltz v12, :cond_ee

    iget-object v2, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_ef

    :cond_ee
    const/4 v2, 0x0

    :goto_ef
    move-object v13, v2

    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    goto :goto_109

    .line 1192
    .end local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_f1
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v10, v2}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1193
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget v13, v2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v13

    .line 1194
    add-int/lit8 v0, v0, 0x1

    .line 1195
    if-ltz v12, :cond_107

    iget-object v13, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_108

    :cond_107
    const/4 v13, 0x0

    :goto_108
    move-object v2, v13

    .line 1171
    .end local v2    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_109
    :goto_109
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, p1

    goto :goto_a7

    .line 1199
    .end local v10    # "pos":I
    :cond_10e
    :goto_10e
    iget v2, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1200
    .local v2, "extraWidthRight":F
    add-int/lit8 v10, v0, 0x1

    .line 1201
    .end local v12    # "itemIndex":I
    .local v10, "itemIndex":I
    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v15, v2, v12

    if-gez v15, :cond_1c9

    .line 1202
    iget-object v12, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_129

    iget-object v12, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_12a

    :cond_129
    const/4 v12, 0x0

    .line 1203
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v12, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_12a
    if-gtz v14, :cond_12e

    const/4 v13, 0x0

    goto :goto_138

    .line 1204
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v15, v14

    div-float/2addr v13, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v13, v15

    :goto_138
    nop

    .line 1205
    .local v13, "rightWidthNeeded":F
    iget v15, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .local v15, "pos":I
    :goto_13d
    if-ge v15, v6, :cond_1c3

    .line 1206
    cmpl-float v16, v2, v13

    if-ltz v16, :cond_17c

    if-le v15, v7, :cond_17c

    .line 1207
    if-nez v12, :cond_14d

    .line 1208
    move/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_1c7

    .line 1210
    :cond_14d
    move/from16 v16, v4

    .end local v4    # "pageLimit":I
    .local v16, "pageLimit":I
    iget v4, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_179

    iget-boolean v4, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v4, :cond_179

    .line 1211
    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1212
    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    move/from16 v17, v5

    .end local v5    # "startPos":I
    .local v17, "startPos":I
    iget-object v5, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v15, v5}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1217
    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_176

    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_177

    :cond_176
    const/4 v4, 0x0

    :goto_177
    move-object v12, v4

    goto :goto_1bb

    .line 1210
    .end local v17    # "startPos":I
    .restart local v5    # "startPos":I
    :cond_179
    move/from16 v17, v5

    .end local v5    # "startPos":I
    .restart local v17    # "startPos":I
    goto :goto_1bb

    .line 1206
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_17c
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1219
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    if-eqz v12, :cond_19f

    iget v4, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_19f

    .line 1220
    iget v4, v12, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v4

    .line 1221
    add-int/lit8 v10, v10, 0x1

    .line 1222
    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_19c

    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_19d

    :cond_19c
    const/4 v4, 0x0

    :goto_19d
    move-object v12, v4

    goto :goto_1bb

    .line 1224
    :cond_19f
    invoke-virtual {v1, v15, v10}, Landroidx/viewpager/widget/ViewPager;->addNewItem(II)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 1225
    .end local v12    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .local v4, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    add-int/lit8 v10, v10, 0x1

    .line 1226
    iget v5, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    .line 1227
    iget-object v5, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_1b9

    iget-object v5, v1, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    goto :goto_1ba

    :cond_1b9
    const/4 v5, 0x0

    :goto_1ba
    move-object v12, v5

    .line 1205
    .end local v4    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .restart local v12    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :goto_1bb
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_13d

    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .local v4, "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1c3
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1232
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .end local v13    # "rightWidthNeeded":F
    .end local v15    # "pos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1c7
    move-object v13, v12

    goto :goto_1cd

    .line 1201
    .end local v12    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    .local v13, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_1c9
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1232
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1cd
    invoke-direct {v1, v8, v0, v3}, Landroidx/viewpager/widget/ViewPager;->calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V

    .line 1234
    iget-object v4, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    iget-object v12, v8, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v12}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_1de

    .line 1164
    .end local v2    # "extraWidthRight":F
    .end local v9    # "leftWidthNeeded":F
    .end local v10    # "itemIndex":I
    .end local v11    # "extraWidthLeft":F
    .end local v13    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v14    # "clientWidth":I
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1da
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1244
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1de
    iget-object v2, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1249
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e8
    if-ge v4, v2, :cond_214

    .line 1250
    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1251
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 1252
    .local v9, "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    iput v4, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1253
    iget-boolean v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_210

    iget v10, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_211

    .line 1255
    invoke-virtual {v1, v5}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 1256
    .local v10, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v10, :cond_211

    .line 1257
    iget v12, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v12, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1258
    iget v12, v10, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iput v12, v9, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    goto :goto_211

    .line 1253
    .end local v10    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    :cond_210
    const/4 v11, 0x0

    .line 1249
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/viewpager/widget/ViewPager$LayoutParams;
    :cond_211
    :goto_211
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e8

    .line 1262
    .end local v4    # "i":I
    :cond_214
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_254

    .line 1265
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 1266
    .local v4, "currentFocused":Landroid/view/View;
    if-eqz v4, :cond_228

    invoke-virtual {v1, v4}, Landroidx/viewpager/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v10

    goto :goto_229

    :cond_228
    const/4 v10, 0x0

    :goto_229
    move-object v5, v10

    .line 1267
    .local v5, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    if-eqz v5, :cond_232

    iget v9, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v10, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v9, v10, :cond_254

    .line 1268
    :cond_232
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_233
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_254

    .line 1269
    invoke-virtual {v1, v9}, Landroidx/viewpager/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1270
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v1, v10}, Landroidx/viewpager/widget/ViewPager;->infoForChild(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1271
    if-eqz v5, :cond_251

    iget v11, v5, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget v12, v1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_251

    .line 1272
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/View;->requestFocus(I)Z

    move-result v11

    if-eqz v11, :cond_251

    .line 1273
    goto :goto_254

    .line 1268
    .end local v10    # "child":Landroid/view/View;
    :cond_251
    add-int/lit8 v9, v9, 0x1

    goto :goto_233

    .line 1279
    .end local v4    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v9    # "i":I
    :cond_254
    :goto_254
    return-void

    .line 1134
    .end local v0    # "curIndex":I
    .end local v2    # "childCount":I
    .end local v8    # "curItem":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .local v4, "pageLimit":I
    .local v5, "startPos":I
    :cond_255
    move/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :try_start_259
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_265
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_259 .. :try_end_265} :catch_266

    .line 1137
    .local v0, "resName":Ljava/lang/String;
    goto :goto_270

    .line 1135
    .end local v0    # "resName":Ljava/lang/String;
    :catch_266
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1138
    .local v0, "resName":Ljava/lang/String;
    :goto_270
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Problematic adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 1143
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    .line 594
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 595
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    :cond_9
    return-void
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 736
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 737
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 739
    :cond_9
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1504
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1505
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1507
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1509
    :goto_b
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .registers 10
    .param p1, "adapter"    # Landroidx/viewpager/widget/PagerAdapter;

    .line 506
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 507
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 508
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 510
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 511
    .local v3, "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v5, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    iget-object v6, v3, Landroidx/viewpager/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 509
    .end local v3    # "ii":Landroidx/viewpager/widget/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 513
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 514
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->removeNonDecorViews()V

    .line 516
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 517
    invoke-virtual {p0, v2, v2}, Landroidx/viewpager/widget/ViewPager;->scrollTo(II)V

    .line 520
    :cond_3f
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 521
    .local v0, "oldAdapter":Landroidx/viewpager/widget/PagerAdapter;
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 522
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 524
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v3, :cond_8d

    .line 525
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    if-nez v3, :cond_54

    .line 526
    new-instance v3, Landroidx/viewpager/widget/ViewPager$PagerObserver;

    invoke-direct {v3, p0}, Landroidx/viewpager/widget/ViewPager$PagerObserver;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    .line 528
    :cond_54
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mObserver:Landroidx/viewpager/widget/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 529
    iput-boolean v2, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 530
    iget-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 531
    .local v3, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    .line 532
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v5}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->mExpectedAdapterCount:I

    .line 533
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_84

    .line 534
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v6, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 535
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v2, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 536
    const/4 v2, -0x1

    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredCurItem:I

    .line 537
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 538
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_8d

    .line 539
    :cond_84
    if-nez v3, :cond_8a

    .line 540
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    goto :goto_8d

    .line 542
    :cond_8a
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 547
    .end local v3    # "wasFirstLayout":Z
    :cond_8d
    :goto_8d
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_b0

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b0

    .line 548
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_a0
    if-ge v1, v2, :cond_b0

    .line 549
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 552
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_b0
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4
    .param p1, "item"    # I

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 612
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 613
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->mPopulatePending:Z

    .line 623
    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 624
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 632
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 10
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 635
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_73

    .line 639
    :cond_e
    if-nez p3, :cond_20

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_20

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_20

    .line 640
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 641
    return-void

    .line 644
    :cond_20
    const/4 v0, 0x1

    if-gez p1, :cond_25

    .line 645
    const/4 p1, 0x0

    goto :goto_35

    .line 646
    :cond_25
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_35

    .line 647
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v2}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 649
    :cond_35
    :goto_35
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 650
    .local v2, "pageLimit":I
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_41

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_57

    .line 654
    :cond_41
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_57

    .line 655
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    iput-boolean v0, v4, Landroidx/viewpager/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 654
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 658
    .end local v3    # "i":I
    :cond_57
    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_5c

    const/4 v1, 0x1

    :cond_5c
    move v0, v1

    .line 660
    .local v0, "dispatchSelected":Z
    iget-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_6c

    .line 663
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 664
    if-eqz v0, :cond_68

    .line 665
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnPageSelected(I)V

    .line 667
    :cond_68
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    goto :goto_72

    .line 669
    :cond_6c
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->populate(I)V

    .line 670
    invoke-direct {p0, p1, p2, p4, v0}, Landroidx/viewpager/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 672
    :goto_72
    return-void

    .line 636
    .end local v0    # "dispatchSelected":Z
    .end local v2    # "pageLimit":I
    :cond_73
    :goto_73
    invoke-direct {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 637
    return-void
.end method

.method setInternalPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .registers 3
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 815
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 816
    .local v0, "oldListener":Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mInternalPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 817
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5
    .param p1, "limit"    # I

    .line 849
    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 p1, 0x1

    .line 854
    :cond_26
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    .line 855
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mOffscreenPageLimit:I

    .line 856
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 858
    :cond_2f
    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 710
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4
    .param p1, "marginPixels"    # I

    .line 869
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 870
    .local v0, "oldMargin":I
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    .line 872
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getWidth()I

    move-result v1

    .line 873
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 875
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->requestLayout()V

    .line 876
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 905
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 906
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 893
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 894
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->refreshDrawableState()V

    .line 895
    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setWillNotDraw(Z)V

    .line 896
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->invalidate()V

    .line 897
    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .registers 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 769
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V

    .line 770
    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;I)V
    .registers 8
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroidx/viewpager/widget/ViewPager$PageTransformer;
    .param p3, "pageLayerType"    # I

    .line 787
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    .line 788
    .local v2, "hasTransformer":Z
    :goto_7
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    if-eq v2, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    .line 789
    .local v3, "needsPopulate":Z
    :goto_13
    iput-object p2, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 790
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 791
    if-eqz v2, :cond_22

    .line 792
    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    :cond_1d
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    .line 793
    iput p3, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformerLayerType:I

    goto :goto_24

    .line 795
    :cond_22
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->mDrawingOrder:I

    .line 797
    :goto_24
    if-eqz v3, :cond_29

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 798
    :cond_29
    return-void
.end method

.method setScrollState(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 488
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 489
    return-void

    .line 492
    :cond_5
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->mScrollState:I

    .line 493
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_13

    .line 495
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Landroidx/viewpager/widget/ViewPager;->enableLayers(Z)V

    .line 497
    :cond_13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 498
    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->smoothScrollTo(III)V

    .line 940
    return-void
.end method

.method smoothScrollTo(III)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .line 950
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 952
    invoke-direct {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 953
    return-void

    .line 957
    :cond_d
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 958
    .local v1, "wasScrolling":Z
    :goto_1d
    if-eqz v1, :cond_39

    .line 963
    iget-boolean v4, v0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    if-eqz v4, :cond_2a

    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    goto :goto_30

    :cond_2a
    iget-object v4, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v4

    .line 965
    .local v4, "sx":I
    :goto_30
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 966
    invoke-direct {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3d

    .line 968
    .end local v4    # "sx":I
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 970
    .restart local v4    # "sx":I
    :goto_3d
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getScrollY()I

    move-result v11

    .line 971
    .local v11, "sy":I
    sub-int v12, p1, v4

    .line 972
    .local v12, "dx":I
    sub-int v13, p2, v11

    .line 973
    .local v13, "dy":I
    if-nez v12, :cond_53

    if-nez v13, :cond_53

    .line 974
    invoke-direct {v0, v2}, Landroidx/viewpager/widget/ViewPager;->completeScroll(Z)V

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 976
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 977
    return-void

    .line 980
    :cond_53
    invoke-direct {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 981
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 983
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result v3

    .line 984
    .local v3, "width":I
    div-int/lit8 v14, v3, 0x2

    .line 985
    .local v14, "halfWidth":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    int-to-float v7, v3

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 986
    .local v15, "distanceRatio":F
    int-to-float v5, v14

    int-to-float v7, v14

    .line 987
    invoke-virtual {v0, v15}, Landroidx/viewpager/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float v7, v7, v8

    add-float v16, v5, v7

    .line 990
    .local v16, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 991
    .end local p3    # "velocity":I
    .local v10, "velocity":I
    if-lez v10, :cond_91

    .line 992
    int-to-float v5, v10

    div-float v5, v16, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    .local v5, "duration":I
    goto :goto_ad

    .line 994
    .end local v5    # "duration":I
    :cond_91
    int-to-float v5, v3

    iget-object v7, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    invoke-virtual {v7, v8}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result v7

    mul-float v5, v5, v7

    .line 995
    .local v5, "pageWidth":F
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Landroidx/viewpager/widget/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 996
    .local v7, "pageDelta":F
    add-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    move v5, v6

    .line 998
    .end local v7    # "pageDelta":F
    .local v5, "duration":I
    :goto_ad
    const/16 v6, 0x258

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1002
    .end local v5    # "duration":I
    .local v17, "duration":I
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->mIsScrollStarted:Z

    .line 1003
    iget-object v5, v0, Landroidx/viewpager/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    move v2, v10

    .end local v10    # "velocity":I
    .local v2, "velocity":I
    move/from16 v10, v17

    invoke-static/range {v5 .. v10}, Lio/nekohasekai/sagernet/ui/AppMotion;->settle(Landroid/widget/Scroller;IIIII)V

    .line 1004
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1005
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 910
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
