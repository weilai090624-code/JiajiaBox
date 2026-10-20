.class public Lorg/ini4j/BasicProfile;
.super Lorg/ini4j/CommonMultiMap;
.source "BasicProfile.java"

# interfaces
.implements Lorg/ini4j/Profile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ini4j/BasicProfile$BeanInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ini4j/CommonMultiMap<",
        "Ljava/lang/String;",
        "Lorg/ini4j/Profile$Section;",
        ">;",
        "Lorg/ini4j/Profile;"
    }
.end annotation


# static fields
.field private static final EXPRESSION:Ljava/util/regex/Pattern;

.field private static final G_OPTION:I = 0x5

.field private static final G_OPTION_IDX:I = 0x7

.field private static final G_SECTION:I = 0x2

.field private static final G_SECTION_IDX:I = 0x4

.field private static final SECTION_ENVIRONMENT:Ljava/lang/String; = "@env"

.field private static final SECTION_SYSTEM_PROPERTIES:Ljava/lang/String; = "@prop"

.field private static final serialVersionUID:J = -0x1939222ddd65ce98L


# instance fields
.field private _comment:Ljava/lang/String;

.field private final _propertyFirstUpper:Z

.field private final _treeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "(?<!\\\\)\\$\\{(([^\\[\\}]+)(\\[([0-9]+)\\])?/)?([^\\[^/\\}]+)(\\[(([0-9]+))\\])?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/ini4j/BasicProfile;->EXPRESSION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/ini4j/BasicProfile;-><init>(ZZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "treeMode"    # Z
    .param p2, "propertyFirstUpper"    # Z

    .line 49
    invoke-direct {p0}, Lorg/ini4j/CommonMultiMap;-><init>()V

    .line 50
    iput-boolean p1, p0, Lorg/ini4j/BasicProfile;->_treeMode:Z

    .line 51
    iput-boolean p2, p0, Lorg/ini4j/BasicProfile;->_propertyFirstUpper:Z

    .line 52
    return-void
.end method

