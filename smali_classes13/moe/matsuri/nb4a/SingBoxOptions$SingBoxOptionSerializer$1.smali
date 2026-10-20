.class Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer$1;
.super Ljava/lang/Object;
.source "SingBoxOptions.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;->serialize(Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;


# direct methods
.method constructor <init>(Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;)V
    .locals 0
    .param p1, "this$0"    # Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer$1;->this$0:Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOptionSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gson",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 77
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
