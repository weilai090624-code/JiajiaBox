.class public final synthetic Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$1;->f$2:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->lambda$show$1(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
