.class Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;
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

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJFileImport$2;Ljava/lang/String;)V
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

    .line 138
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;->this$0:Lio/nekohasekai/sagernet/ui/JJFileImport$2;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 141
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;->this$0:Lio/nekohasekai/sagernet/ui/JJFileImport$2;

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$fragment:Ljava/lang/Object;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJFileImport$2$1;->this$0:Lio/nekohasekai/sagernet/ui/JJFileImport$2;

    iget-object v2, v2, Lio/nekohasekai/sagernet/ui/JJFileImport$2;->val$context:Landroid/content/Context;

    # invokes: Lio/nekohasekai/sagernet/ui/JJFileImport;->invokeExistingImporter(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/JJFileImport;->access$100(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
