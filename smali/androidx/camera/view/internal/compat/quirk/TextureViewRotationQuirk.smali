.class public Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;
.super Ljava/lang/Object;
.source "TextureViewRotationQuirk.java"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# static fields
.field private static final FAIRPHONE:Ljava/lang/String; = "Fairphone"

.field private static final FAIRPHONE_2_MODEL:Ljava/lang/String; = "FP2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFairphone2()Z
    .locals 2

    .line 52
    const-string v0, "Fairphone"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 53
    const-string v1, "FP2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0
.end method

.method static load()Z
    .locals 1

    .line 36
    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;->isFairphone2()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCorrectionRotation(Z)I
    .locals 1
    .param p1, "isFrontCamera"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFrontCamera"
        }
    .end annotation

    .line 43
    invoke-static {}, Landroidx/camera/view/internal/compat/quirk/TextureViewRotationQuirk;->isFairphone2()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    const/16 v0, 0xb4

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
