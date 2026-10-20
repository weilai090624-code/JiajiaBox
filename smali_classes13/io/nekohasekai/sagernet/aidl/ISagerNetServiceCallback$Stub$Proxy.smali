.class Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISagerNetServiceCallback.java"

# interfaces
.implements Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 136
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cbSelectorUpdate(J)V
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 228
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-object v1, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 231
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 232
    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbSelectorUpdate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-void

    .line 237
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v1
.end method

.method public cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .locals 5
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p1, v0, v2}, Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    :goto_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 193
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 195
    return-void

    .line 199
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    nop

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 200
    throw v1
.end method

.method public cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .locals 5
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/TrafficData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 206
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {p1, v0, v2}, Lio/nekohasekai/sagernet/aidl/TrafficData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    :goto_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 215
    .local v1, "_status":Z
    if-nez v1, :cond_1

    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 216
    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    return-void

    .line 221
    .end local v1    # "_status":Z
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 143
    const-string v0, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    return-object v0
.end method

.method public missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profileName",
            "pluginName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 171
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    return-void

    .line 177
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v1
.end method

.method public stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "profileName",
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "io.nekohasekai.sagernet.aidl.ISagerNetServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 154
    .local v1, "_status":Z
    if-nez v1, :cond_0

    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 155
    invoke-static {}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback$Stub;->getDefaultImpl()Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lio/nekohasekai/sagernet/aidl/ISagerNetServiceCallback;->stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    return-void

    .line 160
    .end local v1    # "_status":Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw v1
.end method
