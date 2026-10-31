.class public Lorg/yaml/snakeyaml/composer/ComposerException;
.super Lorg/yaml/snakeyaml/error/MarkedYAMLException;
.source "ComposerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1dc93dca656d7b4fL


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 5
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "problem"    # Ljava/lang/String;
    .param p4, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/yaml/snakeyaml/error/MarkedYAMLException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 26
    return-void
.end method
