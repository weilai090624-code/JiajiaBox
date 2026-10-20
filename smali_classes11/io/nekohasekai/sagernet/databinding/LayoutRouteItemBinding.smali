.class public final Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;
.super Ljava/lang/Object;
.source "LayoutRouteItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final container:Landroid/widget/LinearLayout;

.field public final content:Lcom/google/android/material/card/MaterialCardView;

.field public final contentLin:Landroid/widget/LinearLayout;

.field public final edit:Landroidx/appcompat/widget/AppCompatImageView;

.field public final enable:Landroidx/appcompat/widget/SwitchCompat;

.field public final profileName:Landroid/widget/TextView;

.field public final profileType:Landroid/widget/TextView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final routeOutbound:Landroid/widget/TextView;

.field public final share:Landroid/widget/LinearLayout;

.field public final shareIcon:Landroidx/appcompat/widget/AppCompatImageView;

.field public final shareLayer:Landroid/widget/LinearLayout;

.field public final subscription:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0
    .param p1, "rootView"    # Lcom/google/android/material/card/MaterialCardView;
    .param p2, "container"    # Landroid/widget/LinearLayout;
    .param p3, "content"    # Lcom/google/android/material/card/MaterialCardView;
    .param p4, "contentLin"    # Landroid/widget/LinearLayout;
    .param p5, "edit"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p6, "enable"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p7, "profileName"    # Landroid/widget/TextView;
    .param p8, "profileType"    # Landroid/widget/TextView;
    .param p9, "routeOutbound"    # Landroid/widget/TextView;
    .param p10, "share"    # Landroid/widget/LinearLayout;
    .param p11, "shareIcon"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p12, "shareLayer"    # Landroid/widget/LinearLayout;
    .param p13, "subscription"    # Landroidx/appcompat/widget/AppCompatImageView;
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
            0x0
        }
        names = {
            "rootView",
            "container",
            "content",
            "contentLin",
            "edit",
            "enable",
            "profileName",
            "profileType",
            "routeOutbound",
            "share",
            "shareIcon",
            "shareLayer",
            "subscription"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    .line 69
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->container:Landroid/widget/LinearLayout;

    .line 70
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->content:Lcom/google/android/material/card/MaterialCardView;

    .line 71
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->contentLin:Landroid/widget/LinearLayout;

    .line 72
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->edit:Landroidx/appcompat/widget/AppCompatImageView;

    .line 73
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->enable:Landroidx/appcompat/widget/SwitchCompat;

    .line 74
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->profileName:Landroid/widget/TextView;

    .line 75
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->profileType:Landroid/widget/TextView;

    .line 76
    iput-object p9, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->routeOutbound:Landroid/widget/TextView;

    .line 77
    iput-object p10, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->share:Landroid/widget/LinearLayout;

    .line 78
    iput-object p11, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->shareIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 79
    iput-object p12, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->shareLayer:Landroid/widget/LinearLayout;

    .line 80
    iput-object p13, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->subscription:Landroidx/appcompat/widget/AppCompatImageView;

    .line 81
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;
    .locals 29
    .param p0, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 110
    move-object/from16 v0, p0

    const v1, 0x7f0a00db

    .line 111
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 112
    .local v2, "container":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_a

    .line 116
    move-object/from16 v17, v0

    check-cast v17, Lcom/google/android/material/card/MaterialCardView;

    .line 118
    .local v17, "content":Lcom/google/android/material/card/MaterialCardView;
    const v1, 0x7f0a00de

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    .line 120
    .local v18, "contentLin":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_9

    .line 124
    const v1, 0x7f0a0112

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroidx/appcompat/widget/AppCompatImageView;

    .line 126
    .local v19, "edit":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v19, :cond_8

    .line 130
    const v1, 0x7f0a011a

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroidx/appcompat/widget/SwitchCompat;

    .line 132
    .local v20, "enable":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v20, :cond_7

    .line 136
    const v1, 0x7f0a021e

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 138
    .local v21, "profileName":Landroid/widget/TextView;
    if-eqz v21, :cond_6

    .line 142
    const v1, 0x7f0a0220

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 144
    .local v22, "profileType":Landroid/widget/TextView;
    if-eqz v22, :cond_5

    .line 148
    const v1, 0x7f0a0233

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 150
    .local v23, "routeOutbound":Landroid/widget/TextView;
    if-eqz v23, :cond_4

    .line 154
    const v1, 0x7f0a0264

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/LinearLayout;

    .line 156
    .local v24, "share":Landroid/widget/LinearLayout;
    if-eqz v24, :cond_3

    .line 160
    const v1, 0x7f0a0265

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroidx/appcompat/widget/AppCompatImageView;

    .line 162
    .local v25, "shareIcon":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v25, :cond_2

    .line 166
    const v1, 0x7f0a0266

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/LinearLayout;

    .line 168
    .local v26, "shareLayer":Landroid/widget/LinearLayout;
    if-eqz v26, :cond_1

    .line 172
    const v1, 0x7f0a0291

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroidx/appcompat/widget/AppCompatImageView;

    .line 174
    .local v27, "subscription":Landroidx/appcompat/widget/AppCompatImageView;
    if-eqz v27, :cond_0

    .line 178
    new-instance v28, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/card/MaterialCardView;

    move-object/from16 v3, v28

    move-object v5, v2

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    invoke-direct/range {v3 .. v16}, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;)V

    return-object v28

    .line 175
    :cond_0
    goto :goto_0

    .line 169
    .end local v27    # "subscription":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_1
    goto :goto_0

    .line 163
    .end local v26    # "shareLayer":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 157
    .end local v25    # "shareIcon":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_3
    goto :goto_0

    .line 151
    .end local v24    # "share":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 145
    .end local v23    # "routeOutbound":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 139
    .end local v22    # "profileType":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 133
    .end local v21    # "profileName":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 127
    .end local v20    # "enable":Landroidx/appcompat/widget/SwitchCompat;
    :cond_8
    goto :goto_0

    .line 121
    .end local v19    # "edit":Landroidx/appcompat/widget/AppCompatImageView;
    :cond_9
    goto :goto_0

    .line 113
    .end local v17    # "content":Lcom/google/android/material/card/MaterialCardView;
    .end local v18    # "contentLin":Landroid/widget/LinearLayout;
    :cond_a
    nop

    .line 182
    .end local v2    # "container":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;
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

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;
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

    .line 97
    const v0, 0x7f0d0059

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object v0
.end method
