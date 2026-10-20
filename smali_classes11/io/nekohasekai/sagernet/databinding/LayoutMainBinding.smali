.class public final Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;
.super Ljava/lang/Object;
.source "LayoutMainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field public final fragmentHolder:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final jjNavButton:Lio/nekohasekai/sagernet/ui/JJNavButton;

.field public final navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field public final navGlassOverlay:Landroid/widget/FrameLayout;

.field public final navGlassPageHost:Landroid/widget/FrameLayout;

.field public final navLightContainer:Landroid/widget/FrameLayout;

.field public final navViewBlack:Lcom/google/android/material/navigation/NavigationView;

.field private final rootView:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method private constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lio/nekohasekai/sagernet/ui/JJNavButton;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "coordinator"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p4, "fragmentHolder"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p5, "jjNavButton"    # Lio/nekohasekai/sagernet/ui/JJNavButton;
    .param p6, "navGlassLight"    # Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .param p7, "navGlassOverlay"    # Landroid/widget/FrameLayout;
    .param p8, "navGlassPageHost"    # Landroid/widget/FrameLayout;
    .param p9, "navLightContainer"    # Landroid/widget/FrameLayout;
    .param p10, "navViewBlack"    # Lcom/google/android/material/navigation/NavigationView;
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
            "coordinator",
            "drawerLayout",
            "fragmentHolder",
            "jjNavButton",
            "navGlassLight",
            "navGlassOverlay",
            "navGlassPageHost",
            "navLightContainer",
            "navViewBlack"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 59
    iput-object p2, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 60
    iput-object p3, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 61
    iput-object p4, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->fragmentHolder:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 62
    iput-object p5, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->jjNavButton:Lio/nekohasekai/sagernet/ui/JJNavButton;

    .line 63
    iput-object p6, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 64
    iput-object p7, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    .line 65
    iput-object p8, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    .line 66
    iput-object p9, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    .line 67
    iput-object p10, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navViewBlack:Lcom/google/android/material/navigation/NavigationView;

    .line 68
    return-void
.end method

.method public static bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;
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

    const v1, 0x7f0a00e1

    .line 98
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 99
    .local v2, "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-eqz v2, :cond_7

    .line 103
    move-object v14, v0

    check-cast v14, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 105
    .local v14, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    const v1, 0x7f0a0136

    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 107
    .local v15, "fragmentHolder":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    if-eqz v15, :cond_6

    .line 111
    const v1, 0x7f0a0176

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lio/nekohasekai/sagernet/ui/JJNavButton;

    .line 113
    .local v16, "jjNavButton":Lio/nekohasekai/sagernet/ui/JJNavButton;
    if-eqz v16, :cond_5

    .line 117
    const v1, 0x7f0a01e0

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 119
    .local v17, "navGlassLight":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    if-eqz v17, :cond_4

    .line 123
    const v1, 0x7f0a01e1

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/FrameLayout;

    .line 125
    .local v18, "navGlassOverlay":Landroid/widget/FrameLayout;
    if-eqz v18, :cond_3

    .line 129
    const v1, 0x7f0a01e2

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/FrameLayout;

    .line 131
    .local v19, "navGlassPageHost":Landroid/widget/FrameLayout;
    if-eqz v19, :cond_2

    .line 135
    const v1, 0x7f0a01e5

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/FrameLayout;

    .line 137
    .local v20, "navLightContainer":Landroid/widget/FrameLayout;
    if-eqz v20, :cond_1

    .line 141
    const v1, 0x7f0a01ea

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/material/navigation/NavigationView;

    .line 143
    .local v21, "navViewBlack":Lcom/google/android/material/navigation/NavigationView;
    if-eqz v21, :cond_0

    .line 147
    new-instance v22, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-object v4, v0

    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lio/nekohasekai/sagernet/ui/JJNavButton;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/google/android/material/navigation/NavigationView;)V

    return-object v22

    .line 144
    :cond_0
    goto :goto_0

    .line 138
    .end local v21    # "navViewBlack":Lcom/google/android/material/navigation/NavigationView;
    :cond_1
    goto :goto_0

    .line 132
    .end local v20    # "navLightContainer":Landroid/widget/FrameLayout;
    :cond_2
    goto :goto_0

    .line 126
    .end local v19    # "navGlassPageHost":Landroid/widget/FrameLayout;
    :cond_3
    goto :goto_0

    .line 120
    .end local v18    # "navGlassOverlay":Landroid/widget/FrameLayout;
    :cond_4
    goto :goto_0

    .line 114
    .end local v17    # "navGlassLight":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    :cond_5
    goto :goto_0

    .line 108
    .end local v16    # "jjNavButton":Lio/nekohasekai/sagernet/ui/JJNavButton;
    :cond_6
    goto :goto_0

    .line 100
    .end local v14    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .end local v15    # "fragmentHolder":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :cond_7
    nop

    .line 151
    .end local v2    # "coordinator":Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;
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

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;
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
    const v0, 0x7f0d0050

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
    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->rootView:Landroidx/drawerlayout/widget/DrawerLayout;

    return-object v0
.end method
