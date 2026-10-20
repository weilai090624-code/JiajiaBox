.class final Lj$/time/zone/TzdbZoneRulesProvider;
.super Lj$/time/zone/ZoneRulesProvider;
.source "TzdbZoneRulesProvider.java"


# instance fields
.field private regionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final regionToRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 108
    invoke-direct {p0}, Lj$/time/zone/ZoneRulesProvider;-><init>()V

    .line 99
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    .line 110
    :try_start_0
    const-class v0, Lj$/time/zone/TzdbZoneRulesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "jre.tzdb.dat"

    const-string v2, "j$/time/zone/tzdb.dat"

    .line 111
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 113
    .local v0, "datUrl":Ljava/net/URL;
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-direct {p0, v1}, Lj$/time/zone/TzdbZoneRulesProvider;->load(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "datUrl":Ljava/net/URL;
    .end local v1    # "dis":Ljava/io/DataInputStream;
    nop

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lj$/time/zone/ZoneRulesException;

    const-string v2, "Unable to load TZDB time-zone rules"

    invoke-direct {v1, v2, v0}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private load(Ljava/io/DataInputStream;)V
    .locals 12
    .param p1, "dis"    # Ljava/io/DataInputStream;

    .line 162
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const-string v2, "File format not recognised"

    if-ne v0, v1, :cond_6

    .line 166
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "groupId":Ljava/lang/String;
    const-string v1, "TZDB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 172
    .local v1, "versionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 177
    .local v2, "regionCount":I
    new-array v3, v2, [Ljava/lang/String;

    .line 178
    .local v3, "regionArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .end local v4    # "i":I
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    .line 183
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    .line 184
    .local v4, "ruleCount":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 185
    .local v5, "ruleArray":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_2

    .line 186
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    new-array v7, v7, [B

    .line 187
    .local v7, "bytes":[B
    invoke-virtual {p1, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 188
    aput-object v7, v5, v6

    .line 185
    .end local v7    # "bytes":[B
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 191
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v1, :cond_4

    .line 192
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    .line 193
    .local v7, "versionRegionCount":I
    iget-object v8, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 194
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    if-ge v8, v7, :cond_3

    .line 195
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    aget-object v9, v3, v9

    .line 196
    .local v9, "region":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v10

    const v11, 0xffff

    and-int/2addr v10, v11

    aget-object v10, v5, v10

    .line 197
    .local v10, "rule":Ljava/lang/Object;
    iget-object v11, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v9    # "region":Ljava/lang/String;
    .end local v10    # "rule":Ljava/lang/Object;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 191
    .end local v7    # "versionRegionCount":I
    .end local v8    # "j":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 200
    .end local v6    # "i":I
    :cond_4
    return-void

    .line 168
    .end local v1    # "versionCount":I
    .end local v2    # "regionCount":I
    .end local v3    # "regionArray":[Ljava/lang/String;
    .end local v4    # "ruleCount":I
    .end local v5    # "ruleArray":[Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/io/StreamCorruptedException;

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .end local v0    # "groupId":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-direct {v0, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;
    .locals 6
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "forCaching"    # Z

    .line 128
    iget-object v0, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 133
    :try_start_0
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 134
    move-object v1, v0

    check-cast v1, [B

    .line 135
    .local v1, "bytes":[B
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 136
    .local v2, "dis":Ljava/io/DataInputStream;
    invoke-static {v2}, Lj$/time/zone/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .line 137
    iget-object v3, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionToRules:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v1    # "bytes":[B
    .end local v2    # "dis":Ljava/io/DataInputStream;
    :cond_0
    move-object v1, v0

    check-cast v1, Lj$/time/zone/ZoneRules;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Lj$/time/zone/ZoneRulesException;

    iget-object v3, p0, Lj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid binary time-zone data: TZDB:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 130
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lj$/time/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 3
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lj$/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 148
    .local v0, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/time/zone/ZoneRules;>;"
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lj$/time/zone/TzdbZoneRulesProvider;->getRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v1

    .line 149
    .local v1, "rules":Lj$/time/zone/ZoneRules;
    if-eqz v1, :cond_0

    .line 150
    iget-object v2, p0, Lj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    return-object v0
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lj$/time/zone/TzdbZoneRulesProvider;->regionIds:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lj$/time/zone/TzdbZoneRulesProvider;->versionId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TZDB["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
