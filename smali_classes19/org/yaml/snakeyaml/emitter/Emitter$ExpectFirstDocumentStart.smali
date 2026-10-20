.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectFirstDocumentStart"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 351
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Z)V

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;->expect()V

    .line 354
    return-void
.end method
