.class public final Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;
.super Ljava/lang/Object;
.source "ProfileSettingsActivity.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileIdArg"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;",
        "Landroid/os/Parcelable;",
        "profileId",
        "",
        "groupId",
        "<init>",
        "(JJ)V",
        "getProfileId",
        "()J",
        "getGroupId",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final groupId:J

.field private final profileId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg$Creator;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "profileId"    # J
    .param p3, "groupId"    # J

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    return-void
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;JJILjava/lang/Object;)Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->copy(JJ)Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    return-wide v0
.end method

.method public final copy(JJ)Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;-><init>(JJ)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 66
    nop

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;

    iget-wide v3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGroupId()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    return-wide v0
.end method

.method public final getProfileId()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileIdArg(profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->profileId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method
