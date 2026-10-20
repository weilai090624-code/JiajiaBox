.class public Lmoe/matsuri/nb4a/SingBoxOptions$DNSFakeIPOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DNSFakeIPOptions"
.end annotation


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public inet4_range:Ljava/lang/String;

.field public inet6_range:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 360
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
