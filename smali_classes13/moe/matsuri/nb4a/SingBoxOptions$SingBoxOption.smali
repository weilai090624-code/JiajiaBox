.class public Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.super Ljava/lang/Object;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingBoxOption"
.end annotation


# instance fields
.field public transient _hack_config_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public transient _hack_custom_config:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    .line 42
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 45
    # getter for: Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;
    invoke-static {}, Lmoe/matsuri/nb4a/SingBoxOptions;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    # getter for: Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;
    invoke-static {}, Lmoe/matsuri/nb4a/SingBoxOptions;->access$000()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
