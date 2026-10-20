.class public final Lorg/yaml/snakeyaml/emitter/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/Emitable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingSimpleValue;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentRoot;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentEnd;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstDocumentStart;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectNothing;,
        Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAG_PREFIXES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLE_FORMAT:Ljava/util/regex/Pattern;

.field private static final INVALID_ANCHOR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_INDENT:I = 0xa

.field public static final MIN_INDENT:I = 0x1

.field private static final SPACE:[C

.field private static final SPACES_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final allowUnicode:Z

.field private analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

.field private bestIndent:I

.field private final bestLineBreak:[C

.field private bestWidth:I

.field private final blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

.field private final canonical:Ljava/lang/Boolean;

.field private column:I

.field private final emitComments:Z

.field private event:Lorg/yaml/snakeyaml/events/Event;

.field private final events:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private flowLevel:I

.field private indent:Ljava/lang/Integer;

.field private final indentWithIndicator:Z

.field private indention:Z

.field private final indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final indicatorIndent:I

.field private final inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

.field private mappingContext:Z

.field private final maxSimpleKeyLength:I

.field private openEnded:Z

.field private preparedAnchor:Ljava/lang/String;

.field private preparedTag:Ljava/lang/String;

.field private final prettyFlow:Ljava/lang/Boolean;

.field private rootContext:Z

.field private simpleKeyContext:Z

.field private final splitLines:Z

.field private state:Lorg/yaml/snakeyaml/emitter/EmitterState;

.field private final states:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Lorg/yaml/snakeyaml/emitter/EmitterState;",
            ">;"
        }
    .end annotation
.end field

.field private final stream:Ljava/io/Writer;

.field private style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private tagPrefixes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private whitespace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    .line 76
    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACES_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    .line 79
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x5b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x7d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 90
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "v"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "_"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x2028

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "L"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x2029

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    .line 109
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    const-string v1, "!"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    const-string v1, "tag:yaml.org,2002:"

    const-string v2, "!!"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v0, "^![-_\\w]*!$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/Writer;
    .param p2, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    .line 187
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 188
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectStreamStart;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 190
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    .line 191
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 193
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 194
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 196
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 198
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 199
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 207
    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 208
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 209
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 212
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 215
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isCanonical()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    .line 216
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isPrettyFlow()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    .line 217
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isAllowUnicode()Z

    move-result v4

    iput-boolean v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    .line 218
    const/4 v4, 0x2

    iput v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 219
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v5

    if-le v5, v3, :cond_0

    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v5

    if-ge v5, v1, :cond_0

    .line 220
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    .line 222
    :cond_0
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndicatorIndent()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indicatorIndent:I

    .line 223
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getIndentWithIndicator()Z

    move-result v1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indentWithIndicator:Z

    .line 224
    const/16 v1, 0x50

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 225
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v1

    iget v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    mul-int/lit8 v5, v5, 0x2

    if-le v1, v5, :cond_1

    .line 226
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    .line 228
    :cond_1
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    .line 229
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getSplitLines()Z

    move-result v1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    .line 230
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->getMaxSimpleKeyLength()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->maxSimpleKeyLength:I

    .line 231
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/DumperOptions;->isProcessComments()Z

    move-result v1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->emitComments:Z

    .line 234
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    .line 237
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 238
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 242
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 245
    new-instance v1, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    new-array v4, v4, [Lorg/yaml/snakeyaml/comments/CommentType;

    sget-object v5, Lorg/yaml/snakeyaml/comments/CommentType;->BLANK_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    aput-object v5, v4, v0

    sget-object v5, Lorg/yaml/snakeyaml/comments/CommentType;->BLOCK:Lorg/yaml/snakeyaml/comments/CommentType;

    aput-object v5, v4, v3

    invoke-direct {v1, v2, v4}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;-><init>(Ljava/util/Queue;[Lorg/yaml/snakeyaml/comments/CommentType;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 247
    new-instance v1, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    new-array v3, v3, [Lorg/yaml/snakeyaml/comments/CommentType;

    sget-object v4, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;-><init>(Ljava/util/Queue;[Lorg/yaml/snakeyaml/comments/CommentType;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 249
    return-void
.end method

.method static synthetic access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$102(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/events/Event;

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyDocument()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeBlockComment()V

    return-void
.end method

.method static synthetic access$1700(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectNode(ZZZ)V

    return-void
.end method

.method static synthetic access$2000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    return-object v0
.end method

.method static synthetic access$2210(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 2
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    return v0
.end method

.method static synthetic access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeInlineComments()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    return v0
.end method

.method static synthetic access$2600(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    return v0
.end method

.method static synthetic access$2700(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    return v0
.end method

.method static synthetic access$2800(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkSimpleKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indentWithIndicator:Z

    return v0
.end method

.method static synthetic access$3700(Lorg/yaml/snakeyaml/emitter/Emitter;)I
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indicatorIndent:I

    return v0
.end method

.method static synthetic access$3800(Lorg/yaml/snakeyaml/emitter/Emitter;I)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    return-void
.end method

.method static synthetic access$3900(Lorg/yaml/snakeyaml/emitter/Emitter;ZZ)V
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    return v0
.end method

.method static synthetic access$4000(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/events/Event;)Z
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/events/Event;

    .line 71
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->isFoldedOrLiteral(Lorg/yaml/snakeyaml/events/Event;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 71
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;

    .line 71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 71
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->DEFAULT_TAG_PREFIXES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;
    .locals 29
    .param p1, "scalar"    # Ljava/lang/String;

    .line 1059
    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    new-instance v9, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v9

    .line 1063
    :cond_0
    const/4 v0, 0x0

    .line 1064
    .local v0, "blockIndicators":Z
    const/4 v1, 0x0

    .line 1065
    .local v1, "flowIndicators":Z
    const/4 v2, 0x0

    .line 1066
    .local v2, "lineBreaks":Z
    const/4 v3, 0x0

    .line 1069
    .local v3, "specialCharacters":Z
    const/4 v4, 0x0

    .line 1070
    .local v4, "leadingSpace":Z
    const/4 v5, 0x0

    .line 1071
    .local v5, "leadingBreak":Z
    const/4 v6, 0x0

    .line 1072
    .local v6, "trailingSpace":Z
    const/4 v7, 0x0

    .line 1073
    .local v7, "trailingBreak":Z
    const/4 v9, 0x0

    .line 1074
    .local v9, "breakSpace":Z
    const/4 v10, 0x0

    .line 1077
    .local v10, "spaceBreak":Z
    const-string v11, "---"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1078
    :cond_1
    const/4 v0, 0x1

    .line 1079
    const/4 v1, 0x1

    .line 1082
    :cond_2
    const/4 v11, 0x1

    .line 1083
    .local v11, "preceededByWhitespace":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v12, v14, :cond_4

    sget-object v12, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    invoke-virtual {v12, v15}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v12, 0x1

    .line 1085
    .local v12, "followedByWhitespace":Z
    :goto_1
    const/4 v15, 0x0

    .line 1088
    .local v15, "previousSpace":Z
    const/16 v16, 0x0

    .line 1090
    .local v16, "previousBreak":Z
    const/16 v17, 0x0

    move/from16 v18, v7

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v15

    move/from16 v24, v16

    move/from16 v7, v17

    move v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    .line 1092
    .end local v0    # "blockIndicators":Z
    .end local v1    # "flowIndicators":Z
    .end local v2    # "lineBreaks":Z
    .end local v3    # "specialCharacters":Z
    .end local v4    # "leadingSpace":Z
    .end local v5    # "leadingBreak":Z
    .end local v6    # "trailingSpace":Z
    .local v7, "index":I
    .local v9, "blockIndicators":Z
    .local v10, "flowIndicators":Z
    .local v11, "lineBreaks":Z
    .local v12, "specialCharacters":Z
    .local v15, "leadingSpace":Z
    .local v16, "leadingBreak":Z
    .local v17, "trailingSpace":Z
    .local v18, "trailingBreak":Z
    .local v19, "breakSpace":Z
    .local v20, "spaceBreak":Z
    .local v21, "preceededByWhitespace":Z
    .local v22, "followedByWhitespace":Z
    .local v23, "previousSpace":Z
    .local v24, "previousBreak":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v7, v0, :cond_22

    .line 1093
    invoke-virtual {v8, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1095
    .local v0, "c":I
    const/16 v1, 0x3a

    const/4 v2, -0x1

    if-nez v7, :cond_8

    .line 1097
    const-string v3, "#,[]{}&*!|>\'\"%@`"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 1098
    const/4 v10, 0x1

    .line 1099
    const/4 v9, 0x1

    .line 1101
    :cond_5
    const/16 v2, 0x3f

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_7

    .line 1102
    :cond_6
    const/4 v10, 0x1

    .line 1103
    if-eqz v22, :cond_7

    .line 1104
    const/4 v9, 0x1

    .line 1107
    :cond_7
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b

    if-eqz v22, :cond_b

    .line 1108
    const/4 v1, 0x1

    .line 1109
    .end local v10    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    move v10, v1

    move v9, v2

    .end local v9    # "blockIndicators":Z
    .local v2, "blockIndicators":Z
    goto :goto_3

    .line 1113
    .end local v1    # "flowIndicators":Z
    .end local v2    # "blockIndicators":Z
    .restart local v9    # "blockIndicators":Z
    .restart local v10    # "flowIndicators":Z
    :cond_8
    const-string v3, ",?[]{}"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 1114
    const/4 v10, 0x1

    .line 1116
    :cond_9
    if-ne v0, v1, :cond_a

    .line 1117
    const/4 v10, 0x1

    .line 1118
    if-eqz v22, :cond_a

    .line 1119
    const/4 v9, 0x1

    .line 1122
    :cond_a
    const/16 v1, 0x23

    if-ne v0, v1, :cond_b

    if-eqz v21, :cond_b

    .line 1123
    const/4 v1, 0x1

    .line 1124
    .end local v10    # "flowIndicators":Z
    .restart local v1    # "flowIndicators":Z
    const/4 v2, 0x1

    move v10, v1

    move v9, v2

    .line 1128
    .end local v1    # "flowIndicators":Z
    .restart local v10    # "flowIndicators":Z
    :cond_b
    :goto_3
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v1

    .line 1129
    .local v1, "isLineBreak":Z
    if-eqz v1, :cond_c

    .line 1130
    const/4 v2, 0x1

    move v11, v2

    .line 1132
    :cond_c
    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eq v0, v2, :cond_13

    if-gt v3, v0, :cond_e

    const/16 v2, 0x7e

    if-le v0, v2, :cond_d

    goto :goto_4

    :cond_d
    move-object/from16 v6, p0

    goto :goto_6

    .line 1133
    :cond_e
    :goto_4
    const/16 v2, 0x85

    if-eq v0, v2, :cond_12

    const/16 v2, 0xa0

    if-lt v0, v2, :cond_f

    const v2, 0xd7ff

    if-le v0, v2, :cond_12

    :cond_f
    const v2, 0xe000

    if-lt v0, v2, :cond_10

    const v2, 0xfffd

    if-le v0, v2, :cond_12

    :cond_10
    const/high16 v2, 0x10000

    if-lt v0, v2, :cond_11

    const v2, 0x10ffff

    if-gt v0, v2, :cond_11

    goto :goto_5

    .line 1141
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v6, p0

    move v12, v2

    .end local v12    # "specialCharacters":Z
    .local v2, "specialCharacters":Z
    goto :goto_6

    .line 1137
    .end local v2    # "specialCharacters":Z
    .restart local v12    # "specialCharacters":Z
    :cond_12
    :goto_5
    move-object/from16 v6, p0

    iget-boolean v2, v6, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-nez v2, :cond_14

    .line 1138
    const/4 v2, 0x1

    move v12, v2

    .end local v12    # "specialCharacters":Z
    .restart local v2    # "specialCharacters":Z
    goto :goto_6

    .line 1132
    .end local v2    # "specialCharacters":Z
    .restart local v12    # "specialCharacters":Z
    :cond_13
    move-object/from16 v6, p0

    .line 1145
    :cond_14
    :goto_6
    if-ne v0, v3, :cond_18

    .line 1146
    if-nez v7, :cond_15

    .line 1147
    const/4 v15, 0x1

    .line 1149
    :cond_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v7, v2, :cond_16

    .line 1150
    const/16 v17, 0x1

    .line 1152
    :cond_16
    if-eqz v24, :cond_17

    .line 1153
    const/16 v19, 0x1

    .line 1155
    :cond_17
    const/4 v2, 0x1

    .line 1156
    .end local v23    # "previousSpace":Z
    .local v2, "previousSpace":Z
    const/4 v3, 0x0

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v24    # "previousBreak":Z
    .local v3, "previousBreak":Z
    goto :goto_7

    .line 1157
    .end local v2    # "previousSpace":Z
    .end local v3    # "previousBreak":Z
    .restart local v23    # "previousSpace":Z
    .restart local v24    # "previousBreak":Z
    :cond_18
    if-eqz v1, :cond_1c

    .line 1158
    if-nez v7, :cond_19

    .line 1159
    const/16 v16, 0x1

    .line 1161
    :cond_19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v14

    if-ne v7, v2, :cond_1a

    .line 1162
    const/16 v18, 0x1

    .line 1164
    :cond_1a
    if-eqz v23, :cond_1b

    .line 1165
    const/16 v20, 0x1

    .line 1167
    :cond_1b
    const/4 v2, 0x0

    .line 1168
    .end local v23    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v24    # "previousBreak":Z
    .restart local v3    # "previousBreak":Z
    goto :goto_7

    .line 1170
    .end local v2    # "previousSpace":Z
    .end local v3    # "previousBreak":Z
    .restart local v23    # "previousSpace":Z
    .restart local v24    # "previousBreak":Z
    :cond_1c
    const/4 v2, 0x0

    .line 1171
    .end local v23    # "previousSpace":Z
    .restart local v2    # "previousSpace":Z
    const/4 v3, 0x0

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1175
    .end local v2    # "previousSpace":Z
    .restart local v23    # "previousSpace":Z
    :goto_7
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v7, v2

    .line 1176
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v1, :cond_1d

    goto :goto_8

    :cond_1d
    const/4 v2, 0x0

    goto :goto_9

    :cond_1e
    :goto_8
    const/4 v2, 0x1

    :goto_9
    move/from16 v21, v2

    .line 1177
    const/4 v2, 0x1

    .line 1178
    .end local v22    # "followedByWhitespace":Z
    .local v2, "followedByWhitespace":Z
    add-int/lit8 v3, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 1179
    invoke-virtual {v8, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v3, v7

    .line 1180
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 1181
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v8, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    if-nez v4, :cond_20

    if-eqz v1, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v4, 0x0

    goto :goto_b

    :cond_20
    :goto_a
    const/4 v4, 0x1

    :goto_b
    move v2, v4

    move/from16 v22, v2

    goto :goto_c

    .line 1184
    .end local v0    # "c":I
    .end local v1    # "isLineBreak":Z
    .end local v3    # "nextIndex":I
    :cond_21
    move/from16 v22, v2

    .end local v2    # "followedByWhitespace":Z
    .restart local v22    # "followedByWhitespace":Z
    :goto_c
    goto/16 :goto_2

    .line 1186
    :cond_22
    move-object/from16 v6, p0

    const/4 v0, 0x1

    .line 1187
    .local v0, "allowFlowPlain":Z
    const/4 v1, 0x1

    .line 1188
    .local v1, "allowBlockPlain":Z
    const/4 v2, 0x1

    .line 1189
    .local v2, "allowSingleQuoted":Z
    const/4 v3, 0x1

    .line 1191
    .local v3, "allowBlock":Z
    if-nez v15, :cond_23

    if-nez v16, :cond_23

    if-nez v17, :cond_23

    if-eqz v18, :cond_24

    .line 1192
    :cond_23
    move v1, v13

    move v0, v13

    .line 1195
    :cond_24
    if-eqz v17, :cond_25

    .line 1196
    const/4 v3, 0x0

    .line 1200
    :cond_25
    if-eqz v19, :cond_26

    .line 1201
    move v2, v13

    move v1, v13

    move v0, v13

    .line 1205
    :cond_26
    if-nez v20, :cond_28

    if-eqz v12, :cond_27

    goto :goto_d

    :cond_27
    move v13, v2

    move v14, v3

    goto :goto_e

    .line 1206
    :cond_28
    :goto_d
    move v3, v13

    move v2, v13

    move v1, v13

    move v0, v13

    move v14, v3

    .line 1210
    .end local v2    # "allowSingleQuoted":Z
    .end local v3    # "allowBlock":Z
    .local v13, "allowSingleQuoted":Z
    .local v14, "allowBlock":Z
    :goto_e
    if-eqz v11, :cond_29

    .line 1211
    const/4 v0, 0x0

    .line 1214
    :cond_29
    if-eqz v10, :cond_2a

    .line 1215
    const/4 v0, 0x0

    move/from16 v25, v0

    goto :goto_f

    .line 1214
    :cond_2a
    move/from16 v25, v0

    .line 1218
    .end local v0    # "allowFlowPlain":Z
    .local v25, "allowFlowPlain":Z
    :goto_f
    if-eqz v9, :cond_2b

    .line 1219
    const/4 v1, 0x0

    move/from16 v26, v1

    goto :goto_10

    .line 1218
    :cond_2b
    move/from16 v26, v1

    .line 1222
    .end local v1    # "allowBlockPlain":Z
    .local v26, "allowBlockPlain":Z
    :goto_10
    new-instance v27, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    const/4 v2, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move v3, v11

    move/from16 v4, v25

    move/from16 v5, v26

    move v6, v13

    move/from16 v28, v7

    .end local v7    # "index":I
    .local v28, "index":I
    move v7, v14

    invoke-direct/range {v0 .. v7}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-object v27
.end method

.method private checkEmptyDocument()Z
    .locals 4

    .line 817
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    .line 821
    .local v0, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v2, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_2

    .line 822
    move-object v2, v0

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 823
    .local v2, "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getAnchor()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 826
    .end local v2    # "e":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_2
    return v1

    .line 818
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_3
    :goto_0
    return v1
.end method

.method private checkEmptyMapping()Z
    .locals 1

    .line 813
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkEmptySequence()Z
    .locals 1

    .line 809
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkSimpleKey()Z
    .locals 3

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 832
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 833
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/NodeEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 835
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 837
    :cond_1
    const/4 v1, 0x0

    .line 838
    .local v1, "tag":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_2

    .line 839
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 840
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v2, :cond_3

    .line 841
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 843
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 844
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 845
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 847
    :cond_4
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 849
    :cond_5
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_7

    .line 850
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v2, :cond_6

    .line 851
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 853
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 855
    :cond_7
    iget v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->maxSimpleKeyLength:I

    if-ge v0, v2, :cond_a

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v2, v2, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isMultiline()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private chooseScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 3

    .line 912
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 913
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_0

    .line 914
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 916
    :cond_0
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 917
    :cond_2
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v1

    .line 919
    :cond_3
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 920
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isMultiline()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowFlowPlain()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowBlockPlain()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 922
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 925
    :cond_7
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-ne v1, v2, :cond_9

    .line 926
    :cond_8
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowBlock()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 927
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    return-object v1

    .line 930
    :cond_9
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->isPlain()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-ne v1, v2, :cond_c

    .line 931
    :cond_a
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isAllowSingleQuoted()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->isMultiline()Z

    move-result v1

    if-nez v1, :cond_c

    .line 932
    :cond_b
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v1

    .line 935
    :cond_c
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v1
.end method

.method private determineBlockHints(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1487
    .local v0, "hints":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1490
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1491
    .local v1, "ch1":C
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1492
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1493
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_2

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1494
    :cond_2
    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private expectAlias()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "*"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 483
    return-void

    .line 479
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "Alias must be provided"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expectBlockMapping()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 721
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 722
    return-void
.end method

.method private expectBlockSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 667
    .local v0, "indentless":Z
    :goto_0
    invoke-direct {p0, v1, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 668
    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstBlockSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 669
    return-void
.end method

.method private expectFlowMapping()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    const-string v0, "{"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 566
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 567
    invoke-direct {p0, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 568
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 571
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowMappingKey;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 572
    return-void
.end method

.method private expectFlowSequence()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    const-string v0, "["

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 496
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    .line 497
    invoke-direct {p0, v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 498
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 501
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFirstFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 502
    return-void
.end method

.method private expectNode(ZZZ)V
    .locals 3
    .param p1, "root"    # Z
    .param p2, "mapping"    # Z
    .param p3, "simpleKey"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    .line 448
    iput-boolean p2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->mappingContext:Z

    .line 449
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    .line 450
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectAlias()V

    goto/16 :goto_3

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 473
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected NodeEvent, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_2
    :goto_0
    const-string v0, "&"

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processAnchor(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processTag()V

    .line 455
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    if-eqz v0, :cond_3

    .line 456
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectScalar()V

    goto :goto_3

    .line 457
    :cond_3
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    if-eqz v0, :cond_6

    .line 458
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->isFlow()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptySequence()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 462
    :cond_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockSequence()V

    goto :goto_3

    .line 460
    :cond_5
    :goto_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowSequence()V

    goto :goto_3

    .line 465
    :cond_6
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->isFlow()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->checkEmptyMapping()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    .line 469
    :cond_7
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectBlockMapping()V

    goto :goto_3

    .line 467
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->expectFlowMapping()V

    .line 475
    :goto_3
    return-void
.end method

.method private expectScalar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->increaseIndent(ZZ)V

    .line 487
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->processScalar()V

    .line 488
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 489
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/emitter/EmitterState;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    .line 490
    return-void
.end method

.method private increaseIndent(ZZ)V
    .locals 2
    .param p1, "flow"    # Z
    .param p2, "indentless"    # Z

    .line 316
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    goto :goto_0

    .line 323
    :cond_1
    if-nez p2, :cond_2

    .line 324
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestIndent:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    .line 326
    :cond_2
    :goto_0
    return-void
.end method

.method private isFoldedOrLiteral(Lorg/yaml/snakeyaml/events/Event;)Z
    .locals 4
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;

    .line 758
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/events/Event;->is(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 759
    return v1

    .line 761
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 762
    .local v0, "scalarEvent":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v2

    .line 763
    .local v2, "style":Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    sget-object v3, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eq v2, v3, :cond_1

    sget-object v3, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private needEvents(Ljava/util/Iterator;I)Z
    .locals 5
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;I)Z"
        }
    .end annotation

    .line 293
    .local p1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    const/4 v0, 0x0

    .line 294
    .local v0, "level":I
    const/4 v1, 0x0

    .line 295
    .local v1, "actualCount":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 296
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/events/Event;

    .line 297
    .local v2, "event":Lorg/yaml/snakeyaml/events/Event;
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CommentEvent;

    if-eqz v4, :cond_0

    .line 298
    goto :goto_0

    .line 300
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 301
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-nez v4, :cond_4

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    if-eqz v4, :cond_1

    goto :goto_2

    .line 303
    :cond_1
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/yaml/snakeyaml/events/CollectionEndEvent;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 305
    :cond_2
    instance-of v4, v2, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    if-eqz v4, :cond_5

    .line 306
    const/4 v0, -0x1

    goto :goto_3

    .line 304
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 302
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 308
    :cond_5
    :goto_3
    if-gez v0, :cond_6

    .line 309
    return v3

    .line 311
    .end local v2    # "event":Lorg/yaml/snakeyaml/events/Event;
    :cond_6
    goto :goto_0

    .line 312
    :cond_7
    if-ge v1, p2, :cond_8

    const/4 v3, 0x1

    :cond_8
    return v3
.end method

.method private needMoreEvents()Z
    .locals 5

    .line 263
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 264
    return v1

    .line 267
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 268
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/events/Event;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/events/Event;

    .line 269
    .local v2, "event":Lorg/yaml/snakeyaml/events/Event;
    :goto_0
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/CommentEvent;

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    return v1

    .line 273
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/yaml/snakeyaml/events/Event;

    goto :goto_0

    .line 276
    :cond_2
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    if-eqz v3, :cond_3

    .line 277
    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(Ljava/util/Iterator;I)Z

    move-result v1

    return v1

    .line 278
    :cond_3
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    .line 279
    invoke-direct {p0, v0, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(Ljava/util/Iterator;I)Z

    move-result v1

    return v1

    .line 280
    :cond_4
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    if-eqz v3, :cond_5

    .line 281
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(Ljava/util/Iterator;I)Z

    move-result v1

    return v1

    .line 282
    :cond_5
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/StreamStartEvent;

    if-eqz v3, :cond_6

    .line 283
    invoke-direct {p0, v0, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(Ljava/util/Iterator;I)Z

    move-result v1

    return v1

    .line 284
    :cond_6
    instance-of v3, v2, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 285
    return v4

    .line 286
    :cond_7
    iget-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->emitComments:Z

    if-eqz v3, :cond_8

    .line 287
    invoke-direct {p0, v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->needEvents(Ljava/util/Iterator;I)Z

    move-result v1

    return v1

    .line 289
    :cond_8
    return v4
.end method

.method static prepareAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "anchor"    # Ljava/lang/String;

    .line 1042
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1045
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->INVALID_ANCHOR:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 1046
    .local v1, "invalid":Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_0

    .line 1049
    .end local v1    # "invalid":Ljava/lang/Character;
    goto :goto_0

    .line 1047
    .restart local v1    # "invalid":Ljava/lang/Character;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in the anchor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1050
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "invalid":Ljava/lang/Character;
    :cond_1
    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1051
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1054
    return-object p0

    .line 1052
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Anchor may not contain spaces: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1043
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "anchor must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;

    .line 1013
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 1016
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1017
    return-object p1

    .line 1019
    :cond_0
    const/4 v1, 0x0

    .line 1020
    .local v1, "handle":Ljava/lang/String;
    move-object v2, p1

    .line 1022
    .local v2, "suffix":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1023
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1024
    :cond_1
    move-object v1, v4

    .line 1026
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1027
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    if-eqz v1, :cond_4

    .line 1028
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1029
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->tagPrefixes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1032
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1033
    .local v0, "end":I
    if-lez v0, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    .line 1035
    .local v3, "suffixText":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_6

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1038
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1014
    .end local v0    # "end":I
    .end local v1    # "handle":Ljava/lang/String;
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "suffixText":Ljava/lang/String;
    :cond_7
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "handle"    # Ljava/lang/String;

    .line 983
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 985
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_2

    .line 987
    const-string v0, "!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/yaml/snakeyaml/emitter/Emitter;->HANDLE_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 988
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid character in the tag handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_1
    :goto_0
    return-object p1

    .line 986
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag handle must start and end with \'!\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag handle must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareTagPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;

    .line 994
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 998
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 999
    .local v1, "start":I
    const/4 v2, 0x0

    .line 1000
    .local v2, "end":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_0

    .line 1001
    const/4 v2, 0x1

    .line 1003
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1006
    :cond_1
    if-ge v1, v2, :cond_2

    .line 1007
    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1009
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 995
    .end local v0    # "chunks":Ljava/lang/StringBuilder;
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_3
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v1, "tag prefix must not be empty"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prepareVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 974
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$Version;->major()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 977
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/DumperOptions$Version;->getRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 975
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/emitter/EmitterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported YAML version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processAnchor(Ljava/lang/String;)V
    .locals 5
    .param p1, "indicator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 864
    .local v0, "ev":Lorg/yaml/snakeyaml/events/NodeEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 865
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 866
    return-void

    .line 868
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 869
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 871
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 872
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedAnchor:Ljava/lang/String;

    .line 873
    return-void
.end method

.method private processScalar()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 940
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    if-nez v1, :cond_0

    .line 941
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->analyzeScalar(Ljava/lang/String;)Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 943
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v1, :cond_1

    .line 944
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 946
    :cond_1
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->simpleKeyContext:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 947
    .local v1, "split":Z
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v2, :cond_3

    .line 948
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writePlain(Ljava/lang/String;Z)V

    goto :goto_1

    .line 950
    :cond_3
    sget-object v2, Lorg/yaml/snakeyaml/emitter/Emitter$1;->$SwitchMap$org$yaml$snakeyaml$DumperOptions$ScalarStyle:[I

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 964
    new-instance v2, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected style: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    :pswitch_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLiteral(Ljava/lang/String;)V

    .line 962
    goto :goto_1

    .line 958
    :pswitch_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeFolded(Ljava/lang/String;Z)V

    .line 959
    goto :goto_1

    .line 955
    :pswitch_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeSingleQuoted(Ljava/lang/String;Z)V

    .line 956
    goto :goto_1

    .line 952
    :pswitch_3
    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;->getScalar()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeDoubleQuoted(Ljava/lang/String;Z)V

    .line 953
    nop

    .line 967
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->analysis:Lorg/yaml/snakeyaml/emitter/ScalarAnalysis;

    .line 968
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 969
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    instance-of v1, v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 878
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 879
    .local v1, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 880
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v3, :cond_0

    .line 881
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->chooseScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v3

    iput-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 883
    :cond_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->style:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInNonPlainScalar()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 886
    :cond_3
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 887
    return-void

    .line 889
    :cond_4
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    .line 890
    const-string v0, "!"

    .line 891
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 893
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    :cond_5
    goto :goto_0

    .line 894
    :cond_6
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    check-cast v1, Lorg/yaml/snakeyaml/events/CollectionStartEvent;

    .line 895
    .local v1, "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v0, :cond_8

    :cond_7
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->getImplicit()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 897
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 898
    return-void

    .line 901
    .end local v1    # "ev":Lorg/yaml/snakeyaml/events/CollectionStartEvent;
    :cond_8
    :goto_0
    if-eqz v0, :cond_a

    .line 904
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 905
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->prepareTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 907
    :cond_9
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 908
    iput-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->preparedTag:Ljava/lang/String;

    .line 909
    return-void

    .line 902
    :cond_a
    new-instance v1, Lorg/yaml/snakeyaml/emitter/EmitterException;

    const-string v2, "tag is not specified"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/emitter/EmitterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeBlockComment()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1475
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1477
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeCommentLines(Ljava/util/List;)Z

    .line 1479
    :cond_0
    return-void
.end method

.method private writeCommentLines(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/comments/CommentLine;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1448
    .local p1, "commentLines":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/comments/CommentLine;>;"
    const/4 v0, 0x0

    .line 1449
    .local v0, "wroteComment":Z
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->emitComments:Z

    if-eqz v1, :cond_4

    .line 1450
    const/4 v1, 0x0

    .line 1451
    .local v1, "indentColumns":I
    const/4 v2, 0x1

    .line 1452
    .local v2, "firstComment":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/comments/CommentLine;

    .line 1453
    .local v4, "commentLine":Lorg/yaml/snakeyaml/comments/CommentLine;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/comments/CommentLine;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v5

    sget-object v6, Lorg/yaml/snakeyaml/comments/CommentType;->BLANK_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    .line 1454
    const-string v5, "#"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 1455
    const/4 v2, 0x0

    .line 1456
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/comments/CommentLine;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v8

    sget-object v9, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p0, v5, v8, v6, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1457
    iget v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-lez v5, :cond_1

    iget v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/lit8 v6, v5, -0x1

    :cond_1
    move v1, v6

    goto :goto_2

    .line 1459
    :cond_2
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    .line 1460
    invoke-virtual {p0, v5, v6, v6, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1462
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/comments/CommentLine;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1463
    invoke-direct {p0, v7}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1465
    :cond_3
    invoke-direct {p0, v7}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1466
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1468
    :goto_3
    const/4 v0, 0x1

    .line 1469
    .end local v4    # "commentLine":Lorg/yaml/snakeyaml/comments/CommentLine;
    goto :goto_0

    .line 1471
    .end local v1    # "indentColumns":I
    .end local v2    # "firstComment":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    return v0
.end method

.method private writeDoubleQuoted(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1373
    const-string v0, "\""

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1374
    const/4 v3, 0x0

    .line 1375
    .local v3, "start":I
    const/4 v4, 0x0

    .line 1376
    .local v4, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_e

    .line 1377
    const/4 v5, 0x0

    .line 1378
    .local v5, "ch":Ljava/lang/Character;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 1379
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 1381
    :cond_0
    const-string v6, "\\"

    const/16 v7, 0x20

    if-eqz v5, :cond_1

    const-string v8, "\"\\\u0085\u2028\u2029\ufeff"

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-gt v7, v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const/16 v9, 0x7e

    if-le v8, v9, :cond_9

    .line 1383
    :cond_1
    if-ge v3, v4, :cond_2

    .line 1384
    sub-int v8, v4, v3

    .line 1385
    .local v8, "len":I
    iget v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v9, v8

    iput v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1386
    iget-object v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v9, p1, v3, v8}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1387
    move v3, v4

    .line 1389
    .end local v8    # "len":I
    :cond_2
    if-eqz v5, :cond_9

    .line 1391
    sget-object v8, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1392
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lorg/yaml/snakeyaml/emitter/Emitter;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "data":Ljava/lang/String;
    goto/16 :goto_2

    .line 1393
    .end local v8    # "data":Ljava/lang/String;
    :cond_3
    iget-boolean v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->allowUnicode:Z

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-static {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(I)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 1413
    :cond_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "data":Ljava/lang/String;
    goto/16 :goto_2

    .line 1396
    .end local v8    # "data":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const/16 v9, 0xff

    const/16 v10, 0x10

    if-gt v8, v9, :cond_6

    .line 1397
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1398
    .local v8, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1399
    .local v8, "data":Ljava/lang/String;
    goto/16 :goto_2

    .end local v8    # "data":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const v9, 0xd800

    const-string v11, "\\u"

    const-string v12, "000"

    if-lt v8, v9, :cond_8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    const v9, 0xdbff

    if-gt v8, v9, :cond_8

    .line 1400
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1401
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    .line 1402
    .local v8, "ch2":Ljava/lang/Character;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1403
    .local v9, "s":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\\U"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x8

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1404
    .end local v9    # "s":Ljava/lang/String;
    .local v8, "data":Ljava/lang/String;
    goto :goto_2

    .line 1405
    .end local v8    # "data":Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1406
    .local v8, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1407
    .local v8, "data":Ljava/lang/String;
    goto :goto_2

    .line 1409
    .end local v8    # "data":Ljava/lang/String;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1410
    .local v8, "s":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1411
    .local v8, "data":Ljava/lang/String;
    nop

    .line 1415
    :goto_2
    iget v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1416
    iget-object v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v9, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1417
    add-int/lit8 v3, v4, 0x1

    .line 1420
    .end local v8    # "data":Ljava/lang/String;
    :cond_9
    if-lez v4, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    if-ge v4, v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v8

    if-eq v8, v7, :cond_a

    if-lt v3, v4, :cond_d

    :cond_a
    iget v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v9, v4, v3

    add-int/2addr v8, v9

    iget v9, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v8, v9, :cond_d

    if-eqz p2, :cond_d

    .line 1423
    if-lt v3, v4, :cond_b

    .line 1424
    const-string v6, "\\"

    .local v6, "data":Ljava/lang/String;
    goto :goto_3

    .line 1426
    .end local v6    # "data":Ljava/lang/String;
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1428
    .restart local v6    # "data":Ljava/lang/String;
    :goto_3
    if-ge v3, v4, :cond_c

    .line 1429
    move v3, v4

    .line 1431
    :cond_c
    iget v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1432
    iget-object v8, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v8, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1434
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1435
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1436
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_d

    .line 1437
    const-string v6, "\\"

    .line 1438
    iget v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1439
    iget-object v7, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1442
    .end local v6    # "data":Ljava/lang/String;
    :cond_d
    nop

    .end local v5    # "ch":Ljava/lang/Character;
    add-int/lit8 v4, v4, 0x1

    .line 1443
    goto/16 :goto_0

    .line 1444
    :cond_e
    invoke-virtual {p0, v0, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1445
    return-void
.end method

.method private writeInlineComments()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1482
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeCommentLines(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private writeLineBreak(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1283
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1284
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1285
    if-nez p1, :cond_0

    .line 1286
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestLineBreak:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    goto :goto_0

    .line 1288
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1290
    :goto_0
    return-void
.end method

.method private writeSingleQuoted(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1310
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\'"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v4}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1311
    const/4 v5, 0x0

    .line 1312
    .local v5, "spaces":Z
    const/4 v6, 0x0

    .line 1313
    .local v6, "breaks":Z
    const/4 v7, 0x0

    .local v7, "start":I
    const/4 v8, 0x0

    .line 1315
    .local v8, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v8, v9, :cond_d

    .line 1316
    const/4 v9, 0x0

    .line 1317
    .local v9, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 1318
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1320
    :cond_0
    const/16 v10, 0x20

    if-eqz v5, :cond_3

    .line 1321
    if-eqz v9, :cond_1

    if-eq v9, v10, :cond_9

    .line 1322
    :cond_1
    add-int/lit8 v11, v7, 0x1

    if-ne v11, v8, :cond_2

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v11, v12, :cond_2

    if-eqz p2, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v8, v11, :cond_2

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_1

    .line 1326
    :cond_2
    sub-int v11, v8, v7

    .line 1327
    .local v11, "len":I
    iget v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v12, v11

    iput v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1328
    iget-object v12, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v12, v1, v7, v11}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1330
    .end local v11    # "len":I
    :goto_1
    move v7, v8

    goto :goto_4

    .line 1332
    :cond_3
    if-eqz v6, :cond_8

    .line 1333
    if-eqz v9, :cond_4

    sget-object v11, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v11, v9}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1334
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0xa

    if-ne v11, v13, :cond_5

    .line 1335
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1337
    :cond_5
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1338
    .local v11, "data":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    .local v14, "arr$":[C
    array-length v15, v14

    .local v15, "len$":I
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "i$":I
    :goto_2
    if-ge v3, v15, :cond_7

    aget-char v4, v14, v3

    .line 1339
    .local v4, "br":C
    if-ne v4, v13, :cond_6

    .line 1340
    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1342
    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1338
    .end local v4    # "br":C
    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_2

    .line 1345
    .end local v3    # "i$":I
    .end local v14    # "arr$":[C
    .end local v15    # "len$":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1346
    move v7, v8

    .line 1347
    .end local v11    # "data":Ljava/lang/String;
    goto :goto_4

    .line 1349
    :cond_8
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v4, "\u0000 \'"

    invoke-virtual {v3, v9, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1350
    if-ge v7, v8, :cond_9

    .line 1351
    sub-int v3, v8, v7

    .line 1352
    .local v3, "len":I
    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v4, v3

    iput v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1353
    iget-object v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v4, v1, v7, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1354
    move v7, v8

    .line 1358
    .end local v3    # "len":I
    :cond_9
    :goto_4
    const/16 v3, 0x27

    if-ne v9, v3, :cond_a

    .line 1359
    iget v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1360
    iget-object v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v4, "\'\'"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1361
    add-int/lit8 v3, v8, 0x1

    move v7, v3

    .line 1363
    :cond_a
    if-eqz v9, :cond_c

    .line 1364
    if-ne v9, v10, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 1365
    .end local v5    # "spaces":Z
    .local v3, "spaces":Z
    :goto_5
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v9}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    move v5, v3

    move v6, v4

    .line 1367
    .end local v3    # "spaces":Z
    .restart local v5    # "spaces":Z
    :cond_c
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1369
    .end local v9    # "ch":C
    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1370
    return-void
.end method

.method private writeWhitespace(I)V
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    if-gtz p1, :cond_0

    .line 1270
    return-void

    .line 1272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1273
    new-array v0, p1, [C

    .line 1274
    .local v0, "data":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1275
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 1274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1278
    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write([C)V

    .line 1279
    return-void
.end method


# virtual methods
.method public emit(Lorg/yaml/snakeyaml/events/Event;)V
    .locals 1
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->needMoreEvents()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->events:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    .line 255
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/emitter/EmitterState;->expect()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;

    goto :goto_0

    .line 258
    :cond_0
    return-void
.end method

.method flushStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1230
    return-void
.end method

.method writeFolded(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1500
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1501
    .local v2, "hints":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5, v5}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1502
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2b

    if-ne v3, v6, :cond_0

    .line 1503
    iput-boolean v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1505
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeInlineComments()Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 1506
    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1508
    :cond_1
    const/4 v3, 0x1

    .line 1509
    .local v3, "leadingSpace":Z
    const/4 v7, 0x0

    .line 1510
    .local v7, "spaces":Z
    const/4 v8, 0x1

    .line 1511
    .local v8, "breaks":Z
    const/4 v9, 0x0

    .local v9, "start":I
    const/4 v10, 0x0

    .line 1512
    .local v10, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_10

    .line 1513
    const/4 v11, 0x0

    .line 1514
    .local v11, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_2

    .line 1515
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1517
    :cond_2
    const/16 v12, 0x20

    if-eqz v8, :cond_9

    .line 1518
    if-eqz v11, :cond_3

    sget-object v13, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v13, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1519
    :cond_3
    const/16 v13, 0xa

    if-nez v3, :cond_4

    if-eqz v11, :cond_4

    if-eq v11, v12, :cond_4

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_4

    .line 1520
    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1522
    :cond_4
    if-ne v11, v12, :cond_5

    const/4 v14, 0x1

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    :goto_1
    move v3, v14

    .line 1523
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1524
    .local v14, "data":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    .local v15, "arr$":[C
    array-length v4, v15

    .local v4, "len$":I
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "i$":I
    :goto_2
    if-ge v5, v4, :cond_7

    aget-char v12, v15, v5

    .line 1525
    .local v12, "br":C
    if-ne v12, v13, :cond_6

    .line 1526
    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1528
    :cond_6
    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1524
    .end local v12    # "br":C
    :goto_3
    add-int/lit8 v5, v5, 0x1

    const/16 v12, 0x20

    const/16 v13, 0xa

    goto :goto_2

    .line 1531
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    .end local v15    # "arr$":[C
    :cond_7
    if-eqz v11, :cond_8

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1534
    :cond_8
    move v4, v10

    .line 1535
    .end local v9    # "start":I
    .end local v14    # "data":Ljava/lang/String;
    .local v4, "start":I
    move v9, v4

    goto :goto_5

    .line 1536
    .end local v4    # "start":I
    .restart local v9    # "start":I
    :cond_9
    if-eqz v7, :cond_b

    .line 1537
    const/16 v4, 0x20

    if-eq v11, v4, :cond_d

    .line 1538
    add-int/lit8 v4, v9, 0x1

    if-ne v4, v10, :cond_a

    iget v4, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v4, v5, :cond_a

    if-eqz p2, :cond_a

    .line 1539
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_4

    .line 1541
    :cond_a
    sub-int v4, v10, v9

    .line 1542
    .local v4, "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1543
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v9, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1545
    .end local v4    # "len":I
    :goto_4
    move v4, v10

    move v9, v4

    .end local v9    # "start":I
    .local v4, "start":I
    goto :goto_5

    .line 1548
    .end local v4    # "start":I
    .restart local v9    # "start":I
    :cond_b
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v5, "\u0000 "

    invoke-virtual {v4, v11, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1549
    sub-int v4, v10, v9

    .line 1550
    .local v4, "len":I
    iget v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1551
    iget-object v5, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v5, v1, v9, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1552
    if-nez v11, :cond_c

    .line 1553
    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1555
    :cond_c
    move v5, v10

    move v9, v5

    .line 1558
    .end local v4    # "len":I
    :cond_d
    :goto_5
    if-eqz v11, :cond_f

    .line 1559
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    .line 1560
    .end local v8    # "breaks":Z
    .local v4, "breaks":Z
    const/16 v5, 0x20

    if-ne v11, v5, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    move v8, v4

    move v7, v5

    .line 1562
    .end local v4    # "breaks":Z
    .restart local v8    # "breaks":Z
    :cond_f
    nop

    .end local v11    # "ch":C
    add-int/lit8 v10, v10, 0x1

    .line 1563
    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1564
    :cond_10
    return-void
.end method

.method writeIndent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "indent":I
    goto :goto_0

    .line 1258
    .end local v0    # "indent":I
    :cond_0
    const/4 v0, 0x0

    .line 1261
    .restart local v0    # "indent":I
    :goto_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-gt v1, v0, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v1, :cond_2

    .line 1262
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1265
    :cond_2
    iget v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeWhitespace(I)V

    .line 1266
    return-void
.end method

.method writeIndicator(Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "indicator"    # Ljava/lang/String;
    .param p2, "needWhitespace"    # Z
    .param p3, "whitespace"    # Z
    .param p4, "indentation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1242
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 1243
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1244
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v2, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write([C)V

    .line 1246
    :cond_0
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1247
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1248
    iget v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1249
    iput-boolean v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1250
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1251
    return-void
.end method

.method writeLiteral(Ljava/lang/String;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter;->determineBlockHints(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    .local v0, "hints":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 1569
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 1570
    iput-boolean v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1572
    :cond_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeInlineComments()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1573
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1575
    :cond_1
    const/4 v1, 0x1

    .line 1576
    .local v1, "breaks":Z
    const/4 v3, 0x0

    .local v3, "start":I
    const/4 v4, 0x0

    .line 1577
    .local v4, "end":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_c

    .line 1578
    const/4 v5, 0x0

    .line 1579
    .local v5, "ch":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 1580
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1582
    :cond_2
    if-eqz v1, :cond_7

    .line 1583
    if-eqz v5, :cond_3

    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1584
    :cond_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1585
    .local v6, "data":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .local v7, "arr$":[C
    array-length v8, v7

    .local v8, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v8, :cond_5

    aget-char v10, v7, v9

    .line 1586
    .local v10, "br":C
    const/16 v11, 0xa

    if-ne v10, v11, :cond_4

    .line 1587
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_2

    .line 1589
    :cond_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1585
    .end local v10    # "br":C
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1592
    .end local v7    # "arr$":[C
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_5
    if-eqz v5, :cond_6

    .line 1593
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1595
    :cond_6
    move v3, v4

    .line 1596
    .end local v6    # "data":Ljava/lang/String;
    goto :goto_3

    .line 1598
    :cond_7
    if-eqz v5, :cond_8

    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1599
    :cond_8
    iget-object v6, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sub-int v7, v4, v3

    invoke-virtual {v6, p1, v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1600
    if-nez v5, :cond_9

    .line 1601
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1603
    :cond_9
    move v3, v4

    .line 1606
    :cond_a
    :goto_3
    if-eqz v5, :cond_b

    .line 1607
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v1

    .line 1609
    :cond_b
    nop

    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    .line 1610
    goto :goto_0

    .line 1611
    :cond_c
    return-void
.end method

.method writePlain(Ljava/lang/String;Z)V
    .locals 16
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "split"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1614
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->rootContext:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1615
    iput-boolean v3, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->openEnded:Z

    .line 1617
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1618
    return-void

    .line 1620
    :cond_1
    iget-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    if-nez v2, :cond_2

    .line 1621
    iget v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1622
    iget-object v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v4, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write([C)V

    .line 1624
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1625
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1626
    const/4 v4, 0x0

    .line 1627
    .local v4, "spaces":Z
    const/4 v5, 0x0

    .line 1628
    .local v5, "breaks":Z
    const/4 v6, 0x0

    .local v6, "start":I
    const/4 v7, 0x0

    .line 1629
    .local v7, "end":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v7, v8, :cond_d

    .line 1630
    const/4 v8, 0x0

    .line 1631
    .local v8, "ch":C
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_3

    .line 1632
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1634
    :cond_3
    const/16 v9, 0x20

    if-eqz v4, :cond_5

    .line 1635
    if-eq v8, v9, :cond_a

    .line 1636
    add-int/lit8 v10, v6, 0x1

    if-ne v10, v7, :cond_4

    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I

    if-le v10, v11, :cond_4

    if-eqz p2, :cond_4

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1638
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1639
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    goto :goto_1

    .line 1641
    :cond_4
    sub-int v10, v7, v6

    .line 1642
    .local v10, "len":I
    iget v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v11, v10

    iput v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1643
    iget-object v11, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v11, v1, v6, v10}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1645
    .end local v10    # "len":I
    :goto_1
    move v6, v7

    goto :goto_4

    .line 1647
    :cond_5
    if-eqz v5, :cond_9

    .line 1648
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v10, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1649
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0xa

    if-ne v10, v12, :cond_6

    .line 1650
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1652
    :cond_6
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1653
    .local v10, "data":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .local v13, "arr$":[C
    array-length v14, v13

    .local v14, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    if-ge v15, v14, :cond_8

    aget-char v3, v13, v15

    .line 1654
    .local v3, "br":C
    if-ne v3, v12, :cond_7

    .line 1655
    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    goto :goto_3

    .line 1657
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1653
    .end local v3    # "br":C
    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x1

    const/4 v11, 0x0

    goto :goto_2

    .line 1660
    .end local v13    # "arr$":[C
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 1661
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->whitespace:Z

    .line 1662
    iput-boolean v2, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->indention:Z

    .line 1663
    move v3, v7

    .line 1664
    .end local v6    # "start":I
    .end local v10    # "data":Ljava/lang/String;
    .local v3, "start":I
    move v6, v3

    goto :goto_4

    .line 1666
    .end local v3    # "start":I
    .restart local v6    # "start":I
    :cond_9
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v10, "\u0000 "

    invoke-virtual {v3, v8, v10}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1667
    sub-int v3, v7, v6

    .line 1668
    .local v3, "len":I
    iget v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    add-int/2addr v10, v3

    iput v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->column:I

    .line 1669
    iget-object v10, v0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v10, v1, v6, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 1670
    move v6, v7

    .line 1673
    .end local v3    # "len":I
    :cond_a
    :goto_4
    if-eqz v8, :cond_c

    .line 1674
    if-ne v8, v9, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    .line 1675
    .end local v4    # "spaces":Z
    .local v3, "spaces":Z
    :goto_5
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v8}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    move v5, v4

    move v4, v3

    .line 1677
    .end local v3    # "spaces":Z
    .restart local v4    # "spaces":Z
    :cond_c
    nop

    .end local v8    # "ch":C
    add-int/lit8 v7, v7, 0x1

    .line 1678
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1679
    :cond_d
    return-void
.end method

.method writeStreamEnd()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/emitter/Emitter;->flushStream()V

    .line 1238
    return-void
.end method

.method writeStreamStart()V
    .locals 0

    .line 1234
    return-void
.end method

.method writeTagDirective(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "handleText"    # Ljava/lang/String;
    .param p2, "prefixText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%TAG "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1303
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    sget-object v1, Lorg/yaml/snakeyaml/emitter/Emitter;->SPACE:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    .line 1304
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1306
    return-void
.end method

.method writeVersionDirective(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    const-string v1, "%YAML "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter;->stream:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeLineBreak(Ljava/lang/String;)V

    .line 1296
    return-void
.end method
