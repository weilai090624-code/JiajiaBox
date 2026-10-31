.class public final Lj$/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_LASTRULES:[Lj$/time/zone/ZoneOffsetTransitionRule;

.field private static final EMPTY_LDT_ARRAY:[Lj$/time/LocalDateTime;

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final LAST_CACHED_YEAR:I = 0x834

.field private static final NO_TRANSITIONS:[Lj$/time/zone/ZoneOffsetTransition;

.field private static final serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

.field private final transient lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lj$/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final savingsInstantTransitions:[J

.field private final savingsLocalTransitions:[Lj$/time/LocalDateTime;

.field private final standardOffsets:[Lj$/time/ZoneOffset;

.field private final standardTransitions:[J

.field private final timeZone:Ljava/util/TimeZone;

.field private final wallOffsets:[Lj$/time/ZoneOffset;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 164
    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    .line 168
    new-array v1, v0, [Lj$/time/zone/ZoneOffsetTransitionRule;

    sput-object v1, Lj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 173
    new-array v1, v0, [Lj$/time/LocalDateTime;

    sput-object v1, Lj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Lj$/time/LocalDateTime;

    .line 789
    new-array v0, v0, [Lj$/time/zone/ZoneOffsetTransition;

    sput-object v0, Lj$/time/zone/ZoneRules;->NO_TRANSITIONS:[Lj$/time/zone/ZoneOffsetTransition;

    return-void
.end method

.method private constructor <init>(Lj$/time/ZoneOffset;)V
    .registers 4
    .param p1, "offset"    # Lj$/time/ZoneOffset;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 320
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    .line 321
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 322
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    .line 323
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 324
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    .line 325
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    .line 326
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Lj$/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    .line 328
    return-void
.end method

.method constructor <init>(Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "baseStandardOffset"    # Lj$/time/ZoneOffset;
    .param p2, "baseWallOffset"    # Lj$/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/ZoneOffset;",
            "Lj$/time/ZoneOffset;",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p3, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p5, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 229
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    .line 231
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    .line 232
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 234
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v2}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 235
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v1, v2

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 239
    .end local v0    # "i":I
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "localTransitionOffsetList":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/zone/ZoneOffsetTransition;

    .line 243
    .local v3, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 244
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 247
    :cond_7b
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Lj$/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_89
    invoke-virtual {v3}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v3    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    goto :goto_5a

    .line 252
    :cond_91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lj$/time/LocalDateTime;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/time/LocalDateTime;

    iput-object v2, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    .line 253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lj$/time/ZoneOffset;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/time/ZoneOffset;

    iput-object v2, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    .line 256
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_cd

    .line 258
    iget-object v3, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 262
    .end local v2    # "i":I
    :cond_cd
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-gt v2, v3, :cond_e7

    .line 265
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lj$/time/zone/ZoneOffsetTransitionRule;

    invoke-interface {p5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lj$/time/zone/ZoneOffsetTransitionRule;

    iput-object v2, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    .line 267
    return-void

    .line 263
    :cond_e7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Too many transition rules"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .registers 5
    .param p1, "tz"    # Ljava/util/TimeZone;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 332
    const/4 v0, 0x1

    new-array v0, v0, [Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    .line 333
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    invoke-static {v1}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 334
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    .line 335
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 336
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    .line 337
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    .line 338
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Lj$/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 339
    iput-object p1, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    .line 340
    return-void
.end method

.method private constructor <init>([J[Lj$/time/ZoneOffset;[J[Lj$/time/ZoneOffset;[Lj$/time/zone/ZoneOffsetTransitionRule;)V
    .registers 13
    .param p1, "standardTransitions"    # [J
    .param p2, "standardOffsets"    # [Lj$/time/ZoneOffset;
    .param p3, "savingsInstantTransitions"    # [J
    .param p4, "wallOffsets"    # [Lj$/time/ZoneOffset;
    .param p5, "lastRules"    # [Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 285
    iput-object p1, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    .line 286
    iput-object p2, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    .line 287
    iput-object p3, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 288
    iput-object p4, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    .line 289
    iput-object p5, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 291
    array-length v0, p3

    if-nez v0, :cond_1c

    .line 292
    sget-object v0, Lj$/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Lj$/time/LocalDateTime;

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    goto :goto_66

    .line 295
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v0, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v2, p3

    if-ge v1, v2, :cond_58

    .line 297
    aget-object v2, p4, v1

    .line 298
    .local v2, "before":Lj$/time/ZoneOffset;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p4, v3

    .line 299
    .local v3, "after":Lj$/time/ZoneOffset;
    new-instance v4, Lj$/time/zone/ZoneOffsetTransition;

    aget-wide v5, p3, v1

    invoke-direct {v4, v5, v6, v2, v3}, Lj$/time/zone/ZoneOffsetTransition;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    .line 300
    .local v4, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 301
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Lj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 304
    :cond_47
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Lj$/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v2    # "before":Lj$/time/ZoneOffset;
    .end local v3    # "after":Lj$/time/ZoneOffset;
    .end local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 308
    .end local v1    # "i":I
    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lj$/time/LocalDateTime;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lj$/time/LocalDateTime;

    iput-object v1, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    .line 310
    .end local v0    # "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    :goto_66
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    .line 311
    return-void
.end method

.method private findOffsetInfo(Lj$/time/LocalDateTime;Lj$/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .registers 5
    .param p1, "dt"    # Lj$/time/LocalDateTime;
    .param p2, "trans"    # Lj$/time/zone/ZoneOffsetTransition;

    .line 767
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Lj$/time/LocalDateTime;

    move-result-object v0

    .line 768
    .local v0, "localTransition":Lj$/time/LocalDateTime;
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 769
    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 770
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 772
    :cond_15
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 773
    return-object p2

    .line 775
    :cond_20
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 778
    :cond_25
    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 779
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 781
    :cond_30
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Lj$/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 782
    invoke-virtual {p2}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 784
    :cond_3f
    return-object p2
.end method

.method private findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;
    .registers 24
    .param p1, "year"    # I

    .line 798
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 799
    .local v2, "yearObj":Ljava/lang/Integer;
    iget-object v3, v0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lj$/time/zone/ZoneOffsetTransition;

    .line 800
    .local v3, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    if-eqz v3, :cond_13

    .line 801
    return-object v3

    .line 804
    :cond_13
    iget-object v4, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_df

    .line 805
    const/16 v4, 0x708

    if-ge v1, v4, :cond_1e

    .line 806
    sget-object v4, Lj$/time/zone/ZoneRules;->NO_TRANSITIONS:[Lj$/time/zone/ZoneOffsetTransition;

    return-object v4

    .line 808
    :cond_1e
    add-int/lit8 v4, v1, -0x1

    const/16 v6, 0xc

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8, v8}, Lj$/time/LocalDateTime;->of(IIIII)Lj$/time/LocalDateTime;

    move-result-object v4

    .line 810
    .local v4, "newYearsEve":Lj$/time/LocalDateTime;
    iget-object v6, v0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    aget-object v6, v6, v8

    invoke-virtual {v4, v6}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v6

    .line 811
    .local v6, "lower":J
    iget-object v8, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide/16 v9, 0x3e8

    mul-long v11, v6, v9

    invoke-virtual {v8, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    .line 812
    .local v8, "curOffsetMillis":I
    const-wide/32 v11, 0x1e7cb00

    add-long/2addr v11, v6

    .line 813
    .local v11, "max":J
    sget-object v3, Lj$/time/zone/ZoneRules;->NO_TRANSITIONS:[Lj$/time/zone/ZoneOffsetTransition;

    .line 814
    :goto_41
    cmp-long v13, v6, v11

    if-gez v13, :cond_cc

    .line 815
    const-wide/32 v13, 0x76a700

    add-long/2addr v13, v6

    .line 816
    .local v13, "upper":J
    iget-object v15, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    move-wide/from16 v16, v6

    .end local v6    # "lower":J
    .local v16, "lower":J
    mul-long v5, v13, v9

    invoke-virtual {v15, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    if-eq v8, v5, :cond_c1

    move-wide/from16 v6, v16

    .line 818
    .end local v16    # "lower":J
    .restart local v6    # "lower":J
    :goto_57
    sub-long v16, v13, v6

    const-wide/16 v18, 0x1

    cmp-long v5, v16, v18

    if-lez v5, :cond_80

    .line 819
    add-long v9, v13, v6

    move-object v15, v4

    .end local v4    # "newYearsEve":Lj$/time/LocalDateTime;
    .local v15, "newYearsEve":Lj$/time/LocalDateTime;
    const-wide/16 v4, 0x2

    invoke-static {v9, v10, v4, v5}, Lj$/time/DesugarLocalDate$$ExternalSyntheticBackport0;->m(JJ)J

    move-result-wide v4

    .line 820
    .local v4, "middle":J
    iget-object v9, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    move-wide/from16 v20, v11

    const-wide/16 v16, 0x3e8

    .end local v11    # "max":J
    .local v20, "max":J
    mul-long v10, v4, v16

    invoke-virtual {v9, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, v8, :cond_78

    .line 821
    move-wide v6, v4

    goto :goto_7a

    .line 823
    :cond_78
    move-wide v9, v4

    move-wide v13, v9

    .line 825
    .end local v4    # "middle":J
    :goto_7a
    move-object v4, v15

    move-wide/from16 v11, v20

    const-wide/16 v9, 0x3e8

    goto :goto_57

    .line 826
    .end local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v20    # "max":J
    .local v4, "newYearsEve":Lj$/time/LocalDateTime;
    .restart local v11    # "max":J
    :cond_80
    move-object v15, v4

    move-wide/from16 v20, v11

    .end local v4    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v11    # "max":J
    .restart local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .restart local v20    # "max":J
    iget-object v4, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide/16 v9, 0x3e8

    mul-long v11, v6, v9

    invoke-virtual {v4, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    if-eq v4, v8, :cond_91

    .line 827
    move-wide v4, v6

    move-wide v13, v4

    .line 829
    :cond_91
    invoke-static {v8}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v4

    .line 830
    .local v4, "old":Lj$/time/ZoneOffset;
    iget-object v5, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide/16 v9, 0x3e8

    mul-long v11, v13, v9

    invoke-virtual {v5, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 831
    .end local v8    # "curOffsetMillis":I
    .local v5, "curOffsetMillis":I
    invoke-static {v5}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v8

    .line 832
    .local v8, "next":Lj$/time/ZoneOffset;
    invoke-direct {v0, v13, v14, v8}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v11

    if-ne v11, v1, :cond_bf

    .line 833
    array-length v11, v3

    add-int/lit8 v11, v11, 0x1

    invoke-static {v3, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    move-object v3, v11

    check-cast v3, [Lj$/time/zone/ZoneOffsetTransition;

    .line 834
    array-length v11, v3

    add-int/lit8 v11, v11, -0x1

    new-instance v12, Lj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v12, v13, v14, v4, v8}, Lj$/time/zone/ZoneOffsetTransition;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    aput-object v12, v3, v11

    move v8, v5

    goto :goto_c6

    .line 832
    :cond_bf
    move v8, v5

    goto :goto_c6

    .line 816
    .end local v5    # "curOffsetMillis":I
    .end local v6    # "lower":J
    .end local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v20    # "max":J
    .local v4, "newYearsEve":Lj$/time/LocalDateTime;
    .local v8, "curOffsetMillis":I
    .restart local v11    # "max":J
    .restart local v16    # "lower":J
    :cond_c1
    move-object v15, v4

    move-wide/from16 v20, v11

    .end local v4    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v11    # "max":J
    .restart local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .restart local v20    # "max":J
    move-wide/from16 v6, v16

    .line 838
    .end local v16    # "lower":J
    .restart local v6    # "lower":J
    :goto_c6
    move-wide v6, v13

    .line 839
    .end local v13    # "upper":J
    move-object v4, v15

    move-wide/from16 v11, v20

    goto/16 :goto_41

    .line 841
    .end local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v20    # "max":J
    .restart local v4    # "newYearsEve":Lj$/time/LocalDateTime;
    .restart local v11    # "max":J
    :cond_cc
    move-object v15, v4

    move-wide/from16 v16, v6

    move-wide/from16 v20, v11

    .end local v4    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v6    # "lower":J
    .end local v11    # "max":J
    .restart local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .restart local v16    # "lower":J
    .restart local v20    # "max":J
    const/16 v4, 0x77c

    if-gt v4, v1, :cond_de

    const/16 v4, 0x834

    if-ge v1, v4, :cond_de

    .line 842
    iget-object v4, v0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    :cond_de
    return-object v3

    .line 846
    .end local v8    # "curOffsetMillis":I
    .end local v15    # "newYearsEve":Lj$/time/LocalDateTime;
    .end local v16    # "lower":J
    .end local v20    # "max":J
    :cond_df
    iget-object v4, v0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 847
    .local v4, "ruleArray":[Lj$/time/zone/ZoneOffsetTransitionRule;
    array-length v5, v4

    new-array v3, v5, [Lj$/time/zone/ZoneOffsetTransition;

    .line 848
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e5
    array-length v6, v4

    if-ge v5, v6, :cond_f3

    .line 849
    aget-object v6, v4, v5

    invoke-virtual {v6, v1}, Lj$/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v6

    aput-object v6, v3, v5

    .line 848
    add-int/lit8 v5, v5, 0x1

    goto :goto_e5

    .line 851
    .end local v5    # "i":I
    :cond_f3
    const/16 v5, 0x834

    if-ge v1, v5, :cond_fc

    .line 852
    iget-object v5, v0, Lj$/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_fc
    return-object v3
.end method

.method private findYear(JLj$/time/ZoneOffset;)I
    .registers 9
    .param p1, "epochSecond"    # J
    .param p3, "offset"    # Lj$/time/ZoneOffset;

    .line 1155
    invoke-virtual {p3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 1156
    .local v0, "localSecond":J
    const v2, 0x15180

    invoke-static {v0, v1, v2}, Lj$/time/zone/ZoneRules$$ExternalSyntheticBackport0;->m(JI)J

    move-result-wide v2

    .line 1157
    .local v2, "localEpochDay":J
    invoke-static {v2, v3}, Lj$/time/LocalDate;->ofEpochDay(J)Lj$/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/LocalDate;->getYear()I

    move-result v4

    return v4
.end method

.method private getOffsetInfo(Lj$/time/LocalDateTime;)Ljava/lang/Object;
    .registers 9
    .param p1, "dt"    # Lj$/time/LocalDateTime;

    .line 690
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 691
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 692
    .local v0, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    array-length v2, v0

    if-nez v2, :cond_27

    .line 696
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    aget-object v1, v3, v1

    .line 697
    invoke-virtual {p1, v1}, Lj$/time/LocalDateTime;->toEpochSecond(Lj$/time/ZoneOffset;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 696
    invoke-static {v1}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 700
    :cond_27
    const/4 v2, 0x0

    .line 701
    .local v2, "info":Ljava/lang/Object;
    array-length v3, v0

    :goto_29
    if-ge v1, v3, :cond_44

    aget-object v4, v0, v1

    .line 702
    .local v4, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-direct {p0, p1, v4}, Lj$/time/zone/ZoneRules;->findOffsetInfo(Lj$/time/LocalDateTime;Lj$/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v2

    .line 703
    instance-of v5, v2, Lj$/time/zone/ZoneOffsetTransition;

    if-nez v5, :cond_43

    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_43

    .line 701
    .end local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 704
    .restart local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_43
    :goto_43
    return-object v2

    .line 707
    .end local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_44
    return-object v2

    .line 709
    .end local v0    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .end local v2    # "info":Ljava/lang/Object;
    :cond_45
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_4f

    .line 710
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    aget-object v0, v0, v1

    return-object v0

    .line 713
    :cond_4f
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-lez v0, :cond_89

    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    iget-object v2, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 714
    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 715
    invoke-virtual {p1}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 716
    .restart local v0    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    const/4 v2, 0x0

    .line 717
    .restart local v2    # "info":Ljava/lang/Object;
    array-length v3, v0

    :goto_6d
    if-ge v1, v3, :cond_88

    aget-object v4, v0, v1

    .line 718
    .restart local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-direct {p0, p1, v4}, Lj$/time/zone/ZoneRules;->findOffsetInfo(Lj$/time/LocalDateTime;Lj$/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v2

    .line 719
    instance-of v5, v2, Lj$/time/zone/ZoneOffsetTransition;

    if-nez v5, :cond_87

    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    goto :goto_87

    .line 717
    .end local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 720
    .restart local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_87
    :goto_87
    return-object v2

    .line 723
    .end local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_88
    return-object v2

    .line 727
    .end local v0    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .end local v2    # "info":Ljava/lang/Object;
    :cond_89
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 728
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_97

    .line 730
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    aget-object v1, v2, v1

    return-object v1

    .line 732
    :cond_97
    if-gez v0, :cond_9d

    .line 734
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_b6

    .line 735
    :cond_9d
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_b6

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    aget-object v1, v1, v0

    iget-object v2, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 736
    invoke-virtual {v1, v2}, Lj$/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 738
    add-int/lit8 v0, v0, 0x1

    .line 740
    :cond_b6
    :goto_b6
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_e8

    .line 742
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    aget-object v1, v1, v0

    .line 743
    .local v1, "dtBefore":Lj$/time/LocalDateTime;
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->savingsLocalTransitions:[Lj$/time/LocalDateTime;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 744
    .local v2, "dtAfter":Lj$/time/LocalDateTime;
    iget-object v3, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    div-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    .line 745
    .local v3, "offsetBefore":Lj$/time/ZoneOffset;
    iget-object v4, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    .line 746
    .local v4, "offsetAfter":Lj$/time/ZoneOffset;
    invoke-virtual {v4}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-virtual {v3}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-le v5, v6, :cond_e2

    .line 748
    new-instance v5, Lj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v1, v3, v4}, Lj$/time/zone/ZoneOffsetTransition;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v5

    .line 751
    :cond_e2
    new-instance v5, Lj$/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v2, v3, v4}, Lj$/time/zone/ZoneOffsetTransition;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v5

    .line 755
    .end local v1    # "dtBefore":Lj$/time/LocalDateTime;
    .end local v2    # "dtAfter":Lj$/time/LocalDateTime;
    .end local v3    # "offsetBefore":Lj$/time/ZoneOffset;
    .end local v4    # "offsetAfter":Lj$/time/ZoneOffset;
    :cond_e8
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static of(Lj$/time/ZoneOffset;)Lj$/time/zone/ZoneRules;
    .registers 2
    .param p0, "offset"    # Lj$/time/ZoneOffset;

    .line 207
    const-string v0, "offset"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    new-instance v0, Lj$/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Lj$/time/zone/ZoneRules;-><init>(Lj$/time/ZoneOffset;)V

    return-object v0
.end method

.method public static of(Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lj$/time/zone/ZoneRules;
    .registers 12
    .param p0, "baseStandardOffset"    # Lj$/time/ZoneOffset;
    .param p1, "baseWallOffset"    # Lj$/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/ZoneOffset;",
            "Lj$/time/ZoneOffset;",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransitionRule;",
            ">;)",
            "Lj$/time/zone/ZoneRules;"
        }
    .end annotation

    .line 190
    .local p2, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p3, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    const-string v0, "baseStandardOffset"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "baseWallOffset"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v0, "standardOffsetTransitionList"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const-string v0, "transitionList"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const-string v0, "lastRules"

    invoke-static {p4, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    new-instance v0, Lj$/time/zone/ZoneRules;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lj$/time/zone/ZoneRules;-><init>(Lj$/time/ZoneOffset;Lj$/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static offsetFromMillis(I)Lj$/time/ZoneOffset;
    .registers 2
    .param p0, "offsetMillis"    # I

    .line 344
    div-int/lit16 v0, p0, 0x3e8

    invoke-static {v0}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/zone/ZoneRules;
    .registers 16
    .param p0, "in"    # Ljava/io/DataInput;

    .line 465
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 466
    .local v0, "stdSize":I
    if-nez v0, :cond_9

    sget-object v1, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    goto :goto_b

    .line 467
    :cond_9
    new-array v1, v0, [J

    :goto_b
    nop

    .line 468
    .local v1, "stdTrans":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_18

    .line 469
    invoke-static {p0}, Lj$/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 468
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 471
    .end local v2    # "i":I
    :cond_18
    add-int/lit8 v2, v0, 0x1

    new-array v8, v2, [Lj$/time/ZoneOffset;

    .line 472
    .local v8, "stdOffsets":[Lj$/time/ZoneOffset;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1d
    array-length v3, v8

    if-ge v2, v3, :cond_29

    .line 473
    invoke-static {p0}, Lj$/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v8, v2

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 475
    .end local v2    # "i":I
    :cond_29
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v9

    .line 476
    .local v9, "savSize":I
    if-nez v9, :cond_32

    sget-object v2, Lj$/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    goto :goto_34

    .line 477
    :cond_32
    new-array v2, v9, [J

    :goto_34
    move-object v10, v2

    .line 478
    .local v10, "savTrans":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_36
    if-ge v2, v9, :cond_41

    .line 479
    invoke-static {p0}, Lj$/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v10, v2

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 481
    .end local v2    # "i":I
    :cond_41
    add-int/lit8 v2, v9, 0x1

    new-array v11, v2, [Lj$/time/ZoneOffset;

    .line 482
    .local v11, "savOffsets":[Lj$/time/ZoneOffset;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_46
    array-length v3, v11

    if-ge v2, v3, :cond_52

    .line 483
    invoke-static {p0}, Lj$/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v11, v2

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 485
    .end local v2    # "i":I
    :cond_52
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v12

    .line 486
    .local v12, "ruleSize":I
    if-nez v12, :cond_5b

    .line 487
    sget-object v2, Lj$/time/zone/ZoneRules;->EMPTY_LASTRULES:[Lj$/time/zone/ZoneOffsetTransitionRule;

    goto :goto_5d

    :cond_5b
    new-array v2, v12, [Lj$/time/zone/ZoneOffsetTransitionRule;

    :goto_5d
    move-object v13, v2

    .line 488
    .local v13, "rules":[Lj$/time/zone/ZoneOffsetTransitionRule;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5f
    if-ge v2, v12, :cond_6a

    .line 489
    invoke-static {p0}, Lj$/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Lj$/time/zone/ZoneOffsetTransitionRule;

    move-result-object v3

    aput-object v3, v13, v2

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 491
    .end local v2    # "i":I
    :cond_6a
    new-instance v14, Lj$/time/zone/ZoneRules;

    move-object v2, v14

    move-object v3, v1

    move-object v4, v8

    move-object v5, v10

    move-object v6, v11

    move-object v7, v13

    invoke-direct/range {v2 .. v7}, Lj$/time/zone/ZoneRules;-><init>([J[Lj$/time/ZoneOffset;[J[Lj$/time/ZoneOffset;[Lj$/time/zone/ZoneOffsetTransitionRule;)V

    return-object v14
.end method

.method static readExternalTimeZone(Ljava/io/DataInput;)Lj$/time/zone/ZoneRules;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;

    .line 496
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 497
    .local v0, "timeZone":Ljava/util/TimeZone;
    new-instance v1, Lj$/time/zone/ZoneRules;

    invoke-direct {v1, v0}, Lj$/time/zone/ZoneRules;-><init>(Ljava/util/TimeZone;)V

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 354
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 422
    new-instance v0, Lj$/time/zone/Ser;

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_9

    const/16 v1, 0x64

    goto :goto_a

    :cond_9
    const/4 v1, 0x1

    :goto_a
    invoke-direct {v0, v1, p0}, Lj$/time/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherRules"    # Ljava/lang/Object;

    .line 1219
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1220
    return v0

    .line 1222
    :cond_4
    instance-of v1, p1, Lj$/time/zone/ZoneRules;

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    .line 1223
    move-object v1, p1

    check-cast v1, Lj$/time/zone/ZoneRules;

    .line 1226
    .local v1, "other":Lj$/time/zone/ZoneRules;
    iget-object v3, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    iget-object v4, v1, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    iget-object v4, v1, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    .line 1227
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    .line 1228
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v4, v1, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 1229
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    iget-object v4, v1, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    .line 1230
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    iget-object v4, v1, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 1231
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    .line 1226
    :goto_4a
    return v0

    .line 1233
    .end local v1    # "other":Lj$/time/zone/ZoneRules;
    :cond_4b
    return v2
.end method

.method public getDaylightSavings(Lj$/time/Instant;)Lj$/time/Duration;
    .registers 6
    .param p1, "instant"    # Lj$/time/Instant;

    .line 907
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_1c

    .line 908
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 909
    .local v0, "offset":I
    iget-object v1, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    sub-int v1, v0, v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v1

    return-object v1

    .line 911
    .end local v0    # "offset":I
    :cond_1c
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_24

    .line 912
    sget-object v0, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    return-object v0

    .line 914
    :cond_24
    invoke-virtual {p0, p1}, Lj$/time/zone/ZoneRules;->getStandardOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    .line 915
    .local v0, "standardOffset":Lj$/time/ZoneOffset;
    invoke-virtual {p0, p1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    .line 916
    .local v1, "actualOffset":Lj$/time/ZoneOffset;
    invoke-virtual {v1}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0}, Lj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;
    .registers 11
    .param p1, "instant"    # Lj$/time/Instant;

    .line 531
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_13

    .line 532
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    invoke-static {v0}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 534
    :cond_13
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_1e

    .line 535
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 537
    :cond_1e
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 539
    .local v0, "epochSec":J
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    array-length v2, v2

    if-lez v2, :cond_61

    iget-object v2, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    cmp-long v2, v0, v3

    if-lez v2, :cond_61

    .line 541
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v2

    .line 542
    .local v2, "year":I
    invoke-direct {p0, v2}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 543
    .local v3, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    const/4 v4, 0x0

    .line 544
    .local v4, "trans":Lj$/time/zone/ZoneOffsetTransition;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_47
    array-length v6, v3

    if-ge v5, v6, :cond_5c

    .line 545
    aget-object v4, v3, v5

    .line 546
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-gez v8, :cond_59

    .line 547
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v6

    return-object v6

    .line 544
    :cond_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 550
    .end local v5    # "i":I
    :cond_5c
    invoke-virtual {v4}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetAfter()Lj$/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 554
    .end local v2    # "year":I
    .end local v3    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .end local v4    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_61
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 555
    .local v2, "index":I
    if-gez v2, :cond_6c

    .line 557
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 559
    :cond_6c
    iget-object v3, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getOffset(Lj$/time/LocalDateTime;)Lj$/time/ZoneOffset;
    .registers 4
    .param p1, "localDateTime"    # Lj$/time/LocalDateTime;

    .line 591
    invoke-direct {p0, p1}, Lj$/time/zone/ZoneRules;->getOffsetInfo(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lj$/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    .line 593
    move-object v1, v0

    check-cast v1, Lj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Lj$/time/zone/ZoneOffsetTransition;->getOffsetBefore()Lj$/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 595
    :cond_10
    move-object v1, v0

    check-cast v1, Lj$/time/ZoneOffset;

    return-object v1
.end method

.method public getStandardOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;
    .registers 7
    .param p1, "instant"    # Lj$/time/Instant;

    .line 872
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    if-eqz v0, :cond_f

    .line 873
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    invoke-static {v0}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    .line 875
    :cond_f
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_1a

    .line 876
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 878
    :cond_1a
    invoke-virtual {p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 879
    .local v0, "epochSec":J
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 880
    .local v2, "index":I
    if-gez v2, :cond_29

    .line 882
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 884
    :cond_29
    iget-object v3, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public getTransition(Lj$/time/LocalDateTime;)Lj$/time/zone/ZoneOffsetTransition;
    .registers 4
    .param p1, "localDateTime"    # Lj$/time/LocalDateTime;

    .line 684
    invoke-direct {p0, p1}, Lj$/time/zone/ZoneRules;->getOffsetInfo(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 685
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lj$/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lj$/time/zone/ZoneOffsetTransition;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public getTransitionRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .line 1202
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj$/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 1175
    new-instance v2, Lj$/time/zone/ZoneOffsetTransition;

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v3, v1

    iget-object v3, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    aget-object v3, v3, v1

    iget-object v6, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    add-int/lit8 v7, v1, 0x1

    aget-object v6, v6, v7

    invoke-direct {v2, v4, v5, v3, v6}, Lj$/time/zone/ZoneOffsetTransition;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1174
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1177
    .end local v1    # "i":I
    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getValidOffsets(Lj$/time/LocalDateTime;)Ljava/util/List;
    .registers 4
    .param p1, "localDateTime"    # Lj$/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/time/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Lj$/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 642
    invoke-direct {p0, p1}, Lj$/time/zone/ZoneRules;->getOffsetInfo(Lj$/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Lj$/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    .line 644
    move-object v1, v0

    check-cast v1, Lj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Lj$/time/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 646
    :cond_10
    move-object v1, v0

    check-cast v1, Lj$/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    .line 1245
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    .line 1246
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    .line 1247
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 1248
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    .line 1249
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    .line 1250
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 1245
    return v0
.end method

.method public isDaylightSavings(Lj$/time/Instant;)Z
    .registers 4
    .param p1, "instant"    # Lj$/time/Instant;

    .line 934
    invoke-virtual {p0, p1}, Lj$/time/zone/ZoneRules;->getStandardOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFixedOffset()Z
    .registers 4

    .line 507
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 508
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_24

    .line 513
    :cond_17
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/time/zone/ZoneRules;->previousTransition(Lj$/time/Instant;)Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1

    .line 509
    :cond_24
    :goto_24
    return v2

    .line 515
    :cond_25
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    return v1
.end method

.method public isValidOffset(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)Z
    .registers 4
    .param p1, "localDateTime"    # Lj$/time/LocalDateTime;
    .param p2, "offset"    # Lj$/time/ZoneOffset;

    .line 952
    invoke-virtual {p0, p1}, Lj$/time/zone/ZoneRules;->getValidOffsets(Lj$/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public nextTransition(Lj$/time/Instant;)Lj$/time/zone/ZoneOffsetTransition;
    .registers 20
    .param p1, "instant"    # Lj$/time/Instant;

    .line 968
    move-object/from16 v0, p0

    iget-object v1, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const v2, 0x3b9ac9ff

    if-eqz v1, :cond_a1

    .line 969
    invoke-virtual/range {p1 .. p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v5

    .line 970
    .local v5, "epochSec":J
    invoke-virtual/range {p0 .. p1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-direct {v0, v5, v6, v1}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v1

    .line 971
    .local v1, "year":I
    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 972
    .local v7, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v8, :cond_2b

    aget-object v10, v7, v9

    .line 973
    .local v10, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v10}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v11

    cmp-long v13, v5, v11

    if-gez v13, :cond_28

    .line 974
    return-object v10

    .line 972
    .end local v10    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_28
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 979
    :cond_2b
    if-ge v1, v2, :cond_45

    .line 980
    add-int/lit8 v2, v1, 0x1

    invoke-direct {v0, v2}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 981
    array-length v2, v7

    const/4 v8, 0x0

    :goto_35
    if-ge v8, v2, :cond_45

    aget-object v9, v7, v8

    .line 982
    .local v9, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v9}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v12, v5, v10

    if-gez v12, :cond_42

    .line 983
    return-object v9

    .line 981
    .end local v9    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 991
    :cond_45
    const-wide/32 v8, 0x1da9c00

    add-long/2addr v8, v5

    .line 992
    .local v8, "probeSec":J
    iget-object v2, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide/16 v10, 0x1

    add-long/2addr v10, v5

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    invoke-virtual {v2, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 993
    .local v2, "curOffsetMillis":I
    invoke-static {}, Lj$/time/Clock;->systemUTC()Lj$/time/Clock;

    move-result-object v10

    invoke-virtual {v10}, Lj$/time/Clock;->millis()J

    move-result-wide v10

    div-long/2addr v10, v12

    const-wide/32 v14, 0x1e7cb00

    add-long/2addr v10, v14

    .line 994
    .local v10, "max":J
    :goto_63
    cmp-long v14, v8, v10

    if-gtz v14, :cond_9f

    .line 995
    iget-object v14, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    mul-long v3, v8, v12

    invoke-virtual {v14, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 996
    .local v3, "probeOffsetMillis":I
    if-eq v2, v3, :cond_99

    .line 997
    invoke-static {v3}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v4

    invoke-direct {v0, v8, v9, v4}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v1

    .line 999
    add-int/lit8 v4, v1, -0x1

    invoke-direct {v0, v4}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v4

    .line 1000
    .end local v7    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .local v4, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    array-length v7, v4

    const/4 v12, 0x0

    :goto_81
    if-ge v12, v7, :cond_91

    aget-object v13, v4, v12

    .line 1001
    .local v13, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v13}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v14

    cmp-long v16, v5, v14

    if-gez v16, :cond_8e

    .line 1002
    return-object v13

    .line 1000
    .end local v13    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_8e
    add-int/lit8 v12, v12, 0x1

    goto :goto_81

    .line 1006
    :cond_91
    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v4

    .line 1007
    const/4 v7, 0x0

    aget-object v7, v4, v7

    return-object v7

    .line 1009
    .end local v4    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .restart local v7    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    :cond_99
    const-wide/32 v16, 0x76a700

    add-long v8, v8, v16

    .line 1010
    .end local v3    # "probeOffsetMillis":I
    goto :goto_63

    .line 1011
    :cond_9f
    const/4 v3, 0x0

    return-object v3

    .line 1013
    .end local v1    # "year":I
    .end local v2    # "curOffsetMillis":I
    .end local v5    # "epochSec":J
    .end local v7    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .end local v8    # "probeSec":J
    .end local v10    # "max":J
    :cond_a1
    const/4 v3, 0x0

    iget-object v1, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_a8

    .line 1014
    return-object v3

    .line 1016
    :cond_a8
    invoke-virtual/range {p1 .. p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v3

    .line 1018
    .local v3, "epochSec":J
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v5, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v5, v1, v5

    cmp-long v1, v3, v5

    if-ltz v1, :cond_f1

    .line 1019
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v1

    if-nez v1, :cond_c0

    .line 1020
    const/4 v1, 0x0

    return-object v1

    .line 1023
    :cond_c0
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    iget-object v5, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v1, v5

    invoke-direct {v0, v3, v4, v1}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v1

    .line 1024
    .restart local v1    # "year":I
    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v5

    .line 1025
    .local v5, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_d3
    if-ge v7, v6, :cond_e3

    aget-object v8, v5, v7

    .line 1026
    .local v8, "trans":Lj$/time/zone/ZoneOffsetTransition;
    invoke-virtual {v8}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v11, v3, v9

    if-gez v11, :cond_e0

    .line 1027
    return-object v8

    .line 1025
    .end local v8    # "trans":Lj$/time/zone/ZoneOffsetTransition;
    :cond_e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_d3

    .line 1031
    :cond_e3
    if-ge v1, v2, :cond_ef

    .line 1032
    add-int/lit8 v2, v1, 0x1

    invoke-direct {v0, v2}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1033
    .end local v5    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .local v2, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    return-object v5

    .line 1035
    .end local v2    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .restart local v5    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    :cond_ef
    const/4 v2, 0x0

    return-object v2

    .line 1039
    .end local v1    # "year":I
    .end local v5    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    :cond_f1
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 1040
    .local v1, "index":I
    if-gez v1, :cond_fd

    .line 1041
    neg-int v2, v1

    add-int/lit8 v2, v2, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    goto :goto_ff

    .line 1043
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_fd
    add-int/lit8 v2, v1, 0x1

    .line 1045
    .end local v1    # "index":I
    .restart local v2    # "index":I
    :goto_ff
    new-instance v1, Lj$/time/zone/ZoneOffsetTransition;

    iget-object v5, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v6, v5, v2

    iget-object v5, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    aget-object v5, v5, v2

    iget-object v8, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    add-int/lit8 v9, v2, 0x1

    aget-object v8, v8, v9

    invoke-direct {v1, v6, v7, v5, v8}, Lj$/time/zone/ZoneOffsetTransition;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v1
.end method

.method public previousTransition(Lj$/time/Instant;)Lj$/time/zone/ZoneOffsetTransition;
    .registers 20
    .param p1, "instant"    # Lj$/time/Instant;

    .line 1061
    move-object/from16 v0, p0

    iget-object v1, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_d0

    .line 1062
    invoke-virtual/range {p1 .. p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v8

    .line 1063
    .local v8, "epochSec":J
    invoke-virtual/range {p1 .. p1}, Lj$/time/Instant;->getNano()I

    move-result v1

    if-lez v1, :cond_1d

    cmp-long v1, v8, v2

    if-gez v1, :cond_1d

    .line 1064
    add-long/2addr v8, v4

    .line 1066
    :cond_1d
    invoke-virtual/range {p0 .. p1}, Lj$/time/zone/ZoneRules;->getOffset(Lj$/time/Instant;)Lj$/time/ZoneOffset;

    move-result-object v1

    invoke-direct {v0, v8, v9, v1}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v1

    .line 1067
    .local v1, "year":I
    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1068
    .local v2, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    array-length v3, v2

    sub-int/2addr v3, v7

    .local v3, "i":I
    :goto_2b
    if-ltz v3, :cond_3d

    .line 1069
    aget-object v10, v2, v3

    invoke-virtual {v10}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_3a

    .line 1070
    aget-object v4, v2, v3

    return-object v4

    .line 1068
    :cond_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2b

    .line 1075
    .end local v3    # "i":I
    :cond_3d
    const/16 v3, 0x708

    if-le v1, v3, :cond_ce

    .line 1076
    add-int/lit8 v10, v1, -0x1

    invoke-direct {v0, v10}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1077
    array-length v10, v2

    sub-int/2addr v10, v7

    .local v10, "i":I
    :goto_49
    if-ltz v10, :cond_5b

    .line 1078
    aget-object v11, v2, v10

    invoke-virtual {v11}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-lez v13, :cond_58

    .line 1079
    aget-object v3, v2, v10

    return-object v3

    .line 1077
    :cond_58
    add-int/lit8 v10, v10, -0x1

    goto :goto_49

    .line 1089
    .end local v10    # "i":I
    :cond_5b
    const-wide/32 v10, 0x1da9c00

    sub-long v10, v8, v10

    .line 1091
    invoke-static {}, Lj$/time/Clock;->systemUTC()Lj$/time/Clock;

    move-result-object v12

    invoke-virtual {v12}, Lj$/time/Clock;->millis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const-wide/32 v16, 0x1e7cb00

    add-long v12, v12, v16

    .line 1089
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1092
    .local v10, "probeSec":J
    iget-object v12, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    sub-long v4, v8, v4

    mul-long v4, v4, v14

    invoke-virtual {v12, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 1093
    .local v4, "curOffsetMillis":I
    invoke-static {v3, v7, v7}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Lj$/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    const-wide/32 v16, 0x15180

    mul-long v12, v12, v16

    .line 1094
    .local v12, "min":J
    :goto_8b
    cmp-long v3, v12, v10

    if-gtz v3, :cond_cc

    .line 1095
    iget-object v3, v0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    mul-long v6, v10, v14

    invoke-virtual {v3, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1096
    .local v3, "probeOffsetMillis":I
    if-eq v4, v3, :cond_c6

    .line 1097
    invoke-static {v3}, Lj$/time/zone/ZoneRules;->offsetFromMillis(I)Lj$/time/ZoneOffset;

    move-result-object v5

    invoke-direct {v0, v10, v11, v5}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v1

    .line 1099
    add-int/lit8 v5, v1, 0x1

    invoke-direct {v0, v5}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1100
    array-length v5, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_aa
    if-ltz v5, :cond_bc

    .line 1101
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v6

    cmp-long v14, v8, v6

    if-lez v14, :cond_b9

    .line 1102
    aget-object v6, v2, v5

    return-object v6

    .line 1100
    :cond_b9
    add-int/lit8 v5, v5, -0x1

    goto :goto_aa

    .line 1106
    .end local v5    # "i":I
    :cond_bc
    invoke-direct {v0, v1}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v2

    .line 1107
    array-length v5, v2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v5, v2, v5

    return-object v5

    .line 1109
    :cond_c6
    const-wide/32 v5, 0x76a700

    sub-long/2addr v10, v5

    .line 1110
    .end local v3    # "probeOffsetMillis":I
    const/4 v7, 0x1

    goto :goto_8b

    .line 1111
    :cond_cc
    const/4 v6, 0x0

    return-object v6

    .line 1083
    .end local v4    # "curOffsetMillis":I
    .end local v10    # "probeSec":J
    .end local v12    # "min":J
    :cond_ce
    const/4 v6, 0x0

    return-object v6

    .line 1113
    .end local v1    # "year":I
    .end local v2    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    .end local v8    # "epochSec":J
    :cond_d0
    const/4 v6, 0x0

    iget-object v1, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_d7

    .line 1114
    return-object v6

    .line 1116
    :cond_d7
    invoke-virtual/range {p1 .. p1}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v6

    .line 1117
    .local v6, "epochSec":J
    invoke-virtual/range {p1 .. p1}, Lj$/time/Instant;->getNano()I

    move-result v1

    if-lez v1, :cond_e6

    cmp-long v1, v6, v2

    if-gez v1, :cond_e6

    .line 1118
    add-long/2addr v6, v4

    .line 1122
    :cond_e6
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v2, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v2, v1, v2

    .line 1123
    .local v2, "lastHistoric":J
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v1

    if-lez v1, :cond_12f

    cmp-long v1, v6, v2

    if-lez v1, :cond_12f

    .line 1125
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    iget-object v4, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    array-length v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v1, v1, v4

    .line 1126
    .local v1, "lastHistoricOffset":Lj$/time/ZoneOffset;
    invoke-direct {v0, v6, v7, v1}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v4

    .line 1127
    .local v4, "year":I
    invoke-direct {v0, v4}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v8

    .line 1128
    .local v8, "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    array-length v9, v8

    sub-int/2addr v9, v5

    .local v9, "i":I
    :goto_10b
    if-ltz v9, :cond_11d

    .line 1129
    aget-object v5, v8, v9

    invoke-virtual {v5}, Lj$/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v10

    cmp-long v5, v6, v10

    if-lez v5, :cond_11a

    .line 1130
    aget-object v5, v8, v9

    return-object v5

    .line 1128
    :cond_11a
    add-int/lit8 v9, v9, -0x1

    goto :goto_10b

    .line 1134
    .end local v9    # "i":I
    :cond_11d
    invoke-direct {v0, v2, v3, v1}, Lj$/time/zone/ZoneRules;->findYear(JLj$/time/ZoneOffset;)I

    move-result v5

    .line 1135
    .local v5, "lastHistoricYear":I
    add-int/lit8 v4, v4, -0x1

    if-le v4, v5, :cond_12f

    .line 1136
    invoke-direct {v0, v4}, Lj$/time/zone/ZoneRules;->findTransitionArray(I)[Lj$/time/zone/ZoneOffsetTransition;

    move-result-object v8

    .line 1137
    array-length v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v9, v8, v9

    return-object v9

    .line 1143
    .end local v1    # "lastHistoricOffset":Lj$/time/ZoneOffset;
    .end local v4    # "year":I
    .end local v5    # "lastHistoricYear":I
    .end local v8    # "transArray":[Lj$/time/zone/ZoneOffsetTransition;
    :cond_12f
    iget-object v1, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v1, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    .line 1144
    .local v1, "index":I
    if-gez v1, :cond_13b

    .line 1145
    neg-int v4, v1

    const/4 v5, 0x1

    add-int/lit8 v1, v4, -0x1

    .line 1147
    :cond_13b
    if-gtz v1, :cond_13f

    .line 1148
    const/4 v4, 0x0

    return-object v4

    .line 1150
    :cond_13f
    new-instance v4, Lj$/time/zone/ZoneOffsetTransition;

    iget-object v5, v0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v8, v1, -0x1

    aget-wide v8, v5, v8

    iget-object v5, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    add-int/lit8 v10, v1, -0x1

    aget-object v5, v5, v10

    iget-object v10, v0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    aget-object v10, v10, v1

    invoke-direct {v4, v8, v9, v5, v10}, Lj$/time/zone/ZoneOffsetTransition;-><init>(JLj$/time/ZoneOffset;Lj$/time/ZoneOffset;)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1261
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    const-string v1, "]"

    if-eqz v0, :cond_24

    .line 1262
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneRules[timeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_24
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    iget-object v2, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZoneRules[currentStandardOffset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 8
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 432
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 433
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardTransitions:[J

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_15

    aget-wide v4, v0, v3

    .line 434
    .local v4, "trans":J
    invoke-static {v4, v5, p1}, Lj$/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 433
    .end local v4    # "trans":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 436
    :cond_15
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->standardOffsets:[Lj$/time/ZoneOffset;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 437
    .local v4, "offset":Lj$/time/ZoneOffset;
    invoke-static {v4, p1}, Lj$/time/zone/Ser;->writeOffset(Lj$/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 436
    .end local v4    # "offset":Lj$/time/ZoneOffset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 439
    :cond_23
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 440
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v1, :cond_37

    aget-wide v4, v0, v3

    .line 441
    .local v4, "trans":J
    invoke-static {v4, v5, p1}, Lj$/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 440
    .end local v4    # "trans":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 443
    :cond_37
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->wallOffsets:[Lj$/time/ZoneOffset;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    .line 444
    .local v4, "offset":Lj$/time/ZoneOffset;
    invoke-static {v4, p1}, Lj$/time/zone/Ser;->writeOffset(Lj$/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 443
    .end local v4    # "offset":Lj$/time/ZoneOffset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 446
    :cond_45
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 447
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->lastRules:[Lj$/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v0

    :goto_4e
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 448
    .local v3, "rule":Lj$/time/zone/ZoneOffsetTransitionRule;
    invoke-virtual {v3, p1}, Lj$/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 447
    .end local v3    # "rule":Lj$/time/zone/ZoneOffsetTransitionRule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 450
    :cond_58
    return-void
.end method

.method writeExternalTimeZone(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 454
    iget-object v0, p0, Lj$/time/zone/ZoneRules;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 455
    return-void
.end method
