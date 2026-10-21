.class Lcom/google/android/material/internal/CheckableGroup$1;
.super Ljava/lang/Object;
.source "CheckableGroup.java"

# interfaces
.implements Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/CheckableGroup;->addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/internal/CheckableGroup;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/CheckableGroup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/internal/CheckableGroup;

    .line 79
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup$1;, "Lcom/google/android/material/internal/CheckableGroup$1;"
    iput-object p1, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/google/android/material/internal/MaterialCheckable;Z)V
    .registers 5
    .param p2, "isChecked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup$1;, "Lcom/google/android/material/internal/CheckableGroup$1;"
    .local p1, "checkable":Lcom/google/android/material/internal/MaterialCheckable;, "TT;"
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    if-eqz p2, :cond_b

    # invokes: Lcom/google/android/material/internal/CheckableGroup;->checkInternal(Lcom/google/android/material/internal/MaterialCheckable;)Z
    invoke-static {v0, p1}, Lcom/google/android/material/internal/CheckableGroup;->access$000(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_17

    :cond_b
    iget-object v1, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    # getter for: Lcom/google/android/material/internal/CheckableGroup;->selectionRequired:Z
    invoke-static {v1}, Lcom/google/android/material/internal/CheckableGroup;->access$100(Lcom/google/android/material/internal/CheckableGroup;)Z

    move-result v1

    # invokes: Lcom/google/android/material/internal/CheckableGroup;->uncheckInternal(Lcom/google/android/material/internal/MaterialCheckable;Z)Z
    invoke-static {v0, p1, v1}, Lcom/google/android/material/internal/CheckableGroup;->access$200(Lcom/google/android/material/internal/CheckableGroup;Lcom/google/android/material/internal/MaterialCheckable;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 83
    :goto_17
    iget-object v0, p0, Lcom/google/android/material/internal/CheckableGroup$1;->this$0:Lcom/google/android/material/internal/CheckableGroup;

    # invokes: Lcom/google/android/material/internal/CheckableGroup;->onCheckedStateChanged()V
    invoke-static {v0}, Lcom/google/android/material/internal/CheckableGroup;->access$300(Lcom/google/android/material/internal/CheckableGroup;)V

    .line 85
    :cond_1c
    return-void
.end method

.method public bridge synthetic onCheckedChanged(Ljava/lang/Object;Z)V
    .registers 3

    .line 79
    .local p0, "this":Lcom/google/android/material/internal/CheckableGroup$1;, "Lcom/google/android/material/internal/CheckableGroup$1;"
    check-cast p1, Lcom/google/android/material/internal/MaterialCheckable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/CheckableGroup$1;->onCheckedChanged(Lcom/google/android/material/internal/MaterialCheckable;Z)V

    return-void
.end method
