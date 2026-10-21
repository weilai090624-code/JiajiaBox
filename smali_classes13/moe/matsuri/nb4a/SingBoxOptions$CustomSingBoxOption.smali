.class public final Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomSingBoxOption"
.end annotation


# instance fields
.field public transient config:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    .line 56
    iput-object p1, p0, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;->config:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getBasicMap()Ljava/util/Map;
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

    .line 60
    # getter for: Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;
    invoke-static {}, Lmoe/matsuri/nb4a/SingBoxOptions;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;->config:Ljava/lang/String;

    const-class v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 61
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_16

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 64
    :cond_16
    return-object v0
.end method
