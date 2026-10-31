.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private iconResId:I

.field private final onIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V
    .registers 4
    .param p1, "endLayout"    # Lcom/google/android/material/textfield/EndCompoundLayout;
    .param p2, "overrideIconResId"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 32
    sget v0, Lcom/google/android/material/R$drawable;->design_password_eye:I

    iput v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    .line 37
    new-instance v0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    .line 58
    if-eqz p2, :cond_12

    .line 59
    iput p2, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    .line 61
    :cond_12
    return-void
.end method

.method private hasPasswordTransformation()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 120
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 119
    :goto_11
    return v0
.end method

.method private static isInputTypePassword(Landroid/widget/EditText;)Z
    .registers 3
    .param p0, "editText"    # Landroid/widget/EditText;

    .line 124
    if-eqz p0, :cond_24

    .line 125
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_22

    .line 126
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_22

    .line 127
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_22

    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 124
    :goto_25
    return v0
.end method


# virtual methods
.method beforeEditTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    .line 116
    return-void
.end method

.method getIconContentDescriptionResId()I
    .registers 2

    .line 88
    sget v0, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    return v0
.end method

.method getIconDrawableResId()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    return v0
.end method

.method getOnIconClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method isIconCheckable()Z
    .registers 2

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method isIconChecked()Z
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-textfield-PasswordToggleEndIconDelegate(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 39
    return-void

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 43
    .local v0, "selection":I
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 44
    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_21

    .line 46
    :cond_18
    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 49
    :goto_21
    if-ltz v0, :cond_28

    .line 50
    iget-object v1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    .line 53
    return-void
.end method

.method onEditTextAttached(Landroid/widget/EditText;)V
    .registers 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 109
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    .line 111
    return-void
.end method

.method setUp()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->isInputTypePassword(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 69
    :cond_11
    return-void
.end method

.method tearDown()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 77
    :cond_d
    return-void
.end method
