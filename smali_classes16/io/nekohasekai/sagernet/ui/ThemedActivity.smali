.class public abstract Lio/nekohasekai/sagernet/ui/ThemedActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemedActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemedActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemedActivity.kt\nio/nekohasekai/sagernet/ui/ThemedActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,77:1\n157#2,8:78\n*S KotlinDebug\n*F\n+ 1 ThemedActivity.kt\nio/nekohasekai/sagernet/ui/ThemedActivity\n*L\n42#1:78,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0001\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dJ\u0015\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0010\u00a2\u0006\u0002\u0008\u001fR\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0006R\u001a\u0010\u000b\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u0006R\u0014\u0010\u000e\u001a\u00020\u000fX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "contentLayoutId",
        "",
        "(I)V",
        "themeResId",
        "getThemeResId",
        "()I",
        "setThemeResId",
        "uiMode",
        "getUiMode",
        "setUiMode",
        "isDialog",
        "",
        "()Z",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setTheme",
        "resId",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "snackbar",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "text",
        "",
        "snackbarInternal",
        "snackbarInternal$app_ossDebug",
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


# instance fields
.field private final isDialog:Z

.field private themeResId:I

.field private uiMode:I


# direct methods
.method public static synthetic $r8$lambda$09FeP3HEgaIwHtkI6Etty512qy4(Lio/nekohasekai/sagernet/ui/ThemedActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate$lambda$1(Lio/nekohasekai/sagernet/ui/ThemedActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "contentLayoutId"    # I

    .line 20
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lio/nekohasekai/sagernet/ui/ThemedActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 10
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ThemedActivity;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 41
    .local p1, "top":I
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_39

    .local v0, "$this$onCreate_u24lambda_u241_u24lambda_u240":Lcom/google/android/material/appbar/AppBarLayout;
    const/4 v1, 0x0

    .line 42
    .local v1, "$i$a$-apply-ThemedActivity$onCreate$1$1":I
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 78
    .local v2, "$this$updatePadding_u24default$iv":Landroid/view/View;
    nop

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 78
    .local v3, "left$iv":I
    nop

    .line 81
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 78
    .local v4, "right$iv":I
    nop

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 78
    .local v5, "bottom$iv":I
    const/4 v6, 0x0

    .line 84
    .local v6, "$i$f$updatePadding":I
    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    nop

    .line 44
    .end local v2    # "$this$updatePadding_u24default$iv":Landroid/view/View;
    .end local v3    # "left$iv":I
    .end local v4    # "right$iv":I
    .end local v5    # "bottom$iv":I
    .end local v6    # "$i$f$updatePadding":I
    nop

    .line 41
    .end local v0    # "$this$onCreate_u24lambda_u241_u24lambda_u240":Lcom/google/android/material/appbar/AppBarLayout;
    .end local v1    # "$i$a$-apply-ThemedActivity$onCreate$1$1":I
    nop

    .line 48
    :cond_39
    return-object p2
.end method


# virtual methods
.method public final getThemeResId()I
    .registers 2

    .line 22
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->themeResId:I

    return v0
.end method

.method public final getUiMode()I
    .registers 2

    .line 23
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->uiMode:I

    return v0
.end method

.method public isDialog()Z
    .registers 2

    .line 24
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->isDialog:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iget v1, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->uiMode:I

    if-eq v0, v1, :cond_18

    .line 63
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->uiMode:I

    .line 64
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 66
    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->isDialog()Z

    move-result v0

    if-nez v0, :cond_f

    .line 28
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/utils/Theme;->apply(Landroid/content/Context;)V

    goto :goto_17

    .line 30
    :cond_f
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/utils/Theme;->applyDialog(Landroid/content/Context;)V

    .line 32
    :goto_17
    sget-object v0, Lio/nekohasekai/sagernet/utils/Theme;->INSTANCE:Lio/nekohasekai/sagernet/utils/Theme;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/utils/Theme;->applyNightTheme()V

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->uiMode:I

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_40

    .line 39
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/ThemedActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ThemedActivity;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 51
    :cond_40
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RosePalette;->install(Landroid/app/Activity;)V

    return-void
.end method

.method public setTheme(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 54
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 56
    iput p1, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->themeResId:I

    .line 57
    return-void
.end method

.method public final setThemeResId(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 22
    iput p1, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->themeResId:I

    return-void
.end method

.method public final setUiMode(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 23
    iput p1, p0, Lio/nekohasekai/sagernet/ui/ThemedActivity;->uiMode:I

    return-void
.end method

.method public final snackbar(I)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4
    .param p1, "resId"    # I

    .line 68
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/Snackbar;->setText(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "setText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->snackbarInternal$app_ossDebug(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$snackbar_u24lambda_u243":Lcom/google/android/material/snackbar/Snackbar;
    const/4 v2, 0x0

    .line 70
    .local v2, "$i$a$-apply-ThemedActivity$snackbar$1":I
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0275

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .local v3, "$this$snackbar_u24lambda_u243_u24lambda_u242":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 71
    .local v4, "$i$a$-apply-ThemedActivity$snackbar$1$1":I
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 72
    nop

    .line 70
    .end local v3    # "$this$snackbar_u24lambda_u243_u24lambda_u242":Landroid/widget/TextView;
    .end local v4    # "$i$a$-apply-ThemedActivity$snackbar$1$1":I
    nop

    .line 73
    nop

    .line 69
    .end local v1    # "$this$snackbar_u24lambda_u243":Lcom/google/android/material/snackbar/Snackbar;
    .end local v2    # "$i$a$-apply-ThemedActivity$snackbar$1":I
    nop

    .line 73
    return-object v0
.end method

.method public snackbarInternal$app_ossDebug(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
