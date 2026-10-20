.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/nekohasekai/sagernet/ui/UpdateTransfer$Progress;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$start$10"
    proto = "([JJJ)V"
.end annotation


# instance fields
.field public final synthetic f$0:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$2;->f$0:[J

    return-void
.end method


# virtual methods
.method public final update(JJ)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$2;->f$0:[J

    invoke-static {v0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$start$10([JJJ)V

    return-void
.end method
