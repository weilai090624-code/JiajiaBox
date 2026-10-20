.class public final Landroidx/camera/core/ViewPort;
.super Ljava/lang/Object;
.source "ViewPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ViewPort$Builder;,
        Landroidx/camera/core/ViewPort$ScaleType;,
        Landroidx/camera/core/ViewPort$LayoutDirection;
    }
.end annotation


# static fields
.field public static final FILL_CENTER:I = 0x1

.field public static final FILL_END:I = 0x2

.field public static final FILL_START:I = 0x0

.field public static final FIT:I = 0x3


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mLayoutDirection:I

.field private mRotation:I

.field private mScaleType:I


# direct methods
.method constructor <init>(ILandroid/util/Rational;II)V
    .locals 0
    .param p1, "scaleType"    # I
    .param p2, "aspectRatio"    # Landroid/util/Rational;
    .param p3, "rotation"    # I
    .param p4, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleType",
            "aspectRatio",
            "rotation",
            "layoutDirection"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Landroidx/camera/core/ViewPort;->mScaleType:I

    .line 163
    iput-object p2, p0, Landroidx/camera/core/ViewPort;->mAspectRatio:Landroid/util/Rational;

    .line 164
    iput p3, p0, Landroidx/camera/core/ViewPort;->mRotation:I

    .line 165
    iput p4, p0, Landroidx/camera/core/ViewPort;->mLayoutDirection:I

    .line 166
    return-void
.end method


# virtual methods
.method public getAspectRatio()Landroid/util/Rational;
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/camera/core/ViewPort;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 200
    iget v0, p0, Landroidx/camera/core/ViewPort;->mLayoutDirection:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 181
    iget v0, p0, Landroidx/camera/core/ViewPort;->mRotation:I

    return v0
.end method

.method public getScaleType()I
    .locals 1

    .line 189
    iget v0, p0, Landroidx/camera/core/ViewPort;->mScaleType:I

    return v0
.end method
