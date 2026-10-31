.class final Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;
.super Ljava/lang/Object;
.source "SubscriptionDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/SubscriptionDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingDns"
.end annotation


# instance fields
.field final dns:Ljava/lang/String;

.field final unsupported:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->dns:Ljava/lang/String;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDns$PendingDns;->unsupported:Ljava/lang/String;

    return-void
.end method
