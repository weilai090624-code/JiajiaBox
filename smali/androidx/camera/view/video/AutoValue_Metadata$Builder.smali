.class final Landroidx/camera/view/video/AutoValue_Metadata$Builder;
.super Landroidx/camera/view/video/Metadata$Builder;
.source "AutoValue_Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/video/AutoValue_Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private location:Landroid/location/Location;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/camera/view/video/Metadata$Builder;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public build()Landroidx/camera/view/video/Metadata;
    .locals 3

    .line 62
    new-instance v0, Landroidx/camera/view/video/AutoValue_Metadata;

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_Metadata$Builder;->location:Landroid/location/Location;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/view/video/AutoValue_Metadata;-><init>(Landroid/location/Location;Landroidx/camera/view/video/AutoValue_Metadata$1;)V

    return-object v0
.end method

.method public setLocation(Landroid/location/Location;)Landroidx/camera/view/video/Metadata$Builder;
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

    .line 57
    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_Metadata$Builder;->location:Landroid/location/Location;

    .line 58
    return-object p0
.end method
