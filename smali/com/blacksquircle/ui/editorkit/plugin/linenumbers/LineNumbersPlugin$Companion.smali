.class public final Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;
.super Ljava/lang/Object;
.source "LineNumbersPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;",
        "",
        "()V",
        "PLUGIN_ID",
        "",
        "dp",
        "",
        "getDp",
        "(I)I",
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
.method private constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDp(Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;I)I
    .locals 1
    .param p0, "$this"    # Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;
    .param p1, "$receiver"    # I

    .line 208
    invoke-direct {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;->getDp(I)I

    move-result v0

    return v0
.end method

.method private final getDp(I)I
    .locals 2
    .param p1, "$this$dp"    # I

    .line 213
    int-to-float v0, p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method
