.class public final synthetic Lio/nekohasekai/sagernet/ui/SubscriptionUpdates$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/SubscriptionUpdates;"
    method = "lambda$success$0"
    proto = "(Landroid/content/Context;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionUpdates$0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionUpdates$0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionUpdates$0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionUpdates$0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/SubscriptionUpdates;->lambda$success$0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
