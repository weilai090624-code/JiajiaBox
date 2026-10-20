.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$install$16"
    proto = "(Ljava/io/File;Landroid/app/Activity;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$5;->f$0:Ljava/io/File;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$5;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$5;->f$0:Ljava/io/File;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$5;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$install$16(Ljava/io/File;Landroid/app/Activity;)V

    return-void
.end method
