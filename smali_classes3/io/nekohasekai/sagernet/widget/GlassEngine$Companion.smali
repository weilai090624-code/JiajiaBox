.class public final Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;
.super Ljava/lang/Object;
.source "GlassEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/widget/GlassEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;",
        "",
        "<init>",
        "()V",
        "capturing",
        "",
        "getCapturing",
        "()Z",
        "setCapturing",
        "(Z)V",
        "MAX_SNAPSHOT_PIXELS",
        "",
        "CHANGE_DETECT_STEP",
        "RENDER_PAINT",
        "Landroid/graphics/Paint;",
        "getRENDER_PAINT",
        "()Landroid/graphics/Paint;",
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
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/nekohasekai/sagernet/widget/GlassEngine$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCapturing()Z
    .registers 2

    .line 46
    # getter for: Lio/nekohasekai/sagernet/widget/GlassEngine;->capturing:Z
    invoke-static {}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$getCapturing$cp()Z

    move-result v0

    return v0
.end method

.method public final getRENDER_PAINT()Landroid/graphics/Paint;
    .registers 2

    .line 55
    # getter for: Lio/nekohasekai/sagernet/widget/GlassEngine;->RENDER_PAINT:Landroid/graphics/Paint;
    invoke-static {}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$getRENDER_PAINT$cp()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public final setCapturing(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 46
    invoke-static {p1}, Lio/nekohasekai/sagernet/widget/GlassEngine;->access$setCapturing$cp(Z)V

    .line 47
    return-void
.end method
