.class Lio/nekohasekai/sagernet/ui/ConnectionCard$1;
.super Ljava/lang/Object;
.source "ConnectionCard.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConnectionCard;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 55
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 55
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 55
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->render()V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    return-void
.end method
