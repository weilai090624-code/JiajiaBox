.class public final Lio/nekohasekai/sagernet/ktx/UtilsKt$scrollTo$2$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ktx/UtilsKt;->scrollTo(Landroidx/recyclerview/widget/RecyclerView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0014\u00a8\u0006\u0004"
    }
    d2 = {
        "io/nekohasekai/sagernet/ktx/UtilsKt$scrollTo$2$1",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "getVerticalSnapPreference",
        "",
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
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .param p1, "$index"    # I
    .param p2, "$super_call_param$1"    # Landroid/content/Context;

    .line 183
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 184
    nop

    .line 185
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ktx/UtilsKt$scrollTo$2$1;->setTargetPosition(I)V

    .line 186
    nop

    .line 183
    return-void
.end method


# virtual methods
.method protected getVerticalSnapPreference()I
    .locals 1

    .line 189
    const/4 v0, -0x1

    return v0
.end method
