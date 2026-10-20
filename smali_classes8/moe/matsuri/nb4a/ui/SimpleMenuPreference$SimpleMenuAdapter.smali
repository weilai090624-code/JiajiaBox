.class final Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimpleMenuPreference.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;",
        "Landroid/widget/ArrayAdapter;",
        "",
        "context",
        "Landroid/content/Context;",
        "resource",
        "",
        "<init>",
        "(Landroid/content/Context;I)V",
        "currentPosition",
        "getCurrentPosition",
        "()I",
        "setCurrentPosition",
        "(I)V",
        "getDropDownView",
        "Landroid/view/View;",
        "position",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
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
.field private currentPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;->currentPosition:I

    .line 66
    return-void
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 1

    .line 69
    iget v0, p0, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;->currentPosition:I

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "getDropDownView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;->currentPosition:I

    if-ne p1, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0400fa

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 76
    :cond_0
    nop

    .line 78
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    nop

    .line 77
    const v2, 0x7f060376

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    :goto_0
    return-object v0
.end method

.method public final setCurrentPosition(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 69
    iput p1, p0, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference$SimpleMenuAdapter;->currentPosition:I

    return-void
.end method
