.class public final synthetic Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Llibcore/Func;


# instance fields
.field public final synthetic f$0:Landroid/os/CancellationSignal;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CancellationSignal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;->f$0:Landroid/os/CancellationSignal;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .registers 2

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/net/LocalResolverImpl$$ExternalSyntheticLambda0;->f$0:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    return-void
.end method
