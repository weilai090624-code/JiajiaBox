.class Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$Api17Impl;
.super Ljava/lang/Object;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    return-void
.end method

.method static getLayoutDirection(Landroid/content/res/Configuration;)I
    .registers 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .line 255
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    return v0
.end method
