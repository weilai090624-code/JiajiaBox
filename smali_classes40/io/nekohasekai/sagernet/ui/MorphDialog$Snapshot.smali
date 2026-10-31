.class final Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;
.super Ljava/lang/Object;
.source "MorphDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/MorphDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Snapshot"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field h:I

.field parent:Landroid/app/Dialog;

.field view:Landroid/view/View;

.field w:I

.field x:I

.field y:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/MorphDialog$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;-><init>()V

    return-void
.end method
