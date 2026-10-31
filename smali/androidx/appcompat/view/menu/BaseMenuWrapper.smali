.class abstract Landroidx/appcompat/view/menu/BaseMenuWrapper;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/core/internal/view/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Landroidx/core/internal/view/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .registers 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 39
    instance-of v0, p1, Landroidx/core/internal/view/SupportMenuItem;

    if-eqz v0, :cond_2a

    .line 40
    move-object v0, p1

    check-cast v0, Landroidx/core/internal/view/SupportMenuItem;

    .line 43
    .local v0, "supportMenuItem":Landroidx/core/internal/view/SupportMenuItem;
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    if-nez v1, :cond_12

    .line 44
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    .line 48
    :cond_12
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 50
    .local v1, "wrappedItem":Landroid/view/MenuItem;
    if-nez v1, :cond_29

    .line 52
    new-instance v2, Landroidx/appcompat/view/menu/MenuItemWrapperICS;

    iget-object v3, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroidx/appcompat/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportMenuItem;)V

    move-object v1, v2

    .line 53
    iget-object v2, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_29
    return-object v1

    .line 58
    .end local v0    # "supportMenuItem":Landroidx/core/internal/view/SupportMenuItem;
    .end local v1    # "wrappedItem":Landroid/view/MenuItem;
    :cond_2a
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .registers 6
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 62
    instance-of v0, p1, Landroidx/core/internal/view/SupportSubMenu;

    if-eqz v0, :cond_2a

    .line 63
    move-object v0, p1

    check-cast v0, Landroidx/core/internal/view/SupportSubMenu;

    .line 66
    .local v0, "supportSubMenu":Landroidx/core/internal/view/SupportSubMenu;
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    if-nez v1, :cond_12

    .line 67
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    .line 70
    :cond_12
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    .line 72
    .local v1, "wrappedMenu":Landroid/view/SubMenu;
    if-nez v1, :cond_29

    .line 73
    new-instance v2, Landroidx/appcompat/view/menu/SubMenuWrapperICS;

    iget-object v3, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroidx/appcompat/view/menu/SubMenuWrapperICS;-><init>(Landroid/content/Context;Landroidx/core/internal/view/SupportSubMenu;)V

    move-object v1, v2

    .line 74
    iget-object v2, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_29
    return-object v1

    .line 78
    .end local v0    # "supportSubMenu":Landroidx/core/internal/view/SupportSubMenu;
    .end local v1    # "wrappedMenu":Landroid/view/SubMenu;
    :cond_2a
    return-object p1
.end method

.method final internalClear()V
    .registers 2

    .line 83
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 86
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_12

    .line 87
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mSubMenus:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 89
    :cond_12
    return-void
.end method

.method final internalRemoveGroup(I)V
    .registers 4
    .param p1, "groupId"    # I

    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_5

    .line 93
    return-void

    .line 95
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 96
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_23

    .line 97
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 98
    add-int/lit8 v0, v0, -0x1

    .line 95
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 101
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method final internalRemoveItem(I)V
    .registers 4
    .param p1, "id"    # I

    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_5

    .line 105
    return-void

    .line 107
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 108
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/internal/view/SupportMenuItem;

    invoke-interface {v1}, Landroidx/core/internal/view/SupportMenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_22

    .line 109
    iget-object v1, p0, Landroidx/appcompat/view/menu/BaseMenuWrapper;->mMenuItems:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 110
    goto :goto_25

    .line 107
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 113
    .end local v0    # "i":I
    :cond_25
    :goto_25
    return-void
.end method
