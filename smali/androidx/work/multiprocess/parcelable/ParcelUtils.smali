.class public final Landroidx/work/multiprocess/parcelable/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static readBooleanValue(Landroid/os/Parcel;)Z
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 38
    .local v0, "value":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static writeBooleanValue(Landroid/os/Parcel;Z)V
    .locals 0
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    return-void
.end method
