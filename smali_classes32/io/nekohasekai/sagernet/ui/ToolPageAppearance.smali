.class public final Lio/nekohasekai/sagernet/ui/ToolPageAppearance;
.super Ljava/lang/Object;
.source "ToolPageAppearance.java"


# static fields
.field private static final roots:Ljava/util/WeakHashMap;
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

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->roots:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apply(Landroid/view/View;)V
    .registers 1

    .line 48
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->backdrop(Landroid/view/View;)V

    .line 49
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->visit(Landroid/view/View;)V

    return-void
.end method

.method private static call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v3

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public static install(Landroid/app/Activity;)V
    .registers 2

    const v0, 0x1020002

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_a

    return-void

    .line 29
    :cond_a
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->install(Landroid/view/View;)V

    return-void
.end method

.method public static install(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 33
    :cond_3
    sget-object v0, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->roots:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->apply(Landroid/view/View;)V

    return-void
.end method

.method private static materialCard(Landroid/view/View;)Z
    .registers 3

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_19

    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.material.card.MaterialCardView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_4

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static network(Landroid/view/View;)V
    .registers 5

    .line 36
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_19

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 37
    :cond_1c
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->install(Landroid/view/View;)V

    return-void
.end method

.method public static refreshAll()V
    .registers 4

    .line 39
    sget-object v0, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->roots:Ljava/util/WeakHashMap;

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

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->apply(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method private static visit(Landroid/view/View;)V
    .registers 9

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->accent(Landroid/content/Context;)I

    move-result v0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.material.tabs.TabLayout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    .line 54
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "setTabTextColors"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v6, v5, v3

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1a .. :try_end_40} :catch_40

    .line 55
    :catch_40
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "setSelectedTabIndicatorColor"

    invoke-static {p0, v5, v1, v4}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 57
    :cond_4b
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->materialCard(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_c8

    const/high16 v0, 0x41d00000    # 26.0f

    .line 58
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/CardLight;->bind(Landroid/view/View;F)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ThemePalette;->text(Landroid/content/Context;)I

    .line 60
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/ThemePalette;->control(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "setCardBackgroundColor"

    invoke-static {p0, v5, v1, v4}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 61
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/ThemePalette;->border(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "setStrokeColor"

    invoke-static {p0, v5, v1, v4}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "setStrokeWidth"

    invoke-static {p0, v4, v1, v3}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 63
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v3, "setRadius"

    invoke-static {p0, v3, v1, v0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 64
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "setCardElevation"

    invoke-static {p0, v4, v0, v3}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 65
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v3, "setMaxCardElevation"

    invoke-static {p0, v3, v0, v1}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->call(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_10f

    .line 66
    :cond_c8
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_d3

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    goto :goto_10f

    .line 67
    :cond_d3
    instance-of v1, p0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_e8

    .line 68
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 69
    move-object v1, p0

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_10f

    .line 71
    :cond_e8
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_105

    .line 72
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10f

    .line 74
    :cond_105
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_10f

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 75
    :cond_10f
    :goto_10f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_125

    check-cast p0, Landroid/view/ViewGroup;

    :goto_115
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_125

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ToolPageAppearance;->visit(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_115

    :cond_125
    return-void
.end method
