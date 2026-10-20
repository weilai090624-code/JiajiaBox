.class public final synthetic Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

.field public final synthetic f$1:Landroid/graphics/Bitmap;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;->f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;->f$1:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;->f$0:Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;->f$1:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop$4;->f$2:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->lambda$captureWarm$3$io-nekohasekai-sagernet-ui-FullScreenBackdrop(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method
