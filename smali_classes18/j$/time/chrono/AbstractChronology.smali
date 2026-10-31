.class public abstract Lj$/time/chrono/AbstractChronology;
.super Ljava/lang/Object;
.source "AbstractChronology.java"

# interfaces
.implements Lj$/time/chrono/Chronology;


# static fields
.field private static final CHRONOS_BY_ID:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lj$/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHRONOS_BY_TYPE:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lj$/time/chrono/Chronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAPANESE_CALENDAR_LOCALE:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 130
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Lj$/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Lj$/util/concurrent/ConcurrentHashMap;

    .line 253
    new-instance v0, Ljava/util/Locale;

    const-string v1, "ja"

    const-string v2, "JP"

    invoke-direct {v0, v1, v2, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lj$/time/chrono/AbstractChronology;->JAPANESE_CALENDAR_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method static getAvailableChronologies()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lj$/time/chrono/Chronology;",
            ">;"
        }
    .end annotation

    .line 324
    invoke-static {}, Lj$/time/chrono/AbstractChronology;->initCache()Z

    .line 325
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 329
    .local v0, "chronos":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/time/chrono/Chronology;>;"
    const-class v1, Lj$/time/chrono/Chronology;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 330
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/chrono/Chronology;

    .line 331
    .local v3, "chrono":Lj$/time/chrono/Chronology;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v3    # "chrono":Lj$/time/chrono/Chronology;
    goto :goto_18

    .line 333
    :cond_28
    return-object v0
.end method

