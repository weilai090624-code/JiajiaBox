.class public final Lio/nekohasekai/sagernet/widget/ListListener;
.super Ljava/lang/Object;
.source "WindowInsetsListeners.kt"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsListeners.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsListeners.kt\nio/nekohasekai/sagernet/widget/ListListener\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,13:1\n157#2,8:14\n*S KotlinDebug\n*F\n+ 1 WindowInsetsListeners.kt\nio/nekohasekai/sagernet/widget/ListListener\n*L\n10#1:14,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/widget/ListListener;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "<init>",
        "()V",
        "onApplyWindowInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "view",
        "Landroid/view/View;",
        "insets",
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


# static fields
.field public static final INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/widget/ListListener;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/widget/ListListener;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    move-object v0, p2

    .local v0, "$this$onApplyWindowInsets_u24lambda_u240":Landroidx/core/view/WindowInsetsCompat;
    const/4 v1, 0x0

    .line 10
    .local v1, "$i$a$-apply-ListListener$onApplyWindowInsets$1":I
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroidx/core/graphics/Insets;->bottom:I

    .local v2, "bottom$iv":I
    move-object v3, p1

    .line 14
    .local v3, "$this$updatePadding_u24default$iv":Landroid/view/View;
    nop

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 14
    .local v4, "left$iv":I
    nop

    .line 16
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 14
    .local v5, "top$iv":I
    nop

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 14
    .local v6, "right$iv":I
    const/4 v7, 0x0

    .line 20
    .local v7, "$i$f$updatePadding":I
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    nop

    .line 11
    .end local v2    # "bottom$iv":I
    .end local v3    # "$this$updatePadding_u24default$iv":Landroid/view/View;
    .end local v4    # "left$iv":I
    .end local v5    # "top$iv":I
    .end local v6    # "right$iv":I
    .end local v7    # "$i$f$updatePadding":I
    nop

    .line 9
    .end local v0    # "$this$onApplyWindowInsets_u24lambda_u240":Landroidx/core/view/WindowInsetsCompat;
    .end local v1    # "$i$a$-apply-ListListener$onApplyWindowInsets$1":I
    nop

    .line 11
    return-object p2
.end method
