.class public Lmoe/matsuri/nb4a/SingBoxOptions$OutboundRealityOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutboundRealityOptions"
.end annotation


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public public_key:Ljava/lang/String;

.field public short_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1986
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
