.class final Lcom/google/common/primitives/ParseRequest;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field final radix:I

.field final rawValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "rawValue"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/google/common/primitives/ParseRequest;->radix:I

    .line 29
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;
    .registers 5
    .param p0, "stringValue"    # Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4a

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 40
    .local v0, "firstChar":C
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_3d

    .line 43
    :cond_1c
    const/16 v1, 0x23

    const/4 v2, 0x1

    if-ne v0, v1, :cond_28

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "rawValue":Ljava/lang/String;
    const/16 v2, 0x10

    .local v2, "radix":I
    goto :goto_44

    .line 46
    .end local v1    # "rawValue":Ljava/lang/String;
    .end local v2    # "radix":I
    :cond_28
    const/16 v1, 0x30

    if-ne v0, v1, :cond_39

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_39

    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    .restart local v1    # "rawValue":Ljava/lang/String;
    const/16 v2, 0x8

    .restart local v2    # "radix":I
    goto :goto_44

    .line 50
    .end local v1    # "rawValue":Ljava/lang/String;
    .end local v2    # "radix":I
    :cond_39
    move-object v1, p0

    .line 51
    .restart local v1    # "rawValue":Ljava/lang/String;
    const/16 v2, 0xa

    .restart local v2    # "radix":I
    goto :goto_44

    .line 41
    .end local v1    # "rawValue":Ljava/lang/String;
    .end local v2    # "radix":I
    :cond_3d
    :goto_3d
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    .restart local v1    # "rawValue":Ljava/lang/String;
    const/16 v2, 0x10

    .line 54
    .restart local v2    # "radix":I
    :goto_44
    new-instance v3, Lcom/google/common/primitives/ParseRequest;

    invoke-direct {v3, v1, v2}, Lcom/google/common/primitives/ParseRequest;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 33
    .end local v0    # "firstChar":C
    .end local v1    # "rawValue":Ljava/lang/String;
    .end local v2    # "radix":I
    :cond_4a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
