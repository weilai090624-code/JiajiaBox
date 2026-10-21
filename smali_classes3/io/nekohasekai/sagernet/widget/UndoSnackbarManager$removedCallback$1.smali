.class public final Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;
.super Lcom/google/android/material/snackbar/Snackbar$Callback;
.source "UndoSnackbarManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;-><init>(Lio/nekohasekai/sagernet/ui/ThemedActivity;Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "io/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1",
        "Lcom/google/android/material/snackbar/Snackbar$Callback;",
        "onDismissed",
        "",
        "transientBottomBar",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "event",
        "",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)V
    .registers 2
    .param p1, "$receiver"    # Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    .line 25
    invoke-direct {p0}, Lcom/google/android/material/snackbar/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .registers 5
    .param p1, "transientBottomBar"    # Lcom/google/android/material/snackbar/Snackbar;
    .param p2, "event"    # I

    .line 27
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    # getter for: Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->last:Lcom/google/android/material/snackbar/Snackbar;
    invoke-static {v0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->access$getLast$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    if-ne v0, p1, :cond_2b

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2b

    .line 28
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    # getter for: Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->callback:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;
    invoke-static {v0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->access$getCallback$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    # getter for: Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;
    invoke-static {v1}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->access$getRecycleBin$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;->commit(Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    # getter for: Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->recycleBin:Ljava/util/ArrayList;
    invoke-static {v0}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->access$getRecycleBin$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    iget-object v0, p0, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->this$0:Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;->access$setLast$p(Lio/nekohasekai/sagernet/widget/UndoSnackbarManager;Lcom/google/android/material/snackbar/Snackbar;)V

    .line 32
    :cond_2b
    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .registers 4
    .param p1, "p0"    # Ljava/lang/Object;
    .param p2, "p1"    # I

    .line 25
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$removedCallback$1;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
