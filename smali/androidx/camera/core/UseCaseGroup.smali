.class public final Landroidx/camera/core/UseCaseGroup;
.super Ljava/lang/Object;
.source "UseCaseGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/UseCaseGroup$Builder;
    }
.end annotation


# instance fields
.field private final mUseCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPort:Landroidx/camera/core/ViewPort;


# direct methods
.method constructor <init>(Landroidx/camera/core/ViewPort;Ljava/util/List;)V
    .locals 0
    .param p1, "viewPort"    # Landroidx/camera/core/ViewPort;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewPort",
            "useCases"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ViewPort;",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "useCases":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/core/UseCase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/camera/core/UseCaseGroup;->mViewPort:Landroidx/camera/core/ViewPort;

    .line 46
    iput-object p2, p0, Landroidx/camera/core/UseCaseGroup;->mUseCases:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getUseCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/UseCase;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup;->mUseCases:Ljava/util/List;

    return-object v0
.end method

.method public getViewPort()Landroidx/camera/core/ViewPort;
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/camera/core/UseCaseGroup;->mViewPort:Landroidx/camera/core/ViewPort;

    return-object v0
.end method
