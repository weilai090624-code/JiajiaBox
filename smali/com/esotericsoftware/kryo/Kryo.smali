.class public Lcom/esotericsoftware/kryo/Kryo;
.super Ljava/lang/Object;
.source "Kryo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    }
.end annotation


# static fields
.field private static final DEFAULT_SERIALIZER_SIZE:I = 0x44

.field public static final NOT_NULL:B = 0x1t

.field private static final NO_REF:I = -0x2

.field public static final NULL:B = 0x0t

.field private static final REF:I = -0x1


# instance fields
.field private autoReset:Z

.field private classLoader:Ljava/lang/ClassLoader;

.field private final classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

.field private context:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field private copyDepth:I

.field private copyReferences:Z

.field private copyShallow:Z

.field private defaultSerializer:Lcom/esotericsoftware/kryo/SerializerFactory;

.field private final defaultSerializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private depth:I

.field private generics:Lcom/esotericsoftware/kryo/util/Generics;

.field private graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

.field private final lowPriorityDefaultSerializerCount:I

.field private maxDepth:I

.field private needsCopyReference:Ljava/lang/Object;

.field private nextRegisterID:I

.field private originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

.field private readObject:Ljava/lang/Object;

.field private final readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

.field private referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

.field private references:Z

.field private registrationRequired:Z

.field private strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

.field private volatile thread:Ljava/lang/Thread;

