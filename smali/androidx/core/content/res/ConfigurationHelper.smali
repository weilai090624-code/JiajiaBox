.class public final Landroidx/core/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 39
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method
