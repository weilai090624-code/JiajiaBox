.class Landroidx/exifinterface/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExifTag"
.end annotation


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

    .line 3310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3311
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3312
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3313
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3314
    const/4 v0, -0x1

    iput v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 3315
    return-void
.end method

.method constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    .line 3318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3319
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 3320
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 3321
    iput p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3322
    iput p4, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    .line 3323
    return-void
.end method


# virtual methods
.method isFormatCompatible(I)Z
    .registers 5
    .param p1, "format"    # I

    .line 3327
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_40

    if-ne p1, v2, :cond_9

    goto :goto_40

    .line 3329
    :cond_9
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v0, p1, :cond_3f

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, p1, :cond_12

    goto :goto_3f

    .line 3331
    :cond_12
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_1f

    :cond_1b
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    .line 3333
    return v1

    .line 3334
    :cond_1f
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/16 v2, 0x9

    if-eq v0, v2, :cond_29

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_2e

    :cond_29
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2e

    .line 3336
    return v1

    .line 3337
    :cond_2e
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/16 v2, 0xc

    if-eq v0, v2, :cond_38

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v0, v2, :cond_3d

    :cond_38
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3d

    .line 3339
    return v1

    .line 3341
    :cond_3d
    const/4 v0, 0x0

    return v0

    .line 3330
    :cond_3f
    :goto_3f
    return v1

    .line 3328
    :cond_40
    :goto_40
    return v1
.end method
