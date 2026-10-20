.class public Lorg/yaml/snakeyaml/DumperOptions;
.super Ljava/lang/Object;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;,
        Lorg/yaml/snakeyaml/DumperOptions$Version;,
        Lorg/yaml/snakeyaml/DumperOptions$LineBreak;,
        Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;,
        Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    }
.end annotation


# instance fields
.field private allowReadOnlyProperties:Z

.field private allowUnicode:Z

.field private anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

.field private bestWidth:I

.field private canonical:Z

.field private defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field private defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private explicitEnd:Z

.field private explicitStart:Z

.field private indent:I

.field private indentWithIndicator:Z

.field private indicatorIndent:I

.field private lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

.field private maxSimpleKeyLength:I

.field private nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

.field private prettyFlow:Ljava/lang/Boolean;

.field private processComments:Z

.field private splitLines:Z

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeZone:Ljava/util/TimeZone;

.field private version:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 184
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 187
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 188
    const/4 v2, 0x2

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 189
    iput v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    .line 190
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indentWithIndicator:Z

    .line 191
    const/16 v2, 0x50

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 192
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    .line 193
    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$LineBreak;->UNIX:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 194
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 195
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 197
    const/16 v2, 0x80

    iput v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->maxSimpleKeyLength:I

    .line 198
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->processComments:Z

    .line 199
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->BINARY:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    iput-object v2, p0, Lorg/yaml/snakeyaml/DumperOptions;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 201
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 202
    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 203
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 204
    new-instance v1, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/serializer/NumberAnchorGenerator;-><init>(I)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    return-void
.end method


# virtual methods
.method public getAnchorGenerator()Lorg/yaml/snakeyaml/serializer/AnchorGenerator;
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    return-object v0
.end method

.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public getIndent()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    return v0
.end method

.method public getIndentWithIndicator()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indentWithIndicator:Z

    return v0
.end method

.method public getIndicatorIndent()I
    .locals 1

    .line 271
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    return v0
.end method

.method public getLineBreak()Lorg/yaml/snakeyaml/DumperOptions$LineBreak;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    return-object v0
.end method

.method public getMaxSimpleKeyLength()I
    .locals 1

    .line 451
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->maxSimpleKeyLength:I

    return v0
.end method

.method public getNonPrintableStyle()Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    return-object v0
.end method

.method public getSplitLines()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    return v0
.end method

.method public getTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 336
    iget v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    return v0
.end method

.method public isAllowReadOnlyProperties()Z
    .locals 1

    .line 413
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    return v0
.end method

.method public isAllowUnicode()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    return v0
.end method

.method public isCanonical()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    return v0
.end method

.method public isExplicitEnd()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    return v0
.end method

.method public isExplicitStart()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    return v0
.end method

.method public isPrettyFlow()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isProcessComments()Z
    .locals 1

    .line 477
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->processComments:Z

    return v0
.end method

.method public setAllowReadOnlyProperties(Z)V
    .locals 0
    .param p1, "allowReadOnlyProperties"    # Z

    .line 425
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowReadOnlyProperties:Z

    .line 426
    return-void
.end method

.method public setAllowUnicode(Z)V
    .locals 0
    .param p1, "allowUnicode"    # Z

    .line 221
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->allowUnicode:Z

    .line 222
    return-void
.end method

.method public setAnchorGenerator(Lorg/yaml/snakeyaml/serializer/AnchorGenerator;)V
    .locals 0
    .param p1, "anchorGenerator"    # Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 447
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 448
    return-void
.end method

.method public setCanonical(Z)V
    .locals 0
    .param p1, "canonical"    # Z

    .line 301
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->canonical:Z

    .line 302
    return-void
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 2
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 359
    if-eqz p1, :cond_0

    .line 362
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 363
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use FlowStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .locals 2
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 236
    if-eqz p1, :cond_0

    .line 239
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->defaultStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 240
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Use ScalarStyle enum."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExplicitEnd(Z)V
    .locals 0
    .param p1, "explicitEnd"    # Z

    .line 395
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitEnd:Z

    .line 396
    return-void
.end method

.method public setExplicitStart(Z)V
    .locals 0
    .param p1, "explicitStart"    # Z

    .line 387
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->explicitStart:Z

    .line 388
    return-void
.end method

.method public setIndent(I)V
    .locals 2
    .param p1, "indent"    # I

    .line 243
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 246
    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 249
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indent:I

    .line 250
    return-void

    .line 247
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at most 10"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indent must be at least 1"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndentWithIndicator(Z)V
    .locals 0
    .param p1, "indentWithIndicator"    # Z

    .line 283
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indentWithIndicator:Z

    .line 284
    return-void
.end method

.method public setIndicatorIndent(I)V
    .locals 2
    .param p1, "indicatorIndent"    # I

    .line 261
    if-ltz p1, :cond_1

    .line 264
    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 267
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->indicatorIndent:I

    .line 268
    return-void

    .line 265
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be at most Emitter.MAX_INDENT-1: 9"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "Indicator indent must be non-negative."

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLineBreak(Lorg/yaml/snakeyaml/DumperOptions$LineBreak;)V
    .locals 2
    .param p1, "lineBreak"    # Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 376
    if-eqz p1, :cond_0

    .line 379
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->lineBreak:Lorg/yaml/snakeyaml/DumperOptions$LineBreak;

    .line 380
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specify line break."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxSimpleKeyLength(I)V
    .locals 2
    .param p1, "maxSimpleKeyLength"    # I

    .line 460
    const/16 v0, 0x400

    if-gt p1, v0, :cond_0

    .line 463
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->maxSimpleKeyLength:I

    .line 464
    return-void

    .line 461
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v1, "The simple key must not span more than 1024 stream characters. See https://yaml.org/spec/1.1/#id934537"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNonPrintableStyle(Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;)V
    .locals 0
    .param p1, "style"    # Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 490
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 491
    return-void
.end method

.method public setPrettyFlow(Z)V
    .locals 1
    .param p1, "prettyFlow"    # Z

    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions;->prettyFlow:Ljava/lang/Boolean;

    .line 317
    return-void
.end method

.method public setProcessComments(Z)V
    .locals 0
    .param p1, "processComments"    # Z

    .line 473
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->processComments:Z

    .line 474
    return-void
.end method

.method public setSplitLines(Z)V
    .locals 0
    .param p1, "splitLines"    # Z

    .line 347
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->splitLines:Z

    .line 348
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->tags:Ljava/util/Map;

    .line 404
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 438
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->timeZone:Ljava/util/TimeZone;

    .line 439
    return-void
.end method

.method public setVersion(Lorg/yaml/snakeyaml/DumperOptions$Version;)V
    .locals 0
    .param p1, "version"    # Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 287
    iput-object p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->version:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 288
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "bestWidth"    # I

    .line 332
    iput p1, p0, Lorg/yaml/snakeyaml/DumperOptions;->bestWidth:I

    .line 333
    return-void
.end method
