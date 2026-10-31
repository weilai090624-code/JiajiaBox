.class public final Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "bottomVisibleLine",
        "",
        "Landroid/widget/TextView;",
        "getBottomVisibleLine",
        "(Landroid/widget/TextView;)I",
        "topVisibleLine",
        "getTopVisibleLine",
        "editorkit_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getBottomVisibleLine(Landroid/widget/TextView;)I
    .registers 5
    .param p0, "$this$bottomVisibleLine"    # Landroid/widget/TextView;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_36

    .line 42
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 43
    .local v0, "line":I
    if-gez v0, :cond_27

    .line 44
    return v1

    .line 46
    :cond_27
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_34

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    .line 49
    :cond_34
    move v1, v0

    .line 46
    :goto_35
    return v1

    .line 40
    .end local v0    # "line":I
    :cond_36
    :goto_36
    return v1
.end method

.method public static final getTopVisibleLine(Landroid/widget/TextView;)I
    .registers 4
    .param p0, "$this$topVisibleLine"    # Landroid/widget/TextView;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_31

    .line 26
    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 27
    .local v0, "line":I
    if-gez v0, :cond_22

    .line 28
    return v1

    .line 30
    :cond_22
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_2f

    .line 31
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 33
    :cond_2f
    move v1, v0

    .line 30
    :goto_30
    return v1

    .line 24
    .end local v0    # "line":I
    :cond_31
    :goto_31
    return v1
.end method
