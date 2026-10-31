.class public final Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;
.super Ljava/lang/Object;
.source "DrawerLayoutGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lease"
.end annotation


# instance fields
.field private hold:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;


# direct methods
.method private constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;->hold:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;

    iget v0, p1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->users:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->users:I

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;-><init>(Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 33
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;->hold:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;

    if-nez v0, :cond_5

    goto :goto_13

    :cond_5
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Lease;->hold:Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;

    .line 36
    iget v1, v0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->users:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->users:I

    if-nez v1, :cond_13

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerLayoutGuard$Hold;->release()V

    :cond_13
    :goto_13
    return-void
.end method
