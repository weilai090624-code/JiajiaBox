.class public final Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;
.super Ljava/lang/Object;
.source "DrawerMotion.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ease"
.end annotation


# instance fields
.field private final track:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    const v4, 0x3eb851ec    # 0.36f

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;->track:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    .line 32
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Ease;->track:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result p1

    return p1
.end method
