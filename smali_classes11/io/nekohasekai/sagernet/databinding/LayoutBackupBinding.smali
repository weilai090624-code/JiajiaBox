.class public final Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
.super Ljava/lang/Object;
.source "LayoutBackupBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actionExport:Landroid/widget/Button;

.field public final actionImportFile:Landroid/widget/Button;

.field public final actionShare:Landroid/widget/Button;

.field public final backupConfigurations:Landroid/widget/CheckBox;

.field public final backupRules:Landroid/widget/CheckBox;

.field public final backupSettings:Landroid/widget/CheckBox;

.field public final resetSettings:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Button;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "actionExport"    # Landroid/widget/Button;
    .param p3, "actionImportFile"    # Landroid/widget/Button;
    .param p4, "actionShare"    # Landroid/widget/Button;
    .param p5, "backupConfigurations"    # Landroid/widget/CheckBox;
    .param p6, "backupRules"    # Landroid/widget/CheckBox;
    .param p7, "backupSettings"    # Landroid/widget/CheckBox;
    .param p8, "resetSettings"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "actionExport",
            "actionImportFile",
            "actionShare",
            "backupConfigurations",
            "backupRules",
            "backupSettings",
            "resetSettings"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->actionExport:Landroid/widget/Button;

    .line 50
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->actionImportFile:Landroid/widget/Button;

    .line 51
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->actionShare:Landroid/widget/Button;

    .line 52
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->backupConfigurations:Landroid/widget/CheckBox;

    .line 53
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->backupRules:Landroid/widget/CheckBox;

    .line 54
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->backupSettings:Landroid/widget/CheckBox;

    .line 55
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->resetSettings:Landroid/widget/Button;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 85
    move-object/from16 v0, p0

    const v1, 0x7f0a004f

    .line 86
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 87
    .local v2, "actionExport":Landroid/widget/Button;
    if-eqz v2, :cond_6

    .line 91
    const v1, 0x7f0a0058

    .line 92
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/Button;

    .line 93
    .local v12, "actionImportFile":Landroid/widget/Button;
    if-eqz v12, :cond_5

    .line 97
    const v1, 0x7f0a0081

    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/Button;

    .line 99
    .local v13, "actionShare":Landroid/widget/Button;
    if-eqz v13, :cond_4

    .line 103
    const v1, 0x7f0a00a9

    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/CheckBox;

    .line 105
    .local v14, "backupConfigurations":Landroid/widget/CheckBox;
    if-eqz v14, :cond_3

    .line 109
    const v1, 0x7f0a00aa

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/CheckBox;

    .line 111
    .local v15, "backupRules":Landroid/widget/CheckBox;
    if-eqz v15, :cond_2

    .line 115
    const v1, 0x7f0a00ab

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/CheckBox;

    .line 117
    .local v16, "backupSettings":Landroid/widget/CheckBox;
    if-eqz v16, :cond_1

    .line 121
    const v1, 0x7f0a022b

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/Button;

    .line 123
    .local v17, "resetSettings":Landroid/widget/Button;
    if-eqz v17, :cond_0

    .line 127
    new-instance v18, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/Button;)V

    return-object v18

    .line 124
    :cond_0
    goto :goto_0

    .line 118
    .end local v17    # "resetSettings":Landroid/widget/Button;
    :cond_1
    goto :goto_0

    .line 112
    .end local v16    # "backupSettings":Landroid/widget/CheckBox;
    :cond_2
    goto :goto_0

    .line 106
    .end local v15    # "backupRules":Landroid/widget/CheckBox;
    :cond_3
    goto :goto_0

    .line 100
    .end local v14    # "backupConfigurations":Landroid/widget/CheckBox;
    :cond_4
    goto :goto_0

    .line 94
    .end local v13    # "actionShare":Landroid/widget/Button;
    :cond_5
    goto :goto_0

    .line 88
    .end local v12    # "actionImportFile":Landroid/widget/Button;
    :cond_6
    nop

    .line 130
    .end local v2    # "actionExport":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
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

    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;
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

    .line 72
    const v0, 0x7f0d003d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutBackupBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
