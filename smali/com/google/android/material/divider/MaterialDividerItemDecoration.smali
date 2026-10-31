.class public Lcom/google/android/material/divider/MaterialDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MaterialDividerItemDecoration.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private color:I

.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private insetEnd:I

.field private insetStart:I

.field private lastItemDecorated:Z

.field private orientation:I

.field private final tempRect:Landroid/graphics/Rect;

.field private thickness:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    sput v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "orientation"    # I

    .line 79
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "orientation"    # I

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    .line 84
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    sget v5, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->DEF_STYLE_RES:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 85
    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    .local v1, "attributes":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    .line 89
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    .line 92
    sget v2, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    .line 96
    sget v2, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    .line 97
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    .line 98
    sget v2, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    .line 99
    sget v0, Lcom/google/android/material/R$styleable;->MaterialDivider_lastItemDecorated:I

    .line 100
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    .line 106
    invoke-virtual {p0, p4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setOrientation(I)V

    .line 107
    return-void
.end method

.method private drawForHorizontalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 343
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 344
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 345
    .local v0, "top":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 346
    .local v1, "bottom":I
    nop

    .line 347
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 346
    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2d

    .line 349
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_28
    const/4 v0, 0x0

    .line 350
    .restart local v0    # "top":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    .line 352
    .restart local v1    # "bottom":I
    :goto_2d
    iget v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    add-int/2addr v0, v2

    .line 353
    iget v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    sub-int/2addr v1, v2

    .line 355
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 356
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_38
    if-ge v3, v2, :cond_67

    .line 357
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 358
    .local v4, "child":Landroid/view/View;
    invoke-direct {p0, p2, v4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 359
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 361
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    .line 362
    .local v5, "right":I
    iget v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    sub-int v6, v5, v6

    .line 363
    .local v6, "left":I
    iget-object v7, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    iget-object v7, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 356
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "right":I
    .end local v6    # "left":I
    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 367
    .end local v3    # "i":I
    :cond_67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 368
    return-void
.end method

.method private drawForVerticalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 307
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 308
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    .line 309
    .local v0, "left":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 310
    .local v1, "right":I
    nop

    .line 311
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 310
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2d

    .line 313
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_28
    const/4 v0, 0x0

    .line 314
    .restart local v0    # "left":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 316
    .restart local v1    # "right":I
    :goto_2d
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    move v2, v3

    .line 317
    .local v2, "isRtl":Z
    if-eqz v2, :cond_3c

    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    goto :goto_3e

    :cond_3c
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    :goto_3e
    add-int/2addr v0, v3

    .line 318
    if-eqz v2, :cond_44

    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    goto :goto_46

    :cond_44
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    :goto_46
    sub-int/2addr v1, v3

    .line 320
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    .line 321
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4c
    if-ge v4, v3, :cond_7b

    .line 322
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 323
    .local v5, "child":Landroid/view/View;
    invoke-direct {p0, p2, v5}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 324
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 326
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 327
    .local v6, "bottom":I
    iget v7, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    sub-int v7, v6, v7

    .line 328
    .local v7, "top":I
    iget-object v8, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v0, v7, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 329
    iget-object v8, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 332
    .end local v4    # "i":I
    :cond_7b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 333
    return-void
.end method

.method private shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .registers 9
    .param p1, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;

    .line 388
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 389
    .local v0, "position":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 390
    .local v1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v0, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, 0x0

    .line 392
    .local v4, "isLastItem":Z
    :goto_16
    const/4 v5, -0x1

    if-eq v0, v5, :cond_27

    if-eqz v4, :cond_1f

    iget-boolean v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    if-eqz v5, :cond_27

    .line 394
    :cond_1f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 392
    :goto_28
    return v2
.end method


# virtual methods
.method public getDividerColor()I
    .registers 2

    .line 196
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    return v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    .line 262
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    return v0
.end method

.method public getDividerThickness()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 378
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 379
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 380
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_18

    .line 382
    :cond_14
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 385
    :cond_18
    :goto_18
    return-void
.end method

.method public getOrientation()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    return v0
.end method

.method public isLastItemDecorated()Z
    .registers 2

    .line 283
    iget-boolean v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 289
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_7

    .line 290
    return-void

    .line 292
    :cond_7
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->drawForVerticalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_13

    .line 295
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->drawForHorizontalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 297
    :goto_13
    return-void
.end method

.method public setDividerColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 172
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    .line 173
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 174
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 175
    return-void
.end method

.method public setDividerColorResource(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "colorId"    # I

    .line 185
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    .line 186
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .registers 2
    .param p1, "insetEnd"    # I

    .line 240
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    .line 241
    return-void
.end method

.method public setDividerInsetEndResource(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "insetEndId"    # I

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetEnd(I)V

    .line 252
    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 2
    .param p1, "insetStart"    # I

    .line 207
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    .line 208
    return-void
.end method

.method public setDividerInsetStartResource(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "insetStartId"    # I

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetStart(I)V

    .line 219
    return-void
.end method

.method public setDividerThickness(I)V
    .registers 2
    .param p1, "thickness"    # I

    .line 139
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    .line 140
    return-void
.end method

.method public setDividerThicknessResource(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "thicknessId"    # I

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    .line 151
    return-void
.end method

.method public setLastItemDecorated(Z)V
    .registers 2
    .param p1, "lastItemDecorated"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    .line 274
    return-void
.end method

.method public setOrientation(I)V
    .registers 5
    .param p1, "orientation"    # I

    .line 120
    if-eqz p1, :cond_25

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_25

    .line 121
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". It should be either HORIZONTAL or VERTICAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_25
    :goto_25
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    .line 125
    return-void
.end method

.method protected shouldDrawDivider(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)Z"
        }
    .end annotation

    .line 407
    .local p2, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    const/4 v0, 0x1

    return v0
.end method
