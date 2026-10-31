.class public Lorg/yaml/snakeyaml/scanner/ScannerException;
.super Lorg/yaml/snakeyaml/error/MarkedYAMLException;
.source "ScannerException.java"


# static fields
.field private static final serialVersionUID:J = 0x425e1e513e4cbc02L


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V
    .registers 11
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "problem"    # Ljava/lang/String;
    .param p4, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Ljava/lang/String;
    .param p2, "contextMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "problem"    # Ljava/lang/String;
    .param p4, "problemMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "note"    # Ljava/lang/String;

    .line 47
    invoke-direct/range {p0 .. p5}, Lorg/yaml/snakeyaml/error/MarkedYAMLException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;)V

    .line 48
    return-void
.end method
