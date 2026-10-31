.class public Lorg/yaml/snakeyaml/serializer/SerializerException;
.super Lorg/yaml/snakeyaml/error/YAMLException;
.source "SerializerException.java"


# static fields
.field private static final serialVersionUID:J = 0x2489027e080c1eb1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
