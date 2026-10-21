.class final Landroidx/viewpager/widget/ViewPager$2;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->ease(F)F
    move-result p1
    return p1
.end method
