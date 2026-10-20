.class public Landroidx/camera/view/internal/compat/quirk/PreviewOneThirdWiderQuirk;
.super Ljava/lang/Object;
.source "PreviewOneThirdWiderQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final SAMSUNG_A3_2017:Ljava/lang/String; = "A3Y17LTE"

.field private static final SAMSUNG_J5_PRIME:Ljava/lang/String; = "ON5XELTE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load()Z
    .locals 5

    .line 36
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ON5XELTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    .local v0, "isSamsungJ5PrimeAndApi26":Z
    :goto_0
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A3Y17LTE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 39
    .local v3, "isSamsungA3":Z
    if-nez v0, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public getCropRectScaleX()F
    .locals 1

    .line 46
    const/high16 v0, 0x3f400000    # 0.75f

    return v0
.end method
