.class public Lmoe/matsuri/nb4a/SingBoxOptions$ACMEExternalAccountOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACMEExternalAccountOptions"
.end annotation


# instance fields
.field public key_id:Ljava/lang/String;

.field public mac_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2021
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
