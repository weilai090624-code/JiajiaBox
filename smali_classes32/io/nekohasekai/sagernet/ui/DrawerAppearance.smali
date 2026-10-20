.class public final Lio/nekohasekai/sagernet/ui/DrawerAppearance;
.super Ljava/lang/Object;
.source "DrawerAppearance.java"


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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->panels:Ljava/util/WeakHashMap;

    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pages:Ljava/util/WeakHashMap;

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)V
    .registers 1

    .line 10
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    return-void
.end method

.method public static choiceRow(Landroid/view/View;)V
    .registers 3

    .line 37
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method private static clearDialogPanels(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 156
    if-eq p0, p1, :cond_11

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    instance-of v0, p0, Landroid/widget/AbsListView;

    if-nez v0, :cond_11

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 158
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    .line 161
    check-cast p0, Landroid/view/ViewGroup;

    .line 162
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearDialogPanels(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 164
    :cond_28
    return-void
.end method

.method private static clearNestedPreferenceBackgrounds(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 96
    if-eq p0, p1, :cond_16

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_16

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 98
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_16
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    .line 101
    check-cast p0, Landroid/view/ViewGroup;

    .line 102
    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearNestedPreferenceBackgrounds(Landroid/view/View;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 104
    :cond_2d
    return-void
.end method

.method private static hasCapsule(Landroid/view/View;)Z
    .registers 5

    .line 147
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 148
    :cond_6
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 149
    check-cast p0, Landroid/view/ViewGroup;

    .line 150
    const/4 v0, 0x0

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

    .line 152
    :cond_22
    return v2
.end method

.method public static homeDialog(Landroid/app/Dialog;)V
    .registers 2

    .line 113
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 114
    if-nez p0, :cond_7

    return-void

    .line 115
    :cond_7
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptWindow(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 116
    :cond_e
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1a

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->outlineCapsules(Landroid/view/View;)V

    .line 118
    :cond_1a
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsWindow(Landroid/view/Window;)V

    .line 119
    return-void
.end method

.method public static install(Landroid/view/View;)V
    .registers 3

    .line 17
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->panels:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_15

    .line 19
    move-object v0, p0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 20
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 23
    :cond_15
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method public static isManagedList(Landroid/view/View;)Z
    .registers 2

    .line 32
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static label(Landroid/view/View;)V
    .registers 1

    .line 41
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$pill$0(Landroid/view/View;)V
    .registers 1

    .line 29
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$settingsWindow$1(Landroid/view/View;)V
    .registers 1

    .line 143
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    return-void
.end method

.method public static managedList(Landroid/view/View;)V
    .registers 3

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static normalizePreferenceGeometry(Landroid/view/View;)V
    .registers 6

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 52
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 54
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_38

    .line 55
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 56
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 57
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 58
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 60
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 61
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 63
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_38
    const/high16 v2, 0x41600000    # 14.0f

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v3, v1, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 66
    const/high16 v1, 0x42600000    # 56.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_96

    .line 68
    check-cast p0, Landroid/view/ViewGroup;

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_96

    .line 70
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 71
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_93

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_72

    goto :goto_93

    .line 72
    :cond_72
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 73
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_8d

    .line 74
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 75
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 76
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 77
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    :cond_8d
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 80
    invoke-virtual {v2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 69
    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 83
    :cond_96
    return-void
.end method

.method private static outlineCapsules(Landroid/view/View;)V
    .registers 3

    .line 122
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_7

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pill(Landroid/view/View;)V

    .line 123
    :cond_7
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 124
    check-cast p0, Landroid/view/ViewGroup;

    .line 125
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->outlineCapsules(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 127
    :cond_1e
    return-void
.end method

.method public static pill(Landroid/view/View;)V
    .registers 3

    .line 27
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 29
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$2;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method public static preference(Landroid/view/View;)V
    .registers 3

    .line 44
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->normalizePreferenceGeometry(Landroid/view/View;)V

    .line 45
    invoke-static {p0, p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearNestedPreferenceBackgrounds(Landroid/view/View;Landroid/view/View;)V

    .line 46
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public static refreshAll()V
    .registers 5

    .line 189
    invoke-static {}, Lio/nekohasekai/sagernet/ui/UiComponents;->refreshAll()V

    .line 190
    invoke-static {}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->refreshAll()V

    .line 191
    invoke-static {}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->refreshAll()V

    .line 192
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

    :goto_1a
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsPage(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 193
    :cond_24
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_3e

    aget-object v4, v0, v3

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 194
    :cond_3e
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->panels:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v1, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    array-length v2, v0

    :goto_4d
    if-ge v1, v2, :cond_57

    aget-object v3, v0, v1

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 195
    :cond_57
    return-void
.end method

.method private static replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v5

    .line 89
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 91
    invoke-virtual {p0, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 92
    invoke-virtual {p0, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 93
    return-void
.end method

.method public static settingsPage(Landroid/view/View;)V
    .registers 3

    .line 107
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pages:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public static settingsWindow(Landroid/view/Window;)V
    .registers 4

    .line 130
    if-nez p0, :cond_3

    return-void

    .line 131
    :cond_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates;->adoptWindow(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 132
    :cond_a
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    if-nez v0, :cond_14

    return-void

    .line 134
    :cond_14
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->hasCapsule(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 135
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 137
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/JJGlassToolbar;->matteColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41b00000    # 22.0f

    mul-float v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 139
    invoke-static {v0, p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-static {v0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->clearDialogPanels(Landroid/view/View;Landroid/view/View;)V

    .line 142
    :cond_4a
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    .line 143
    new-instance p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$0;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method private static styleControls(Landroid/view/View;)V
    .registers 4

    .line 167
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 168
    :cond_9
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v0, :cond_11

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->install(Landroid/view/View;)V

    goto :goto_32

    .line 169
    :cond_11
    instance-of v0, p0, Landroid/widget/EditText;

    if-nez v0, :cond_27

    instance-of v0, p0, Landroid/widget/CheckedTextView;

    if-nez v0, :cond_27

    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_21

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_32

    .line 170
    :cond_21
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 171
    :cond_27
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-nez v0, :cond_32

    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_32
    :goto_32
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_41

    .line 174
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerAppearance$1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 181
    :cond_41
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_59

    .line 182
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 183
    const/4 v1, 0x0

    :goto_49
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_59

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 185
    :cond_59
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    .line 186
    return-void
.end method

.method private static tint(Landroid/view/View;)V
    .registers 7

    .line 198
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v0, :cond_a

    .line 199
    check-cast p0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->refreshAppearance()V

    .line 200
    return-void

    .line 202
    :cond_a
    sget-object v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->managedLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 203
    :cond_13
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->refresh(Landroid/view/View;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refreshTree(Landroid/view/View;)V

    return-void

    .line 204
    :cond_20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    move-result v0

    .line 205
    nop

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v1

    .line 207
    sget-object v2, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    instance-of v2, p0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    if-eqz v2, :cond_50

    .line 208
    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 209
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    .line 210
    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 211
    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    .line 212
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v2, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    goto :goto_8c

    .line 213
    :cond_50
    sget-object v2, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pills:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 214
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 215
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 218
    const/high16 v5, 0x41900000    # 18.0f

    mul-float v5, v5, v4

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 219
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 220
    invoke-static {p0, v2}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->replaceBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8d

    .line 213
    :cond_8c
    :goto_8c
    nop

    .line 222
    :goto_8d
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_a2

    .line 223
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 224
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->secondary(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 227
    :cond_a2
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_ac

    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 228
    :cond_ac
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c4

    .line 229
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 230
    const/4 v1, 0x0

    :goto_b4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_c4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->tint(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    .line 232
    :cond_c4
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->refresh(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 234
    return-void
.end method
