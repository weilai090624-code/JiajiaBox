.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$deliver$4"
    proto = "(Landroid/app/Activity;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$12;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$12;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$deliver$4(Landroid/app/Activity;)V

    return-void
.end method
