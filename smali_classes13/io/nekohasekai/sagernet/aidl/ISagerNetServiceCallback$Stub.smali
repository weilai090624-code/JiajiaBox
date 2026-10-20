.class public abstract Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISagerNetServiceCallback.java"

# interfaces
.implements Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

.field static final TRANSACTION_cbSelectorUpdate:I = 0x5

.field static final TRANSACTION_cbSpeedUpdate:I = 0x3

.field static final TRANSACTION_cbTrafficUpdate:I = 0x4

.field static final TRANSACTION_missingPlugin:I = 0x2

.field static final TRANSACTION_stateChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-virtual {p0, p0, v0}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
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

    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    if-eqz v1, :cond_1

    .line 50
    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    return-object v1

    .line 52
    :cond_1
    new-instance v1, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    .locals 1

    .line 255
    sget-object v0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;)Z
    .locals 1
    .param p0, "impl"    # Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 248
    sget-object v0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 249
    sput-object p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 56
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    .line 60
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    .line 61
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 65
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return v1

    .line 118
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 121
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->cbSelectorUpdate(J)V

    .line 122
    return v1

    .line 105
    .end local v2    # "_arg0":J
    :sswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lio/nekohasekai/sagernet/aidl/TrafficData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/aidl/TrafficData;

    .local v2, "_arg0":Lio/nekohasekai/sagernet/aidl/TrafficData;
    goto :goto_0

    .line 111
    .end local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/TrafficData;
    :cond_0
    const/4 v2, 0x0

    .line 113
    .restart local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/TrafficData;
    :goto_0
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V

    .line 114
    return v1

    .line 92
    .end local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/TrafficData;
    :sswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    sget-object v2, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    .local v2, "_arg0":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    goto :goto_1

    .line 98
    .end local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    :cond_1
    const/4 v2, 0x0

    .line 100
    .restart local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    :goto_1
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    .line 101
    return v1

    .line 82
    .end local v2    # "_arg0":Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    :sswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->missingPlugin(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return v1

    .line 70
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->stateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
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
