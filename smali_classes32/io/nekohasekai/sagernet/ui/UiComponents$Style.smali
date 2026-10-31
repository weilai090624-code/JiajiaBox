.class public final Lio/nekohasekai/sagernet/ui/UiComponents$Style;
.super Ljava/lang/Object;
.source "UiComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/UiComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# instance fields
.field final background:Landroid/graphics/drawable/GradientDrawable;

.field border:I

.field fill:I

.field installed:Landroid/graphics/drawable/Drawable;

.field painted:Z

.field paintedTarget:Landroid/graphics/drawable/GradientDrawable;

.field radius:F

.field ripple:I

.field final role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field stroke:I


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    .line 54
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->background:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method
