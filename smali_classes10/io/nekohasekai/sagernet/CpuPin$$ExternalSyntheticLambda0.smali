.class public final synthetic Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lio/nekohasekai/sagernet/CpuPin$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/CpuPin;->$r8$lambda$-sD95Engc3WbCsY7JncJGeVQxTo(Lkotlin/jvm/internal/Ref$IntRef;Landroid/os/Handler;)V

    return-void
.end method
