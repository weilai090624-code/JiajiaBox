.class Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;->open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 259
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->back(Landroid/app/Activity;)Z

    return-void
.end method
