.class public final synthetic Lio/nekohasekai/sagernet/ui/GroupActions$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Object;Landroid/content/Context;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$1:J

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$2:Ljava/lang/Object;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$1:J

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$2:Ljava/lang/Object;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GroupActions$5;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/GroupActions;->lambda$save$8(Ljava/lang/String;JLjava/lang/Object;Landroid/content/Context;)V

    return-void
.end method
