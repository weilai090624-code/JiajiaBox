.class Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;
.super Lcom/google/android/material/internal/TextWatcherAdapter;
.source "TimePickerTextInputPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 75
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    invoke-direct {p0}, Lcom/google/android/material/internal/TextWatcherAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 79
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 80
    iget-object v0, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    # getter for: Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {v0}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V

    .line 81
    return-void

    .line 83
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "hour":I
    iget-object v1, p0, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter$2;->this$0:Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;

    # getter for: Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lcom/google/android/material/timepicker/TimeModel;
    invoke-static {v1}, Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;->access$000(Lcom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lcom/google/android/material/timepicker/TimeModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/timepicker/TimeModel;->setHour(I)V
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_22} :catch_23

    .line 87
    .end local v0    # "hour":I
    goto :goto_24

    .line 85
    :catch_23
    move-exception v0

    .line 88
    :goto_24
    return-void
.end method
