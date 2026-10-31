.class public Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.super Landroidx/preference/PreferenceDialogFragmentCompat;
.source "EditTextPreferenceDialogFragmentCompat.java"


# static fields
.field private static final SAVE_STATE_TEXT:Ljava/lang/String; = "EditTextPreferenceDialogFragment.text"

.field private static final SHOW_REQUEST_TIMEOUT:I = 0x3e8


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mShowRequestTime:J

.field private final mShowSoftInputRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragmentCompat;-><init>()V

    .line 40
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$1;

    invoke-direct {v0, p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat$1;-><init>(Landroidx/preference/EditTextPreferenceDialogFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    return-void
.end method

.method private getEditTextPreference()Landroidx/preference/EditTextPreference;
    .registers 2

    .line 96
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    return-object v0
.end method

.method private hasPendingShowSoftInputRequest()Z
    .registers 6

    .line 108
    iget-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_17

    iget-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 108
    :goto_18
    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;

    .line 52
    new-instance v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    invoke-direct {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 53
    .local v0, "fragment":Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 54
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method private setPendingShowSoftInputRequest(Z)V
    .registers 4
    .param p1, "pendingShowSoftInputRequest"    # Z

    .line 113
    if-eqz p1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, -0x1

    :goto_9
    iput-wide v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowRequestTime:J

    .line 114
    return-void
.end method


# virtual methods
.method protected needInputMethod()Z
    .registers 2

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 77
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    .line 79
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_45

    .line 86
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 90
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 91
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getOnBindEditTextListener()Landroidx/preference/EditTextPreference$OnBindEditTextListener;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Landroidx/preference/EditTextPreference$OnBindEditTextListener;->onBindEditText(Landroid/widget/EditText;)V

    .line 93
    :cond_44
    return-void

    .line 82
    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-nez p1, :cond_10

    .line 63
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    goto :goto_18

    .line 65
    :cond_10
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    .line 67
    :goto_18
    return-void
.end method

.method public onDialogClosed(Z)V
    .registers 5
    .param p1, "positiveResult"    # Z

    .line 146
    if-eqz p1, :cond_19

    .line 147
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/String;
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->getEditTextPreference()Landroidx/preference/EditTextPreference;

    move-result-object v1

    .line 149
    .local v1, "preference":Landroidx/preference/EditTextPreference;
    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 150
    invoke-virtual {v1, v0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 153
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "preference":Landroidx/preference/EditTextPreference;
    :cond_19
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "EditTextPreferenceDialogFragment.text"

    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method protected scheduleShowSoftInput()V
    .registers 2

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setPendingShowSoftInputRequest(Z)V

    .line 121
    invoke-virtual {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    .line 122
    return-void
.end method

.method scheduleShowSoftInputInner()V
    .registers 6

    .line 127
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->hasPendingShowSoftInputRequest()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 128
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_3f

    .line 132
    :cond_14
    iget-object v0, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    .line 133
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 135
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 136
    invoke-direct {p0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setPendingShowSoftInputRequest(Z)V

    goto :goto_43

    .line 138
    :cond_2e
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v1, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->mShowSoftInputRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_43

    .line 129
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3f
    :goto_3f
    invoke-direct {p0, v1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->setPendingShowSoftInputRequest(Z)V

    .line 130
    return-void

    .line 142
    :cond_43
    :goto_43
    return-void
.end method