.method private getOrAdd(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 251
    .local v0, "section":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private parseOptionIndex(Ljava/util/regex/Matcher;)I
    .locals 2
    .param p1, "m"    # Ljava/util/regex/Matcher;

    .line 256
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private parseSection(Ljava/util/regex/Matcher;Lorg/ini4j/Profile$Section;)Lorg/ini4j/Profile$Section;
    .locals 3
    .param p1, "m"    # Ljava/util/regex/Matcher;
    .param p2, "owner"    # Lorg/ini4j/Profile$Section;

    .line 261
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "sectionName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/ini4j/BasicProfile;->parseSectionIndex(Ljava/util/regex/Matcher;)I

    move-result v1

    .line 264
    .local v1, "sectionIndex":I
    if-nez v0, :cond_0

    move-object v2, p2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, Lorg/ini4j/Profile$Section;

    :goto_1
    return-object v2
.end method

.method private parseSectionIndex(Ljava/util/regex/Matcher;)I
    .locals 2
    .param p1, "m"    # Ljava/util/regex/Matcher;

    .line 269
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lorg/ini4j/BasicProfile;->isTreeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 70
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "parent":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/ini4j/BasicProfile;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lorg/ini4j/BasicProfile;->add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    .line 81
    .end local v0    # "idx":I
    .end local v1    # "parent":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->newSection(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    .line 83
    .local v0, "section":Lorg/ini4j/Profile$Section;
    invoke-virtual {p0, p1, v0}, Lorg/ini4j/BasicProfile;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-object v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 90
    invoke-direct {p0, p1}, Lorg/ini4j/BasicProfile;->getOrAdd(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/ini4j/Profile$Section;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 95
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/ini4j/BasicProfile;->as(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public as(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 100
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lorg/ini4j/BasicProfile$BeanInvocationHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lorg/ini4j/BasicProfile$BeanInvocationHandler;-><init>(Lorg/ini4j/BasicProfile;Ljava/lang/String;Lorg/ini4j/BasicProfile$1;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fetch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/Object;
    .param p2, "optionName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 113
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 115
    .local v0, "sec":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/ini4j/spi/BeanTool;->zero(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p3}, Lorg/ini4j/Profile$Section;->fetch(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public fetch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/Object;
    .param p2, "optionName"    # Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 108
    .local v0, "sec":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/ini4j/Profile$Section;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/Object;
    .param p2, "optionName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 127
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 129
    .local v0, "sec":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/ini4j/spi/BeanTool;->getInstance()Lorg/ini4j/spi/BeanTool;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/ini4j/spi/BeanTool;->zero(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2, p3}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/Object;
    .param p2, "optionName"    # Ljava/lang/Object;

    .line 120
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 122
    .local v0, "sec":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/ini4j/BasicProfile;->_comment:Ljava/lang/String;

    return-object v0
.end method

.method getPathSeparator()C
    .locals 1

    .line 156
    const/16 v0, 0x2f

    return v0
.end method

.method isPropertyFirstUpper()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/ini4j/BasicProfile;->_propertyFirstUpper:Z

    return v0
.end method

.method isTreeMode()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/ini4j/BasicProfile;->_treeMode:Z

    return v0
.end method

.method newSection(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 166
    new-instance v0, Lorg/ini4j/BasicProfileSection;

    invoke-direct {v0, p0, p1}, Lorg/ini4j/BasicProfileSection;-><init>(Lorg/ini4j/BasicProfile;Ljava/lang/String;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "optionName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 134
    invoke-direct {p0, p1}, Lorg/ini4j/BasicProfile;->getOrAdd(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lorg/ini4j/Profile$Section;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "sectionName"    # Ljava/lang/Object;
    .param p2, "optionName"    # Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 146
    .local v0, "sec":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lorg/ini4j/Profile$Section;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public remove(Lorg/ini4j/Profile$Section;)Lorg/ini4j/Profile$Section;
    .locals 1
    .param p1, "section"    # Lorg/ini4j/Profile$Section;

    .line 139
    invoke-interface {p1}, Lorg/ini4j/Profile$Section;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ini4j/BasicProfile;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    return-object v0
.end method

.method resolve(Ljava/lang/StringBuilder;Lorg/ini4j/Profile$Section;)V
    .locals 8
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "owner"    # Lorg/ini4j/Profile$Section;

    .line 171
    sget-object v0, Lorg/ini4j/BasicProfile;->EXPRESSION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 173
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 175
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "sectionName":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "optionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/ini4j/BasicProfile;->parseOptionIndex(Ljava/util/regex/Matcher;)I

    move-result v3

    .line 178
    .local v3, "optionIndex":I
    invoke-direct {p0, v0, p2}, Lorg/ini4j/BasicProfile;->parseSection(Ljava/util/regex/Matcher;Lorg/ini4j/Profile$Section;)Lorg/ini4j/Profile$Section;

    move-result-object v4

    .line 179
    .local v4, "section":Lorg/ini4j/Profile$Section;
    const/4 v5, 0x0

    .line 181
    .local v5, "value":Ljava/lang/String;
    const-string v6, "@env"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    invoke-static {v2}, Lorg/ini4j/Config;->getEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 185
    :cond_0
    const-string v6, "@prop"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 187
    invoke-static {v2}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 189
    :cond_1
    if-eqz v4, :cond_3

    .line 191
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2

    invoke-interface {v4, v2}, Lorg/ini4j/Profile$Section;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-interface {v4, v2, v3}, Lorg/ini4j/Profile$Section;->fetch(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v5, v6

    .line 194
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 196
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p1, v6, v7, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 199
    .end local v1    # "sectionName":Ljava/lang/String;
    .end local v2    # "optionName":Ljava/lang/String;
    .end local v3    # "optionIndex":I
    .end local v4    # "section":Lorg/ini4j/Profile$Section;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 200
    :cond_5
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lorg/ini4j/BasicProfile;->_comment:Ljava/lang/String;

    .line 62
    return-void
.end method

.method store(Lorg/ini4j/spi/IniHandler;)V
    .locals 2
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;

    .line 204
    invoke-interface {p1}, Lorg/ini4j/spi/IniHandler;->startIni()V

    .line 205
    invoke-virtual {p0}, Lorg/ini4j/BasicProfile;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ini4j/BasicProfile;->store(Lorg/ini4j/spi/IniHandler;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lorg/ini4j/BasicProfile;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ini4j/Profile$Section;

    .line 208
    .local v1, "s":Lorg/ini4j/Profile$Section;
    invoke-virtual {p0, p1, v1}, Lorg/ini4j/BasicProfile;->store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;)V

    .line 209
    .end local v1    # "s":Lorg/ini4j/Profile$Section;
    goto :goto_0

    .line 211
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/ini4j/spi/IniHandler;->endIni()V

    .line 212
    return-void
.end method

.method store(Lorg/ini4j/spi/IniHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;
    .param p2, "comment"    # Ljava/lang/String;

    .line 228
    invoke-interface {p1, p2}, Lorg/ini4j/spi/IniHandler;->handleComment(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;)V
    .locals 2
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;
    .param p2, "s"    # Lorg/ini4j/Profile$Section;

    .line 216
    invoke-interface {p2}, Lorg/ini4j/Profile$Section;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ini4j/BasicProfile;->getComment(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ini4j/BasicProfile;->store(Lorg/ini4j/spi/IniHandler;Ljava/lang/String;)V

    .line 217
    invoke-interface {p2}, Lorg/ini4j/Profile$Section;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ini4j/spi/IniHandler;->startSection(Ljava/lang/String;)V

    .line 218
    invoke-interface {p2}, Lorg/ini4j/Profile$Section;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v1}, Lorg/ini4j/BasicProfile;->store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;Ljava/lang/String;)V

    .line 221
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/ini4j/spi/IniHandler;->endSection()V

    .line 224
    return-void
.end method

.method store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;Ljava/lang/String;)V
    .locals 2
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;
    .param p2, "section"    # Lorg/ini4j/Profile$Section;
    .param p3, "option"    # Ljava/lang/String;

    .line 233
    invoke-interface {p2, p3}, Lorg/ini4j/Profile$Section;->getComment(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/ini4j/BasicProfile;->store(Lorg/ini4j/spi/IniHandler;Ljava/lang/String;)V

    .line 234
    invoke-interface {p2, p3}, Lorg/ini4j/Profile$Section;->length(Ljava/lang/Object;)I

    move-result v0

    .line 236
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 238
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/ini4j/BasicProfile;->store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;Ljava/lang/String;I)V

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;Ljava/lang/String;I)V
    .locals 1
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;
    .param p2, "section"    # Lorg/ini4j/Profile$Section;
    .param p3, "option"    # Ljava/lang/String;
    .param p4, "index"    # I

    .line 244
    invoke-interface {p2, p3, p4}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, p3, v0}, Lorg/ini4j/spi/IniHandler;->handleOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method
