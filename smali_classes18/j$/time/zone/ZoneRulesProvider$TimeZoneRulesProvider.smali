.class final Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;
.super Lj$/time/zone/ZoneRulesProvider;
.source "ZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/time/zone/ZoneRulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeZoneRulesProvider"
.end annotation


# instance fields
.field private final zoneIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    .line 460
    invoke-direct {p0}, Lj$/time/zone/ZoneRulesProvider;-><init>()V

    .line 461
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 462
    .local v0, "availableIds":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 463
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v4    # "id":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->zoneIds:Ljava/util/Set;

    .line 466
    return-void
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;
    .locals 3
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "forCaching"    # Z

    .line 475
    iget-object v0, p0, Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->zoneIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Lj$/time/zone/ZoneRules;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRules;-><init>(Ljava/util/TimeZone;)V

    return-object v0

    .line 478
    :cond_0
    new-instance v0, Lj$/time/zone/ZoneRulesException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a built-in time zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 484
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v0

    .line 485
    .local v0, "rules":Lj$/time/zone/ZoneRules;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 486
    .local v1, "versionMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/time/zone/ZoneRules;>;"
    const-string v2, "builtin"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-object v1
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;->zoneIds:Ljava/util/Set;

    return-object v0
.end method
