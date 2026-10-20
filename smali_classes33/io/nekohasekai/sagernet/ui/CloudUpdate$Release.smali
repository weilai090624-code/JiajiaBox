.class Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;
.super Ljava/lang/Object;
.source "CloudUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/CloudUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Release"
.end annotation


# instance fields
.field code:J

.field name:Ljava/lang/String;

.field notes:Ljava/lang/String;

.field sha:Ljava/lang/String;

.field size:J

.field url:Ljava/net/URL;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/CloudUpdate$1;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;-><init>()V

    return-void
.end method
