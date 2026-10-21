.class final Lio/nekohasekai/sagernet/ui/UiComponents$Style;
.super Ljava/lang/Object;
.source "UiComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/UiComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Style"
.end annotation


# instance fields
.field final background:Landroid/graphics/drawable/GradientDrawable;

.field installed:Landroid/graphics/drawable/Drawable;

.field final role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/UiComponents$Role;Landroid/graphics/drawable/GradientDrawable;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->role:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/UiComponents$Style;->background:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method
