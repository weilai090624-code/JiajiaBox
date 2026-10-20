.class public Lorg/yaml/snakeyaml/error/MissingEnvironmentVariableException;
.super Lorg/yaml/snakeyaml/error/YAMLException;
.source "MissingEnvironmentVariableException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
