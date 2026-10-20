.class public Lmoe/matsuri/nb4a/SingBoxOptions$DNSServerOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DNSServerOptions"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public address_fallback_delay:Ljava/lang/Long;

.field public address_resolver:Ljava/lang/String;

.field public address_strategy:Ljava/lang/String;

.field public detour:Ljava/lang/String;

.field public strategy:Ljava/lang/String;

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
