.class public Lmoe/matsuri/nb4a/SingBoxOptions$InboundACMEOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboundACMEOptions"
.end annotation


# instance fields
.field public alternative_http_port:Ljava/lang/Integer;

.field public alternative_tls_port:Ljava/lang/Integer;

.field public data_directory:Ljava/lang/String;

.field public default_server_name:Ljava/lang/String;

.field public disable_http_challenge:Ljava/lang/Boolean;

.field public disable_tls_alpn_challenge:Ljava/lang/Boolean;

.field public domain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public email:Ljava/lang/String;

.field public external_account:Lmoe/matsuri/nb4a/SingBoxOptions$ACMEExternalAccountOptions;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1996
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
