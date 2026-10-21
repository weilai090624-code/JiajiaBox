.class Lio/nekohasekai/sagernet/ui/JJFileImport$2;
.super Ljava/lang/Object;
.source "JJFileImport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJFileImport;->handleResult(Ljava/lang/Object;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fragment:Ljava/lang/Object;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$fragment:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$uri:Landroid/net/Uri;

    # invokes: Lio/nekohasekai/sagernet/ui/JJFileImport;->readUtf8(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/JJFileImport;->access$000(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;-><init>(Lio/nekohasekai/sagernet/ui/JJFileImport$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    .line 145
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;-><init>(Lio/nekohasekai/sagernet/ui/JJFileImport$2;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
