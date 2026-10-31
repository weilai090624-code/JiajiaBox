.class public final Lorg/yaml/snakeyaml/scanner/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final ALPHA_S:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

.field private static final FULL_LINEBR_S:Ljava/lang/String; = "\r\n\u0085\u2028\u2029"

.field public static final LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final LINEBR_S:Ljava/lang/String; = "\n\u0085\u2028\u2029"

.field public static final NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final NULL_BL_LINEBR_S:Ljava/lang/String; = " \u0000\r\n\u0085\u2028\u2029"

.field public static final NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

.field public static final NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final NULL_BL_T_LINEBR_S:Ljava/lang/String; = "\t \u0000\r\n\u0085\u2028\u2029"

.field private static final NULL_BL_T_S:Ljava/lang/String; = "\u0000 \t"

.field public static final NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final NULL_OR_LINEBR_S:Ljava/lang/String; = "\u0000\r\n\u0085\u2028\u2029"

.field public static final URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

.field private static final URI_CHARS_S:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_-;/?:@&=+$,_.!~*\'()[]%"


# instance fields
.field contains:[Z

.field private content:Ljava/lang/String;

.field noASCII:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 32
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\u0000\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 33
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, " \u0000\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 34
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\t \u0000\r\n\u0085\u2028\u2029"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 35
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "\u0000 \t"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 36
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_-;/?:@&=+$,_.!~*\'()[]%"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

    .line 38
    new-instance v0, Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-_"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "content"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x80

    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/Constant;->noASCII:Z

    .line 45
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2f

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 49
    .local v3, "c":I
    if-ge v3, v0, :cond_29

    .line 50
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    aput-boolean v4, v5, v3

    goto :goto_2c

    .line 52
    :cond_29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 47
    .end local v3    # "c":I
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 54
    .end local v2    # "i":I
    :cond_2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3d

    .line 55
    iput-boolean v4, p0, Lorg/yaml/snakeyaml/scanner/Constant;->noASCII:Z

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/Constant;->content:Ljava/lang/String;

    .line 58
    :cond_3d
    return-void
.end method


# virtual methods
.method public has(I)Z
    .registers 5
    .param p1, "c"    # I

    .line 61
    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/Constant;->contains:[Z

    aget-boolean v0, v0, p1

    goto :goto_1a

    :cond_9
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/Constant;->noASCII:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/Constant;->content:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public has(ILjava/lang/String;)Z
    .registers 6
    .param p1, "c"    # I
    .param p2, "additional"    # Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    :cond_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public hasNo(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 65
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasNo(ILjava/lang/String;)Z
    .registers 4
    .param p1, "c"    # I
    .param p2, "additional"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1, p2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
