.class public Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;
.super Ljava/lang/Object;
.source "SingBoxOptions.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingBoxOptionSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "src",
            "typeOfSrc",
            "context"
        }
    .end annotation

    .line 69
    check-cast p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;

    invoke-virtual {p0, p1, p2, p3}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;->serialize(Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .registers 8
    .param p1, "src"    # Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "typeOfSrc",
            "context"
        }
    .end annotation

    .line 73
    # getter for: Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;
    invoke-static {}, Lmoe/matsuri/nb4a/SingBoxOptions;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer$1;

    invoke-direct {v1, p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer$1;-><init>(Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;)V

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 83
    .local v0, "delegate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    instance-of v1, p1, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;

    if-eqz v1, :cond_21

    .line 84
    move-object v1, p1

    check-cast v1, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;

    invoke-virtual {v1}, Lmoe/matsuri/nb4a/SingBoxOptions$CustomSingBoxOption;->getBasicMap()Ljava/util/Map;

    move-result-object v1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_31

    .line 86
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_21
    # getter for: Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;
    invoke-static {}, Lmoe/matsuri/nb4a/SingBoxOptions;->access$000()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 88
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_31
    iget-object v2, p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    if-eqz v2, :cond_44

    iget-object v2, p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 89
    sget-object v2, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    iget-object v3, p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_config_map:Ljava/util/Map;

    invoke-virtual {v2, v1, v3}, Lmoe/matsuri/nb4a/utils/Util;->mergeMap(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 91
    :cond_44
    iget-object v2, p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_custom_config:Ljava/lang/String;

    if-eqz v2, :cond_57

    iget-object v2, p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_custom_config:Ljava/lang/String;

    invoke-static {v2}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 92
    sget-object v2, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    iget-object v3, p1, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;->_hack_custom_config:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lmoe/matsuri/nb4a/utils/Util;->mergeJSON(Ljava/util/Map;Ljava/lang/String;)V

    .line 94
    :cond_57
    # getter for: Lmoe/matsuri/nb4a/SingBoxOptions;->gsonSingbox:Lcom/google/gson/Gson;
    invoke-static {}, Lmoe/matsuri/nb4a/SingBoxOptions;->access$000()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    return-object v2
.end method
