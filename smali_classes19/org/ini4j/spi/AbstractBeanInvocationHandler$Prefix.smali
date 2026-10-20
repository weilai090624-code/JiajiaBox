.class final enum Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
.super Ljava/lang/Enum;
.source "AbstractBeanInvocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/spi/AbstractBeanInvocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Prefix"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum ADD_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum ADD_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum HAS:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum READ:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum READ_BOOLEAN:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum REMOVE_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum REMOVE_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

.field public static final enum WRITE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;


# instance fields
.field private _len:I

.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 42
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "get"

    const-string v2, "READ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->READ:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 43
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "is"

    const-string v2, "READ_BOOLEAN"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->READ_BOOLEAN:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 44
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "set"

    const-string v2, "WRITE"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->WRITE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 45
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "addPropertyChangeListener"

    const-string v2, "ADD_CHANGE"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ADD_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 46
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "addVetoableChangeListener"

    const-string v2, "ADD_VETO"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ADD_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 47
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "removePropertyChangeListener"

    const-string v2, "REMOVE_CHANGE"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->REMOVE_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 48
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "removeVetoableChangeListener"

    const-string v2, "REMOVE_VETO"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->REMOVE_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 49
    new-instance v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    const-string v1, "has"

    const-string v2, "HAS"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->HAS:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->READ:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v3

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->READ_BOOLEAN:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v4

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->WRITE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v5

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ADD_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v6

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->ADD_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v7

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->REMOVE_CHANGE:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v8

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->REMOVE_VETO:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v9

    sget-object v1, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->HAS:Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    aput-object v1, v0, v10

    sput-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->$VALUES:[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_value:Ljava/lang/String;

    .line 56
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_len:I

    .line 57
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "ret":Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    invoke-static {}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->values()[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    move-result-object v1

    .local v1, "arr$":[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 65
    .local v4, "p":Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    invoke-virtual {v4}, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    move-object v0, v4

    .line 69
    goto :goto_1

    .line 63
    .end local v4    # "p":Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "arr$":[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    return-object v0
.end method

.method public static values()[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;
    .locals 1

    .line 40
    sget-object v0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->$VALUES:[Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    invoke-virtual {v0}, [Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;

    return-object v0
.end method


# virtual methods
.method public getTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 78
    iget v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_len:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/beans/Introspector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ini4j/spi/AbstractBeanInvocationHandler$Prefix;->_value:Ljava/lang/String;

    return-object v0
.end method
