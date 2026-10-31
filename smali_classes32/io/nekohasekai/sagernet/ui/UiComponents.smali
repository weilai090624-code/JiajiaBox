.class public final Lio/nekohasekai/sagernet/ui/UiComponents;
.super Ljava/lang/Object;
.source "UiComponents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/UiComponents$Style;,
        Lio/nekohasekai/sagernet/ui/UiComponents$Role;,
        Lio/nekohasekai/sagernet/ui/UiComponents$Palette;
    }
.end annotation


# static fields
.field public static final ACTION_HEIGHT:I = 0x30

.field public static final ACTION_MIN_WIDTH:I = 0x58

.field public static final CELL_RADIUS:I = 0xe

.field public static final CONTENT_PAD:I = 0x14

.field public static final GAP:I = 0x8

.field public static final PANEL_RADIUS:I = 0x16

.field public static final TRANSITION_MS:I = 0xdc

.field private static final palettes:[Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

.field private static final styles:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/nekohasekai/sagernet/ui/UiComponents$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    const/4 v0, 0x2

    .line 361
    new-array v0, v0, [Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->palettes:[Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Landroid/view/View;)V
    .registers 15

    .line 190
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 193
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42b00000    # 88.0f

    .line 194
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v2, 0x42400000    # 48.0f

    .line 195
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 196
    instance-of v3, p0, Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    const/16 v5, 0x11

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    if-eqz v3, :cond_49

    .line 197
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 198
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 200
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 201
    const-string v2, "sans-serif-medium"

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v2, v7, v0, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_a3

    .line 203
    :cond_49
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_a3

    .line 204
    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    .line 205
    :goto_51
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_a3

    .line 206
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 207
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_a0

    .line 208
    move-object v10, v9

    check-cast v10, Landroid/widget/TextView;

    .line 209
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v11, 0x41700000    # 15.0f

    .line 211
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 212
    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v10, v11, v7, v12, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 213
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 214
    instance-of v11, p0, Landroid/widget/FrameLayout;

    const/4 v12, -0x2

    if-eqz v11, :cond_91

    .line 215
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v12, v13, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9d

    .line 217
    :cond_91
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :goto_9d
    invoke-static {v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_a0
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    .line 223
    :cond_a3
    :goto_a3
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_bb

    .line 224
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    new-instance v1, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    sget-object v2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/ui/UiComponents$Style;-><init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    goto :goto_c1

    .line 227
    :cond_bb
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 229
    :goto_c1
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void
.end method

.method public static actions(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 2

    .line 280
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 281
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p0, 0x800015

    .line 282
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method public static addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .registers 5

    .line 287
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    .line 288
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_26

    .line 290
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 292
    :cond_26
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static choice(Landroid/view/View;)V
    .registers 15

    .line 248
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 249
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void

    .line 252
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    .line 253
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 254
    instance-of v1, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/16 v2, 0x10

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41600000    # 14.0f

    if-eqz v1, :cond_78

    .line 255
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    new-instance v5, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lio/nekohasekai/sagernet/ui/UiComponents$Style;-><init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v1, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 257
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    .line 258
    :goto_38
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-ge v5, v6, :cond_6f

    .line 259
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 260
    instance-of v9, v6, Landroid/widget/TextView;

    if-eqz v9, :cond_6c

    .line 261
    move-object v9, v6

    check-cast v9, Landroid/widget/TextView;

    .line 262
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 263
    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 264
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v10, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-static {v9}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 268
    :cond_6f
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9b

    .line 270
    :cond_78
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v5, 0x1

    invoke-static {p0, v1, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 271
    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v1, v5, v4, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 272
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_9b

    .line 273
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 276
    :cond_9b
    :goto_9b
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void
.end method

.method public static column(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .line 152
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 154
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method public static dp(Landroid/content/Context;F)I
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static drawerHeader(Landroid/view/ViewGroup;)V
    .registers 7

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 317
    :goto_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 318
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 320
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    goto :goto_32

    .line 321
    :cond_23
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_32

    .line 322
    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x10

    .line 323
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 324
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 326
    :cond_32
    :goto_32
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 328
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 332
    :cond_48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_57

    .line 333
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "\u8fd4\u56de\u83dc\u5355"

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_57
    return-void
.end method

.method public static field(Landroid/widget/EditText;)V
    .registers 6

    .line 180
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 183
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    .line 184
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0, v2, v4, v1, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    const/high16 v1, 0x42400000    # 48.0f

    .line 185
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 186
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static header(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/LinearLayout;
    .registers 8

    .line 296
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x10

    .line 297
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 298
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 299
    const-string v2, "\u2039"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41f00000    # 30.0f

    .line 300
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v2, 0x11

    .line 301
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 302
    const-string v2, "\u8fd4\u56de\u4e0a\u4e00\u9875"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 303
    new-instance v2, Lio/nekohasekai/sagernet/ui/UiComponents$1;

    invoke-direct {v2, p2}, Lio/nekohasekai/sagernet/ui/UiComponents$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 310
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {p2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p2, v2, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public static legacyText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 6

    .line 67
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 69
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 70
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v3, v0

    const/16 v1, 0x18

    if-le v3, v1, :cond_29

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_29
    const/16 p1, 0xe6

    if-lt v0, p1, :cond_31

    .line 76
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    return-void

    .line 78
    :cond_31
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    return-void
.end method

.method public static owns(Landroid/view/View;)Z
    .registers 2

    .line 63
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static paint(Landroid/view/View;)V
    .registers 2

    .line 378
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->palette(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

    move-result-object v0

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Palette;)V

    :cond_13
    return-void
.end method

.method private static paint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Palette;)V
    .registers 12

    .line 381
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    if-nez v0, :cond_c

    goto/16 :goto_186

    .line 383
    :cond_c
    iget v1, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->border:I

    .line 384
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->background:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_12d

    .line 385
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->installed:Landroid/graphics/drawable/Drawable;

    if-eq v2, v4, :cond_4b

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 387
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->installed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v7

    if-ne v7, v2, :cond_48

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    if-ne v7, v4, :cond_48

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    if-ne v7, v5, :cond_48

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    if-eq v7, v6, :cond_4b

    .line 389
    :cond_48
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 391
    :cond_4b
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_55

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 392
    :cond_55
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->background:Landroid/graphics/drawable/GradientDrawable;

    .line 393
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 394
    instance-of v5, v4, Landroid/graphics/drawable/RippleDrawable;

    const/4 v6, 0x0

    if-eqz v5, :cond_8a

    .line 395
    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    .line 396
    iget-boolean v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->painted:Z

    if-eqz v5, :cond_6c

    iget v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->ripple:I

    iget v7, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->ripple:I

    if-eq v5, v7, :cond_75

    :cond_6c
    iget-object v5, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->rippleStates:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget v5, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->ripple:I

    iput v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->ripple:I

    .line 397
    :cond_75
    invoke-virtual {v4}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v5

    if-lez v5, :cond_91

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v5, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_91

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_91

    .line 398
    :cond_8a
    instance-of v5, v4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_91

    move-object v2, v4

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 399
    :cond_91
    :goto_91
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v5, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v4, v5, :cond_9f

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_9f

    const/4 v4, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v4, 0x0

    :goto_a0
    if-eqz v4, :cond_a5

    .line 400
    iget v5, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->selected:I

    goto :goto_b7

    :cond_a5
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v7, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq v5, v7, :cond_b5

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v7, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v5, v7, :cond_b2

    goto :goto_b5

    :cond_b2
    iget v5, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->control:I

    goto :goto_b7

    :cond_b5
    :goto_b5
    iget v5, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->inset:I

    :goto_b7
    if-eqz v4, :cond_bb

    .line 401
    iget v1, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->selectedBorder:I

    .line 402
    :cond_bb
    iget v7, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->density:F

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v9, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v8, v9, :cond_c6

    const/high16 v8, 0x41b00000    # 22.0f

    goto :goto_d1

    :cond_c6
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v9, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v8, v9, :cond_cf

    const/high16 v8, 0x41a00000    # 20.0f

    goto :goto_d1

    :cond_cf
    const/high16 v8, 0x41600000    # 14.0f

    :goto_d1
    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    .line 403
    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v9, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq v8, v9, :cond_ed

    if-nez v4, :cond_ed

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v8, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v4, v8, :cond_eb

    iget-boolean v4, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->dark:Z

    if-nez v4, :cond_eb

    goto :goto_ed

    :cond_eb
    const/4 v4, 0x0

    goto :goto_f7

    :cond_ed
    :goto_ed
    iget v4, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->density:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 404
    :goto_f7
    iget-boolean v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->painted:Z

    if-eqz v8, :cond_ff

    iget-object v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->paintedTarget:Landroid/graphics/drawable/GradientDrawable;

    if-eq v8, v2, :cond_100

    :cond_ff
    const/4 v6, 0x1

    :cond_100
    if-nez v6, :cond_106

    .line 405
    iget v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->fill:I

    if-eq v8, v5, :cond_109

    :cond_106
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_109
    if-nez v6, :cond_111

    .line 406
    iget v8, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->radius:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_114

    :cond_111
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_114
    if-nez v6, :cond_11e

    .line 407
    iget v6, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->stroke:I

    if-ne v6, v4, :cond_11e

    iget v6, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->border:I

    if-eq v6, v1, :cond_121

    :cond_11e
    invoke-virtual {v2, v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 408
    :cond_121
    iput v5, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->fill:I

    iput v7, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->radius:F

    iput v4, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->stroke:I

    iput v1, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->border:I

    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->paintedTarget:Landroid/graphics/drawable/GradientDrawable;

    iput-boolean v3, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->painted:Z

    .line 410
    :cond_12d
    instance-of v2, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v2, :cond_142

    .line 411
    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 412
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 413
    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    .line 415
    :cond_142
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_186

    .line 416
    check-cast p0, Landroid/widget/TextView;

    .line 417
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v1, v2, :cond_151

    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->secondaryStates:Landroid/content/res/ColorStateList;

    goto :goto_15c

    :cond_151
    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne v0, v1, :cond_15a

    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->accentStates:Landroid/content/res/ColorStateList;

    goto :goto_15c

    :cond_15a
    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->textStates:Landroid/content/res/ColorStateList;

    .line 418
    :goto_15c
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->same(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)Z

    move-result v1

    if-nez v1, :cond_169

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 419
    :cond_169
    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_181

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v0

    iget v1, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->secondary:I

    if-eq v0, v1, :cond_186

    .line 420
    :cond_181
    iget p1, p1, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->secondary:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_186
    :goto_186
    return-void
.end method

.method private static palette(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/UiComponents$Palette;
    .registers 6

    .line 363
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->dark(Landroid/content/Context;)Z

    move-result v0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 365
    sget-object v2, Lio/nekohasekai/sagernet/ui/UiComponents;->palettes:[Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

    aget-object v3, v2, v0

    if-eqz v3, :cond_1c

    .line 366
    iget v4, v3, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;->density:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_1b

    goto :goto_1c

    :cond_1b
    return-object v3

    :cond_1c
    :goto_1c
    new-instance v3, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

    invoke-direct {v3, p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents$Palette;-><init>(Landroid/content/Context;ZF)V

    aput-object v3, v2, v0

    return-object v3
.end method

.method public static panel(Landroid/view/View;)V
    .registers 3

    .line 116
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    return-void

    .line 119
    :cond_a
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static plainAction(Landroid/widget/TextView;)V
    .registers 5

    .line 233
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 236
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 237
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    const/high16 v2, 0x42400000    # 48.0f

    .line 238
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMinimumHeight(I)V

    const/16 v2, 0x11

    .line 239
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 240
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 241
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    const-string v2, "sans-serif-medium"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 243
    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v0, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v3, v1, v0, v1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 244
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static refresh(Landroid/view/View;)V
    .registers 2

    .line 369
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->palette(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/UiComponents$Palette;

    move-result-object v0

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Palette;)V

    return-void
.end method

.method private static refresh(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Palette;)V
    .registers 4

    .line 371
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Palette;)V

    .line 372
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 373
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 374
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Palette;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public static refreshAll()V
    .registers 4

    .line 338
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    :goto_10
    if-ge v1, v2, :cond_1a

    aget-object v3, v0, v1

    .line 339
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method private static register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 86
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto :goto_a

    :cond_9
    move-object p2, v0

    .line 87
    :goto_a
    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents;->styles:Ljava/util/WeakHashMap;

    .line 88
    new-instance v2, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    invoke-direct {v2, p1, p2}, Lio/nekohasekai/sagernet/ui/UiComponents$Style;-><init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_59

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 96
    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq p1, v6, :cond_35

    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-eq p1, v6, :cond_35

    sget-object v6, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne p1, v6, :cond_47

    .line 97
    :cond_35
    new-instance v6, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/ThemePalette;->ripple(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-direct {v6, v7, p2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p2, v6

    .line 99
    :cond_47
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/nekohasekai/sagernet/ui/UiComponents$Style;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->installed:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 103
    :cond_59
    sget-object p2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne p1, p2, :cond_62

    const/high16 p2, 0x41b00000    # 22.0f

    .line 104
    invoke-static {p0, p2}, Lio/nekohasekai/sagernet/ui/CardLight;->bind(Landroid/view/View;F)V

    .line 106
    :cond_62
    sget-object p2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne p1, p2, :cond_74

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    .line 109
    :cond_74
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    .line 110
    sget-object p2, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    if-ne p1, p2, :cond_7e

    .line 111
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/PopupBackdrop;->bind(Landroid/view/View;)V

    :cond_7e
    return-void
.end method

.method public static routingCard(Landroid/view/View;)V
    .registers 4

    .line 124
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 125
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    goto :goto_10

    .line 127
    :cond_a
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 129
    :goto_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    .line 130
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 131
    :goto_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_34

    .line 134
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 135
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->paint(Landroid/view/View;)V

    goto :goto_34

    .line 137
    :cond_2f
    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_37
    return-void
.end method

.method private static same(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static secondary(Landroid/widget/TextView;)V
    .registers 3

    .line 176
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static surface(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 3

    .line 145
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 146
    sget-object p0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-object v0
.end method

.method public static text(Landroid/widget/TextView;)V
    .registers 3

    .line 172
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TEXT:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-void
.end method

.method public static title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .registers 4

    .line 159
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 161
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    const-string p1, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const p1, -0x438a3d71    # -0.015f

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    const/16 p1, 0x10

    .line 165
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x42000000    # 32.0f

    .line 166
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 167
    sget-object p0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TITLE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-static {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->register(Landroid/view/View;Lio/nekohasekai/sagernet/ui/UiComponents$Role;Z)V

    return-object v0
.end method