.method private static getCalendarType(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 255
    const-string v0, "ca"

    invoke-virtual {p0, v0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 257
    return-object v0

    .line 259
    :cond_9
    sget-object v1, Lj$/time/chrono/AbstractChronology;->JAPANESE_CALENDAR_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 260
    const-string v1, "japanese"

    return-object v1

    .line 262
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method private static initCache()Z
    .registers 6

    .line 184
    sget-object v0, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Lj$/util/concurrent/ConcurrentHashMap;

    const-string v1, "ISO"

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4a

    .line 188
    sget-object v0, Lj$/time/chrono/HijrahChronology;->INSTANCE:Lj$/time/chrono/HijrahChronology;

    invoke-static {v0}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;

    .line 189
    sget-object v0, Lj$/time/chrono/JapaneseChronology;->INSTANCE:Lj$/time/chrono/JapaneseChronology;

    invoke-static {v0}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;

    .line 190
    sget-object v0, Lj$/time/chrono/MinguoChronology;->INSTANCE:Lj$/time/chrono/MinguoChronology;

    invoke-static {v0}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;

    .line 191
    sget-object v0, Lj$/time/chrono/ThaiBuddhistChronology;->INSTANCE:Lj$/time/chrono/ThaiBuddhistChronology;

    invoke-static {v0}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;

    .line 195
    const-class v0, Lj$/time/chrono/AbstractChronology;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 196
    .local v0, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/chrono/AbstractChronology;

    .line 197
    .local v3, "chrono":Lj$/time/chrono/AbstractChronology;
    invoke-virtual {v3}, Lj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    invoke-static {v3}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;

    .line 204
    .end local v3    # "chrono":Lj$/time/chrono/AbstractChronology;
    .end local v4    # "id":Ljava/lang/String;
    :cond_42
    goto :goto_29

    .line 207
    :cond_43
    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    invoke-static {v1}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;

    .line 208
    const/4 v1, 0x1

    return v1

    .line 210
    .end local v0    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/AbstractChronology;>;"
    :cond_4a
    const/4 v0, 0x0

    return v0
.end method

.method static of(Ljava/lang/String;)Lj$/time/chrono/Chronology;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 277
    const-string v0, "id"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    :cond_5
    invoke-static {p0}, Lj$/time/chrono/AbstractChronology;->of0(Ljava/lang/String;)Lj$/time/chrono/Chronology;

    move-result-object v0

    .line 280
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v0, :cond_c

    .line 281
    return-object v0

    .line 284
    .end local v0    # "chrono":Lj$/time/chrono/Chronology;
    :cond_c
    invoke-static {}, Lj$/time/chrono/AbstractChronology;->initCache()Z

    move-result v0

    if-nez v0, :cond_5

    .line 289
    const-class v0, Lj$/time/chrono/Chronology;

    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 290
    .local v0, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/chrono/Chronology;

    .line 291
    .local v2, "chrono":Lj$/time/chrono/Chronology;
    invoke-interface {v2}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-interface {v2}, Lj$/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    .line 294
    .end local v2    # "chrono":Lj$/time/chrono/Chronology;
    :cond_3d
    goto :goto_1c

    .line 292
    .restart local v2    # "chrono":Lj$/time/chrono/Chronology;
    :cond_3e
    :goto_3e
    return-object v2

    .line 295
    .end local v2    # "chrono":Lj$/time/chrono/Chronology;
    :cond_3f
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown chronology: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static of0(Ljava/lang/String;)Lj$/time/chrono/Chronology;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .line 306
    sget-object v0, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 307
    .local v0, "chrono":Lj$/time/chrono/Chronology;
    if-nez v0, :cond_13

    .line 308
    sget-object v1, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 310
    :cond_13
    return-object v0
.end method

.method static ofLocale(Ljava/util/Locale;)Lj$/time/chrono/Chronology;
    .registers 6
    .param p0, "locale"    # Ljava/util/Locale;

    .line 224
    const-string v0, "locale"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-static {p0}, Lj$/time/chrono/AbstractChronology;->getCalendarType(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_68

    const-string v1, "iso"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "iso8601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_68

    .line 233
    :cond_1c
    sget-object v1, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/chrono/Chronology;

    .line 234
    .local v1, "chrono":Lj$/time/chrono/Chronology;
    if-eqz v1, :cond_27

    .line 235
    return-object v1

    .line 238
    .end local v1    # "chrono":Lj$/time/chrono/Chronology;
    :cond_27
    invoke-static {}, Lj$/time/chrono/AbstractChronology;->initCache()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 243
    const-class v1, Lj$/time/chrono/Chronology;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 244
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/chrono/Chronology;

    .line 245
    .local v3, "chrono":Lj$/time/chrono/Chronology;
    invoke-interface {v3}, Lj$/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 246
    return-object v3

    .line 248
    .end local v3    # "chrono":Lj$/time/chrono/Chronology;
    :cond_4e
    goto :goto_37

    .line 249
    :cond_4f
    new-instance v2, Lj$/time/DateTimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown calendar system: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v1    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/time/chrono/Chronology;>;"
    :cond_68
    :goto_68
    sget-object v1, Lj$/time/chrono/IsoChronology;->INSTANCE:Lj$/time/chrono/IsoChronology;

    return-object v1
.end method

.method static readExternal(Ljava/io/DataInput;)Lj$/time/chrono/Chronology;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;

    .line 765
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lj$/time/chrono/Chronology$-CC;->of(Ljava/lang/String;)Lj$/time/chrono/Chronology;

    move-result-object v1

    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;

    .line 757
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static registerChrono(Lj$/time/chrono/Chronology;)Lj$/time/chrono/Chronology;
    .registers 2
    .param p0, "chrono"    # Lj$/time/chrono/Chronology;

    .line 145
    invoke-interface {p0}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/time/chrono/AbstractChronology;->registerChrono(Lj$/time/chrono/Chronology;Ljava/lang/String;)Lj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0
.end method

.method static registerChrono(Lj$/time/chrono/Chronology;Ljava/lang/String;)Lj$/time/chrono/Chronology;
    .registers 5
    .param p0, "chrono"    # Lj$/time/chrono/Chronology;
    .param p1, "id"    # Ljava/lang/String;

    .line 158
    sget-object v0, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_ID:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/chrono/Chronology;

    .line 159
    .local v0, "prev":Lj$/time/chrono/Chronology;
    if-nez v0, :cond_15

    .line 160
    invoke-interface {p0}, Lj$/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 162
    sget-object v2, Lj$/time/chrono/AbstractChronology;->CHRONOS_BY_TYPE:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .end local v1    # "type":Ljava/lang/String;
    :cond_15
    return-object v0
.end method


# virtual methods
.method addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V
    .registers 10
    .param p2, "field"    # Lj$/time/temporal/ChronoField;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/temporal/ChronoField;",
            "J)V"
        }
    .end annotation

    .line 658
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 659
    .local v0, "old":Ljava/lang/Long;
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-nez v3, :cond_11

    goto :goto_46

    .line 660
    :cond_11
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " differs from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    :cond_46
    :goto_46
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    return-void
.end method

.method public compareTo(Lj$/time/chrono/Chronology;)I
    .registers 4
    .param p1, "other"    # Lj$/time/chrono/Chronology;

    .line 682
    invoke-virtual {p0}, Lj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 125
    check-cast p1, Lj$/time/chrono/Chronology;

    invoke-virtual {p0, p1}, Lj$/time/chrono/AbstractChronology;->compareTo(Lj$/time/chrono/Chronology;)I

    move-result p1

    return p1
.end method

.method public synthetic date(Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lj$/time/chrono/Chronology$-CC;->$default$date(Lj$/time/chrono/Chronology;Lj$/time/chrono/Era;III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dateNow()Lj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0}, Lj$/time/chrono/Chronology$-CC;->$default$dateNow(Lj$/time/chrono/Chronology;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic dateNow(Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/Chronology$-CC;->$default$dateNow(Lj$/time/chrono/Chronology;Lj$/time/Clock;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dateNow(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/Chronology$-CC;->$default$dateNow(Lj$/time/chrono/Chronology;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic dateYearDay(Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/Chronology$-CC;->$default$dateYearDay(Lj$/time/chrono/Chronology;Lj$/time/chrono/Era;II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic epochSecond(IIIIIILj$/time/ZoneOffset;)J
    .registers 8

    invoke-static/range {p0 .. p7}, Lj$/time/chrono/Chronology$-CC;->$default$epochSecond(Lj$/time/chrono/Chronology;IIIIIILj$/time/ZoneOffset;)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic epochSecond(Lj$/time/chrono/Era;IIIIIILj$/time/ZoneOffset;)J
    .registers 9

    invoke-static/range {p0 .. p8}, Lj$/time/chrono/Chronology$-CC;->$default$epochSecond(Lj$/time/chrono/Chronology;Lj$/time/chrono/Era;IIIIIILj$/time/ZoneOffset;)J

    move-result-wide p1

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 699
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 700
    return v0

    .line 702
    :cond_4
    instance-of v1, p1, Lj$/time/chrono/AbstractChronology;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 703
    move-object v1, p1

    check-cast v1, Lj$/time/chrono/AbstractChronology;

    invoke-virtual {p0, v1}, Lj$/time/chrono/AbstractChronology;->compareTo(Lj$/time/chrono/Chronology;)I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    .line 705
    :cond_15
    return v2
.end method

.method public synthetic getDisplayName(Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/time/chrono/Chronology$-CC;->$default$getDisplayName(Lj$/time/chrono/Chronology;Lj$/time/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public synthetic localDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/Chronology$-CC;->$default$localDateTime(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoLocalDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic period(III)Lj$/time/chrono/ChronoPeriod;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lj$/time/chrono/Chronology$-CC;->$default$period(Lj$/time/chrono/Chronology;III)Lj$/time/chrono/ChronoPeriod;

    move-result-object p1

    return-object p1
.end method

.method resolveAligned(Lj$/time/chrono/ChronoLocalDate;JJJ)Lj$/time/chrono/ChronoLocalDate;
    .registers 16
    .param p1, "base"    # Lj$/time/chrono/ChronoLocalDate;
    .param p2, "months"    # J
    .param p4, "weeks"    # J
    .param p6, "dow"    # J

    .line 634
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, p4, p5, v1}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 635
    .local v0, "date":Lj$/time/chrono/ChronoLocalDate;
    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x7

    cmp-long v5, p6, v3

    if-lez v5, :cond_23

    .line 636
    sub-long v5, p6, v1

    div-long/2addr v5, v3

    sget-object v7, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 637
    sub-long v5, p6, v1

    rem-long/2addr v5, v3

    add-long p6, v5, v1

    goto :goto_38

    .line 638
    :cond_23
    cmp-long v5, p6, v1

    if-gez v5, :cond_38

    .line 639
    invoke-static {p6, p7, v3, v4}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v5

    div-long/2addr v5, v3

    sget-object v7, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v0, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 640
    const-wide/16 v5, 0x6

    add-long/2addr v5, p6

    rem-long/2addr v5, v3

    add-long p6, v5, v1

    .line 642
    :cond_38
    :goto_38
    long-to-int v1, p6

    invoke-static {v1}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v1

    invoke-static {v1}, Lj$/time/temporal/TemporalAdjusters;->nextOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1
.end method

.method public resolveDate(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 5
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 439
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 440
    sget-object v0, Lj$/time/temporal/ChronoField;->EPOCH_DAY:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/AbstractChronology;->dateEpochDay(J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 444
    :cond_19
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveProlepticMonth(Ljava/util/Map;Lj$/time/format/ResolverStyle;)V

    .line 447
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYearOfEra(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    .line 448
    .local v0, "resolved":Lj$/time/chrono/ChronoLocalDate;
    if-eqz v0, :cond_23

    .line 449
    return-object v0

    .line 453
    :cond_23
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 454
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 455
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 456
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYMD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 458
    :cond_40
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 459
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 460
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYMAA(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 462
    :cond_55
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 463
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYMAD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 467
    :cond_62
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 468
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 470
    :cond_6f
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 471
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 472
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYAA(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 474
    :cond_84
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 475
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/AbstractChronology;->resolveYAD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 479
    :cond_91
    const/4 v1, 0x0

    return-object v1
.end method

.method resolveProlepticMonth(Ljava/util/Map;Lj$/time/format/ResolverStyle;)V
    .registers 8
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")V"
        }
    .end annotation

    .line 483
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 484
    .local v0, "pMonth":Ljava/lang/Long;
    if-eqz v0, :cond_45

    .line 485
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-eq p2, v1, :cond_17

    .line 486
    sget-object v1, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/ChronoField;->checkValidValue(J)J

    .line 490
    :cond_17
    invoke-virtual {p0}, Lj$/time/chrono/AbstractChronology;->dateNow()Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    .line 491
    const-wide/16 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->PROLEPTIC_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalField;J)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 492
    .local v1, "chronoDate":Lj$/time/chrono/ChronoLocalDate;
    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    sget-object v3, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 493
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 495
    .end local v1    # "chronoDate":Lj$/time/chrono/ChronoLocalDate;
    :cond_45
    return-void
.end method

.method resolveYAA(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 12
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 602
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 603
    .local v0, "y":I
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_50

    .line 604
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v3

    .line 605
    .local v3, "weeks":J
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v5

    .line 606
    .local v5, "days":J
    invoke-virtual {p0, v0, v2}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 608
    .end local v3    # "weeks":J
    .end local v5    # "days":J
    :cond_50
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 609
    .local v1, "aw":I
    sget-object v3, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v3

    .line 610
    .local v3, "ad":I
    invoke-virtual {p0, v0, v2}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    mul-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v3, -0x1

    add-int/2addr v4, v5

    int-to-long v4, v4

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 611
    .local v2, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v4, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne p2, v4, :cond_a7

    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v4}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v4

    if-ne v4, v0, :cond_9f

    goto :goto_a7

    .line 612
    :cond_9f
    new-instance v4, Lj$/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v4, v5}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 614
    :cond_a7
    :goto_a7
    return-object v2
.end method

.method resolveYAD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 19
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 618
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v11

    .line 619
    .local v11, "y":I
    sget-object v0, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v1, 0x1

    if-ne v10, v0, :cond_54

    .line 620
    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v12

    .line 621
    .local v12, "weeks":J
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v14

    .line 622
    .local v14, "dow":J
    invoke-virtual {v8, v11, v1}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v12

    move-wide v6, v14

    invoke-virtual/range {v0 .. v7}, Lj$/time/chrono/AbstractChronology;->resolveAligned(Lj$/time/chrono/ChronoLocalDate;JJJ)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 624
    .end local v12    # "weeks":J
    .end local v14    # "dow":J
    :cond_54
    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 625
    .local v0, "aw":I
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v2}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v2

    .line 626
    .local v2, "dow":I
    invoke-virtual {v8, v11, v1}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v3, v3, 0x7

    int-to-long v3, v3

    sget-object v5, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v5}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-static {v2}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v3

    invoke-static {v3}, Lj$/time/temporal/TemporalAdjusters;->nextOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v3

    invoke-interface {v1, v3}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 627
    .local v1, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v3, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne v10, v3, :cond_b4

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v3}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v3

    if-ne v3, v11, :cond_ac

    goto :goto_b4

    .line 628
    :cond_ac
    new-instance v3, Lj$/time/DateTimeException;

    const-string v4, "Strict mode rejected resolved date as it is in a different year"

    invoke-direct {v3, v4}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 630
    :cond_b4
    :goto_b4
    return-object v1
.end method

.method resolveYD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 8
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 556
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 557
    .local v0, "y":I
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-ne p2, v1, :cond_3a

    .line 558
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v1

    .line 559
    .local v1, "days":J
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v3, v1, v2, v4}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v3

    return-object v3

    .line 561
    .end local v1    # "days":J
    :cond_3a
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 562
    .local v1, "doy":I
    invoke-virtual {p0, v0, v1}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2
.end method

.method resolveYMAA(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 14
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 566
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 567
    .local v0, "y":I
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_66

    .line 568
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v3

    .line 569
    .local v3, "months":J
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v7

    .line 570
    .local v7, "weeks":J
    sget-object v1, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v5

    .line 571
    .local v5, "days":J
    invoke-virtual {p0, v0, v2, v2}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v7, v8, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 573
    .end local v3    # "months":J
    .end local v5    # "days":J
    .end local v7    # "weeks":J
    :cond_66
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 574
    .local v1, "moy":I
    sget-object v3, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v3

    .line 575
    .local v3, "aw":I
    sget-object v4, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v4

    sget-object v5, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Lj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v4, v5, v6, v7}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v4

    .line 576
    .local v4, "ad":I
    invoke-virtual {p0, v0, v1, v2}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v6, v4, -0x1

    add-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v2, v5, v6, v7}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    .line 577
    .local v2, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v5, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne p2, v5, :cond_d5

    sget-object v5, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v2, v5}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v5

    if-ne v5, v1, :cond_cd

    goto :goto_d5

    .line 578
    :cond_cd
    new-instance v5, Lj$/time/DateTimeException;

    const-string v6, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v5, v6}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 580
    :cond_d5
    :goto_d5
    return-object v2
.end method

.method resolveYMAD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 21
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 584
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v11

    .line 585
    .local v11, "y":I
    sget-object v0, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v1, 0x1

    if-ne v10, v0, :cond_64

    .line 586
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v12

    .line 587
    .local v12, "months":J
    sget-object v0, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v14

    .line 588
    .local v14, "weeks":J
    sget-object v0, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v16

    .line 589
    .local v16, "dow":J
    invoke-virtual {v8, v11, v1, v1}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    move-object/from16 v0, p0

    move-wide v2, v12

    move-wide v4, v14

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lj$/time/chrono/AbstractChronology;->resolveAligned(Lj$/time/chrono/ChronoLocalDate;JJJ)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v0

    return-object v0

    .line 591
    .end local v12    # "months":J
    .end local v14    # "weeks":J
    .end local v16    # "dow":J
    :cond_64
    sget-object v0, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v2, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 592
    .local v0, "moy":I
    sget-object v2, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v2}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    sget-object v3, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v2

    .line 593
    .local v2, "aw":I
    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v8, v3}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-interface {v9, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v3

    .line 594
    .local v3, "dow":I
    invoke-virtual {v8, v11, v0, v1}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    add-int/lit8 v4, v2, -0x1

    mul-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    sget-object v6, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v4, v5, v6}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    invoke-static {v3}, Lj$/time/DayOfWeek;->of(I)Lj$/time/DayOfWeek;

    move-result-object v4

    invoke-static {v4}, Lj$/time/temporal/TemporalAdjusters;->nextOrSame(Lj$/time/DayOfWeek;)Lj$/time/temporal/TemporalAdjuster;

    move-result-object v4

    invoke-interface {v1, v4}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    .line 595
    .local v1, "date":Lj$/time/chrono/ChronoLocalDate;
    sget-object v4, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne v10, v4, :cond_dc

    sget-object v4, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v1, v4}, Lj$/time/chrono/ChronoLocalDate;->get(Lj$/time/temporal/TemporalField;)I

    move-result v4

    if-ne v4, v0, :cond_d4

    goto :goto_dc

    .line 596
    :cond_d4
    new-instance v4, Lj$/time/DateTimeException;

    const-string v5, "Strict mode rejected resolved date as it is in a different month"

    invoke-direct {v4, v5}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 598
    :cond_dc
    :goto_dc
    return-object v1
.end method

.method resolveYMD(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 12
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 536
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v0}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v0

    .line 537
    .local v0, "y":I
    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_50

    .line 538
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v3

    .line 539
    .local v3, "months":J
    sget-object v1, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Lj$/time/Instant$$ExternalSyntheticBackport6;->m(JJ)J

    move-result-wide v5

    .line 540
    .local v5, "days":J
    invoke-virtual {p0, v0, v2, v2}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v3, v4, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {v1, v5, v6, v2}, Lj$/time/chrono/ChronoLocalDate;->plus(JLj$/time/temporal/TemporalUnit;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v1

    return-object v1

    .line 542
    .end local v3    # "months":J
    .end local v5    # "days":J
    :cond_50
    sget-object v1, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v3, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v1

    .line 543
    .local v1, "moy":I
    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v3

    .line 544
    .local v3, "domRange":Lj$/time/temporal/ValueRange;
    sget-object v4, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v4

    .line 545
    .local v4, "dom":I
    sget-object v5, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    if-ne p2, v5, :cond_97

    .line 547
    :try_start_84
    invoke-virtual {p0, v0, v1, v4}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2
    :try_end_88
    .catch Lj$/time/DateTimeException; {:try_start_84 .. :try_end_88} :catch_89

    return-object v2

    .line 548
    :catch_89
    move-exception v5

    .line 549
    .local v5, "ex":Lj$/time/DateTimeException;
    invoke-virtual {p0, v0, v1, v2}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    invoke-static {}, Lj$/time/temporal/TemporalAdjusters;->lastDayOfMonth()Lj$/time/temporal/TemporalAdjuster;

    move-result-object v6

    invoke-interface {v2, v6}, Lj$/time/chrono/ChronoLocalDate;->with(Lj$/time/temporal/TemporalAdjuster;)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2

    .line 552
    .end local v5    # "ex":Lj$/time/DateTimeException;
    :cond_97
    invoke-virtual {p0, v0, v1, v4}, Lj$/time/chrono/AbstractChronology;->date(III)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v2

    return-object v2
.end method

.method resolveYearOfEra(Ljava/util/Map;Lj$/time/format/ResolverStyle;)Lj$/time/chrono/ChronoLocalDate;
    .registers 11
    .param p2, "resolverStyle"    # Lj$/time/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lj$/time/format/ResolverStyle;",
            ")",
            "Lj$/time/chrono/ChronoLocalDate;"
        }
    .end annotation

    .line 498
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    sget-object v0, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 499
    .local v0, "yoeLong":Ljava/lang/Long;
    if-eqz v0, :cond_b6

    .line 500
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 502
    .local v1, "eraLong":Ljava/lang/Long;
    sget-object v2, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    if-eq p2, v2, :cond_27

    .line 503
    sget-object v2, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v2}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v2, v3, v4, v5}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v2

    .local v2, "yoe":I
    goto :goto_2f

    .line 505
    .end local v2    # "yoe":I
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/LocalDate$$ExternalSyntheticBackport5;->m(J)I

    move-result v2

    .line 507
    .restart local v2    # "yoe":I
    :goto_2f
    if-eqz v1, :cond_51

    .line 508
    sget-object v3, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3, v4, v5, v6}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v3

    invoke-virtual {p0, v3}, Lj$/time/chrono/AbstractChronology;->eraOf(I)Lj$/time/chrono/Era;

    move-result-object v3

    .line 509
    .local v3, "eraObj":Lj$/time/chrono/Era;
    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3, v2}, Lj$/time/chrono/AbstractChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 510
    .end local v3    # "eraObj":Lj$/time/chrono/Era;
    goto/16 :goto_d6

    .line 511
    :cond_51
    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_85

    .line 512
    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v3}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v3

    sget-object v5, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {v3, v5, v6, v7}, Lj$/time/temporal/ValueRange;->checkValidIntValue(JLj$/time/temporal/TemporalField;)I

    move-result v3

    .line 513
    .local v3, "year":I
    invoke-virtual {p0, v3, v4}, Lj$/time/chrono/AbstractChronology;->dateYearDay(II)Lj$/time/chrono/ChronoLocalDate;

    move-result-object v4

    .line 514
    .local v4, "chronoDate":Lj$/time/chrono/ChronoLocalDate;
    sget-object v5, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-interface {v4}, Lj$/time/chrono/ChronoLocalDate;->getEra()Lj$/time/chrono/Era;

    move-result-object v6

    invoke-virtual {p0, v6, v2}, Lj$/time/chrono/AbstractChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    .line 515
    .end local v3    # "year":I
    .end local v4    # "chronoDate":Lj$/time/chrono/ChronoLocalDate;
    goto :goto_d6

    :cond_85
    sget-object v3, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    if-ne p2, v3, :cond_8f

    .line 518
    sget-object v3, Lj$/time/temporal/ChronoField;->YEAR_OF_ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d6

    .line 520
    :cond_8f
    invoke-virtual {p0}, Lj$/time/chrono/AbstractChronology;->eras()Ljava/util/List;

    move-result-object v3

    .line 521
    .local v3, "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 522
    sget-object v4, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    int-to-long v5, v2

    invoke-virtual {p0, p1, v4, v5, v6}, Lj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    goto :goto_d6

    .line 524
    :cond_a0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/time/chrono/Era;

    .line 525
    .local v4, "eraObj":Lj$/time/chrono/Era;
    sget-object v5, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v4, v2}, Lj$/time/chrono/AbstractChronology;->prolepticYear(Lj$/time/chrono/Era;I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lj$/time/chrono/AbstractChronology;->addFieldValue(Ljava/util/Map;Lj$/time/temporal/ChronoField;J)V

    goto :goto_d6

    .line 529
    .end local v1    # "eraLong":Ljava/lang/Long;
    .end local v2    # "yoe":I
    .end local v3    # "eras":Ljava/util/List;, "Ljava/util/List<Ljava/time/chrono/Era;>;"
    .end local v4    # "eraObj":Lj$/time/chrono/Era;
    :cond_b6
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 530
    sget-object v1, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {p0, v1}, Lj$/time/chrono/AbstractChronology;->range(Lj$/time/temporal/ChronoField;)Lj$/time/temporal/ValueRange;

    move-result-object v1

    sget-object v2, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lj$/time/temporal/ChronoField;->ERA:Lj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v3, v4}, Lj$/time/temporal/ValueRange;->checkValidValue(JLj$/time/temporal/TemporalField;)J

    goto :goto_d7

    .line 529
    :cond_d6
    :goto_d6
    nop

    .line 532
    :goto_d7
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 732
    invoke-virtual {p0}, Lj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/DataOutput;

    .line 761
    invoke-virtual {p0}, Lj$/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 747
    new-instance v0, Lj$/time/chrono/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lj$/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method public synthetic zonedDateTime(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 3

    invoke-static {p0, p1, p2}, Lj$/time/chrono/Chronology$-CC;->$default$zonedDateTime(Lj$/time/chrono/Chronology;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method

.method public synthetic zonedDateTime(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;
    .registers 2

    invoke-static {p0, p1}, Lj$/time/chrono/Chronology$-CC;->$default$zonedDateTime(Lj$/time/chrono/Chronology;Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/ChronoZonedDateTime;

    move-result-object p1

    return-object p1
.end method
