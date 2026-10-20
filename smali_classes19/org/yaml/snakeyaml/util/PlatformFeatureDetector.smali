.class public Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;
.super Ljava/lang/Object;
.source "PlatformFeatureDetector.java"


# instance fields
.field private isRunningOnAndroid:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;->isRunningOnAndroid:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public isRunningOnAndroid()Z
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;->isRunningOnAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 24
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Android Runtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;->isRunningOnAndroid:Ljava/lang/Boolean;

    .line 27
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/util/PlatformFeatureDetector;->isRunningOnAndroid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