.field private warnUnregisteredClasses:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 168
    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .registers 7
    .param p1, "classResolver"    # Lcom/esotericsoftware/kryo/ClassResolver;
    .param p2, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$FieldSerializerFactory;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/SerializerFactory$FieldSerializerFactory;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/SerializerFactory;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x44

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classLoader:Ljava/lang/ClassLoader;

    .line 146
    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultInstantiatorStrategy;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    .line 150
    const v1, 0x7fffffff

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->maxDepth:I

    .line 151
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    .line 156
    new-instance v1, Lcom/esotericsoftware/kryo/util/IntArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/util/IntArray;-><init>(I)V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    .line 157
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    .line 164
    new-instance v1, Lcom/esotericsoftware/kryo/util/DefaultGenerics;

    invoke-direct {v1, p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;-><init>(Lcom/esotericsoftware/kryo/Kryo;)V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->generics:Lcom/esotericsoftware/kryo/util/Generics;

    .line 179
    if-eqz p1, :cond_210

    .line 181
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    .line 182
    invoke-interface {p1, p0}, Lcom/esotericsoftware/kryo/ClassResolver;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 184
    iput-object p2, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 185
    if-eqz p2, :cond_4f

    .line 186
    invoke-interface {p2, p0}, Lcom/esotericsoftware/kryo/ReferenceResolver;->setKryo(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 187
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 190
    :cond_4f
    const-class v0, [B

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ByteArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 191
    const-class v0, [C

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$CharArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 192
    const-class v0, [S

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ShortArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 193
    const-class v0, [I

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$IntArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 194
    const-class v0, [J

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$LongArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 195
    const-class v0, [F

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$FloatArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    const-class v0, [D

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$DoubleArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 197
    const-class v0, [Z

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$BooleanArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 198
    const-class v0, [Ljava/lang/String;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$StringArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 199
    const-class v0, [Ljava/lang/Object;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 200
    const-class v0, Ljava/math/BigInteger;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigIntegerSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 201
    const-class v0, Ljava/math/BigDecimal;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BigDecimalSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 202
    const-class v0, Ljava/lang/Class;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ClassSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 203
    const-class v0, Ljava/util/Date;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DateSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 204
    const-class v0, Ljava/lang/Enum;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$EnumSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 205
    const-class v0, Ljava/util/EnumSet;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$EnumSetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 206
    const-class v0, Ljava/util/Currency;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CurrencySerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 207
    const-class v0, Ljava/lang/StringBuffer;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBufferSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 208
    const-class v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringBuilderSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 209
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptyListSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 210
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptyMapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 211
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsEmptySetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonListSerializer;

    invoke-virtual {p0, v1, v3}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 213
    invoke-static {v0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonMapSerializer;

    invoke-virtual {p0, v1, v3}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 214
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CollectionsSingletonSetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 215
    const-class v0, Ljava/util/TreeSet;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 216
    const-class v0, Ljava/util/Collection;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 217
    const-class v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ConcurrentSkipListMapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 218
    const-class v0, Ljava/util/TreeMap;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 219
    const-class v0, Ljava/util/Map;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/MapSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 220
    const-class v0, Ljava/util/TimeZone;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TimeZoneSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 221
    const-class v0, Ljava/util/Calendar;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CalendarSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 222
    const-class v0, Ljava/util/Locale;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LocaleSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 223
    const-class v0, Ljava/nio/charset/Charset;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharsetSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 224
    const-class v0, Ljava/net/URL;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$URLSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 225
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ArraysAsListSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 226
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$VoidSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$VoidSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 227
    const-class v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$PriorityQueueSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 228
    const-class v0, Ljava/util/BitSet;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BitSetSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BitSetSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V

    .line 229
    const-class v0, Lcom/esotericsoftware/kryo/KryoSerializable;

    const-class v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$KryoSerializableSerializer;

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 230
    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/OptionalSerializers;->addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 231
    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/TimeSerializers;->addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 232
    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableCollectionsSerializers;->addDefaultSerializers(Lcom/esotericsoftware/kryo/Kryo;)V

    .line 234
    const-string v0, "java.lang.Record"

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    .line 235
    const-class v1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/String;Ljava/lang/Class;)V

    .line 237
    :cond_1ad
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->lowPriorityDefaultSerializerCount:I

    .line 240
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$IntSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$IntSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 241
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$StringSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 242
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$FloatSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$FloatSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 243
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BooleanSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$BooleanSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 244
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ByteSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ByteSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 245
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$CharSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 246
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ShortSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$ShortSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 247
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LongSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$LongSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 248
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DoubleSerializer;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$DoubleSerializer;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    .line 249
    return-void

    .line 179
    :cond_210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classResolver cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .registers 3
    .param p1, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 174
    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/esotericsoftware/kryo/Kryo;-><init>(Lcom/esotericsoftware/kryo/ClassResolver;Lcom/esotericsoftware/kryo/ReferenceResolver;)V

    .line 175
    return-void
.end method

.method private addDefaultSerializer(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 7
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 292
    .local p2, "serializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/esotericsoftware/kryo/Kryo;->addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    .line 295
    nop

    .line 296
    return-void

    .line 293
    :catch_9
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default serializer cannot be added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beginObject()V
    .registers 4

    .line 1075
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 1076
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v0, :cond_f

    .line 1077
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->thread:Ljava/lang/Thread;

    goto :goto_20

    .line 1078
    :cond_f
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->thread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_18

    goto :goto_20

    .line 1079
    :cond_18
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Kryo must not be accessed concurrently by multiple threads."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_20
    :goto_20
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->maxDepth:I

    if-eq v0, v1, :cond_2d

    .line 1082
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    .line 1083
    return-void

    .line 1081
    :cond_2d
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max depth exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I
    .registers 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "factory"    # Lcom/esotericsoftware/kryo/SerializerFactory;

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "lowest":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->lowPriorityDefaultSerializerCount:I

    sub-int/2addr v2, v3

    .local v2, "n":I
    :goto_b
    if-ge v1, v2, :cond_22

    .line 435
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    iget-object v3, v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->type:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1f

    add-int/lit8 v0, v1, 0x1

    .line 434
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 436
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_22
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    new-instance v2, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    invoke-direct {v2, p1, p2}, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 437
    return v0
.end method


# virtual methods
.method public addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 273
    if-eqz p1, :cond_15

    .line 274
    if-eqz p2, :cond_d

    .line 275
    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/SerializerFactory$SingletonSerializerFactory;-><init>(Lcom/esotericsoftware/kryo/Serializer;)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->insertDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I

    .line 276
    return-void

    .line 274
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializerFactory"    # Lcom/esotericsoftware/kryo/SerializerFactory;

    .line 282
    if-eqz p1, :cond_10

    .line 283
    if-eqz p2, :cond_8

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->insertDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I

    .line 285
    return-void

    .line 283
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializerFactory cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDefaultSerializer(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p2, "serializerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    if-eqz p1, :cond_15

    .line 428
    if-eqz p2, :cond_d

    .line 429
    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;

    invoke-direct {v0, p2}, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/Kryo;->insertDefaultSerializer(Ljava/lang/Class;Lcom/esotericsoftware/kryo/SerializerFactory;)I

    .line 430
    return-void

    .line 428
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializerClass cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 970
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 971
    :cond_4
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    if-eqz v0, :cond_9

    return-object p1

    .line 972
    :cond_9
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 974
    :try_start_f
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 975
    :cond_1a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_70

    .line 976
    .local v0, "existingCopy":Ljava/lang/Object;
    if-eqz v0, :cond_2d

    .line 988
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 976
    :cond_2c
    return-object v0

    .line 978
    :cond_2d
    :try_start_2d
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v2, :cond_33

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 980
    :cond_33
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_3f

    .line 981
    move-object v2, p1

    check-cast v2, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {v2, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "copy":Ljava/lang/Object;
    goto :goto_4b

    .line 983
    .end local v2    # "copy":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 984
    .restart local v2    # "copy":Ljava/lang/Object;
    :goto_4b
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v3, :cond_52

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 985
    :cond_52
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_5e

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_64

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-ne v3, v1, :cond_64

    :cond_5e
    const-string v3, "Copy"

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_64
    .catchall {:try_start_2d .. :try_end_64} :catchall_70

    .line 986
    :cond_64
    nop

    .line 988
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v3, :cond_6f

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 986
    :cond_6f
    return-object v2

    .line 988
    .end local v0    # "existingCopy":Ljava/lang/Object;
    .end local v2    # "copy":Ljava/lang/Object;
    :catchall_70
    move-exception v0

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_7b

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 989
    :cond_7b
    throw v0
.end method

.method public copy(Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .registers 8
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .line 996
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 997
    :cond_4
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    if-eqz v0, :cond_9

    return-object p1

    .line 998
    :cond_9
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 1000
    :try_start_f
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 1001
    :cond_1a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_68

    .line 1002
    .local v0, "existingCopy":Ljava/lang/Object;
    if-eqz v0, :cond_2d

    .line 1014
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_2c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1002
    :cond_2c
    return-object v0

    .line 1004
    :cond_2d
    :try_start_2d
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v2, :cond_33

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 1006
    :cond_33
    instance-of v2, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v2, :cond_3f

    .line 1007
    move-object v2, p1

    check-cast v2, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {v2, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "copy":Ljava/lang/Object;
    goto :goto_43

    .line 1009
    .end local v2    # "copy":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {p2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1010
    .restart local v2    # "copy":Ljava/lang/Object;
    :goto_43
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v3, :cond_4a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 1011
    :cond_4a
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_56

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_5c

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-ne v3, v1, :cond_5c

    :cond_56
    const-string v3, "Copy"

    const/4 v4, -0x1

    invoke-static {v3, v2, v4}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_68

    .line 1012
    :cond_5c
    nop

    .line 1014
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v3, :cond_67

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1012
    :cond_67
    return-object v2

    .line 1014
    .end local v0    # "existingCopy":Ljava/lang/Object;
    .end local v2    # "copy":Ljava/lang/Object;
    :catchall_68
    move-exception v0

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v2, :cond_73

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1015
    :cond_73
    throw v0
.end method

.method public copyShallow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1022
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 1023
    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 1024
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1026
    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_18

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 1027
    :cond_18
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_72

    .line 1028
    .local v2, "existingCopy":Ljava/lang/Object;
    if-eqz v2, :cond_2d

    .line 1040
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1041
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1028
    :cond_2c
    return-object v2

    .line 1030
    :cond_2d
    :try_start_2d
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v3, :cond_33

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 1032
    :cond_33
    instance-of v3, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v3, :cond_3f

    .line 1033
    move-object v3, p1

    check-cast v3, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {v3, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "copy":Ljava/lang/Object;
    goto :goto_4b

    .line 1035
    .end local v3    # "copy":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1036
    .restart local v3    # "copy":Ljava/lang/Object;
    :goto_4b
    iget-object v4, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v4, :cond_52

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 1037
    :cond_52
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v4, :cond_5e

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_64

    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-ne v4, v1, :cond_64

    :cond_5e
    const-string v4, "Shallow copy"

    const/4 v5, -0x1

    invoke-static {v4, v3, v5}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_64
    .catchall {:try_start_2d .. :try_end_64} :catchall_72

    .line 1038
    :cond_64
    nop

    .line 1040
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1041
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v0, :cond_71

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1038
    :cond_71
    return-object v3

    .line 1040
    .end local v2    # "existingCopy":Ljava/lang/Object;
    .end local v3    # "copy":Ljava/lang/Object;
    :catchall_72
    move-exception v2

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1041
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v0, :cond_7f

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1042
    :cond_7f
    throw v2
.end method

.method public copyShallow(Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .registers 9
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .line 1049
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 1050
    :cond_4
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 1051
    iput-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1053
    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-nez v2, :cond_18

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    .line 1054
    :cond_18
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v2, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_6a

    .line 1055
    .local v2, "existingCopy":Ljava/lang/Object;
    if-eqz v2, :cond_2d

    .line 1067
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1068
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v0, :cond_2c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1055
    :cond_2c
    return-object v2

    .line 1057
    :cond_2d
    :try_start_2d
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    if-eqz v3, :cond_33

    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    .line 1059
    :cond_33
    instance-of v3, p1, Lcom/esotericsoftware/kryo/KryoCopyable;

    if-eqz v3, :cond_3f

    .line 1060
    move-object v3, p1

    check-cast v3, Lcom/esotericsoftware/kryo/KryoCopyable;

    invoke-interface {v3, p0}, Lcom/esotericsoftware/kryo/KryoCopyable;->copy(Lcom/esotericsoftware/kryo/Kryo;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "copy":Ljava/lang/Object;
    goto :goto_43

    .line 1062
    .end local v3    # "copy":Ljava/lang/Object;
    :cond_3f
    invoke-virtual {p2, p0, p1}, Lcom/esotericsoftware/kryo/Serializer;->copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1063
    .restart local v3    # "copy":Ljava/lang/Object;
    :goto_43
    iget-object v4, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v4, :cond_4a

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 1064
    :cond_4a
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v4, :cond_56

    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_5c

    iget v4, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-ne v4, v1, :cond_5c

    :cond_56
    const-string v4, "Shallow copy"

    const/4 v5, -0x1

    invoke-static {v4, v3, v5}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_5c
    .catchall {:try_start_2d .. :try_end_5c} :catchall_6a

    .line 1065
    :cond_5c
    nop

    .line 1067
    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1068
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v0, :cond_69

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1065
    :cond_69
    return-object v3

    .line 1067
    .end local v2    # "existingCopy":Ljava/lang/Object;
    .end local v3    # "copy":Ljava/lang/Object;
    :catchall_6a
    move-exception v2

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyShallow:Z

    .line 1068
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 1069
    :cond_77
    throw v2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 1102
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;
    .registers 2

    .line 1086
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    return-object v0
.end method

.method public getContext()Lcom/esotericsoftware/kryo/util/ObjectMap;
    .registers 2

    .line 1207
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->context:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_b

    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->context:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 1208
    :cond_b
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->context:Lcom/esotericsoftware/kryo/util/ObjectMap;

    return-object v0
.end method

.method public getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .registers 7
    .param p1, "type"    # Ljava/lang/Class;

    .line 443
    if-eqz p1, :cond_39

    .line 445
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializerForAnnotatedType(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    .line 446
    .local v0, "serializerForAnnotation":Lcom/esotericsoftware/kryo/Serializer;
    if-eqz v0, :cond_9

    return-object v0

    .line 448
    :cond_9
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_10
    if-ge v1, v2, :cond_34

    .line 449
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;

    .line 450
    .local v3, "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    iget-object v4, v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->type:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->serializerFactory:Lcom/esotericsoftware/kryo/SerializerFactory;

    invoke-interface {v4, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 451
    iget-object v4, v3, Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;->serializerFactory:Lcom/esotericsoftware/kryo/SerializerFactory;

    invoke-interface {v4, p0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    return-object v4

    .line 448
    .end local v3    # "entry":Lcom/esotericsoftware/kryo/Kryo$DefaultSerializerEntry;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 454
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_34
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->newDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    return-object v1

    .line 443
    .end local v0    # "serializerForAnnotation":Lcom/esotericsoftware/kryo/Serializer;
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getDefaultSerializerForAnnotatedType(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 458
    const-class v0, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 459
    const-class v0, Lcom/esotericsoftware/kryo/DefaultSerializer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/DefaultSerializer;

    .line 460
    .local v0, "annotation":Lcom/esotericsoftware/kryo/DefaultSerializer;
    invoke-interface {v0}, Lcom/esotericsoftware/kryo/DefaultSerializer;->serializerFactory()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0}, Lcom/esotericsoftware/kryo/DefaultSerializer;->value()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/esotericsoftware/kryo/util/Util;->newFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/SerializerFactory;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    return-object v1

    .line 462
    .end local v0    # "annotation":Lcom/esotericsoftware/kryo/DefaultSerializer;
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .line 1220
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    return v0
.end method

.method public getGenerics()Lcom/esotericsoftware/kryo/util/Generics;
    .registers 2

    .line 1282
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->generics:Lcom/esotericsoftware/kryo/util/Generics;

    return-object v0
.end method

.method public getGraphContext()Lcom/esotericsoftware/kryo/util/ObjectMap;
    .registers 2

    .line 1214
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_b

    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 1215
    :cond_b
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    return-object v0
.end method

.method public getInstantiatorStrategy()Lorg/objenesis/strategy/InstantiatorStrategy;
    .registers 2

    .line 1183
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    return-object v0
.end method

.method public getNextRegistrationId()I
    .registers 3

    .line 545
    nop

    :goto_1
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1a

    .line 546
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    return v0

    .line 547
    :cond_13
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->nextRegisterID:I

    goto :goto_1

    .line 549
    :cond_1a
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "No registration IDs are available."

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOriginalToCopyMap()Lcom/esotericsoftware/kryo/util/IdentityMap;
    .registers 2

    .line 1227
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    return-object v0
.end method

.method public getReferenceResolver()Lcom/esotericsoftware/kryo/ReferenceResolver;
    .registers 2

    .line 1091
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    return-object v0
.end method

.method public getReferences()Z
    .registers 2

    .line 1171
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    return v0
.end method

.method public getRegistration(I)Lcom/esotericsoftware/kryo/Registration;
    .registers 3
    .param p1, "classID"    # I

    .line 594
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;

    .line 557
    if-eqz p1, :cond_83

    .line 559
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 560
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v0, :cond_82

    .line 561
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 563
    const-class v1, Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_5c

    .line 564
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_3d

    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-class v1, Ljava/lang/Enum;

    if-eq p1, v1, :cond_3d

    .line 567
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 568
    if-nez p1, :cond_30

    goto :goto_5c

    .line 569
    :cond_30
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 570
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 571
    goto :goto_5c

    .line 574
    :cond_3d
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 575
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    const-class v2, Ljava/util/EnumSet;

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_5c

    .line 576
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->isClosure(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 577
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    const-class v2, Lcom/esotericsoftware/kryo/serializers/ClosureSerializer$Closure;

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 578
    :cond_5c
    :goto_5c
    if-nez v0, :cond_82

    .line 579
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    if-nez v1, :cond_78

    .line 580
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->WARN:Z

    if-eqz v1, :cond_71

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->warnUnregisteredClasses:Z

    if-eqz v1, :cond_71

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->unregisteredClassMessage(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/esotericsoftware/minlog/Log;->warn(Ljava/lang/String;)V

    .line 581
    :cond_71
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->registerImplicit(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    goto :goto_82

    .line 579
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->unregisteredClassMessage(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_82
    :goto_82
    return-object v0

    .line 557
    .end local v0    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :cond_83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .registers 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 601
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public getWarnUnregisteredClasses()Z
    .registers 2

    .line 1133
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->warnUnregisteredClasses:Z

    return v0
.end method

.method public isClosure(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 1262
    if-eqz p1, :cond_12

    .line 1263
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1262
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFinal(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 1251
    if-eqz p1, :cond_1e

    .line 1252
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->getElementClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0

    .line 1253
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0

    .line 1251
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRegistrationRequired()Z
    .registers 2

    .line 1123
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    return v0
.end method

.method protected newDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;
    .registers 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 469
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/SerializerFactory;

    invoke-interface {v0, p0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory;->newSerializer(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1196
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 1197
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getInstantiator()Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v1

    .line 1198
    .local v1, "instantiator":Lorg/objenesis/instantiator/ObjectInstantiator;
    if-nez v1, :cond_11

    .line 1199
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->newInstantiator(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v1

    .line 1200
    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/Registration;->setInstantiator(Lorg/objenesis/instantiator/ObjectInstantiator;)V

    .line 1202
    :cond_11
    invoke-interface {v1}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method protected newInstantiator(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .registers 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 1190
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    invoke-interface {v0, p1}, Lorg/objenesis/strategy/InstantiatorStrategy;->newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v0

    return-object v0
.end method

.method public readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    .registers 4
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .line 756
    if-eqz p1, :cond_21

    .line 758
    :try_start_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_14

    .line 760
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 758
    :cond_13
    return-object v0

    .line 760
    :catchall_14
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 761
    :cond_20
    throw v0

    .line 756
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;
    .registers 8
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;

    .line 866
    if-eqz p1, :cond_8d

    .line 867
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 869
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_7d

    .line 870
    .local v1, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-nez v1, :cond_1c

    .line 884
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_1a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 870
    :cond_1a
    const/4 v0, 0x0

    return-object v0

    .line 871
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 874
    .local v2, "type":Ljava/lang/Class;
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v3, :cond_4f

    .line 875
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v3

    .line 876
    .local v3, "stackSize":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3d

    iget-object v4, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_7d

    .line 884
    iget v5, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v5, v0

    iput v5, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v5, :cond_3c

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 876
    :cond_3c
    return-object v4

    .line 877
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v4

    invoke-virtual {v4, p0, p1, v2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 878
    .local v4, "object":Ljava/lang/Object;
    iget-object v5, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v5, v5, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v3, v5, :cond_4e

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 879
    .end local v3    # "stackSize":I
    :cond_4e
    goto :goto_58

    .line 880
    .end local v4    # "object":Ljava/lang/Object;
    :cond_4f
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    invoke-virtual {v3, p0, p1, v2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .line 881
    .restart local v4    # "object":Ljava/lang/Object;
    :goto_58
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v3, :cond_64

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_6d

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v3, v0, :cond_6d

    :cond_64
    const-string v3, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_6d
    .catchall {:try_start_3d .. :try_end_6d} :catchall_7d

    .line 882
    :cond_6d
    nop

    .line 884
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_7c

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 882
    :cond_7c
    return-object v4

    .line 884
    .end local v1    # "registration":Lcom/esotericsoftware/kryo/Registration;
    .end local v2    # "type":Ljava/lang/Class;
    .end local v4    # "object":Ljava/lang/Object;
    :catchall_7d
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_8c

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 885
    :cond_8c
    throw v1

    .line 866
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 766
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_86

    .line 767
    if-eqz p2, :cond_7d

    .line 768
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 771
    const/4 v0, 0x1

    :try_start_8
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_3b

    .line 772
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 773
    .local v1, "stackSize":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_6d

    .line 781
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_24

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 773
    :cond_24
    return-object v2

    .line 774
    :cond_25
    :try_start_25
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 775
    .local v2, "object":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v3, :cond_3a

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 776
    .end local v1    # "stackSize":I
    :cond_3a
    goto :goto_48

    .line 777
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 778
    .restart local v2    # "object":Ljava/lang/Object;, "TT;"
    :goto_48
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_54

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_5d

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_5d

    :cond_54
    const-string v1, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_5d
    .catchall {:try_start_25 .. :try_end_5d} :catchall_6d

    .line 779
    :cond_5d
    nop

    .line 781
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_6c

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 779
    :cond_6c
    return-object v2

    .line 781
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :catchall_6d
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_7c

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 782
    :cond_7c
    throw v1

    .line 767
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .registers 8
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .line 787
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_80

    .line 788
    if-eqz p2, :cond_77

    .line 789
    if-eqz p3, :cond_6f

    .line 790
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 793
    const/4 v0, 0x1

    :try_start_a
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_35

    .line 794
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 795
    .local v1, "stackSize":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_5f

    .line 803
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_26

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 795
    :cond_26
    return-object v2

    .line 796
    :cond_27
    :try_start_27
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 797
    .local v2, "object":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v3, v3, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v3, :cond_34

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 798
    .end local v1    # "stackSize":I
    :cond_34
    goto :goto_3a

    .line 799
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :cond_35
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .line 800
    .restart local v2    # "object":Ljava/lang/Object;, "TT;"
    :goto_3a
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_46

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_4f

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_4f

    :cond_46
    const-string v1, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_4f
    .catchall {:try_start_27 .. :try_end_4f} :catchall_5f

    .line 801
    :cond_4f
    nop

    .line 803
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_5e

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_5e

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 801
    :cond_5e
    return-object v2

    .line 803
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :catchall_5f
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_6e

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_6e

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 804
    :cond_6e
    throw v1

    .line 789
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 810
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_b4

    .line 811
    if-eqz p2, :cond_ab

    .line 812
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 815
    const/4 v0, 0x1

    :try_start_8
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_9b

    const-string v2, "Read"

    if-eqz v1, :cond_3c

    .line 816
    :try_start_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 817
    .local v1, "stackSize":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_26

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_9b

    .line 831
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_25

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 817
    :cond_25
    return-object v2

    .line 818
    :cond_26
    :try_start_26
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 819
    .local v3, "object":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v4, v4, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v4, :cond_3b

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 820
    .end local v1    # "stackSize":I
    :cond_3b
    goto :goto_78

    .line 821
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    .line 822
    .local v1, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v3

    if-nez v3, :cond_74

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v3

    if-nez v3, :cond_74

    .line 823
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 v4, 0x0

    if-nez v3, :cond_5d

    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_64

    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v3, v0, :cond_64

    :cond_5d
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-static {v2, v4, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_64
    .catchall {:try_start_26 .. :try_end_64} :catchall_9b

    .line 824
    :cond_64
    nop

    .line 831
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_73

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 824
    :cond_73
    return-object v4

    .line 826
    :cond_74
    :try_start_74
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 828
    .end local v1    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    .restart local v3    # "object":Ljava/lang/Object;, "TT;"
    :goto_78
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_84

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_8b

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_8b

    :cond_84
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_9b

    .line 829
    :cond_8b
    nop

    .line 831
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_9a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_9a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 829
    :cond_9a
    return-object v3

    .line 831
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :catchall_9b
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_aa

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_aa

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 832
    :cond_aa
    throw v1

    .line 811
    :cond_ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;
    .registers 9
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ")TT;"
        }
    .end annotation

    .line 838
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_af

    .line 839
    if-eqz p2, :cond_a6

    .line 840
    if-eqz p3, :cond_9e

    .line 841
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 844
    const/4 v0, 0x1

    :try_start_a
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_8e

    const-string v2, "Read"

    if-eqz v1, :cond_36

    .line 845
    :try_start_10
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I

    move-result v1

    .line 846
    .local v1, "stackSize":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_8e

    .line 859
    iget v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v3, :cond_27

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 846
    :cond_27
    return-object v2

    .line 847
    :cond_28
    :try_start_28
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 848
    .local v3, "object":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v4, v4, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    if-ne v1, v4, :cond_35

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 849
    .end local v1    # "stackSize":I
    :cond_35
    goto :goto_6b

    .line 850
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :cond_36
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_66

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result v1

    if-nez v1, :cond_66

    .line 851
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 v3, 0x0

    if-nez v1, :cond_4f

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_56

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_56

    :cond_4f
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_8e

    .line 852
    :cond_56
    nop

    .line 859
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_65

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_65

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 852
    :cond_65
    return-object v3

    .line 854
    :cond_66
    :try_start_66
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .line 856
    .restart local v3    # "object":Ljava/lang/Object;, "TT;"
    :goto_6b
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_77

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_7e

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_7e

    :cond_77
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_8e

    .line 857
    :cond_7e
    nop

    .line 859
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_8d

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_8d

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 857
    :cond_8d
    return-object v3

    .line 859
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :catchall_8e
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_9d

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 860
    :cond_9d
    throw v1

    .line 840
    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_a6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readReferenceOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Z)I
    .registers 11
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "mayBeNull"    # Z

    .line 891
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 892
    :cond_a
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v0, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v0

    .line 894
    .local v0, "referencesSupported":Z
    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_40

    .line 895
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v4

    .line 896
    .local v4, "id":I
    if-nez v4, :cond_34

    .line 897
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 v5, 0x0

    if-nez v2, :cond_28

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v3, :cond_31

    :cond_28
    const-string v2, "Read"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-static {v2, v5, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 898
    :cond_31
    iput-object v5, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    .line 899
    return v1

    .line 901
    :cond_34
    if-nez v0, :cond_50

    .line 902
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 903
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    return v1

    .line 906
    .end local v4    # "id":I
    :cond_40
    if-nez v0, :cond_4c

    .line 907
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 908
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v1, v1, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    return v1

    .line 910
    :cond_4c
    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v4

    .line 912
    .restart local v4    # "id":I
    :cond_50
    const-string v5, ": "

    const-string v6, "kryo"

    if-ne v4, v3, :cond_ba

    .line 913
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read: <not null>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v2

    invoke-static {v2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_78
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->nextReadId(Ljava/lang/Class;)I

    move-result v1

    .line 916
    .end local v4    # "id":I
    .local v1, "id":I
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read initial reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_b0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/esotericsoftware/kryo/util/IntArray;->add(I)V

    .line 918
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    iget v2, v2, Lcom/esotericsoftware/kryo/util/IntArray;->size:I

    return v2

    .line 921
    .end local v1    # "id":I
    .restart local v4    # "id":I
    :cond_ba
    add-int/2addr v4, v2

    .line 923
    :try_start_bb
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v2, p2, v4}, Lcom/esotericsoftware/kryo/ReferenceResolver;->getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c3} :catch_f9

    .line 926
    nop

    .line 927
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_f8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    :cond_f8
    return v1

    .line 924
    :catch_f9
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve reference for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public reference(Ljava/lang/Object;)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 936
    iget v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    if-lez v0, :cond_1d

    .line 937
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    if-eqz v0, :cond_31

    .line 938
    if-eqz p1, :cond_15

    .line 939
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->needsCopyReference:Ljava/lang/Object;

    goto :goto_31

    .line 938
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_1d
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v0, :cond_31

    if-eqz p1, :cond_31

    .line 943
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->readReferenceIds:Lcom/esotericsoftware/kryo/util/IntArray;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/IntArray;->pop()I

    move-result v0

    .line 944
    .local v0, "id":I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_31

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1, v0, p1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->setReadObject(ILjava/lang/Object;)V

    .line 946
    .end local v0    # "id":I
    :cond_31
    :goto_31
    return-void
.end method

.method public register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;
    .registers 6
    .param p1, "registration"    # Lcom/esotericsoftware/kryo/Registration;

    .line 533
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v0

    .line 534
    .local v0, "id":I
    if-ltz v0, :cond_45

    .line 536
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1, v0}, Lcom/esotericsoftware/kryo/ClassResolver;->unregister(I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    .line 537
    .local v1, "existing":Lcom/esotericsoftware/kryo/Registration;
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3e

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registration overwritten: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "kryo"

    invoke-static {v3, v2}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_3e
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v2, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v2

    return-object v2

    .line 534
    .end local v1    # "existing":Lcom/esotericsoftware/kryo/Registration;
    :cond_45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id must be > 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 481
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 482
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v0, :cond_9

    return-object v0

    .line 483
    :cond_9
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    return-object v1
.end method

.method public register(Ljava/lang/Class;I)Lcom/esotericsoftware/kryo/Registration;
    .registers 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "id"    # I

    .line 494
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 495
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v0, :cond_9

    return-object v0

    .line 496
    :cond_9
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    return-object v1
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;
    .registers 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 506
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    .line 507
    .local v0, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v0, :cond_c

    .line 508
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/Registration;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 509
    return-object v0

    .line 511
    :cond_c
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    new-instance v2, Lcom/esotericsoftware/kryo/Registration;

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getNextRegistrationId()I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-interface {v1, v2}, Lcom/esotericsoftware/kryo/ClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    return-object v1
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)Lcom/esotericsoftware/kryo/Registration;
    .registers 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;
    .param p3, "id"    # I

    .line 521
    if-ltz p3, :cond_c

    .line 522
    new-instance v0, Lcom/esotericsoftware/kryo/Registration;

    invoke-direct {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/Kryo;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0

    return-object v0

    .line 521
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 4

    .line 953
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    .line 954
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/16 v2, 0x800

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->graphContext:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->clear(I)V

    .line 955
    :cond_e
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/ClassResolver;->reset()V

    .line 956
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_1f

    .line 957
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->reset()V

    .line 958
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    .line 961
    :cond_1f
    iput v0, p0, Lcom/esotericsoftware/kryo/Kryo;->copyDepth:I

    .line 962
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->originalToCopy:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v0, v2}, Lcom/esotericsoftware/kryo/util/IdentityMap;->clear(I)V

    .line 964
    :cond_2a
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_35

    const-string v0, "kryo"

    const-string v1, "Object graph complete."

    invoke-static {v0, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_35
    return-void
.end method

.method public setAutoReset(Z)V
    .registers 2
    .param p1, "autoReset"    # Z

    .line 1234
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    .line 1235
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 1097
    if-eqz p1, :cond_5

    .line 1098
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->classLoader:Ljava/lang/ClassLoader;

    .line 1099
    return-void

    .line 1097
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "classLoader cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCopyReferences(Z)V
    .registers 2
    .param p1, "copyReferences"    # Z

    .line 1159
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->copyReferences:Z

    .line 1160
    return-void
.end method

.method public setDefaultSerializer(Lcom/esotericsoftware/kryo/SerializerFactory;)V
    .registers 4
    .param p1, "serializer"    # Lcom/esotericsoftware/kryo/SerializerFactory;

    .line 257
    if-eqz p1, :cond_5

    .line 258
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/SerializerFactory;

    .line 259
    return-void

    .line 257
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultSerializer(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/esotericsoftware/kryo/Serializer;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "serializer":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/esotericsoftware/kryo/Serializer;>;"
    if-eqz p1, :cond_a

    .line 266
    new-instance v0, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/SerializerFactory$ReflectionSerializerFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->defaultSerializer:Lcom/esotericsoftware/kryo/SerializerFactory;

    .line 267
    return-void

    .line 265
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstantiatorStrategy(Lorg/objenesis/strategy/InstantiatorStrategy;)V
    .registers 2
    .param p1, "strategy"    # Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 1179
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->strategy:Lorg/objenesis/strategy/InstantiatorStrategy;

    .line 1180
    return-void
.end method

.method public setMaxDepth(I)V
    .registers 4
    .param p1, "maxDepth"    # I

    .line 1240
    if-lez p1, :cond_5

    .line 1241
    iput p1, p0, Lcom/esotericsoftware/kryo/Kryo;->maxDepth:I

    .line 1242
    return-void

    .line 1240
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxDepth must be > 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptimizedGenerics(Z)V
    .registers 3
    .param p1, "optimizedGenerics"    # Z

    .line 1294
    if-eqz p1, :cond_8

    new-instance v0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;-><init>(Lcom/esotericsoftware/kryo/Kryo;)V

    goto :goto_a

    :cond_8
    sget-object v0, Lcom/esotericsoftware/kryo/util/NoGenerics;->INSTANCE:Lcom/esotericsoftware/kryo/util/Generics;

    :goto_a
    iput-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->generics:Lcom/esotericsoftware/kryo/util/Generics;

    .line 1295
    return-void
.end method

.method public setReferenceResolver(Lcom/esotericsoftware/kryo/ReferenceResolver;)V
    .registers 4
    .param p1, "referenceResolver"    # Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 1164
    if-eqz p1, :cond_2c

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 1166
    iput-object p1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 1167
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reference resolver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :cond_2b
    return-void

    .line 1164
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "referenceResolver cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReferences(Z)Z
    .registers 5
    .param p1, "references"    # Z

    .line 1142
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 1143
    .local v0, "old":Z
    if-ne p1, v0, :cond_5

    return p1

    .line 1144
    :cond_5
    if-eqz v0, :cond_f

    .line 1145
    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v1}, Lcom/esotericsoftware/kryo/ReferenceResolver;->reset()V

    .line 1146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->readObject:Ljava/lang/Object;

    .line 1148
    :cond_f
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    .line 1149
    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    if-nez v1, :cond_1e

    new-instance v1, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/MapReferenceResolver;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    .line 1150
    :cond_1e
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "References: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kryo"

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_3a
    xor-int/lit8 v1, p1, 0x1

    return v1
.end method

.method public setRegistrationRequired(Z)V
    .registers 4
    .param p1, "registrationRequired"    # Z

    .line 1118
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->registrationRequired:Z

    .line 1119
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registration required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_1e
    return-void
.end method

.method public setWarnUnregisteredClasses(Z)V
    .registers 4
    .param p1, "warnUnregisteredClasses"    # Z

    .line 1128
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Kryo;->warnUnregisteredClasses:Z

    .line 1129
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Warn unregistered classes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kryo"

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :cond_1e
    return-void
.end method

.method protected unregisteredClassMessage(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class is not registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nNote: To register this class use: kryo.register("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 589
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->canonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    return-object v0
.end method

.method public writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .registers 5
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "type"    # Ljava/lang/Class;

    .line 611
    if-eqz p1, :cond_21

    .line 613
    :try_start_2
    iget-object v0, p0, Lcom/esotericsoftware/kryo/Kryo;->classResolver:Lcom/esotericsoftware/kryo/ClassResolver;

    invoke-interface {v0, p1, p2}, Lcom/esotericsoftware/kryo/ClassResolver;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_14

    .line 615
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 613
    :cond_13
    return-object v0

    .line 615
    :catchall_14
    move-exception v0

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_20

    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 616
    :cond_20
    throw v0

    .line 611
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .registers 7
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .line 701
    if-eqz p1, :cond_78

    .line 702
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 704
    const/4 v0, 0x1

    if-nez p2, :cond_1b

    .line 705
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_68

    .line 713
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_1a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 706
    :cond_1a
    return-void

    .line 708
    :cond_1b
    :try_start_1b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    .line 709
    .local v1, "registration":Lcom/esotericsoftware/kryo/Registration;
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_68

    if-eqz v2, :cond_3d

    .line 713
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_3c

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 709
    :cond_3c
    return-void

    .line 710
    :cond_3d
    :try_start_3d
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_49

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_52

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v0, :cond_52

    :cond_49
    const-string v2, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 711
    :cond_52
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_68

    .line 713
    .end local v1    # "registration":Lcom/esotericsoftware/kryo/Registration;
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_67

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 715
    :cond_67
    return-void

    .line 713
    :catchall_68
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_77

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 714
    :cond_77
    throw v1

    .line 701
    :cond_78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .registers 6
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;

    .line 621
    if-eqz p1, :cond_6d

    .line 622
    if-eqz p2, :cond_65

    .line 623
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 625
    const/4 v0, 0x1

    :try_start_8
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_55

    if-eqz v1, :cond_22

    .line 629
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_21

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 625
    :cond_21
    return-void

    .line 626
    :cond_22
    :try_start_22
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_2e

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_37

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_37

    :cond_2e
    const-string v1, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 627
    :cond_37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_22 .. :try_end_46} :catchall_55

    .line 629
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_54

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 631
    :cond_54
    return-void

    .line 629
    :catchall_55
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_64

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_64

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 630
    :cond_64
    throw v1

    .line 622
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V
    .registers 7
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 635
    if-eqz p1, :cond_6b

    .line 636
    if-eqz p2, :cond_63

    .line 637
    if-eqz p3, :cond_5b

    .line 638
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 640
    const/4 v0, 0x1

    :try_start_a
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_4b

    if-eqz v1, :cond_24

    .line 644
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_23

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 640
    :cond_23
    return-void

    .line 641
    :cond_24
    :try_start_24
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_30

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_39

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_39

    :cond_30
    const-string v1, "Write"

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 642
    :cond_39
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_4b

    .line 644
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_4a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 646
    :cond_4a
    return-void

    .line 644
    :catchall_4b
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_5a

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 645
    :cond_5a
    throw v1

    .line 637
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V
    .registers 9
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "serializer"    # Lcom/esotericsoftware/kryo/Serializer;

    .line 676
    if-eqz p1, :cond_b6

    .line 677
    if-eqz p3, :cond_ae

    .line 678
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 680
    const/4 v0, 0x1

    :try_start_8
    iget-boolean v1, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_9e

    const-string v2, "Write"

    if-eqz v1, :cond_23

    .line 681
    :try_start_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_9e

    if-eqz v1, :cond_79

    .line 694
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_22

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 681
    :cond_22
    return-void

    .line 682
    :cond_23
    :try_start_23
    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v1

    if-nez v1, :cond_79

    .line 683
    if-nez p2, :cond_52

    .line 684
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_37

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_3f

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_3f

    :cond_37
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 685
    :cond_3f
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_9e

    .line 694
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_51

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_51

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 686
    :cond_51
    return-void

    .line 688
    :cond_52
    :try_start_52
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_76

    const-string v1, "kryo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write: <not null>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v4

    invoke-static {v4}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_76
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 691
    :cond_79
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v1, :cond_85

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_8c

    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v1, v0, :cond_8c

    :cond_85
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v1

    invoke-static {v2, p2, v1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 692
    :cond_8c
    invoke-virtual {p3, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_52 .. :try_end_8f} :catchall_9e

    .line 694
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_9d

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_9d

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 696
    :cond_9d
    return-void

    .line 694
    :catchall_9e
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_ad

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_ad

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 695
    :cond_ad
    throw v1

    .line 677
    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serializer cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 10
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "type"    # Ljava/lang/Class;

    .line 651
    if-eqz p1, :cond_b3

    .line 652
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;->beginObject()V

    .line 654
    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    .line 655
    .local v1, "serializer":Lcom/esotericsoftware/kryo/Serializer;
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/Kryo;->references:Z
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_a3

    const-string v3, "Write"

    if-eqz v2, :cond_29

    .line 656
    :try_start_14
    invoke-virtual {p0, p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_a3

    if-eqz v2, :cond_7e

    .line 669
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_28

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 656
    :cond_28
    return-void

    .line 657
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Serializer;->getAcceptsNull()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 658
    if-nez p2, :cond_57

    .line 659
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_3d

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_44

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v0, :cond_44

    :cond_3d
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v3, p2, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 660
    :cond_44
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_a3

    .line 669
    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_56

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 661
    :cond_56
    return-void

    .line 663
    :cond_57
    :try_start_57
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_7b

    const-string v2, "kryo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write: <not null>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v5

    invoke-static {v5}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_7b
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 666
    :cond_7e
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_8a

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_91

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v0, :cond_91

    :cond_8a
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v2

    invoke-static {v3, p2, v2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 667
    :cond_91
    invoke-virtual {v1, p0, p1, p2}, Lcom/esotericsoftware/kryo/Serializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    :try_end_94
    .catchall {:try_start_57 .. :try_end_94} :catchall_a3

    .line 669
    .end local v1    # "serializer":Lcom/esotericsoftware/kryo/Serializer;
    iget v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v1, :cond_a2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_a2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 671
    :cond_a2
    return-void

    .line 669
    :catchall_a3
    move-exception v1

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-nez v2, :cond_b2

    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Kryo;->autoReset:Z

    if-eqz v0, :cond_b2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->reset()V

    .line 670
    :cond_b2
    throw v1

    .line 651
    :cond_b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeReferenceOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Z)Z
    .registers 11
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "mayBeNull"    # Z

    .line 720
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1e

    .line 721
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_1a

    iget v2, p0, Lcom/esotericsoftware/kryo/Kryo;->depth:I

    if-ne v2, v1, :cond_1a

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    const-string v4, "Write"

    invoke-static {v4, v2, v3}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 722
    :cond_1a
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 723
    return v1

    .line 726
    :cond_1e
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/esotericsoftware/kryo/ReferenceResolver;->useReferences(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "Write: <not null>"

    const-string v4, "kryo"

    if-nez v2, :cond_54

    .line 727
    if-eqz p3, :cond_53

    .line 728
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_50

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_50
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 731
    :cond_53
    return v0

    .line 735
    :cond_54
    iget-object v2, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v2, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->getWrittenId(Ljava/lang/Object;)I

    move-result v2

    .line 738
    .local v2, "id":I
    const/4 v5, -0x1

    const-string v6, ": "

    if-eq v2, v5, :cond_97

    .line 739
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write reference "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_91
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 741
    return v1

    .line 745
    :cond_97
    iget-object v5, p0, Lcom/esotericsoftware/kryo/Kryo;->referenceResolver:Lcom/esotericsoftware/kryo/ReferenceResolver;

    invoke-interface {v5, p2}, Lcom/esotericsoftware/kryo/ReferenceResolver;->addWrittenObject(Ljava/lang/Object;)I

    move-result v2

    .line 746
    sget-boolean v5, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v5, :cond_bd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v5

    invoke-static {v5}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_bd
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    .line 748
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_f2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write initial reference "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_f2
    return v0
.end method
