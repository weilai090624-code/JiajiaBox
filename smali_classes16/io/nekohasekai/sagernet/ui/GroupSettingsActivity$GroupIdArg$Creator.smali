.class public final Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg$Creator;
.super Ljava/lang/Object;
.source "GroupSettingsActivity.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg$Creator;->createFromParcel(Landroid/os/Parcel;)Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;
    .locals 1

    new-array v0, p1, [Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg$Creator;->newArray(I)[Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;

    move-result-object v0

    return-object v0
.end method
