.class public Lorg/ini4j/InvalidFileFormatException;
.super Ljava/io/IOException;
.source "InvalidFileFormatException.java"


# static fields
.field private static final serialVersionUID:J = -0x3c6eb4ef950da995L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method
