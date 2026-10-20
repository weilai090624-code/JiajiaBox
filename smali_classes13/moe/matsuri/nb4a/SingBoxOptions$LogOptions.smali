.class public Lmoe/matsuri/nb4a/SingBoxOptions$LogOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogOptions"
.end annotation


# instance fields
.field public disabled:Ljava/lang/Boolean;

.field public level:Ljava/lang/String;

.field public output:Ljava/lang/String;

.field public timestamp:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
