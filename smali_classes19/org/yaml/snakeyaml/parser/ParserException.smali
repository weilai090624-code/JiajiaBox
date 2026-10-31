.class public Lorg/yaml/snakeyaml/parser/ParserException;
.super Lorg/yaml/snakeyaml/error/MarkedYAMLException;
.source "ParserException.java"


# static fields
.field private static final serialVersionUID:J = -0x209a39e30308ba56L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 12
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "problem"    # Ljava/lang/String;
    .param p4, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 42
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/MarkedYAMLException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method
