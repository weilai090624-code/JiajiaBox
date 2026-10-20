.class public final Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;
.super Ljava/lang/Object;
.source "LayoutUrltestPreferenceDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final concurrentLayout:Landroid/widget/LinearLayout;

.field public final edit:Lcom/google/android/material/textfield/TextInputEditText;

.field public final editConcurrent:Lcom/google/android/material/textfield/TextInputEditText;

.field public final inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "concurrentLayout"    # Landroid/widget/LinearLayout;
    .param p3, "edit"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "editConcurrent"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "inputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "concurrentLayout",
            "edit",
            "editConcurrent",
            "inputLayout"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->rootView:Landroid/widget/ScrollView;

    .line 40
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->concurrentLayout:Landroid/widget/LinearLayout;

    .line 41
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->edit:Lcom/google/android/material/textfield/TextInputEditText;

    .line 42
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->editConcurrent:Lcom/google/android/material/textfield/TextInputEditText;

    .line 43
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->inputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 73
    const v0, 0x7f0a00d7

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "concurrentLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_3

    .line 79
    const v0, 0x1020003

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 81
    .local v8, "edit":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v8, :cond_2

    .line 85
    const v0, 0x7f0a0113

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 87
    .local v9, "editConcurrent":Lcom/google/android/material/textfield/TextInputEditText;
    if-eqz v9, :cond_1

    .line 91
    const v0, 0x7f0a0160

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputLayout;

    .line 93
    .local v10, "inputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    if-eqz v10, :cond_0

    .line 97
    new-instance v11, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    return-object v11

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v10    # "inputLayout":Lcom/google/android/material/textfield/TextInputLayout;
    :cond_1
    goto :goto_0

    .line 82
    .end local v9    # "editConcurrent":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_2
    goto :goto_0

    .line 76
    .end local v8    # "edit":Lcom/google/android/material/textfield/TextInputEditText;
    :cond_3
    nop

    .line 100
    .end local v1    # "concurrentLayout":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    .line 60
    const v0, 0x7f0d005e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutUrltestPreferenceDialogBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
