.class Landroidx/appcompat/app/AppLocalesMetadataHolderService$Api24Impl;
.super Ljava/lang/Object;
.source "AppLocalesMetadataHolderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppLocalesMetadataHolderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDisabledComponentFlag()I
    .registers 1

    .line 77
    const/16 v0, 0x200

    return v0
.end method
