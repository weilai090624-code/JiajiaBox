.class public Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "BlowfishSerializer.java"


# static fields
.field private static keySpec:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field private final serializer:Lcom/esotericsoftware/kryo/Serializer;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Serializer;[B)V
    .locals 2
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .param p2, "key"    # [B

    .line 41
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    .line 43
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "Blowfish"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 44
    return-void
.end method

.method private static getCipher(I)Ljavax/crypto/Cipher;
    .locals 2
    .param p0, "mode"    # I

    .line 75
    :try_start_0
    const-string v0, "Blowfish"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 76
    .local v0, "cipher":Ljavax/crypto/Cipher;
    sget-object v1, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object v0

    .line 78
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "type"    # Ljava/lang/Class;

    .line 64
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 65
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 66
    .local v1, "cipherInput":Ljavax/crypto/CipherInputStream;
    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    new-instance v3, Lcom/esotericsoftware/kryo/io/Input;

    const/16 v4, 0x100

    invoke-direct {v3, v1, v4}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, p1, v3, p3}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "object"    # Ljava/lang/Object;

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->getCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 48
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 49
    .local v1, "cipherStream":Ljavax/crypto/CipherOutputStream;
    new-instance v2, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer$1;

    const/16 v3, 0x100

    invoke-direct {v2, p0, v1, v3}, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer$1;-><init>(Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;Ljava/io/OutputStream;I)V

    .line 54
    .local v2, "cipherOutput":Lcom/esotericsoftware/kryo/io/Output;
    iget-object v3, p0, Lcom/esotericsoftware/kryo/serializers/BlowfishSerializer;->serializer:Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v3, p1, v2, p3}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/io/Output;->flush()V

    .line 57
    :try_start_0
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v3

    .line 59
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
