.class Lcom/google/android/material/textfield/EditTextUtils;
.super Ljava/lang/Object;
.source "EditTextUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isEditable(Landroid/widget/EditText;)Z
    .registers 2
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 27
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
