.class Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;
.super Ljava/lang/Object;
.source "JJFileImport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/JJFileImport$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJFileImport$2;

.field final synthetic val$error:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJFileImport$2;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;->this$0:Lio/nekohasekai/sagernet/ui/JJFileImport$2;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;->val$error:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 148
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;->val$error:Ljava/lang/Throwable;

    # invokes: Lio/nekohasekai/sagernet/ui/JJFileImport;->rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/JJFileImport;->access$200(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$2;->this$0:Lio/nekohasekai/sagernet/ui/JJFileImport$2;

    iget-object v1, v1, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
