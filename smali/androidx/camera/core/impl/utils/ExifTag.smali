.class Landroidx/camera/core/impl/utils/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "number",
            "format"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifTag;->name:Ljava/lang/String;

    .line 46
    iput p2, p0, Landroidx/camera/core/impl/utils/ExifTag;->number:I

    .line 47
    iput p3, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "number",
            "primaryFormat",
            "secondaryFormat"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifTag;->name:Ljava/lang/String;

    .line 54
    iput p2, p0, Landroidx/camera/core/impl/utils/ExifTag;->number:I

    .line 55
    iput p3, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    .line 56
    iput p4, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    .line 57
    return-void
.end method


# virtual methods
.method isFormatCompatible(I)Z
    .registers 5
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 61
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_40

    if-ne p1, v2, :cond_9

    goto :goto_40

    .line 63
    :cond_9
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    if-eq v0, p1, :cond_3f

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, p1, :cond_12

    goto :goto_3f

    .line 65
    :cond_12
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_1f

    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    .line 67
    return v1

    .line 68
    :cond_1f
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_29

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_2e

    :cond_29
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2e

    .line 70
    return v1

    .line 71
    :cond_2e
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_38

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_3d

    :cond_38
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    return v1

    .line 64
    :cond_3f
    :goto_3f
    return v1

    .line 62
    :cond_40
    :goto_40
    return v1
.end method
