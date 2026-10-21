.class Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;
.super Ljava/lang/Object;
.source "ConnectionInspector.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 138
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->render()V

    return-void
.end method
