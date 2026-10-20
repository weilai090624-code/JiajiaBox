.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$deliver$6"
    proto = "(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$14;->f$0:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$14;->f$0:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    invoke-static {v0, p1, p2}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$deliver$6(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;Landroid/content/DialogInterface;I)V

    return-void
.end method
