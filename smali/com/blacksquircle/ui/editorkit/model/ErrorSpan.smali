.class public final Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;
.super Ljava/lang/Object;
.source "ErrorSpan.kt"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\r\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J`\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;",
        "Landroid/text/style/LineBackgroundSpan;",
        "lineWidth",
        "",
        "waveSize",
        "color",
        "",
        "(FFI)V",
        "drawBackground",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "left",
        "right",
        "top",
        "baseline",
        "bottom",
        "text",
        "",
        "start",
        "end",
        "lineNumber",
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


# instance fields
.field private final color:I

.field private final lineWidth:F

.field private final waveSize:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 0
    .param p1, "lineWidth"    # F
    .param p2, "waveSize"    # F
    .param p3, "color"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->lineWidth:F

    .line 27
    iput p2, p0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    .line 28
    iput p3, p0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->color:I

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 25
    and-int/lit8 p5, p4, 0x1

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p5, :cond_0

    .line 26
    const/4 p1, 0x1

    int-to-float p1, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p5

    add-float/2addr p1, v0

    .line 25
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 27
    const/4 p2, 0x3

    int-to-float p2, p2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p5

    add-float/2addr p2, v0

    .line 25
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 28
    const/high16 p3, -0x10000

    .line 25
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;-><init>(FFI)V

    .line 56
    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "top"    # I
    .param p6, "baseline"    # I
    .param p7, "bottom"    # I
    .param p8, "text"    # Ljava/lang/CharSequence;
    .param p9, "start"    # I
    .param p10, "end"    # I
    .param p11, "lineNumber"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p7

    move-object/from16 v4, p8

    const-string v5, "canvas"

    move-object/from16 v12, p1

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "paint"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "text"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move/from16 v5, p9

    move/from16 v13, p10

    invoke-virtual {v1, v4, v5, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    .line 45
    .local v14, "width":F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object v15, v6

    .line 46
    .local v15, "linePaint":Landroid/graphics/Paint;
    iget v6, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->color:I

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget v6, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->lineWidth:F

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget v6, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float v16, v6, v7

    .line 49
    .local v16, "doubleWaveSize":F
    int-to-float v6, v2

    move/from16 v17, v6

    .line 50
    .local v17, "i":F
    :goto_0
    int-to-float v6, v2

    add-float/2addr v6, v14

    cmpg-float v6, v17, v6

    if-gez v6, :cond_0

    .line 51
    int-to-float v8, v3

    iget v6, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    add-float v9, v17, v6

    int-to-float v6, v3

    iget v7, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    sub-float v10, v6, v7

    move-object/from16 v6, p1

    move/from16 v7, v17

    move-object v11, v15

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 52
    iget v6, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    add-float v7, v17, v6

    int-to-float v6, v3

    iget v8, v0, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;->waveSize:F

    sub-float v8, v6, v8

    add-float v9, v17, v16

    int-to-float v10, v3

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 53
    add-float v17, v17, v16

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
