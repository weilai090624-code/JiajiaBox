.class Lorg/ini4j/BasicRegistryKey;
.super Lorg/ini4j/BasicProfileSection;
.source "BasicRegistryKey.java"

# interfaces
.implements Lorg/ini4j/Registry$Key;


# static fields
.field private static final META_TYPE:Ljava/lang/String; = "type"

.field private static final serialVersionUID:J = -0x134a7c3ed1a5f7d0L


# direct methods
.method public constructor <init>(Lorg/ini4j/BasicRegistry;Ljava/lang/String;)V
    .locals 0
    .param p1, "registry"    # Lorg/ini4j/BasicRegistry;
    .param p2, "name"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2}, Lorg/ini4j/BasicProfileSection;-><init>(Lorg/ini4j/BasicProfile;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic addChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicRegistryKey;->addChild(Ljava/lang/String;)Lorg/ini4j/Registry$Key;

    move-result-object v0

    return-object v0
.end method

.method public addChild(Ljava/lang/String;)Lorg/ini4j/Registry$Key;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 54
    invoke-super {p0, p1}, Lorg/ini4j/BasicProfileSection;->addChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Key;

    return-object v0
.end method

.method public bridge synthetic getChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicRegistryKey;->getChild(Ljava/lang/String;)Lorg/ini4j/Registry$Key;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/ini4j/Registry$Key;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 32
    invoke-super {p0, p1}, Lorg/ini4j/BasicProfileSection;->getChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Key;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/ini4j/Profile$Section;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/ini4j/BasicRegistryKey;->getParent()Lorg/ini4j/Registry$Key;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/ini4j/Registry$Key;
    .locals 1

    .line 37
    invoke-super {p0}, Lorg/ini4j/BasicProfileSection;->getParent()Lorg/ini4j/Profile$Section;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Key;

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)Lorg/ini4j/Registry$Type;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 42
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lorg/ini4j/BasicRegistryKey;->getMeta(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Type;

    return-object v0
.end method

.method public getType(Ljava/lang/Object;Lorg/ini4j/Registry$Type;)Lorg/ini4j/Registry$Type;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultType"    # Lorg/ini4j/Registry$Type;

    .line 47
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicRegistryKey;->getType(Ljava/lang/Object;)Lorg/ini4j/Registry$Type;

    move-result-object v0

    .line 49
    .local v0, "type":Lorg/ini4j/Registry$Type;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic lookup([Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lorg/ini4j/BasicRegistryKey;->lookup([Ljava/lang/String;)Lorg/ini4j/Registry$Key;

    move-result-object v0

    return-object v0
.end method

.method public varargs lookup([Ljava/lang/String;)Lorg/ini4j/Registry$Key;
    .locals 1
    .param p1, "path"    # [Ljava/lang/String;

    .line 59
    invoke-super {p0, p1}, Lorg/ini4j/BasicProfileSection;->lookup([Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Key;

    return-object v0
.end method

.method public putType(Ljava/lang/String;Lorg/ini4j/Registry$Type;)Lorg/ini4j/Registry$Type;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/ini4j/Registry$Type;

    .line 64
    const-string v0, "type"

    invoke-virtual {p0, v0, p1, p2}, Lorg/ini4j/BasicRegistryKey;->putMeta(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Type;

    return-object v0
.end method

.method public removeType(Ljava/lang/Object;)Lorg/ini4j/Registry$Type;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 69
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lorg/ini4j/BasicRegistryKey;->removeMeta(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Registry$Type;

    return-object v0
.end method
