.class Lio/nekohasekai/sagernet/ui/AiChooser$2;
.super Ljava/lang/Object;
.source "AiChooser.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AiChooser;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$all:Ljava/util/ArrayList;

.field final synthetic val$filter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$2;->val$all:Ljava/util/ArrayList;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$2;->val$filter:Ljava/lang/Runnable;

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

    .line 46
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$2;->val$all:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$2;->val$filter:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_d
    return-void
.end method
