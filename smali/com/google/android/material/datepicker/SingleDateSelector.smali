.class public Lcom/google/android/material/datepicker/SingleDateSelector;
.super Ljava/lang/Object;
.source "SingleDateSelector.java"

# interfaces
.implements Lcom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/DateSelector<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/SingleDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error:Ljava/lang/CharSequence;

.field private selectedItem:Ljava/lang/Long;

.field private textInputFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 200
    new-instance v0, Lcom/google/android/material/datepicker/SingleDateSelector$2;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/SingleDateSelector$2;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/SingleDateSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/datepicker/SingleDateSelector;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/material/datepicker/SingleDateSelector;

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/datepicker/SingleDateSelector;->clearSelection()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/datepicker/SingleDateSelector;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 50
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->error:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/datepicker/SingleDateSelector;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 50
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    return-object p1
.end method

.method private clearSelection()V
    .registers 2

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultThemeResId(Landroid/content/Context;)I
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 160
    sget v0, Lcom/google/android/material/R$attr;->materialCalendarTheme:I

    const-class v1, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 161
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultTitleResId()I
    .registers 2

    .line 194
    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_date_header_title:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->error:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->error:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public getSelectedDays()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-eqz v1, :cond_e

    .line 86
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_e
    return-object v0
.end method

.method public getSelectedRanges()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSelection()Ljava/lang/Long;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/SingleDateSelector;->getSelection()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-nez v1, :cond_f

    .line 181
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection_none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    .line 182
    :cond_f
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    move-result-object v1

    :goto_19
    nop

    .line 183
    .local v1, "placeholder":Ljava/lang/String;
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_announce_current_selection:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSelectionDisplayString(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-nez v1, :cond_f

    .line 169
    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_date_header_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_f
    iget-object v1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "startString":Ljava/lang/String;
    sget v2, Lcom/google/android/material/R$string;->mtrl_picker_date_header_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isSelectionComplete()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;
    .registers 25
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Landroid/view/ViewGroup;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "constraints"    # Lcom/google/android/material/datepicker/CalendarConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 109
    .local p5, "listener":Lcom/google/android/material/datepicker/OnSelectionChangedListener;, "Lcom/google/android/material/datepicker/OnSelectionChangedListener<Ljava/lang/Long;>;"
    move-object/from16 v8, p0

    sget v0, Lcom/google/android/material/R$layout;->mtrl_picker_text_input_date:I

    const/4 v9, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual {v10, v0, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 111
    .local v12, "root":Landroid/view/View;
    sget v0, Lcom/google/android/material/R$id;->mtrl_picker_text_input_date:I

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    .line 112
    .local v13, "dateTextInput":Lcom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v13, v9}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorAccessibilityLiveRegion(I)V

    .line 113
    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    .line 114
    .local v14, "dateEditText":Landroid/widget/EditText;
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 116
    const/16 v0, 0x11

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 119
    :cond_28
    iget-object v0, v8, Lcom/google/android/material/datepicker/SingleDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    const/4 v15, 0x1

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move/from16 v16, v0

    .line 121
    .local v16, "hasCustomFormat":Z
    if-eqz v16, :cond_37

    iget-object v0, v8, Lcom/google/android/material/datepicker/SingleDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    goto :goto_3b

    :cond_37
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    :goto_3b
    move-object v7, v0

    .line 123
    .local v7, "format":Ljava/text/SimpleDateFormat;
    if-eqz v16, :cond_43

    .line 124
    invoke-virtual {v7}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 125
    :cond_43
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/google/android/material/datepicker/UtcDates;->getDefaultTextInputHint(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    move-object v6, v0

    .line 127
    .local v6, "formatHint":Ljava/lang/String;
    invoke-virtual {v13, v6}, Lcom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, v8, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-eqz v0, :cond_5c

    .line 129
    iget-object v0, v8, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_5c
    new-instance v5, Lcom/google/android/material/datepicker/SingleDateSelector$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v13

    move-object v9, v5

    move-object/from16 v5, p4

    move-object/from16 v17, v6

    .end local v6    # "formatHint":Ljava/lang/String;
    .local v17, "formatHint":Ljava/lang/String;
    move-object/from16 v6, p5

    move-object/from16 v18, v7

    .end local v7    # "format":Ljava/text/SimpleDateFormat;
    .local v18, "format":Ljava/text/SimpleDateFormat;
    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/datepicker/SingleDateSelector$1;-><init>(Lcom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    new-array v0, v15, [Landroid/widget/EditText;

    const/4 v1, 0x0

    aput-object v14, v0, v1

    invoke-static {v0}, Lcom/google/android/material/datepicker/DateSelector$-CC;->showKeyboardWithAutoHideBehavior([Landroid/widget/EditText;)V

    .line 155
    return-object v12
.end method

.method public select(J)V
    .registers 4
    .param p1, "selection"    # J

    .line 58
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public setSelection(Ljava/lang/Long;)V
    .registers 4
    .param p1, "selection"    # Ljava/lang/Long;

    .line 67
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_10

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 68
    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;)V
    .registers 2

    .line 49
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/SingleDateSelector;->setSelection(Ljava/lang/Long;)V

    return-void
.end method

.method public setTextInputFormat(Ljava/text/SimpleDateFormat;)V
    .registers 2
    .param p1, "format"    # Ljava/text/SimpleDateFormat;

    .line 99
    iput-object p1, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->textInputFormat:Ljava/text/SimpleDateFormat;

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 224
    iget-object v0, p0, Lcom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 225
    return-void
.end method
