.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$start$9"
    proto = "(JJ)V"
.end annotation


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$7;->f$0:J

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$7;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$7;->f$0:J

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$7;->f$1:J

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$start$9(JJ)V

    return-void
.end method
