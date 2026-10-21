.class Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomSheetDismissCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
    .param p2, "x1"    # Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;

    .line 108
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 118
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 112
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 113
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    # invokes: Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->access$100(Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V

    .line 115
    :cond_8
    return-void
.end method
