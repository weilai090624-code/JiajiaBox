.class public final synthetic Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$2:J

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$1:Ljava/lang/Object;

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$2:J

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/SubscriptionCards$0;->f$3:Ljava/lang/Object;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/SubscriptionCards;->lambda$show$0(Landroid/app/Dialog;Ljava/lang/Object;JLjava/lang/Object;Landroid/view/View;)V

    return-void
.end method
