.class Lorg/ini4j/BasicProfileSection;
.super Lorg/ini4j/BasicOptionMap;
.source "BasicProfileSection.java"

# interfaces
.implements Lorg/ini4j/Profile$Section;


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final REGEXP_ESCAPE_CHAR:C = '\\'

.field private static final serialVersionUID:J = 0xdae448305121a86L


# instance fields
.field private final _childPattern:Ljava/util/regex/Pattern;

.field private final _name:Ljava/lang/String;

.field private final _profile:Lorg/ini4j/BasicProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/ini4j/BasicProfileSection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/ini4j/BasicProfile;Ljava/lang/String;)V
    .locals 1
    .param p1, "profile"    # Lorg/ini4j/BasicProfile;
    .param p2, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lorg/ini4j/BasicOptionMap;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    .line 34
    iput-object p2, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    .line 35
    invoke-direct {p0, p2}, Lorg/ini4j/BasicProfileSection;->newChildPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/BasicProfileSection;->_childPattern:Ljava/util/regex/Pattern;

    .line 36
    return-void
.end method

.method private childName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "buff":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v1}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private newChildPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v2}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, "[^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v1}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "]+$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lorg/ini4j/BasicProfileSection;->childName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v1, v0}, Lorg/ini4j/BasicProfile;->add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v1

    return-object v1
.end method

.method public childrenNames()[Ljava/lang/String;
    .locals 4

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v1}, Lorg/ini4j/BasicProfile;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/ini4j/BasicProfileSection;->_childPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 89
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v1, Lorg/ini4j/BasicProfileSection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicProfileSection;->childName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/ini4j/Profile$Section;
    .locals 4

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "ret":Lorg/ini4j/Profile$Section;
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    iget-object v2, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v2}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 53
    .local v1, "idx":I
    if-ltz v1, :cond_0

    .line 55
    iget-object v2, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v3, v2}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 60
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 3

    .line 65
    iget-object v0, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v1}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 67
    .local v0, "idx":I
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_name:Ljava/lang/String;

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method isPropertyFirstUpper()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v0}, Lorg/ini4j/BasicProfile;->isPropertyFirstUpper()Z

    move-result v0

    return v0
.end method

.method public varargs lookup([Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 6
    .param p1, "parts"    # [Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "buff":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 98
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    iget-object v5, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v5}, Lorg/ini4j/BasicProfile;->getPathSeparator()C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .end local v4    # "part":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ini4j/BasicProfileSection;->childName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ini4j/BasicProfile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ini4j/Profile$Section;

    return-object v1
.end method

.method public removeChild(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lorg/ini4j/BasicProfileSection;->childName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v1, v0}, Lorg/ini4j/BasicProfile;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method resolve(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .line 123
    iget-object v0, p0, Lorg/ini4j/BasicProfileSection;->_profile:Lorg/ini4j/BasicProfile;

    invoke-virtual {v0, p1, p0}, Lorg/ini4j/BasicProfile;->resolve(Ljava/lang/StringBuilder;Lorg/ini4j/Profile$Section;)V

    .line 124
    return-void
.end method
