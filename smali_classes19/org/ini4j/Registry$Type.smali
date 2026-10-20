.class public final enum Lorg/ini4j/Registry$Type;
.super Ljava/lang/Enum;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/Registry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ini4j/Registry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ini4j/Registry$Type;

.field private static final MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ini4j/Registry$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum REG_BINARY:Lorg/ini4j/Registry$Type;

.field public static final enum REG_DWORD:Lorg/ini4j/Registry$Type;

.field public static final enum REG_DWORD_BIG_ENDIAN:Lorg/ini4j/Registry$Type;

.field public static final enum REG_EXPAND_SZ:Lorg/ini4j/Registry$Type;

.field public static final enum REG_FULL_RESOURCE_DESCRIPTOR:Lorg/ini4j/Registry$Type;

.field public static final enum REG_LINK:Lorg/ini4j/Registry$Type;

.field public static final enum REG_MULTI_SZ:Lorg/ini4j/Registry$Type;

.field public static final enum REG_NONE:Lorg/ini4j/Registry$Type;

.field public static final enum REG_QWORD:Lorg/ini4j/Registry$Type;

.field public static final enum REG_RESOURCE_LIST:Lorg/ini4j/Registry$Type;

.field public static final enum REG_RESOURCE_REQUIREMENTS_LIST:Lorg/ini4j/Registry$Type;

.field public static final enum REG_SZ:Lorg/ini4j/Registry$Type;

.field public static final REMOVE:Ljava/lang/String;

.field public static final REMOVE_CHAR:C = '-'

.field public static final SEPARATOR:Ljava/lang/String;

.field public static final SEPARATOR_CHAR:C = ':'


# instance fields
.field private final _prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 37
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(0)"

    const-string v2, "REG_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_NONE:Lorg/ini4j/Registry$Type;

    .line 38
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, ""

    const-string v2, "REG_SZ"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_SZ:Lorg/ini4j/Registry$Type;

    .line 39
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(2)"

    const-string v2, "REG_EXPAND_SZ"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_EXPAND_SZ:Lorg/ini4j/Registry$Type;

    .line 40
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex"

    const-string v2, "REG_BINARY"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_BINARY:Lorg/ini4j/Registry$Type;

    .line 41
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "dword"

    const-string v2, "REG_DWORD"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_DWORD:Lorg/ini4j/Registry$Type;

    .line 42
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(5)"

    const-string v2, "REG_DWORD_BIG_ENDIAN"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_DWORD_BIG_ENDIAN:Lorg/ini4j/Registry$Type;

    .line 43
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(6)"

    const-string v2, "REG_LINK"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_LINK:Lorg/ini4j/Registry$Type;

    .line 44
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(7)"

    const-string v2, "REG_MULTI_SZ"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_MULTI_SZ:Lorg/ini4j/Registry$Type;

    .line 45
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(8)"

    const-string v2, "REG_RESOURCE_LIST"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_RESOURCE_LIST:Lorg/ini4j/Registry$Type;

    .line 46
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(9)"

    const-string v2, "REG_FULL_RESOURCE_DESCRIPTOR"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_FULL_RESOURCE_DESCRIPTOR:Lorg/ini4j/Registry$Type;

    .line 47
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(a)"

    const-string v2, "REG_RESOURCE_REQUIREMENTS_LIST"

    const/16 v13, 0xa

    invoke-direct {v0, v2, v13, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_RESOURCE_REQUIREMENTS_LIST:Lorg/ini4j/Registry$Type;

    .line 48
    new-instance v0, Lorg/ini4j/Registry$Type;

    const-string v1, "hex(b)"

    const-string v2, "REG_QWORD"

    const/16 v14, 0xb

    invoke-direct {v0, v2, v14, v1}, Lorg/ini4j/Registry$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/Registry$Type;->REG_QWORD:Lorg/ini4j/Registry$Type;

    .line 35
    const/16 v0, 0xc

    new-array v0, v0, [Lorg/ini4j/Registry$Type;

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_NONE:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_SZ:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_EXPAND_SZ:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_BINARY:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_DWORD:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_DWORD_BIG_ENDIAN:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_LINK:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_MULTI_SZ:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v10

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_RESOURCE_LIST:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v11

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_FULL_RESOURCE_DESCRIPTOR:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v12

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_RESOURCE_REQUIREMENTS_LIST:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v13

    sget-object v1, Lorg/ini4j/Registry$Type;->REG_QWORD:Lorg/ini4j/Registry$Type;

    aput-object v1, v0, v14

    sput-object v0, Lorg/ini4j/Registry$Type;->$VALUES:[Lorg/ini4j/Registry$Type;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/ini4j/Registry$Type;->MAPPING:Ljava/util/Map;

    .line 54
    invoke-static {}, Lorg/ini4j/Registry$Type;->values()[Lorg/ini4j/Registry$Type;

    move-result-object v0

    .local v0, "arr$":[Lorg/ini4j/Registry$Type;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    .local v3, "t":Lorg/ini4j/Registry$Type;
    sget-object v4, Lorg/ini4j/Registry$Type;->MAPPING:Ljava/util/Map;

    invoke-virtual {v3}, Lorg/ini4j/Registry$Type;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v3    # "t":Lorg/ini4j/Registry$Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "arr$":[Lorg/ini4j/Registry$Type;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_0
    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ini4j/Registry$Type;->SEPARATOR:Ljava/lang/String;

    .line 63
    const/16 v0, 0x2d

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ini4j/Registry$Type;->REMOVE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p3, p0, Lorg/ini4j/Registry$Type;->_prefix:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/ini4j/Registry$Type;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 73
    sget-object v0, Lorg/ini4j/Registry$Type;->MAPPING:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ini4j/Registry$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/ini4j/Registry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Type;

    return-object v0
.end method

.method public static values()[Lorg/ini4j/Registry$Type;
    .locals 1

    .line 35
    sget-object v0, Lorg/ini4j/Registry$Type;->$VALUES:[Lorg/ini4j/Registry$Type;

    invoke-virtual {v0}, [Lorg/ini4j/Registry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ini4j/Registry$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/ini4j/Registry$Type;->_prefix:Ljava/lang/String;

    return-object v0
.end method
