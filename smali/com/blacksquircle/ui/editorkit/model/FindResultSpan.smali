.class public final Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "FindResultSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;",
        "Landroid/text/style/BackgroundColorSpan;",
        "span",
        "Lcom/blacksquircle/ui/editorkit/model/StyleSpan;",
        "(Lcom/blacksquircle/ui/editorkit/model/StyleSpan;)V",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/blacksquircle/ui/editorkit/model/StyleSpan;)V
    .locals 1
    .param p1, "span"    # Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    const-string/jumbo v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-void
.end method
