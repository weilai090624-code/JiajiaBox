.class Landroidx/appcompat/app/AppCompatDelegateImpl$Api26Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateConfigDelta_colorMode(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 5
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;
    .param p2, "delta"    # Landroid/content/res/Configuration;

    .line 3988
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0x3

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    if-eq v0, v1, :cond_13

    .line 3990
    iget v0, p2, Landroid/content/res/Configuration;->colorMode:I

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    iput v0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 3994
    :cond_13
    iget v0, p0, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v0, v0, 0xc

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    if-eq v0, v1, :cond_26

    .line 3996
    iget v0, p2, Landroid/content/res/Configuration;->colorMode:I

    iget v1, p1, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iput v0, p2, Landroid/content/res/Configuration;->colorMode:I

    .line 3998
    :cond_26
    return-void
.end method
