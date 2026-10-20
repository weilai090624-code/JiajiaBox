.class public final synthetic Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Landroid/graphics/Bitmap;III)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$1:Landroid/graphics/Bitmap;

    iput p3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$2:I

    iput p4, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$3:I

    iput p5, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$1:Landroid/graphics/Bitmap;

    iget v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$2:I

    iget v3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$3:I

    iget v4, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$5;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->lambda$captureWarm$4$io-nekohasekai-sagernet-ui-FullScreenBackdrop(Landroid/graphics/Bitmap;III)V

    return-void
.end method
