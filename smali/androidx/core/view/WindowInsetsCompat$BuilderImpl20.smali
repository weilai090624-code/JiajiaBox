.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z

.field private static sConsumedField:Ljava/lang/reflect/Field;

.field private static sConsumedFieldFetched:Z


# instance fields
.field private mPlatformInsets:Landroid/view/WindowInsets;

.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1712
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1715
    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1720
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1721
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1722
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1725
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1726
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1727
    return-void
.end method

.method private static createWindowInsetsInstance()Landroid/view/WindowInsets;
    .registers 7

    .line 1761
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_1a

    .line 1763
    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    .line 1766
    goto :goto_18

    .line 1764
    :catch_12
    move-exception v0

    .line 1765
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1767
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_18
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1769
    :cond_1a
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    .line 1771
    :try_start_1f
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 1772
    .local v0, "consumed":Landroid/view/WindowInsets;
    if-eqz v0, :cond_2f

    .line 1773
    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2e} :catch_30

    return-object v4

    .line 1777
    .end local v0    # "consumed":Landroid/view/WindowInsets;
    :cond_2f
    goto :goto_36

    .line 1775
    :catch_30
    move-exception v0

    .line 1776
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_36
    :goto_36
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    const/4 v4, 0x0

    if-nez v0, :cond_52

    .line 1784
    :try_start_3b
    const-class v0, Landroid/view/WindowInsets;

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Rect;

    aput-object v6, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_49
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3b .. :try_end_49} :catch_4a

    .line 1787
    goto :goto_50

    .line 1785
    :catch_4a
    move-exception v0

    .line 1786
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1788
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_50
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    .line 1790
    :cond_52
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_6e

    .line 1792
    :try_start_56
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_67
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_56 .. :try_end_67} :catch_68

    return-object v0

    .line 1793
    :catch_68
    move-exception v0

    .line 1794
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1799
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_6e
    return-object v3
.end method


# virtual methods
.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 1745
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    .line 1746
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1748
    .local v0, "windowInsetsCompat":Landroidx/core/view/WindowInsetsCompat;
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    .line 1749
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setStableInsets(Landroidx/core/graphics/Insets;)V

    .line 1750
    return-object v0
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1739
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    .line 1740
    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 7
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1731
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_14

    .line 1732
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    iget v4, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1735
    :cond_14
    return-void
.end method
