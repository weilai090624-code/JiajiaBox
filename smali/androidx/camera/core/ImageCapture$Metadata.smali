.class public final Landroidx/camera/core/ImageCapture$Metadata;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation


# instance fields
.field private mIsReversedHorizontal:Z

.field private mIsReversedHorizontalSet:Z

.field private mIsReversedVertical:Z

.field private mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2002
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontalSet:Z

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 2074
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isReversedHorizontal()Z
    .locals 1

    .line 2023
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    return v0
.end method

.method public isReversedHorizontalSet()Z
    .locals 1

    .line 2036
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontalSet:Z

    return v0
.end method

.method public isReversedVertical()Z
    .locals 1

    .line 2055
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 2083
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    .line 2084
    return-void
.end method

.method public setReversedHorizontal(Z)V
    .locals 1
    .param p1, "isReversedHorizontal"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReversedHorizontal"
        }
    .end annotation

    .line 2045
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    .line 2046
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontalSet:Z

    .line 2047
    return-void
.end method

.method public setReversedVertical(Z)V
    .locals 0
    .param p1, "isReversedVertical"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReversedVertical"
        }
    .end annotation

    .line 2064
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    .line 2065
    return-void
.end method
