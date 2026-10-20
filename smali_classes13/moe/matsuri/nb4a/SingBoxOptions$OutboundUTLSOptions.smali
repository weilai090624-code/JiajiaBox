.class public Lmoe/matsuri/nb4a/SingBoxOptions$OutboundUTLSOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutboundUTLSOptions"
.end annotation


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public fingerprint:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1978
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
