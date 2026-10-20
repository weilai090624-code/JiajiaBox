.class public final synthetic Lio/nekohasekai/sagernet/ui/AboutLegal$8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/TextView;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$2:Landroid/app/Dialog;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$2:Landroid/app/Dialog;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$8;->f$3:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/AboutLegal;->lambda$document$9(Landroid/app/Activity;Ljava/lang/String;Landroid/app/Dialog;Landroid/widget/TextView;)V

    return-void
.end method
