.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$start$12"
    proto = "(Ljava/io/File;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$4;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$4;->f$0:Ljava/io/File;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$start$12(Ljava/io/File;)V

    return-void
.end method
