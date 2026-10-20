.class final Lj$/time/ZoneRegion;
.super Lj$/time/ZoneId;
.source "ZoneRegion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x746262147bb70e18L


# instance fields
.field private final id:Ljava/lang/String;

.field private final transient rules:Lj$/time/zone/ZoneRules;


# direct methods
.method constructor <init>(Ljava/lang/String;Lj$/time/zone/ZoneRules;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "rules"    # Lj$/time/zone/ZoneRules;

    .line 162
    invoke-direct {p0}, Lj$/time/ZoneId;-><init>()V

    .line 163
    iput-object p1, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    .line 164
    iput-object p2, p0, Lj$/time/ZoneRegion;->rules:Lj$/time/zone/ZoneRules;

    .line 165
    return-void
.end method

.method private static checkName(Ljava/lang/String;)V
    .locals 6
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 137
    .local v0, "n":I
    const/4 v1, 0x2

    const-string v2, "Invalid ID for region-based ZoneId, invalid format: "

    if-lt v0, v1, :cond_a

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_9

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 142
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    const/16 v4, 0x30

    if-lt v3, v4, :cond_3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    if-eqz v1, :cond_3

    goto :goto_1

    .line 146
    :cond_3
    const/16 v4, 0x7e

    if-ne v3, v4, :cond_4

    if-eqz v1, :cond_4

    goto :goto_1

    .line 147
    :cond_4
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_5

    if-eqz v1, :cond_5

    goto :goto_1

    .line 148
    :cond_5
    const/16 v4, 0x5f

    if-ne v3, v4, :cond_6

    if-eqz v1, :cond_6

    goto :goto_1

    .line 149
    :cond_6
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_7

    if-eqz v1, :cond_7

    goto :goto_1

    .line 150
    :cond_7
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_8

    if-eqz v1, :cond_8

    .line 140
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .restart local v3    # "c":C
    :cond_8
    new-instance v4, Lj$/time/DateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    .end local v1    # "i":I
    .end local v3    # "c":C
    :cond_9
    return-void

    .line 138
    :cond_a
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static ofId(Ljava/lang/String;Z)Lj$/time/ZoneRegion;
    .locals 2
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "checkAvailable"    # Z

    .line 115
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    invoke-static {p0}, Lj$/time/ZoneRegion;->checkName(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .line 120
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lj$/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v1
    :try_end_0
    .catch Lj$/time/zone/ZoneRulesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 125
    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "ex":Lj$/time/zone/ZoneRulesException;
    if-nez p1, :cond_0

    .line 126
    .end local v1    # "ex":Lj$/time/zone/ZoneRulesException;
    :goto_0
    new-instance v1, Lj$/time/ZoneRegion;

    invoke-direct {v1, p0, v0}, Lj$/time/ZoneRegion;-><init>(Ljava/lang/String;Lj$/time/zone/ZoneRules;)V

    return-object v1

    .line 123
    .restart local v1    # "ex":Lj$/time/zone/ZoneRulesException;
    :cond_0
    throw v1
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/ZoneId;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;

    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/time/ZoneId;->of(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 203
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 193
    new-instance v0, Lj$/time/Ser;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lj$/time/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRules()Lj$/time/zone/ZoneRules;
    .locals 2

    .line 177
    iget-object v0, p0, Lj$/time/ZoneRegion;->rules:Lj$/time/zone/ZoneRules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/ZoneRegion;->rules:Lj$/time/zone/ZoneRules;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/time/zone/ZoneRulesProvider;->getRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method write(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 208
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 209
    invoke-virtual {p0, p1}, Lj$/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    .line 210
    return-void
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 213
    iget-object v0, p0, Lj$/time/ZoneRegion;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 214
    return-void
.end method
