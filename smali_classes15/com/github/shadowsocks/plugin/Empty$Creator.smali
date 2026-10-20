.class public final Lcom/github/shadowsocks/plugin/Empty$Creator;
.super Ljava/lang/Object;
.source "Utils.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/plugin/Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/github/shadowsocks/plugin/Empty;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/github/shadowsocks/plugin/Empty;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    new-instance v0, Lcom/github/shadowsocks/plugin/Empty;

    invoke-direct {v0}, Lcom/github/shadowsocks/plugin/Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/plugin/Empty$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/github/shadowsocks/plugin/Empty;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/github/shadowsocks/plugin/Empty;
    .locals 1

    new-array v0, p1, [Lcom/github/shadowsocks/plugin/Empty;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/plugin/Empty$Creator;->newArray(I)[Lcom/github/shadowsocks/plugin/Empty;

    move-result-object v0

    return-object v0
.end method
