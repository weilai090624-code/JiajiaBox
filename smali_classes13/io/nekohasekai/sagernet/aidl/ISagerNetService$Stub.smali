.class public abstract Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;
.super Landroid/os/Binder;
.source "ISagerNetService.java"

# interfaces
.implements Lio/nekohasekai/sagernet/aidl/ISagerNetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/aidl/ISagerNetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.nekohasekai.sagernet.aidl.ISagerNetService"

.field static final TRANSACTION_getProfileName:I = 0x2

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_unregisterCallback:I = 0x4

.field static final TRANSACTION_urlTest:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetService"

    invoke-virtual {p0, p0, v0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    return-object v1

    .line 55
    :cond_1
    new-instance v1, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub$Proxy;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    .locals 1

    .line 246
    sget-object v0, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub$Proxy;->sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    return-object v0
.end method

.method public static setDefaultImpl(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)Z
    .locals 1
    .param p0, "impl"    # Lio/nekohasekai/sagernet/aidl/ISagerNetService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 239
    sget-object v0, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub$Proxy;->sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 240
    sput-object p0, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub$Proxy;->sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    .line 241
    const/4 v0, 0x1

    return v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetService"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 108
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->urlTest()I

    move-result v2

    .line 110
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v1

    .line 100
    .end local v2    # "_result":I
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    .line 103
    .local v2, "_arg0":Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->unregisterCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)V

    .line 104
    return v1

    .line 89
    .end local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    .line 93
    .restart local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->registerCallback(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;I)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    return v1

    .line 81
    .end local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    .end local v3    # "_arg1":I
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->getProfileName()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v1

    .line 73
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService$Stub;->getState()I

    move-result v2

    .line 75
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
