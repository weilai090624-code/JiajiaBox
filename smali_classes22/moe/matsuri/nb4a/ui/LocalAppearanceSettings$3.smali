.class Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LocalAppearanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->animate(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Landroid/view/ViewGroup;

.field final synthetic val$overlay:Landroid/view/View;

.field final synthetic val$snapshot:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 266
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;->val$host:Landroid/view/ViewGroup;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;->val$overlay:Landroid/view/View;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;->val$snapshot:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 268
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;->val$host:Landroid/view/ViewGroup;

    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;->val$overlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings$3;->val$snapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 270
    const/4 p1, 0x0

    # setter for: Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->transition:Landroid/animation/ValueAnimator;
    invoke-static {p1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->access$102(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 271
    return-void
.end method
