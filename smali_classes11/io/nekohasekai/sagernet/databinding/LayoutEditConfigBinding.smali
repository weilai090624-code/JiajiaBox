.class public final Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;
.super Ljava/lang/Object;
.source "LayoutEditConfigBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final actionFormat:Landroid/widget/ImageView;

.field public final actionRedo:Landroid/widget/ImageView;

.field public final actionTab:Landroid/widget/ImageView;

.field public final actionUndo:Landroid/widget/ImageView;

.field public final editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

.field public final extendedKeyboard:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;

.field public final keyboardContainer:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final scroller:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;Landroid/widget/LinearLayout;Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "actionFormat"    # Landroid/widget/ImageView;
    .param p3, "actionRedo"    # Landroid/widget/ImageView;
    .param p4, "actionTab"    # Landroid/widget/ImageView;
    .param p5, "actionUndo"    # Landroid/widget/ImageView;
    .param p6, "editor"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .param p7, "extendedKeyboard"    # Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;
    .param p8, "keyboardContainer"    # Landroid/widget/LinearLayout;
    .param p9, "scroller"    # Lcom/blacksquircle/ui/editorkit/widget/TextScroller;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "actionFormat",
            "actionRedo",
            "actionTab",
            "actionUndo",
            "editor",
            "extendedKeyboard",
            "keyboardContainer",
            "scroller"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->rootView:Landroid/widget/LinearLayout;

    .line 54
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionFormat:Landroid/widget/ImageView;

    .line 55
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionRedo:Landroid/widget/ImageView;

    .line 56
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionTab:Landroid/widget/ImageView;

    .line 57
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->actionUndo:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->editor:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    .line 59
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->extendedKeyboard:Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;

    .line 60
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->keyboardContainer:Landroid/widget/LinearLayout;

    .line 61
    iput-object p9, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->scroller:Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    .line 62
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;
    .locals 21
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 91
    move-object/from16 v0, p0

    const v1, 0x7f0a0052

    .line 92
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .local v2, "actionFormat":Landroid/widget/ImageView;
    if-eqz v2, :cond_7

    .line 97
    const v1, 0x7f0a0079

    .line 98
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/ImageView;

    .line 99
    .local v13, "actionRedo":Landroid/widget/ImageView;
    if-eqz v13, :cond_6

    .line 103
    const v1, 0x7f0a0085

    .line 104
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/ImageView;

    .line 105
    .local v14, "actionTab":Landroid/widget/ImageView;
    if-eqz v14, :cond_5

    .line 109
    const v1, 0x7f0a0087

    .line 110
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/ImageView;

    .line 111
    .local v15, "actionUndo":Landroid/widget/ImageView;
    if-eqz v15, :cond_4

    .line 115
    const v1, 0x7f0a0116

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    .line 117
    .local v16, "editor":Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    if-eqz v16, :cond_3

    .line 121
    const v1, 0x7f0a0122

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;

    .line 123
    .local v17, "extendedKeyboard":Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;
    if-eqz v17, :cond_2

    .line 127
    const v1, 0x7f0a0183

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    .line 129
    .local v18, "keyboardContainer":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_1

    .line 133
    const v1, 0x7f0a0241

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/blacksquircle/ui/editorkit/widget/TextScroller;

    .line 135
    .local v19, "scroller":Lcom/blacksquircle/ui/editorkit/widget/TextScroller;
    if-eqz v19, :cond_0

    .line 139
    new-instance v20, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v20

    move-object v5, v2

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;Landroid/widget/LinearLayout;Lcom/blacksquircle/ui/editorkit/widget/TextScroller;)V

    return-object v20

    .line 136
    :cond_0
    goto :goto_0

    .line 130
    .end local v19    # "scroller":Lcom/blacksquircle/ui/editorkit/widget/TextScroller;
    :cond_1
    goto :goto_0

    .line 124
    .end local v18    # "keyboardContainer":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 118
    .end local v17    # "extendedKeyboard":Lmoe/matsuri/nb4a/ui/ExtendedKeyboard;
    :cond_3
    goto :goto_0

    .line 112
    .end local v16    # "editor":Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    :cond_4
    goto :goto_0

    .line 106
    .end local v15    # "actionUndo":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 100
    .end local v14    # "actionTab":Landroid/widget/ImageView;
    :cond_6
    goto :goto_0

    .line 94
    .end local v13    # "actionRedo":Landroid/widget/ImageView;
    :cond_7
    nop

    .line 142
    .end local v2    # "actionFormat":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;
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

    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;
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

    .line 78
    const v0, 0x7f0d0041

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutEditConfigBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
