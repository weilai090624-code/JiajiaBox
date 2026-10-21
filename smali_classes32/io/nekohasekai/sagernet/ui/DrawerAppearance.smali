.class public final Lio/nekohasekai/sagernet/ui/DrawerAppearance;
.super Ljava/lang/Object;
.source "DrawerAppearance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;,
        Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;
    }
.end annotation


# static fields
.field private static final managedLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final pages:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final panels:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final pills:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final surfaces:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->panels:Ljava/util/WeakHashMap;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pages:Ljava/util/WeakHashMap;

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->surfaces:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    return-void
.end method

.method public static choiceRow(Landroid/view/View;)V
    .registers 3

    .line 68
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method private static clearDialogPanels(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    if-eq p0, p1, :cond_17

    .line 191
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_17

    instance-of v0, p0, Landroid/widget/AbsListView;

    if-nez v0, :cond_17

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 193
    :cond_14
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 195
    :cond_17
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 196
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 197
    :goto_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearDialogPanels(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method private static clearNestedPreferenceBackgrounds(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    if-eq p0, p1, :cond_1c

    .line 131
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    :cond_19
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 135
    :cond_1c
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 136
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 137
    :goto_23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearNestedPreferenceBackgrounds(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_33
    return-void
.end method

.method private static hasCapsule(Landroid/view/View;)Z
    .registers 5

    .line 182
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 183
    :cond_6
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 184
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 185
    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_22

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->hasCapsule(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_22
    return v2
.end method

.method public static homeDialog(Landroid/app/Dialog;)V
    .registers 2

    .line 148
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_d

    .line 150
    :cond_7
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptWindow(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_d
    return-void

    :cond_e
    const v0, 0x1020002

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 152
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->outlineCapsules(Landroid/view/View;)V

    .line 153
    :cond_1a
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsWindow(Landroid/view/Window;)V

    return-void
.end method

.method public static install(Landroid/view/View;)V
    .registers 3

    .line 48
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->panels:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_15

    .line 50
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 51
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 54
    :cond_15
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method public static isManagedList(Landroid/view/View;)Z
    .registers 2

    .line 63
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static label(Landroid/view/View;)V
    .registers 1

    .line 72
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$pill$0(Landroid/view/View;)V
    .registers 1

    .line 60
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$settingsWindow$1(Landroid/view/View;)V
    .registers 1

    .line 178
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    return-void
.end method

.method public static managedList(Landroid/view/View;)V
    .registers 3

    .line 65
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static normalizePreferenceGeometry(Landroid/view/View;)V
    .registers 7

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, v0

    .line 84
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 86
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_58

    .line 87
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_45

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v1, :cond_45

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v4, v1, :cond_45

    .line 89
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    if-ne v4, v1, :cond_45

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    if-ne v4, v1, :cond_45

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v2, :cond_45

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v4, v2, :cond_58

    .line 90
    :cond_45
    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 92
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_58
    const/high16 v2, 0x41600000    # 14.0f

    mul-float v2, v2, v0

    .line 95
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p0, v3, v1, v2, v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->padding(Landroid/view/View;IIII)V

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v1

    const/high16 v2, 0x42600000    # 56.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eq v1, v2, :cond_7c

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 97
    :cond_7c
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e2

    .line 98
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    :goto_84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_e2

    .line 100
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 101
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_df

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9c

    goto :goto_df

    .line 102
    :cond_9c
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 103
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_d3

    .line 104
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 105
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-nez v4, :cond_c2

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-nez v4, :cond_c2

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-nez v4, :cond_c2

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v4, :cond_c2

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    if-nez v4, :cond_c2

    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    if-eqz v4, :cond_d3

    .line 106
    :cond_c2
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 107
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_d3
    invoke-static {v2, v0, v0, v0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->padding(Landroid/view/View;IIII)V

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getMinimumHeight()I

    move-result v3

    if-eqz v3, :cond_df

    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_df
    :goto_df
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_e2
    return-void
.end method

.method private static outlineCapsules(Landroid/view/View;)V
    .registers 3

    .line 157
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pill(Landroid/view/View;)V

    .line 158
    :cond_7
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 159
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 160
    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->outlineCapsules(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static padding(Landroid/view/View;IIII)V
    .registers 6

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    if-ne v0, p1, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    if-ne v0, p3, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p4, :cond_19

    goto :goto_1a

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static pill(Landroid/view/View;)V
    .registers 3

    .line 58
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 60
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static preference(Landroid/view/View;)V
    .registers 3

    const/high16 v0, 0x41900000    # 18.0f

    .line 75
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/CardLight;->bind(Landroid/view/View;F)V

    .line 76
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->normalizePreferenceGeometry(Landroid/view/View;)V

    .line 77
    invoke-static {p0, p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearNestedPreferenceBackgrounds(Landroid/view/View;Landroid/view/View;)V

    .line 78
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;)V

    return-void
.end method

.method public static refreshAll()V
    .registers 5

    .line 224
    invoke-static {}, Lio/nekohasekai/sagernet/ui/CardLight;->refreshAll()V

    .line 225
    invoke-static {}, Lio/nekohasekai/sagernet/ui/UiComponents;->refreshAll()V

    .line 226
    invoke-static {}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->refreshAll()V

    .line 227
    invoke-static {}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->refreshAll()V

    .line 228
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pages:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsPage(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 229
    :cond_27
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_41

    aget-object v4, v0, v3

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 230
    :cond_41
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->panels:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    :goto_50
    if-ge v1, v2, :cond_5a

    aget-object v3, v0, v1

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_5a
    return-void
.end method

.method private static replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p1, :cond_7

    goto :goto_37

    .line 121
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-static {p0, v0, v2, v1, v3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->padding(Landroid/view/View;IIII)V

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result p1

    if-eq p1, v4, :cond_2e

    invoke-virtual {p0, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 127
    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    if-eq p1, v5, :cond_37

    invoke-virtual {p0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_37
    :goto_37
    return-void
.end method

.method public static settingsPage(Landroid/view/View;)V
    .registers 3

    .line 142
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pages:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 144
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method public static settingsWindow(Landroid/view/Window;)V
    .registers 4

    if-nez p0, :cond_3

    goto :goto_13

    .line 166
    :cond_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptWindow(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_13

    :cond_a
    const v0, 0x1020002

    .line 167
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    .line 169
    :cond_14
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->hasCapsule(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 170
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 174
    invoke-static {v0, p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-static {v0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearDialogPanels(Landroid/view/View;Landroid/view/View;)V

    .line 177
    :cond_4a
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    .line 178
    new-instance p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$0;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static styleControls(Landroid/view/View;)V
    .registers 4

    .line 202
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 203
    :cond_9
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->install(Landroid/view/View;)V

    goto :goto_32

    .line 204
    :cond_11
    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_27

    instance-of v0, p0, Landroid/widget/CheckedTextView;

    if-nez v0, :cond_27

    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_21

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    .line 205
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 206
    :cond_27
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-nez v0, :cond_32

    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_32
    :goto_32
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_41

    .line 209
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerAppearance$1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 216
    :cond_41
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_59

    .line 217
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 218
    :goto_49
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_59

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 220
    :cond_59
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method private static tint(Landroid/view/View;)V
    .registers 2

    const/4 v0, 0x0

    .line 233
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;)V

    return-void
.end method

.method private static tint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;)V
    .registers 8

    .line 235
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_a

    .line 236
    check-cast p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshAppearance()V

    return-void

    .line 239
    :cond_a
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_104

    .line 240
    :cond_14
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refreshTree(Landroid/view/View;)V

    return-void

    :cond_21
    if-nez p1, :cond_2c

    .line 241
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v0

    goto :goto_2e

    :cond_2c
    iget v0, p1, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->text:I

    :goto_2e
    if-nez p1, :cond_39

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    goto :goto_3b

    :cond_39
    iget v1, p1, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->border:I

    .line 244
    :goto_3b
    sget-object v2, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    instance-of v3, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v3, :cond_5a

    .line 245
    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 246
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    const/4 v3, 0x1

    .line 247
    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 248
    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 249
    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    goto :goto_9a

    .line 250
    :cond_5a
    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_6a

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_6a
    if-nez p1, :cond_75

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v2

    goto :goto_77

    :cond_75
    iget v2, p1, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->control:I

    .line 253
    :goto_77
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 254
    sget-object v4, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->surfaces:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;

    if-nez v5, :cond_94

    .line 255
    new-instance v5, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;

    invoke-direct {v5, v2, v1, v3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;-><init>(IIF)V

    invoke-virtual {v4, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_97

    .line 256
    :cond_94
    invoke-virtual {v5, v2, v1, v3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->update(IIF)V

    .line 257
    :goto_97
    invoke-static {p0, v5}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_9a
    :goto_9a
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_da

    .line 260
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 261
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_b1

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    if-eq v2, v0, :cond_b4

    :cond_b1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b4
    if-nez p1, :cond_bf

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v2

    goto :goto_c1

    :cond_bf
    iget v2, p1, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;->secondary:I

    .line 263
    :goto_c1
    invoke-virtual {v1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_d7

    invoke-virtual {v1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-nez v3, :cond_d7

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentHintTextColor()I

    move-result v3

    if-eq v3, v2, :cond_da

    :cond_d7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 265
    :cond_da
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_e4

    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 266
    :cond_e4
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_fc

    .line 267
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 268
    :goto_ec
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_fc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;Lio/nekohasekai/sagernet/ui/DrawerAppearance$Palette;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    .line 270
    :cond_fc
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    if-nez p1, :cond_104

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_104
    :goto_104
    return-void
.end method
