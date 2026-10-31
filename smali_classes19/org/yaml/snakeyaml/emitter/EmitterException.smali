.class public Lorg/yaml/snakeyaml/emitter/EmitterException;
.super Lorg/yaml/snakeyaml/error/YAMLException;
.source "EmitterException.java"


# static fields
.field private static final serialVersionUID:J = -0x72e8b7d1867c4544L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
