.class public Lmoe/matsuri/nb4a/SingBoxOptions$DNSClientOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DNSClientOptions"
.end annotation


# instance fields
.field public disable_cache:Ljava/lang/Boolean;

.field public disable_expire:Ljava/lang/Boolean;

.field public independent_cache:Ljava/lang/Boolean;

.field public strategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
