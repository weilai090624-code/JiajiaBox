.class final Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/google/gson/TypeAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final constantToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nameToConstant:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 780
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p1, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 777
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    .line 785
    :try_start_11
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;-><init>(Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 800
    .local v0, "constantFields":[Ljava/lang/reflect/Field;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_5e

    aget-object v4, v0, v3

    .line 802
    .local v4, "constantField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Enum;

    .line 803
    .local v5, "constant":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, "name":Ljava/lang/String;
    const-class v7, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/google/gson/annotations/SerializedName;

    .line 805
    .local v7, "annotation":Lcom/google/gson/annotations/SerializedName;
    if-eqz v7, :cond_50

    .line 806
    invoke-interface {v7}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 807
    invoke-interface {v7}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_43
    if-ge v10, v9, :cond_50

    aget-object v11, v8, v10

    .line 808
    .local v11, "alternate":Ljava/lang/String;
    iget-object v12, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v12, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    nop

    .end local v11    # "alternate":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 811
    :cond_50
    iget-object v8, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-interface {v8, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    iget-object v8, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_5a} :catch_60

    .line 800
    nop

    .end local v4    # "constantField":Ljava/lang/reflect/Field;
    .end local v5    # "constant":Ljava/lang/Enum;, "TT;"
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "annotation":Lcom/google/gson/annotations/SerializedName;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 816
    .end local v0    # "constantFields":[Ljava/lang/reflect/Field;
    :cond_5e
    nop

    .line 817
    return-void

    .line 814
    :catch_60
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;
    .registers 4
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_d

    .line 820
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 821
    const/4 v0, 0x0

    return-object v0

    .line 823
    :cond_d
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->nameToConstant:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V
    .registers 4
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Enum;, "TT;"
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->constantToName:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_c
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 828
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    .local p0, "this":Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;, "Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter<TT;>;"
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Enum;)V

    return-void
.end method
