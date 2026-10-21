.class public final Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;
.super Ljava/lang/Object;
.source "DrawerWorkGate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerWorkGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lease"
.end annotation


# instance fields
.field private final lease:Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;

.field private final state:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;


# direct methods
.method private constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->state:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->lease:Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;Lio/nekohasekai/sagernet/ui/DrawerWorkGate$1;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;-><init>(Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 29
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->lease:Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/MotionWorkQueue$Lease;->close()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$Lease;->state:Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DrawerWorkGate$State;->movementChanged()V

    return-void
.end method
