.class final Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextScroller.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blacksquircle/ui/editorkit/widget/TextScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;


# direct methods
.method constructor <init>(Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .registers 3

    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Bitmap;
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    # getter for: Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I
    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->access$getThumbHeight$p(Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    # getter for: Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->thumbDragging:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->access$getThumbDragging$p(Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    # getter for: Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->thumbHeight:I
    invoke-static {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->access$getThumbHeight$p(Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->this$0:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    # getter for: Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->thumbDragging:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;->access$getThumbDragging$p(Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextScroller$draggingBitmap$2;->invoke()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
