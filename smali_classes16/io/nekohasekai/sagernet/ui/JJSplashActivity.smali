.class public final Lio/nekohasekai/sagernet/ui/JJSplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "JJSplashActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/JJSplashActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$oVXLvbkfXUNh0AWL7ULvtrrOsfU(Lio/nekohasekai/sagernet/ui/JJSplashActivity;)V
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->onCreate$lambda$0(Lio/nekohasekai/sagernet/ui/JJSplashActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lio/nekohasekai/sagernet/ui/JJSplashActivity;)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/JJSplashActivity;

    .line 39
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->finish()V

    .line 41
    const v0, 0x7f01001d

    const v1, 0x7f01001e

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->overridePendingTransition(II)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 25
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 26
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->setContentView(I)V

    invoke-static {}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->preload()V

    .line 28
    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "logo":Landroid/view/View;
    const v1, 0x7f0a0178

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/JJSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "content":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 32
    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 34
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v5, 0x1e0

    invoke-virtual {v3, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 36
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x8c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x208

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 38
    new-instance v2, Lio/nekohasekai/sagernet/ui/JJSplashActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/JJSplashActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/JJSplashActivity;)V

    .line 42
    nop

    .line 38
    const-wide/16 v3, 0x47e

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    return-void
.end method
