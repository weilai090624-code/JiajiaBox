.class public abstract Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleDrawerListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .registers 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 320
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .registers 2
    .param p1, "drawerView"    # Landroid/view/View;

    .line 316
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 312
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .registers 2
    .param p1, "newState"    # I

    .line 324
    return-void
.end method
