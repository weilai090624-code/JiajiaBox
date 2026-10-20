.class public Lorg/ini4j/spi/WinEscapeTool;
.super Lorg/ini4j/spi/EscapeTool;
.source "WinEscapeTool.java"


# static fields
.field private static final ANSI_HEX_DIGITS:I = 0x2

.field private static final ANSI_OCTAL_DIGITS:I = 0x3

.field private static final INSTANCE:Lorg/ini4j/spi/WinEscapeTool;

.field private static final OCTAL_RADIX:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/ini4j/spi/WinEscapeTool;

    invoke-direct {v0}, Lorg/ini4j/spi/WinEscapeTool;-><init>()V

    sput-object v0, Lorg/ini4j/spi/WinEscapeTool;->INSTANCE:Lorg/ini4j/spi/WinEscapeTool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/ini4j/spi/EscapeTool;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/ini4j/spi/WinEscapeTool;
    .locals 1

    .line 27
    sget-object v0, Lorg/ini4j/spi/WinEscapeTool;->INSTANCE:Lorg/ini4j/spi/WinEscapeTool;

    return-object v0
.end method


# virtual methods
.method escapeBinary(Ljava/lang/StringBuilder;C)V
    .locals 2
    .param p1, "buff"    # Ljava/lang/StringBuilder;
    .param p2, "c"    # C

    .line 32
    const-string v0, "\\x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-object v0, Lorg/ini4j/spi/WinEscapeTool;->HEX:[C

    ushr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    sget-object v0, Lorg/ini4j/spi/WinEscapeTool;->HEX:[C

    and-int/lit8 v1, p2, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    return-void
.end method

.method unescapeBinary(Ljava/lang/StringBuilder;CLjava/lang/String;I)I
    .locals 4
    .param p1, "buff"    # Ljava/lang/StringBuilder;
    .param p2, "escapeType"    # C
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "index"    # I

    .line 39
    move v0, p4

    .line 41
    .local v0, "ret":I
    const/16 v1, 0x78

    if-ne p2, v1, :cond_0

    .line 45
    add-int/lit8 v1, p4, 0x2

    :try_start_0
    invoke-virtual {p3, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v0, p4, 0x2

    .line 51
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 50
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed \\xHH encoding."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 53
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_0
    const/16 v1, 0x6f

    if-ne p2, v1, :cond_1

    .line 57
    add-int/lit8 v1, p4, 0x3

    :try_start_1
    invoke-virtual {p3, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    add-int/lit8 v0, p4, 0x3

    .line 63
    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    .line 62
    .restart local v1    # "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed \\oOO encoding."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 66
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method
