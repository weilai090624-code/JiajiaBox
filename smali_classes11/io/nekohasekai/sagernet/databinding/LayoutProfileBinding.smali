.class public final Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;
.super Ljava/lang/Object;
.source "LayoutProfileBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final container:Landroid/widget/LinearLayout;

.field public final content:Lcom/google/android/material/card/MaterialCardView;

.field public final contentLin:Landroid/widget/LinearLayout;

.field public final edit:Landroidx/appcompat/widget/AppCompatImageView;

.field public final profileAddress:Landroid/widget/TextView;

.field public final profileName:Landroid/widget/TextView;

.field public final profileStatus:Landroid/widget/TextView;

.field public final profileType:Landroid/widget/TextView;

.field public final remove:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final selectedView:Landroid/widget/LinearLayout;

.field public final share:Landroid/widget/LinearLayout;

.field public final shareIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final shareLayer:Landroid/widget/LinearLayout;

.field public final trafficText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "content"    # Lcom/google/android/material/card/MaterialCardView;
    .param p4, "contentLin"    # Landroid/widget/LinearLayout;
    .param p5, "edit"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p6, "profileAddress"    # Landroid/widget/TextView;
    .param p7, "profileName"    # Landroid/widget/TextView;
    .param p8, "profileStatus"    # Landroid/widget/TextView;
    .param p9, "profileType"    # Landroid/widget/TextView;
    .param p10, "remove"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p11, "selectedView"    # Landroid/widget/LinearLayout;
    .param p12, "share"    # Landroid/widget/LinearLayout;
    .param p13, "shareIcon"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p14, "shareLayer"    # Landroid/widget/LinearLayout;
    .param p15, "trafficText"    # Landroid/widget/TextView;
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "container",
            "content",
            "contentLin",
            "edit",
            "profileAddress",
            "profileName",
            "profileStatus",
            "profileType",
            "remove",
            "selectedView",
            "share",
            "shareIcon",
            "shareLayer",
            "trafficText"
        }
    .end annotation

    .line 72
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object/from16 v1, p1

    iput-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 74
    move-object/from16 v2, p2

    iput-object v2, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->container:Landroid/widget/LinearLayout;

    .line 75
    move-object/from16 v3, p3

    iput-object v3, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->content:Lcom/google/android/material/card/MaterialCardView;

    .line 76
    move-object/from16 v4, p4

    iput-object v4, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->contentLin:Landroid/widget/LinearLayout;

    .line 77
    move-object/from16 v5, p5

    iput-object v5, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->edit:Landroidx/appcompat/widget/AppCompatImageView;

    .line 78
    move-object/from16 v6, p6

    iput-object v6, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->profileAddress:Landroid/widget/TextView;

    .line 79
    move-object/from16 v7, p7

    iput-object v7, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->profileName:Landroid/widget/TextView;

    .line 80
    move-object/from16 v8, p8

    iput-object v8, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->profileStatus:Landroid/widget/TextView;

    .line 81
    move-object/from16 v9, p9

    iput-object v9, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->profileType:Landroid/widget/TextView;

    .line 82
    move-object/from16 v10, p10

    iput-object v10, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->remove:Landroidx/appcompat/widget/AppCompatImageView;

    .line 83
    move-object/from16 v11, p11

    iput-object v11, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->selectedView:Landroid/widget/LinearLayout;

    .line 84
    move-object/from16 v12, p12

    iput-object v12, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->share:Landroid/widget/LinearLayout;

    .line 85
    move-object/from16 v13, p13

    iput-object v13, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->shareIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 86
    move-object/from16 v14, p14

    iput-object v14, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->shareLayer:Landroid/widget/LinearLayout;

    .line 87
    move-object/from16 v15, p15

    iput-object v15, v0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->trafficText:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    const v1, 0x7f0a00db

    .line 118
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 119
    .local v2, "container":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_c

    .line 123
    move-object/from16 v19, v0

    check-cast v19, Lcom/google/android/material/card/MaterialCardView;

    .line 125
    .local v19, "content":Lcom/google/android/material/card/MaterialCardView;
    const v1, 0x7f0a00de

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/LinearLayout;

    .line 127
    .local v20, "contentLin":Landroid/widget/LinearLayout;
    if-eqz v20, :cond_b

    .line 131
    const v1, 0x7f0a0112

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroidx/appcompat/widget/AppCompatImageView;

    .line 133
    .local v21, "edit":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v21, :cond_a

    .line 137
    const v1, 0x7f0a021d

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 139
    .local v22, "profileAddress":Landroid/widget/TextView;
    if-eqz v22, :cond_9

    .line 143
    const v1, 0x7f0a021e

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 145
    .local v23, "profileName":Landroid/widget/TextView;
    if-eqz v23, :cond_8

    .line 149
    const v1, 0x7f0a021f

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/TextView;

    .line 151
    .local v24, "profileStatus":Landroid/widget/TextView;
    if-eqz v24, :cond_7

    .line 155
    const v1, 0x7f0a0220

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 157
    .local v25, "profileType":Landroid/widget/TextView;
    if-eqz v25, :cond_6

    .line 161
    const v1, 0x7f0a0229

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroidx/appcompat/widget/AppCompatImageView;

    .line 163
    .local v26, "remove":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v26, :cond_5

    .line 167
    const v1, 0x7f0a0261

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/LinearLayout;

    .line 169
    .local v27, "selectedView":Landroid/widget/LinearLayout;
    if-eqz v27, :cond_4

    .line 173
    const v1, 0x7f0a0264

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/LinearLayout;

    .line 175
    .local v28, "share":Landroid/widget/LinearLayout;
    if-eqz v28, :cond_3

    .line 179
    const v1, 0x7f0a0265

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroidx/appcompat/widget/AppCompatImageView;

    .line 181
    .local v29, "shareIcon":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v29, :cond_2

    .line 185
    const v1, 0x7f0a0266

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/LinearLayout;

    .line 187
    .local v30, "shareLayer":Landroid/widget/LinearLayout;
    if-eqz v30, :cond_1

    .line 191
    const v1, 0x7f0a02c1

    .line 192
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 193
    .local v31, "trafficText":Landroid/widget/TextView;
    if-eqz v31, :cond_0

    .line 197
    new-instance v32, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    move-object/from16 v3, v32

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v31

    invoke-direct/range {v3 .. v18}, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v32

    .line 194
    :cond_0
    goto :goto_0

    .line 188
    .end local v31    # "trafficText":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 182
    .end local v30    # "shareLayer":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 176
    .end local v29    # "shareIcon":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_3
    goto :goto_0

    .line 170
    .end local v28    # "share":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 164
    .end local v27    # "selectedView":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 158
    .end local v26    # "remove":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_6
    goto :goto_0

    .line 152
    .end local v25    # "profileType":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 146
    .end local v24    # "profileStatus":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 140
    .end local v23    # "profileName":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 134
    .end local v22    # "profileAddress":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 128
    .end local v21    # "edit":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_b
    goto :goto_0

    .line 120
    .end local v19    # "content":Lcom/google/android/material/card/MaterialCardView;
    .end local v20    # "contentLin":Landroid/widget/LinearLayout;
    :cond_c
    nop

    .line 201
    .end local v2    # "container":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;
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

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;
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

    .line 104
    const v0, 0x7f0d0054

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
