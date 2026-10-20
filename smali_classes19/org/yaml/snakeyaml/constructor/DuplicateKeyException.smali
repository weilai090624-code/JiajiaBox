.class public Lorg/yaml/snakeyaml/constructor/DuplicateKeyException;
.super Lorg/yaml/snakeyaml/constructor/ConstructorException;
.source "DuplicateKeyException.java"


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Object;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 2
    .param p1, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found duplicate key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "while constructing a mapping"

    invoke-direct {p0, v1, p1, v0, p3}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 25
    return-void
.end method
