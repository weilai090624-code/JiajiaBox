.class public final Lio/nekohasekai/sagernet/ui/RosePalette;
.super Ljava/lang/Object;
.source "RosePalette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;,
        Lio/nekohasekai/sagernet/ui/RosePalette$State;
    }
.end annotation


# static fields
.field public static final ACCENT:I = -0x48b88f

.field public static final BACKGROUND:I = -0x1

.field public static final BORDER:I = -0x131613

.field public static final CONTROL:I = -0x1

.field public static final SELECTED:I = -0x30f0b

.field public static final TEXT:I = -0xd6d4d1

.field private static final activities:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final backdropModes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final backdrops:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final brandModes:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/nekohasekai/sagernet/ui/RosePalette$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->backdrops:Ljava/util/WeakHashMap;

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->backdropModes:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->brandModes:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->states:Ljava/util/WeakHashMap;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->activities:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accent(Landroid/content/Context;)I
    .registers 1

    .line 32
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const p0, -0x48b88f

    return p0
.end method

.method static synthetic access$000(Landroid/view/View;ZZ)V
    .registers 3

    .line 25
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RosePalette;->walk(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static backdrop(Landroid/view/View;)V
    .registers 7

    if-nez p0, :cond_3

    goto :goto_27

    .line 93
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/ui/RosePalette;->backdropModes:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Lio/nekohasekai/sagernet/ui/RosePalette;->backdrops:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_28

    :goto_27
    return-void

    :cond_28
    if-eqz v0, :cond_33

    .line 95
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xd6d4d1

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_41

    :cond_33
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v4, -0xb08

    const/4 v5, -0x1

    filled-new-array {v5, v5, v4}, [I

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 96
    :goto_41
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v3, Lio/nekohasekai/sagernet/ui/RosePalette;->backdrops:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->sceneChanged(Landroid/view/View;)V

    return-void
.end method

.method private static brand(Landroid/view/View;Z)V
    .registers 8

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JJGlassToolbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_7a

    .line 101
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTitle"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7a

    .line 102
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "JiajiaBox"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "JiajiaBox."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_7a

    .line 103
    :cond_40
    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_55

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/ui/RosePalette;->brandModes:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_7a

    .line 104
    :cond_55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setTitle"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->brandTitle(Z)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->brandModes:Ljava/util/WeakHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_11 .. :try_end_7a} :catch_7a

    :catch_7a
    :cond_7a
    :goto_7a
    return-void
.end method

.method public static brandTitle(Z)Ljava/lang/CharSequence;
    .registers 6

    .line 108
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "JiajiaBox."

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    if-eqz p0, :cond_f

    const p0, -0xd6d4d1

    goto :goto_10

    :cond_f
    const/4 p0, -0x1

    :goto_10
    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p0, 0x0

    const/16 v2, 0x9

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 110
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x289570

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 111
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v1, p0, v4, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static capsuleSurface(Landroid/content/Context;)I
    .registers 1

    .line 33
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, -0xd6d4d1

    return p0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method private static controls(Z)Landroid/content/res/ColorStateList;
    .registers 6

    .line 36
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x4

    new-array v3, v3, [[I

    const v4, -0x101009e

    filled-new-array {v4}, [I

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x10100a0

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v1, 0x10100a1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    aput-object v2, v3, v1

    const v1, -0x48b88f

    if-eqz p0, :cond_31

    const v2, -0x10261e

    goto :goto_34

    :cond_31
    const v2, -0x48b88f

    :goto_34
    if-eqz p0, :cond_3a

    const p0, -0x111311

    goto :goto_3d

    :cond_3a
    const p0, -0x555a53

    :goto_3d
    const v4, -0x1b2c25

    filled-new-array {v4, v2, v1, p0}, [I

    move-result-object p0

    invoke-direct {v0, v3, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static install(Landroid/app/Activity;)V
    .registers 3

    .line 38
    sget-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->activities:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/RosePalette$Watcher;->schedule()V

    return-void
.end method

.method public static nodeBorder(ZZ)I
    .registers 2

    if-eqz p1, :cond_c

    if-eqz p0, :cond_8

    const p0, -0x93b2a3

    return p0

    :cond_8
    const p0, -0x173d2e

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static nodeFill(ZZ)I
    .registers 2

    if-eqz p0, :cond_c

    if-eqz p1, :cond_8

    const p0, -0xc4cfc7

    return p0

    :cond_8
    const p0, -0xcfcec9

    return p0

    :cond_c
    if-eqz p1, :cond_12

    const p0, -0x30f0b

    return p0

    :cond_12
    const p0, -0x70807

    return p0
.end method

.method public static prepare(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepare(Landroid/view/View;ZZ)V

    return-void
.end method

.method private static prepare(Landroid/view/View;ZZ)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_16

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JJGlassToolbar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_1c

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->brand(Landroid/view/View;Z)V

    :cond_1c
    if-nez v2, :cond_31

    if-nez p2, :cond_31

    sget-object v3, Lio/nekohasekai/sagernet/ui/RosePalette;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/ui/RosePalette$State;

    if-eqz v3, :cond_2e

    xor-int/lit8 v4, p1, 0x1

    iput-boolean v4, v3, Lio/nekohasekai/sagernet/ui/RosePalette$State;->light:Z

    :cond_2e
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->widget(Landroid/view/View;Z)V

    :cond_31
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_50

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    :goto_38
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_50

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v2, :cond_49

    if-eqz p2, :cond_47

    goto :goto_49

    :cond_47
    const/4 v5, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v5, 0x1

    :goto_4a
    invoke-static {v4, p1, v5}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepare(Landroid/view/View;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_50
    return-void
.end method

.method public static prepareForDisplay(Landroid/view/View;)V
    .registers 3

    if-nez p0, :cond_3

    goto :goto_f

    .line 59
    :cond_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepare(Landroid/view/View;)V

    const v0, 0x7f0a0f7b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_f
    return-void

    .line 60
    :cond_10
    new-instance v1, Lio/nekohasekai/sagernet/ui/RosePalette$1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RosePalette$1;-><init>(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private static toolbarAction(Landroid/view/View;)Z
    .registers 3

    :goto_0
    if-eqz p0, :cond_21

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JJGlassToolbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1f

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1f
    const/4 p0, 0x0

    goto :goto_0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private static walk(Landroid/view/View;ZZ)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_16

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JJGlassToolbar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_1c

    .line 67
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->brand(Landroid/view/View;Z)V

    :cond_1c
    if-nez v2, :cond_23

    if-nez p2, :cond_23

    .line 68
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RosePalette;->widget(Landroid/view/View;Z)V

    .line 69
    :cond_23
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_42

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    :goto_2a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_42

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez p2, :cond_3b

    if-eqz v2, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v5, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v5, 0x1

    :goto_3c
    invoke-static {v4, p1, v5}, Lio/nekohasekai/sagernet/ui/RosePalette;->walk(Landroid/view/View;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_42
    return-void
.end method

.method public static widget(Landroid/view/View;)V
    .registers 4

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/RosePalette;->brand(Landroid/view/View;Z)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->toolbarAction(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    return-void

    :cond_14
    sget-object v2, Lio/nekohasekai/sagernet/ui/RosePalette;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/ui/RosePalette$State;

    if-eqz v2, :cond_20

    iput-boolean v0, v2, Lio/nekohasekai/sagernet/ui/RosePalette$State;->light:Z

    :cond_20
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/RosePalette;->widget(Landroid/view/View;Z)V

    return-void
.end method

.method private static widget(Landroid/view/View;Z)V
    .registers 9

    .line 75
    sget-object v0, Lio/nekohasekai/sagernet/ui/RosePalette;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;

    .line 76
    const-string v2, "Switch"

    const/4 v3, 0x0

    if-nez v1, :cond_ac

    if-nez p1, :cond_11

    goto/16 :goto_1a3

    :cond_11
    new-instance v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lio/nekohasekai/sagernet/ui/RosePalette$State;-><init>(Lio/nekohasekai/sagernet/ui/RosePalette$1;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_27

    move-object v5, p0

    check-cast v5, Landroid/widget/CompoundButton;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->button:Landroid/content/res/ColorStateList;

    .line 78
    :cond_27
    instance-of v5, p0, Landroid/widget/TextView;

    if-eqz v5, :cond_46

    move-object v5, p0

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->link:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v6

    iput v6, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->highlight:I

    instance-of v6, p0, Landroid/widget/Button;

    if-eqz v6, :cond_46

    if-nez v0, :cond_46

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->text:Landroid/content/res/ColorStateList;

    .line 79
    :cond_46
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_53

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->image:Landroid/content/res/ColorStateList;

    .line 80
    :cond_53
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_66

    move-object v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->progress:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->indeterminate:Landroid/content/res/ColorStateList;

    .line 81
    :cond_66
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_73

    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->thumb:Landroid/content/res/ColorStateList;

    .line 82
    :cond_73
    :try_start_73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getThumbTintList"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->thumb:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getTrackTintList"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->track:Landroid/content/res/ColorStateList;
    :try_end_a9
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_73 .. :try_end_a9} :catch_aa

    goto :goto_b2

    :catch_aa
    nop

    goto :goto_b2

    .line 83
    :cond_ac
    iget-boolean v0, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->light:Z

    if-ne v0, p1, :cond_b2

    goto/16 :goto_1a3

    .line 84
    :cond_b2
    :goto_b2
    iput-boolean p1, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->light:Z

    .line 85
    instance-of v0, p0, Landroid/widget/CompoundButton;

    const/4 v4, -0x1

    if-eqz v0, :cond_d3

    move-object v0, p0

    check-cast v0, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_c3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/RosePalette;->controls(Z)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_d0

    :cond_c3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    goto :goto_d0

    :cond_ce
    iget-object v5, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->button:Landroid/content/res/ColorStateList;

    :goto_d0
    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 86
    :cond_d3
    instance-of v0, p0, Landroid/widget/TextView;

    const v5, -0x48b88f

    if-eqz v0, :cond_10f

    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_e4

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    goto :goto_e6

    :cond_e4
    iget-object v6, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->link:Landroid/content/res/ColorStateList;

    :goto_e6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_ef

    const v6, 0x40d76a90

    goto :goto_f1

    :cond_ef
    iget v6, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->highlight:I

    :goto_f1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v6, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->text:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_10f

    if-eqz p1, :cond_ff

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_10c

    :cond_ff
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->owns(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_10a

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_10c

    :cond_10a
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->text:Landroid/content/res/ColorStateList;

    :goto_10c
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    :cond_10f
    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_122

    move-object v0, p0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz p1, :cond_11d

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_11f

    :cond_11d
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->image:Landroid/content/res/ColorStateList;

    :goto_11f
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 88
    :cond_122
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_141

    move-object v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_130

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_132

    :cond_130
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->progress:Landroid/content/res/ColorStateList;

    :goto_132
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_13c

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_13e

    :cond_13c
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->indeterminate:Landroid/content/res/ColorStateList;

    :goto_13e
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_141
    instance-of v0, p0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_154

    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz p1, :cond_14f

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_151

    :cond_14f
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->thumb:Landroid/content/res/ColorStateList;

    :goto_151
    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    :cond_154
    :try_start_154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setThumbTintList"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/ColorStateList;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p1, :cond_17a

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/RosePalette;->controls(Z)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_17c

    :cond_17a
    iget-object v2, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->thumb:Landroid/content/res/ColorStateList;

    :goto_17c
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setTrackTintList"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/ColorStateList;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p1, :cond_19a

    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/RosePalette;->controls(Z)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_19c

    :cond_19a
    iget-object p1, v1, Lio/nekohasekai/sagernet/ui/RosePalette$State;->track:Landroid/content/res/ColorStateList;

    :goto_19c
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_154 .. :try_end_1a3} :catch_1a3

    :catch_1a3
    :cond_1a3
    :goto_1a3
    return-void
.end method
