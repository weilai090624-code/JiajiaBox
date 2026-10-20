.class public abstract Landroidx/camera/view/video/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/video/Metadata$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static builder()Landroidx/camera/view/video/Metadata$Builder;
    .locals 1

    .line 42
    new-instance v0, Landroidx/camera/view/video/AutoValue_Metadata$Builder;

    invoke-direct {v0}, Landroidx/camera/view/video/AutoValue_Metadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getLocation()Landroid/location/Location;
.end method
