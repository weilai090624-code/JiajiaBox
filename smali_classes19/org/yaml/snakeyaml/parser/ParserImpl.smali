.class public Lorg/yaml/snakeyaml/parser/ParserImpl;
.super Ljava/lang/Object;
.source "ParserImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingEmptyValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingFirstKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntryMappingEnd;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntryMappingValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntryMappingKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowEndComment;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceFirstEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingValueCommentList;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingValueComment;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingFirstKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntryValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntryKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceEntryValue;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceEntryKey;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockNode;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentContent;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentEnd;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseDocumentStart;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseImplicitDocumentStart;,
        Lorg/yaml/snakeyaml/parser/ParserImpl$ParseStreamStart;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentEvent:Lorg/yaml/snakeyaml/events/Event;

.field private directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

.field private final marks:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ">;"
        }
    .end annotation
.end field

.field protected final scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

.field private state:Lorg/yaml/snakeyaml/parser/Production;

.field private final states:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/parser/Production;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    .line 124
    sget-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    const-string v1, "!"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    const-string v1, "!!"

    const-string v2, "tag:yaml.org,2002:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V
    .locals 1
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 136
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/scanner/Scanner;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;Z)V
    .locals 1
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;
    .param p2, "parseComments"    # Z

    .line 140
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;

    invoke-direct {v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;-><init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V

    invoke-virtual {v0, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->setParseComments(Z)Lorg/yaml/snakeyaml/scanner/ScannerImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;-><init>(Lorg/yaml/snakeyaml/scanner/Scanner;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/scanner/Scanner;)V
    .locals 4
    .param p1, "scanner"    # Lorg/yaml/snakeyaml/scanner/Scanner;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 146
    new-instance v1, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    new-instance v2, Ljava/util/HashMap;

    sget-object v3, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v0, v2}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;-><init>(Lorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    .line 147
    new-instance v1, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 148
    new-instance v1, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->marks:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 149
    new-instance v1, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseStreamStart;

    invoke-direct {v1, p0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseStreamStart;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/parser/Production;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 121
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 121
    invoke-direct {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->processDirectives()Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/Production;)Lorg/yaml/snakeyaml/parser/Production;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/parser/Production;

    .line 121
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 121
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->marks:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 121
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->processEmptyScalar(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lorg/yaml/snakeyaml/parser/ParserImpl;ZZ)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 121
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 121
    invoke-direct {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseBlockNodeOrIndentlessSequence()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 121
    invoke-direct {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseFlowNode()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/tokens/CommentToken;)Lorg/yaml/snakeyaml/events/CommentEvent;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/tokens/CommentToken;

    .line 121
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/parser/ParserImpl;->produceCommentEvent(Lorg/yaml/snakeyaml/tokens/CommentToken;)Lorg/yaml/snakeyaml/events/CommentEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/VersionTagsTuple;)Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    .line 121
    iput-object p1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .line 121
    sget-object v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/yaml/snakeyaml/parser/ParserImpl;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/parser/ParserImpl;

    .line 121
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method private parseBlockNodeOrIndentlessSequence()Lorg/yaml/snakeyaml/events/Event;
    .locals 1

    .line 404
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method private parseFlowNode()Lorg/yaml/snakeyaml/events/Event;
    .locals 1

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method private parseNode(ZZ)Lorg/yaml/snakeyaml/events/Event;
    .locals 20
    .param p1, "block"    # Z
    .param p2, "indentlessSequence"    # Z

    .line 409
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 410
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v2, 0x0

    .line 411
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v3, 0x0

    .line 412
    .local v3, "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v4, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v5, 0x1

    new-array v6, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v7, Lorg/yaml/snakeyaml/tokens/Token$ID;->Alias:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-interface {v4, v6}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 413
    iget-object v4, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v4}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/tokens/AliasToken;

    .line 414
    .local v4, "token":Lorg/yaml/snakeyaml/tokens/AliasToken;
    new-instance v5, Lorg/yaml/snakeyaml/events/AliasEvent;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/tokens/AliasToken;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/tokens/AliasToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/tokens/AliasToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/yaml/snakeyaml/events/AliasEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 415
    .local v5, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v6, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/parser/Production;

    iput-object v6, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 416
    .end local v4    # "token":Lorg/yaml/snakeyaml/tokens/AliasToken;
    goto/16 :goto_8

    .line 417
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_0
    const/4 v4, 0x0

    .line 418
    .local v4, "anchor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 419
    .local v6, "tagTokenTag":Lorg/yaml/snakeyaml/tokens/TagTuple;
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v9, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 420
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v7}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    .line 421
    .local v7, "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 422
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 423
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 424
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 425
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/tokens/TagToken;

    .line 426
    .local v9, "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/TagToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 427
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/TagToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 428
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/TagToken;->getValue()Lorg/yaml/snakeyaml/tokens/TagTuple;

    move-result-object v6

    goto :goto_0

    .line 430
    .end local v7    # "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    .end local v9    # "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    :cond_1
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v9, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->Tag:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v10, v9, v8

    invoke-interface {v7, v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 431
    iget-object v7, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v7}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/tokens/TagToken;

    .line 432
    .local v7, "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/TagToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 433
    move-object v3, v1

    .line 434
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/TagToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 435
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/tokens/TagToken;->getValue()Lorg/yaml/snakeyaml/tokens/TagTuple;

    move-result-object v6

    .line 436
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->Anchor:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 437
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    .line 438
    .local v9, "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 439
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/AnchorToken;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 430
    .end local v7    # "tagToken":Lorg/yaml/snakeyaml/tokens/TagToken;
    .end local v9    # "token":Lorg/yaml/snakeyaml/tokens/AnchorToken;
    :cond_2
    :goto_0
    nop

    .line 442
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .line 443
    .local v7, "tag":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 444
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/tokens/TagTuple;->getHandle()Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "handle":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/tokens/TagTuple;->getSuffix()Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, "suffix":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 447
    iget-object v11, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->getTags()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 451
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    invoke-virtual {v12}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;->getTags()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 448
    :cond_4
    new-instance v5, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found undefined tag handle "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "while parsing a node"

    invoke-direct {v5, v11, v1, v8, v3}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 453
    :cond_5
    move-object v7, v10

    .line 456
    .end local v9    # "handle":Ljava/lang/String;
    .end local v10    # "suffix":Ljava/lang/String;
    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 457
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v9}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v9

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 458
    move-object v2, v1

    .line 460
    :cond_7
    const/16 v17, 0x0

    .line 461
    .local v17, "event":Lorg/yaml/snakeyaml/events/Event;
    const-string v9, "!"

    if-eqz v7, :cond_9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v10, 0x1

    :goto_4
    move v15, v10

    .line 462
    .local v15, "implicit":Z
    const/4 v14, 0x0

    if-eqz p2, :cond_a

    iget-object v10, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v11, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v12, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v12, v11, v8

    invoke-interface {v10, v11}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 463
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 464
    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    sget-object v8, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move v12, v15

    move-object v13, v1

    move-object/from16 v18, v3

    move-object v3, v14

    .end local v3    # "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v18, "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v14, v2

    move/from16 v19, v15

    .end local v15    # "implicit":Z
    .local v19, "implicit":Z
    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 466
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v8, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntryKey;

    invoke-direct {v8, v0, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseIndentlessSequenceEntryKey;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    move-object/from16 v3, v18

    goto/16 :goto_8

    .line 462
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .end local v18    # "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v19    # "implicit":Z
    .restart local v3    # "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .restart local v15    # "implicit":Z
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_a
    move-object/from16 v18, v3

    move-object v3, v14

    move/from16 v19, v15

    .line 468
    .end local v3    # "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v15    # "implicit":Z
    .restart local v18    # "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .restart local v19    # "implicit":Z
    iget-object v10, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v11, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v12, Lorg/yaml/snakeyaml/tokens/Token$ID;->Scalar:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v12, v11, v8

    invoke-interface {v10, v11}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 469
    iget-object v3, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v3}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    .line 470
    .local v3, "token":Lorg/yaml/snakeyaml/tokens/ScalarToken;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 472
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getPlain()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v7, :cond_c

    :cond_b
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 473
    :cond_c
    new-instance v9, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-direct {v9, v5, v8}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    move-object v5, v9

    .local v5, "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    goto :goto_5

    .line 474
    .end local v5    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    :cond_d
    if-nez v7, :cond_e

    .line 475
    new-instance v9, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-direct {v9, v8, v5}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    move-object v5, v9

    .restart local v5    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    goto :goto_5

    .line 477
    .end local v5    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    :cond_e
    new-instance v5, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-direct {v5, v8, v8}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    .line 479
    .restart local v5    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    :goto_5
    new-instance v8, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/tokens/ScalarToken;->getStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v16

    move-object v9, v8

    move-object v10, v4

    move-object v11, v7

    move-object v12, v5

    move-object v14, v1

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 481
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .local v8, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/yaml/snakeyaml/parser/Production;

    iput-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    .line 482
    .end local v3    # "token":Lorg/yaml/snakeyaml/tokens/ScalarToken;
    .end local v5    # "implicitValues":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    move-object v5, v8

    move-object/from16 v3, v18

    goto/16 :goto_8

    .end local v8    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_f
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 483
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 484
    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    sget-object v15, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v19

    move-object v13, v1

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 486
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .local v5, "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v8, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceFirstEntry;

    invoke-direct {v8, v0, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowSequenceFirstEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    move-object/from16 v3, v18

    goto/16 :goto_8

    .line 487
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_10
    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->FlowMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 488
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 489
    new-instance v5, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    sget-object v15, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v19

    move-object v13, v1

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 491
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v8, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingFirstKey;

    invoke-direct {v8, v0, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseFlowMappingFirstKey;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    move-object/from16 v3, v18

    goto/16 :goto_8

    .line 492
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_11
    if-eqz p1, :cond_12

    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v10, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v11, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockSequenceStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v11, v10, v8

    invoke-interface {v9, v10}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 493
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 494
    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    sget-object v15, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v19

    move-object v13, v1

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 496
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v8, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;

    invoke-direct {v8, v0, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockSequenceFirstEntry;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    move-object/from16 v3, v18

    goto/16 :goto_8

    .line 497
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_12
    if-eqz p1, :cond_13

    iget-object v9, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    new-array v5, v5, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v10, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockMappingStart:Lorg/yaml/snakeyaml/tokens/Token$ID;

    aput-object v10, v5, v8

    invoke-interface {v9, v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 498
    iget-object v5, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 499
    new-instance v5, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    sget-object v15, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-object v9, v5

    move-object v10, v4

    move-object v11, v7

    move/from16 v12, v19

    move-object v13, v1

    move-object v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 501
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    new-instance v8, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingFirstKey;

    invoke-direct {v8, v0, v3}, Lorg/yaml/snakeyaml/parser/ParserImpl$ParseBlockMappingFirstKey;-><init>(Lorg/yaml/snakeyaml/parser/ParserImpl;Lorg/yaml/snakeyaml/parser/ParserImpl$1;)V

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    move-object/from16 v3, v18

    goto/16 :goto_8

    .line 502
    .end local v5    # "event":Lorg/yaml/snakeyaml/events/Event;
    .restart local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_13
    if-nez v4, :cond_16

    if-eqz v7, :cond_14

    goto :goto_7

    .line 509
    :cond_14
    iget-object v3, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v3}, Lorg/yaml/snakeyaml/scanner/Scanner;->peekToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v3

    .line 510
    .local v3, "token":Lorg/yaml/snakeyaml/tokens/Token;
    new-instance v5, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "while parsing a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_15

    const-string v9, "block"

    goto :goto_6

    :cond_15
    const-string v9, "flow"

    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " node"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expected the node content, but found \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/tokens/Token;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    invoke-direct {v5, v8, v1, v9, v10}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 505
    .end local v3    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_16
    :goto_7
    new-instance v3, Lorg/yaml/snakeyaml/events/ScalarEvent;

    new-instance v12, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move/from16 v5, v19

    .end local v19    # "implicit":Z
    .local v5, "implicit":Z
    invoke-direct {v12, v5, v8}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    const-string v13, ""

    sget-object v16, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v7

    move-object v14, v1

    move-object v15, v2

    invoke-direct/range {v9 .. v16}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 507
    .end local v17    # "event":Lorg/yaml/snakeyaml/events/Event;
    .local v3, "event":Lorg/yaml/snakeyaml/events/Event;
    iget-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/yaml/snakeyaml/parser/Production;

    iput-object v8, v0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    move-object v5, v3

    move-object/from16 v3, v18

    .line 516
    .end local v4    # "anchor":Ljava/lang/String;
    .end local v6    # "tagTokenTag":Lorg/yaml/snakeyaml/tokens/TagTuple;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v18    # "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v3, "tagMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v5, "event":Lorg/yaml/snakeyaml/events/Event;
    :goto_8
    return-object v5
.end method

.method private processDirectives()Lorg/yaml/snakeyaml/parser/VersionTagsTuple;
    .locals 10

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "yamlVersion":Lorg/yaml/snakeyaml/DumperOptions$Version;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v1, "tagHandles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/yaml/snakeyaml/tokens/Token$ID;

    sget-object v5, Lorg/yaml/snakeyaml/tokens/Token$ID;->Directive:Lorg/yaml/snakeyaml/tokens/Token$ID;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v2, v4}, Lorg/yaml/snakeyaml/scanner/Scanner;->checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->scanner:Lorg/yaml/snakeyaml/scanner/Scanner;

    invoke-interface {v2}, Lorg/yaml/snakeyaml/scanner/Scanner;->getToken()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/tokens/DirectiveToken;

    .line 327
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/DirectiveToken;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "YAML"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 328
    if-nez v0, :cond_2

    .line 332
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getValue()Ljava/util/List;

    move-result-object v4

    .line 333
    .local v4, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 334
    .local v6, "major":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_1

    .line 339
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 340
    .local v3, "minor":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 346
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;

    goto :goto_1

    .line 342
    :pswitch_0
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 343
    nop

    .line 349
    .end local v3    # "minor":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "major":Ljava/lang/Integer;
    :cond_0
    :goto_1
    goto :goto_2

    .line 335
    .restart local v4    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "major":Ljava/lang/Integer;
    :cond_1
    new-instance v3, Lorg/yaml/snakeyaml/parser/ParserException;

    const-string v7, "found incompatible YAML document (version 1.* is required)"

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-direct {v3, v5, v5, v7, v8}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 329
    .end local v4    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "major":Ljava/lang/Integer;
    :cond_2
    new-instance v3, Lorg/yaml/snakeyaml/parser/ParserException;

    const-string v4, "found duplicate YAML directive"

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v3, v5, v5, v4, v6}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 349
    :cond_3
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "TAG"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getValue()Ljava/util/List;

    move-result-object v4

    .line 351
    .local v4, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 352
    .local v6, "handle":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 357
    invoke-virtual {v1, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 354
    :cond_4
    new-instance v7, Lorg/yaml/snakeyaml/parser/ParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duplicate tag handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-direct {v7, v5, v5, v8, v9}, Lorg/yaml/snakeyaml/parser/ParserException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7

    .line 359
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/DirectiveToken;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "handle":Ljava/lang/String;
    :goto_2
    goto/16 :goto_0

    .line 360
    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 362
    :cond_6
    sget-object v2, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 365
    sget-object v4, Lorg/yaml/snakeyaml/parser/ParserImpl;->DEFAULT_TAGS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v3    # "key":Ljava/lang/String;
    :cond_7
    goto :goto_3

    .line 368
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8
    new-instance v2, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/parser/VersionTagsTuple;-><init>(Lorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    iput-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    .line 370
    :cond_9
    iget-object v2, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->directives:Lorg/yaml/snakeyaml/parser/VersionTagsTuple;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private processEmptyScalar(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/events/Event;
    .locals 9
    .param p1, "mark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 934
    new-instance v8, Lorg/yaml/snakeyaml/events/ScalarEvent;

    new-instance v3, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    const-string v4, ""

    sget-object v7, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v5, p1

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    return-object v8
.end method

.method private produceCommentEvent(Lorg/yaml/snakeyaml/tokens/CommentToken;)Lorg/yaml/snakeyaml/events/CommentEvent;
    .locals 5
    .param p1, "token"    # Lorg/yaml/snakeyaml/tokens/CommentToken;

    .line 183
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/tokens/CommentToken;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 184
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/tokens/CommentToken;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 185
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/tokens/CommentToken;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/tokens/CommentToken;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v3

    .line 190
    .local v3, "type":Lorg/yaml/snakeyaml/comments/CommentType;
    new-instance v4, Lorg/yaml/snakeyaml/events/CommentEvent;

    invoke-direct {v4, v3, v2, v0, v1}, Lorg/yaml/snakeyaml/events/CommentEvent;-><init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v4
.end method


# virtual methods
.method public checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .locals 1
    .param p1, "choice"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 156
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 157
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/events/Event;->is(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getEvent()Lorg/yaml/snakeyaml/events/Event;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/parser/ParserImpl;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 177
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 178
    .local v0, "value":Lorg/yaml/snakeyaml/events/Event;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 179
    return-object v0
.end method

.method public peekEvent()Lorg/yaml/snakeyaml/events/Event;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->state:Lorg/yaml/snakeyaml/parser/Production;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Production;->produce()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/parser/ParserImpl;->currentEvent:Lorg/yaml/snakeyaml/events/Event;

    return-object v0
.end method
