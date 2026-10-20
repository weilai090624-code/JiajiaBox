.class public Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;
.super Ljava/lang/Object;
.source "SafeRepresenter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/representer/Represent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RepresentString"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/representer/SafeRepresenter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .line 119
    const-string v0, "UTF-8"

    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 120
    .local v1, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x0

    .line 121
    .local v2, "style":Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "value":Ljava/lang/String;
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v4, v4, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->nonPrintableStyle:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    sget-object v5, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->BINARY:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 126
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 130
    .local v5, "bytes":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v0, v6

    .line 131
    .local v0, "checkValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-static {v5}, Lorg/yaml/snakeyaml/external/biz/base64Coder/Base64Coder;->encode([B)[C

    move-result-object v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 137
    .end local v5    # "bytes":[B
    .local v0, "binary":[C
    nop

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 139
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    goto :goto_0

    .line 132
    .local v0, "checkValue":Ljava/lang/String;
    .restart local v5    # "bytes":[B
    :cond_0
    :try_start_1
    new-instance v6, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v7, "invalid string value has occurred"

    invoke-direct {v6, v7}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    .end local v1    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v2    # "style":Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .end local v3    # "value":Ljava/lang/String;
    .end local p1    # "data":Ljava/lang/Object;
    throw v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .end local v0    # "checkValue":Ljava/lang/String;
    .end local v5    # "bytes":[B
    .restart local v1    # "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    .restart local v2    # "style":Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .restart local v3    # "value":Ljava/lang/String;
    .restart local p1    # "data":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    .local v4, "binary":[C
    new-instance v5, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v5, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 143
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "binary":[C
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    iget-object v0, v0, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-ne v0, v4, :cond_2

    invoke-static {}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->access$000()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/SafeRepresenter$RepresentString;->this$0:Lorg/yaml/snakeyaml/representer/SafeRepresenter;

    invoke-virtual {v0, v1, v3, v2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method
