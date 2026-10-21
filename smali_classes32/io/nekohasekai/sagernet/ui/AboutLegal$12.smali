.class public final synthetic Lio/nekohasekai/sagernet/ui/AboutLegal$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AboutLegal$12;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/AboutLegal;->lambda$document$11(Landroid/app/Dialog;Landroid/app/Activity;Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
