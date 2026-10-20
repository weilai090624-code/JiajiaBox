.class public abstract Lj$/time/zone/ZoneRulesProvider;
.super Ljava/lang/Object;
.source "ZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/time/zone/ZoneRulesProvider$TimeZoneRulesProvider;
    }
.end annotation


# static fields
.field private static final PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lj$/time/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONES:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lj$/time/zone/ZoneRulesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile ZONE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lj$/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 142
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lj$/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "loaded":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneRulesProvider;>;"
    new-instance v1, Lj$/time/zone/ZoneRulesProvider$1;

    invoke-direct {v1, v0}, Lj$/time/zone/ZoneRulesProvider$1;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 201
    sget-object v1, Lj$/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 202
    .end local v0    # "loaded":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneRulesProvider;>;"
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    return-void
.end method

.method public static getAvailableZoneIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    sget-object v0, Lj$/time/zone/ZoneRulesProvider;->ZONE_IDS:Ljava/util/Set;

    return-object v0
.end method

.method private static getProvider(Ljava/lang/String;)Lj$/time/zone/ZoneRulesProvider;
    .locals 4
    .param p0, "zoneId"    # Ljava/lang/String;

    .line 281
    sget-object v0, Lj$/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/zone/ZoneRulesProvider;

    .line 282
    .local v0, "provider":Lj$/time/zone/ZoneRulesProvider;
    if-nez v0, :cond_1

    .line 283
    sget-object v1, Lj$/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v1, Lj$/time/zone/ZoneRulesException;

    const-string v2, "No time-zone data files registered"

    invoke-direct {v1, v2}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    :cond_0
    new-instance v1, Lj$/time/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown time-zone ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_1
    return-object v0
.end method

.method public static getRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;
    .locals 1
    .param p0, "zoneId"    # Ljava/lang/String;
    .param p1, "forCaching"    # Z

    .line 240
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    invoke-static {p0}, Lj$/time/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Lj$/time/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lj$/time/zone/ZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;

    move-result-object v0

    return-object v0
.end method

.method public static getVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "zoneId"    # Ljava/lang/String;
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

    .line 269
    const-string v0, "zoneId"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    invoke-static {p0}, Lj$/time/zone/ZoneRulesProvider;->getProvider(Ljava/lang/String;)Lj$/time/zone/ZoneRulesProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/time/zone/ZoneRulesProvider;->provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public static refresh()Z
    .locals 4

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "changed":Z
    sget-object v1, Lj$/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/zone/ZoneRulesProvider;

    .line 359
    .local v2, "provider":Lj$/time/zone/ZoneRulesProvider;
    invoke-virtual {v2}, Lj$/time/zone/ZoneRulesProvider;->provideRefresh()Z

    move-result v3

    or-int/2addr v0, v3

    .line 360
    .end local v2    # "provider":Lj$/time/zone/ZoneRulesProvider;
    goto :goto_0

    .line 361
    :cond_0
    return v0
.end method

.method public static registerProvider(Lj$/time/zone/ZoneRulesProvider;)V
    .locals 1
    .param p0, "provider"    # Lj$/time/zone/ZoneRulesProvider;

    .line 308
    const-string v0, "provider"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    invoke-static {p0}, Lj$/time/zone/ZoneRulesProvider;->registerProvider0(Lj$/time/zone/ZoneRulesProvider;)V

    .line 310
    sget-object v0, Lj$/time/zone/ZoneRulesProvider;->PROVIDERS:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    return-void
.end method

.method private static declared-synchronized registerProvider0(Lj$/time/zone/ZoneRulesProvider;)V
    .locals 6
    .param p0, "provider"    # Lj$/time/zone/ZoneRulesProvider;

    const-class v0, Lj$/time/zone/ZoneRulesProvider;

    monitor-enter v0

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lj$/time/zone/ZoneRulesProvider;->provideZoneIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    .local v2, "zoneId":Ljava/lang/String;
    const-string v3, "zoneId"

    invoke-static {v2, v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    sget-object v3, Lj$/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/zone/ZoneRulesProvider;

    .line 323
    .local v3, "old":Lj$/time/zone/ZoneRulesProvider;
    if-nez v3, :cond_0

    .line 328
    .end local v2    # "zoneId":Ljava/lang/String;
    .end local v3    # "old":Lj$/time/zone/ZoneRulesProvider;
    goto :goto_0

    .line 324
    .restart local v2    # "zoneId":Ljava/lang/String;
    .restart local v3    # "old":Lj$/time/zone/ZoneRulesProvider;
    :cond_0
    new-instance v1, Lj$/time/zone/ZoneRulesException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to register zone as one already registered with that ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currently loading from provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lj$/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    .end local v2    # "zoneId":Ljava/lang/String;
    .end local v3    # "old":Lj$/time/zone/ZoneRulesProvider;
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lj$/time/zone/ZoneRulesProvider;->ZONES:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 330
    .local v1, "combinedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lj$/time/zone/ZoneRulesProvider;->ZONE_IDS:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit v0

    return-void

    .line 319
    .end local v1    # "combinedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "provider":Lj$/time/zone/ZoneRulesProvider;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected provideRefresh()Z
    .locals 1

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract provideRules(Ljava/lang/String;Z)Lj$/time/zone/ZoneRules;
.end method

.method protected abstract provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
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
.end method

.method protected abstract provideZoneIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
