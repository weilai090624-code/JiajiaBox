.class public final enum Lorg/yaml/snakeyaml/tokens/Token$ID;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/tokens/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/tokens/Token$ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Error:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowMappingEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowSequenceEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum StreamStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Value:Lorg/yaml/snakeyaml/tokens/Token$ID;

.field public static final enum Whitespace:Lorg/yaml/snakeyaml/tokens/Token$ID;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 23
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<alias>"

    const-string v2, "Alias"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 24
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<anchor>"

    const-string v2, "Anchor"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 25
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<block end>"

    const-string v2, "BlockEnd"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 26
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "-"

    const-string v2, "BlockEntry"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 27
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<block mapping start>"

    const-string v2, "BlockMappingStart"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 28
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<block sequence start>"

    const-string v2, "BlockSequenceStart"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 29
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<directive>"

    const-string v2, "Directive"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 30
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<document end>"

    const-string v2, "DocumentEnd"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 31
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<document start>"

    const-string v2, "DocumentStart"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 32
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, ","

    const-string v2, "FlowEntry"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 33
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "}"

    const-string v2, "FlowMappingEnd"

    const/16 v13, 0xa

    invoke-direct {v0, v2, v13, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 34
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "{"

    const-string v2, "FlowMappingStart"

    const/16 v14, 0xb

    invoke-direct {v0, v2, v14, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 35
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "]"

    const-string v2, "FlowSequenceEnd"

    const/16 v15, 0xc

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 36
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "["

    const-string v2, "FlowSequenceStart"

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 37
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "?"

    const-string v2, "Key"

    const/16 v15, 0xe

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 38
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<scalar>"

    const-string v2, "Scalar"

    const/16 v15, 0xf

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 39
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<stream end>"

    const-string v2, "StreamEnd"

    const/16 v15, 0x10

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 40
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<stream start>"

    const-string v2, "StreamStart"

    const/16 v15, 0x11

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 41
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<tag>"

    const-string v2, "Tag"

    const/16 v15, 0x12

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 42
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, ":"

    const-string v2, "Value"

    const/16 v15, 0x13

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Value:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 43
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "<whitespace>"

    const-string v2, "Whitespace"

    const/16 v15, 0x14

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Whitespace:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 44
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const-string v1, "#"

    const-string v2, "Comment"

    const/16 v15, 0x15

    invoke-direct {v0, v2, v15, v1}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 45
    new-instance v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v1, 0x16

    const-string v2, "<error>"

    const-string v15, "Error"

    invoke-direct {v0, v15, v1, v2}, Lorg/yaml/snakeyaml/tokens/Token$ID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->Error:Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 22
    const/16 v0, 0x17

    new-array v0, v0, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v3

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v4

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v5

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v6

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v7

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v8

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v9

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v10

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->DocumentStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v11

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v12

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v13

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v1, v0, v14

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Key:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamEnd:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->StreamStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Value:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Whitespace:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Comment:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/tokens/Token$ID;->Error:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->$VALUES:[Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lorg/yaml/snakeyaml/tokens/Token$ID;->description:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/tokens/Token$ID;
    .locals 1

    .line 22
    sget-object v0, Lorg/yaml/snakeyaml/tokens/Token$ID;->$VALUES:[Lorg/yaml/snakeyaml/tokens/Token$ID;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/tokens/Token$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/yaml/snakeyaml/tokens/Token$ID;->description:Ljava/lang/String;

    return-object v0
.end method
