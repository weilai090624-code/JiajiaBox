.class public final Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;
.super Ljava/lang/Object;
.source "LayoutGroupItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final content:Lcom/google/android/material/card/MaterialCardView;

.field public final edit:Landroidx/appcompat/widget/AppCompatImageView;

.field public final groupName:Landroid/widget/TextView;

.field public final groupStatus:Landroid/widget/TextView;

.field public final groupTraffic:Landroid/widget/TextView;

.field public final groupUpdate:Lcom/google/android/material/button/MaterialButton;

.field public final groupUser:Landroid/widget/TextView;

.field public final options:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final subscriptionUpdateProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "content"    # Lcom/google/android/material/card/MaterialCardView;
    .param p3, "edit"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p4, "groupName"    # Landroid/widget/TextView;
    .param p5, "groupStatus"    # Landroid/widget/TextView;
    .param p6, "groupTraffic"    # Landroid/widget/TextView;
    .param p7, "groupUpdate"    # Lcom/google/android/material/button/MaterialButton;
    .param p8, "groupUser"    # Landroid/widget/TextView;
    .param p9, "options"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p10, "subscriptionUpdateProgress"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
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
            0x0,
            0x0
        }
        names = {
            "rootView",
            "content",
            "edit",
            "groupName",
            "groupStatus",
            "groupTraffic",
            "groupUpdate",
            "groupUser",
            "options",
            "subscriptionUpdateProgress"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 59
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->content:Lcom/google/android/material/card/MaterialCardView;

    .line 60
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->edit:Landroidx/appcompat/widget/AppCompatImageView;

    .line 61
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->groupName:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->groupStatus:Landroid/widget/TextView;

    .line 63
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->groupTraffic:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->groupUpdate:Lcom/google/android/material/button/MaterialButton;

    .line 65
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->groupUser:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->options:Landroidx/appcompat/widget/AppCompatImageView;

    .line 67
    iput-object p10, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->subscriptionUpdateProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 68
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 97
    move-object/from16 v0, p0

    move-object v12, v0

    check-cast v12, Lcom/google/android/material/card/MaterialCardView;

    .line 99
    .local v12, "content":Lcom/google/android/material/card/MaterialCardView;
    const v1, 0x7f0a0112

    .line 100
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    .local v13, "edit":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v13, :cond_7

    .line 105
    const v1, 0x7f0a0142

    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 107
    .local v14, "groupName":Landroid/widget/TextView;
    if-eqz v14, :cond_6

    .line 111
    const v1, 0x7f0a0145

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 113
    .local v15, "groupStatus":Landroid/widget/TextView;
    if-eqz v15, :cond_5

    .line 117
    const v1, 0x7f0a0148

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 119
    .local v16, "groupTraffic":Landroid/widget/TextView;
    if-eqz v16, :cond_4

    .line 123
    const v1, 0x7f0a0149

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/material/button/MaterialButton;

    .line 125
    .local v17, "groupUpdate":Lcom/google/android/material/button/MaterialButton;
    if-eqz v17, :cond_3

    .line 129
    const v1, 0x7f0a014a

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    .line 131
    .local v18, "groupUser":Landroid/widget/TextView;
    if-eqz v18, :cond_2

    .line 135
    const v1, 0x7f0a0204

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatImageView;

    .line 137
    .local v19, "options":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v19, :cond_1

    .line 141
    const v11, 0x7f0a0292

    .line 142
    .end local v1    # "id":I
    .local v11, "id":I
    invoke-static {v0, v11}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 143
    .local v20, "subscriptionUpdateProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    if-eqz v20, :cond_0

    .line 147
    new-instance v21, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    move-object/from16 v1, v21

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move/from16 v22, v11

    .end local v11    # "id":I
    .local v22, "id":I
    move-object/from16 v11, v20

    invoke-direct/range {v1 .. v11}, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Lcom/google/android/material/card/MaterialCardView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    return-object v21

    .line 144
    .end local v22    # "id":I
    .restart local v11    # "id":I
    :cond_0
    move/from16 v22, v11

    .end local v11    # "id":I
    .restart local v22    # "id":I
    move/from16 v1, v22

    goto :goto_0

    .line 138
    .end local v20    # "subscriptionUpdateProgress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .end local v22    # "id":I
    .restart local v1    # "id":I
    :cond_1
    goto :goto_0

    .line 132
    .end local v19    # "options":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_2
    goto :goto_0

    .line 126
    .end local v18    # "groupUser":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 120
    .end local v17    # "groupUpdate":Lcom/google/android/material/button/MaterialButton;
    :cond_4
    goto :goto_0

    .line 114
    .end local v16    # "groupTraffic":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 108
    .end local v15    # "groupStatus":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 102
    .end local v14    # "groupName":Landroid/widget/TextView;
    :cond_7
    nop

    .line 150
    .end local v12    # "content":Lcom/google/android/material/card/MaterialCardView;
    .end local v13    # "edit":Landroidx/appcompat/widget/AppCompatImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;
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

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;
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

    .line 84
    const v0, 0x7f0d0046

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
