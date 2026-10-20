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
    .locals 1
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
    .locals 0
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
    .locals 3
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

    if-eq v0, v2, :cond_9

    if-ne p1, v2, :cond_0

    goto :goto_2

    .line 63
    :cond_0
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    if-eq v0, p1, :cond_8

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, p1, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 67
    return v1

    .line 68
    :cond_3
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_5

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 70
    return v1

    .line 71
    :cond_5
    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    iget v0, p0, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_7

    :cond_6
    const/16 v0, 0xb

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 64
    :cond_8
    :goto_1
    return v1

    .line 62
    :cond_9
    :goto_2
    return v1
.end method
