.class final Lio/nekohasekai/sagernet/ui/RosePalette$SwitchApi;
.super Ljava/lang/Object;
.source "RosePalette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/RosePalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchApi"
.end annotation


# instance fields
.field final setThumb:Ljava/lang/reflect/Method;

.field final setTrack:Ljava/lang/reflect/Method;

.field final thumb:Ljava/lang/reflect/Method;

.field final track:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v1, "getThumbTintList"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$SwitchApi;->thumb:Ljava/lang/reflect/Method;

    new-array v1, v0, [Ljava/lang/Class;

    const-string v1, "getTrackTintList"

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$SwitchApi;->track:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/ColorStateList;

    aput-object v3, v2, v0

    const-string v3, "setThumbTintList"

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/RosePalette$SwitchApi;->setThumb:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/res/ColorStateList;

    aput-object v2, v1, v0

    const-string v0, "setTrackTintList"

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RosePalette$SwitchApi;->setTrack:Ljava/lang/reflect/Method;

    return-void
.end method
