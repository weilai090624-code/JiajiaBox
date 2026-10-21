.class final Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final history:Lio/nekohasekai/sagernet/ui/DrawerHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/ui/DrawerHistory<",
            "Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerHistory;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/DrawerHistory;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;->history:Lio/nekohasekai/sagernet/ui/DrawerHistory;

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;)V
    .registers 2

    .line 72
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;-><init>()V

    return-void
.end method
