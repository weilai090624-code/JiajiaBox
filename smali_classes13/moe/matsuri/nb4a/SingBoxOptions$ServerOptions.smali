.class public Lmoe/matsuri/nb4a/SingBoxOptions$ServerOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerOptions"
.end annotation


# instance fields
.field public server:Ljava/lang/String;

.field public server_port:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 917
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
