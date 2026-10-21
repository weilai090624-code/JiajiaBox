.class Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$1;
.super Ljava/lang/Object;
.source "LocalAppearanceSettings.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->row(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->dark(Landroid/content/Context;)Z

    move-result v0

    # invokes: Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->tint(Landroid/view/View;Z)V
    invoke-static {p1, v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->access$000(Landroid/view/View;Z)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 229
    return-void
.end method
