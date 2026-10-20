.class public Lj$/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;,
        Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;
    }
.end annotation


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final FLOAT_UNIT:F = 5.9604645E-8f

.field private static final GAMMA:J = -0x61c8864680b583ebL

.field private static final PROBE_INCREMENT:I = -0x61c88647

.field private static final SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final instances:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lj$/util/concurrent/ThreadLocalRandom;",
            ">;"
        }
    .end annotation
.end field

.field private static final nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field threadLocalRandomProbe:I

.field threadLocalRandomSecondarySeed:I

.field threadLocalRandomSeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1041
    new-instance v0, Ljava/io/ObjectStreamField;

    const-string v1, "rnd"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "initialized"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/ObjectStreamField;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lj$/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1117
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    .line 1121
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lj$/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1126
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$1;

    invoke-direct {v0}, Lj$/util/concurrent/ThreadLocalRandom$1;-><init>()V

    sput-object v0, Lj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    .line 1136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v1

    .line 1138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    xor-long/2addr v1, v4

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    .line 1145
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$2;

    invoke-direct {v0}, Lj$/util/concurrent/ThreadLocalRandom$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    .line 1153
    .local v1, "seedBytes":[B
    aget-byte v2, v1, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    .line 1154
    .local v2, "s":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 1155
    shl-long v7, v2, v0

    aget-byte v9, v1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    or-long v2, v7, v9

    .line 1154
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1156
    .end local v6    # "i":I
    :cond_0
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1158
    .end local v1    # "seedBytes":[B
    .end local v2    # "s":J
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 175
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/concurrent/ThreadLocalRandom-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/util/concurrent/ThreadLocalRandom;-><init>()V

    return-void
.end method

.method static final advanceProbe(I)I
    .locals 1
    .param p0, "probe"    # I

    .line 985
    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 986
    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    .line 987
    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 990
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    iput p0, v0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    .line 991
    return p0
.end method

.method public static current()Lj$/util/concurrent/ThreadLocalRandom;
    .locals 2

    .line 208
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    .line 209
    .local v0, "t":Lj$/util/concurrent/ThreadLocalRandom;
    iget v1, v0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    if-nez v1, :cond_0

    .line 210
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 211
    :cond_0
    return-object v0
.end method

.method static final getProbe()I
    .locals 1

    .line 977
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    iget v0, v0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    return v0
.end method

.method static final localInit()V
    .locals 5

    .line 185
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 186
    .local v0, "p":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 187
    .local v1, "probe":I
    :goto_0
    sget-object v2, Lj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    .line 192
    .local v2, "seed":J
    sget-object v4, Lj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/util/concurrent/ThreadLocalRandom;

    .line 193
    .local v4, "t":Lj$/util/concurrent/ThreadLocalRandom;
    iput-wide v2, v4, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    .line 194
    iput v1, v4, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomProbe:I

    .line 195
    return-void
.end method

.method private static mix32(J)I
    .locals 5
    .param p0, "z"    # J

    .line 140
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long v1, v1, v3

    .line 141
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static mix64(J)J
    .locals 5
    .param p0, "z"    # J

    .line 134
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long v1, v1, v3

    .line 135
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v3

    .line 136
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method static final nextSecondarySeed()I
    .locals 5

    .line 1001
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->instances:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/concurrent/ThreadLocalRandom;

    .line 1003
    .local v0, "t":Lj$/util/concurrent/ThreadLocalRandom;
    iget v1, v0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSecondarySeed:I

    move v2, v1

    .local v2, "r":I
    if-eqz v1, :cond_0

    .line 1004
    shl-int/lit8 v1, v2, 0xd

    xor-int/2addr v1, v2

    .line 1005
    .end local v2    # "r":I
    .local v1, "r":I
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 1006
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    goto :goto_0

    .line 1008
    .end local v1    # "r":I
    .restart local v2    # "r":I
    :cond_0
    sget-object v1, Lj$/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_1

    .line 1009
    const/4 v1, 0x1

    .end local v2    # "r":I
    .restart local v1    # "r":I
    goto :goto_0

    .line 1008
    .end local v1    # "r":I
    .restart local v2    # "r":I
    :cond_1
    move v1, v2

    .line 1011
    .end local v2    # "r":I
    .restart local v1    # "r":I
    :goto_0
    iput v1, v0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSecondarySeed:I

    .line 1012
    return v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1067
    invoke-static {}, Lj$/util/concurrent/ThreadLocalRandom;->current()Lj$/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;

    .line 1054
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1057
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "rnd"

    iget-wide v2, p0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 1058
    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 1059
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1060
    return-void
.end method


# virtual methods
.method public doubles()Lj$/util/stream/DoubleStream;
    .locals 10

    .line 720
    new-instance v9, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 721
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 720
    return-object v0
.end method

.method public doubles(DD)Lj$/util/stream/DoubleStream;
    .locals 10
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 770
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 772
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 773
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 772
    return-object v0

    .line 771
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubles(J)Lj$/util/stream/DoubleStream;
    .locals 12
    .param p1, "streamSize"    # J

    .line 700
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 702
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-wide v6, p1

    invoke-direct/range {v3 .. v11}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 703
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 702
    return-object v0

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubles(JDD)Lj$/util/stream/DoubleStream;
    .locals 10
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 743
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 745
    cmpg-double v0, p3, p5

    if-gez v0, :cond_0

    .line 747
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v1 .. v9}, Lj$/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    .line 748
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 747
    return-object v0

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic doubles()Ljava/util/stream/DoubleStream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->doubles()Lj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic doubles(DD)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ThreadLocalRandom;->doubles(DD)Lj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic doubles(J)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ThreadLocalRandom;->doubles(J)Lj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic doubles(JDD)Ljava/util/stream/DoubleStream;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lj$/util/concurrent/ThreadLocalRandom;->doubles(JDD)Lj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method final internalNextDouble(DD)D
    .locals 6
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 315
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    .line 316
    .local v0, "r":D
    cmpg-double v2, p1, p3

    if-gez v2, :cond_0

    .line 317
    sub-double v2, p3, p1

    mul-double v2, v2, v0

    add-double v0, v2, p1

    .line 318
    cmpl-double v2, v0, p3

    if-ltz v2, :cond_0

    .line 319
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 321
    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 287
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    .line 288
    .local v0, "r":I
    if-ge p1, p2, :cond_4

    .line 289
    sub-int v1, p2, p1

    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    .line 290
    .local v2, "m":I
    and-int v3, v1, v2

    if-nez v3, :cond_0

    .line 291
    and-int v3, v0, v2

    add-int v0, v3, p1

    goto :goto_2

    .line 292
    :cond_0
    if-lez v1, :cond_2

    .line 293
    ushr-int/lit8 v3, v0, 0x1

    .line 294
    .local v3, "u":I
    :goto_0
    add-int v4, v3, v2

    rem-int v5, v3, v1

    move v0, v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_1

    .line 295
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v4

    invoke-static {v4, v5}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v4

    ushr-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 297
    .end local v3    # "u":I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_2

    .line 300
    :cond_2
    :goto_1
    if-lt v0, p1, :cond_3

    if-lt v0, p2, :cond_4

    .line 301
    :cond_3
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    goto :goto_1

    .line 304
    .end local v1    # "n":I
    .end local v2    # "m":I
    :cond_4
    :goto_2
    return v0
.end method

.method final internalNextLong(JJ)J
    .locals 16
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 258
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    .line 259
    .local v0, "r":J
    cmp-long v2, p1, p3

    if-gez v2, :cond_4

    .line 260
    sub-long v2, p3, p1

    .local v2, "n":J
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    .line 261
    .local v4, "m":J
    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    .line 262
    and-long v6, v0, v4

    add-long v0, v6, p1

    goto :goto_2

    .line 263
    :cond_0
    cmp-long v6, v2, v8

    if-lez v6, :cond_2

    .line 264
    const/4 v6, 0x1

    ushr-long v10, v0, v6

    .line 265
    .local v10, "u":J
    :goto_0
    add-long v12, v10, v4

    rem-long v14, v10, v2

    move-wide v0, v14

    sub-long/2addr v12, v14

    cmp-long v7, v12, v8

    if-gez v7, :cond_1

    .line 266
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v12

    invoke-static {v12, v13}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v12

    ushr-long v10, v12, v6

    goto :goto_0

    .line 268
    .end local v10    # "u":J
    :cond_1
    add-long v0, v0, p1

    goto :goto_2

    .line 271
    :cond_2
    :goto_1
    cmp-long v6, v0, p1

    if-ltz v6, :cond_3

    cmp-long v6, v0, p3

    if-ltz v6, :cond_4

    .line 272
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v6

    invoke-static {v6, v7}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    goto :goto_1

    .line 275
    .end local v2    # "n":J
    .end local v4    # "m":J
    :cond_4
    :goto_2
    return-wide v0
.end method

.method public ints()Lj$/util/stream/IntStream;
    .locals 8

    .line 542
    new-instance v7, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const v5, 0x7fffffff

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 543
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 542
    return-object v0
.end method

.method public ints(II)Lj$/util/stream/IntStream;
    .locals 8
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 592
    if-ge p1, p2, :cond_0

    .line 594
    new-instance v7, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 595
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 594
    return-object v0

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints(J)Lj$/util/stream/IntStream;
    .locals 10
    .param p1, "streamSize"    # J

    .line 523
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 525
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const v8, 0x7fffffff

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-wide v6, p1

    invoke-direct/range {v3 .. v9}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 526
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 525
    return-object v0

    .line 524
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ints(JII)Lj$/util/stream/IntStream;
    .locals 10
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 565
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 567
    if-ge p3, p4, :cond_0

    .line 569
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-wide v6, p1

    move v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lj$/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    .line 570
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 569
    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic ints()Ljava/util/stream/IntStream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->ints()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ints(II)Ljava/util/stream/IntStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ThreadLocalRandom;->ints(II)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ints(J)Ljava/util/stream/IntStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ThreadLocalRandom;->ints(J)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic ints(JII)Ljava/util/stream/IntStream;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ThreadLocalRandom;->ints(JII)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public longs()Lj$/util/stream/LongStream;
    .locals 10

    .line 630
    new-instance v9, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide v5, 0x7fffffffffffffffL

    const-wide/16 v7, 0x0

    const-wide/16 v1, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 631
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    .line 630
    return-object v0
.end method

.method public longs(J)Lj$/util/stream/LongStream;
    .locals 12
    .param p1, "streamSize"    # J

    .line 611
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 613
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide v8, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    move-object v3, v0

    move-wide v6, p1

    invoke-direct/range {v3 .. v11}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 614
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    .line 613
    return-object v0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs(JJ)Lj$/util/stream/LongStream;
    .locals 10
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 680
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 682
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v1, v0

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 683
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    .line 682
    return-object v0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longs(JJJ)Lj$/util/stream/LongStream;
    .locals 10
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 653
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 655
    cmp-long v0, p3, p5

    if-gez v0, :cond_0

    .line 657
    new-instance v0, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    const-wide/16 v2, 0x0

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    invoke-direct/range {v1 .. v9}, Lj$/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    .line 658
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v0

    .line 657
    return-object v0

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic longs()Ljava/util/stream/LongStream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->longs()Lj$/util/stream/LongStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic longs(J)Ljava/util/stream/LongStream;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ThreadLocalRandom;->longs(J)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic longs(JJ)Ljava/util/stream/LongStream;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ThreadLocalRandom;->longs(JJ)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic longs(JJJ)Ljava/util/stream/LongStream;
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lj$/util/concurrent/ThreadLocalRandom;->longs(JJJ)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method protected next(I)I
    .locals 2
    .param p1, "bits"    # I

    .line 245
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    return v0
.end method

.method public nextBoolean()Z
    .locals 2

    .line 477
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    .line 434
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 6
    .param p1, "bound"    # D

    .line 447
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    const/16 v2, 0xb

    ushr-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ca0000000000000L

    mul-double v0, v0, v2

    mul-double v0, v0, p1

    .line 450
    .local v0, "result":D
    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    move-wide v2, v0

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 450
    :goto_0
    return-wide v2

    .line 448
    .end local v0    # "result":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble(DD)D
    .locals 2
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 466
    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    .line 468
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    move-result-wide v0

    return-wide v0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextFloat()F
    .locals 2

    .line 488
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x33800000

    mul-float v0, v0, v1

    return v0
.end method

.method public nextGaussian()D
    .locals 12

    .line 493
    sget-object v0, Lj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 494
    .local v0, "d":Ljava/lang/Double;
    if-eqz v0, :cond_0

    .line 495
    sget-object v1, Lj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 496
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 500
    :cond_0
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v5

    .line 501
    .local v1, "v1":D
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v7

    mul-double v7, v7, v3

    sub-double/2addr v7, v5

    .line 502
    .local v7, "v2":D
    mul-double v3, v1, v1

    mul-double v9, v7, v7

    add-double/2addr v3, v9

    .line 503
    .local v3, "s":D
    cmpl-double v9, v3, v5

    if-gez v9, :cond_0

    const-wide/16 v5, 0x0

    cmpl-double v9, v3, v5

    if-eqz v9, :cond_0

    .line 504
    const-wide/high16 v5, -0x4000000000000000L    # -2.0

    invoke-static {v3, v4}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v9

    mul-double v9, v9, v5

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v5

    .line 505
    .local v5, "multiplier":D
    sget-object v9, Lj$/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    mul-double v10, v7, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 506
    mul-double v9, v1, v5

    return-wide v9
.end method

.method public nextInt()I
    .locals 2

    .line 330
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 5
    .param p1, "bound"    # I

    .line 343
    if-lez p1, :cond_2

    .line 345
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    .line 346
    .local v0, "r":I
    add-int/lit8 v1, p1, -0x1

    .line 347
    .local v1, "m":I
    and-int v2, p1, v1

    if-nez v2, :cond_0

    .line 348
    and-int/2addr v0, v1

    goto :goto_1

    .line 350
    :cond_0
    ushr-int/lit8 v2, v0, 0x1

    .line 351
    .local v2, "u":I
    :goto_0
    add-int v3, v2, v1

    rem-int v4, v2, p1

    move v0, v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 352
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v3

    ushr-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "u":I
    :cond_1
    :goto_1
    return v0

    .line 344
    .end local v0    # "r":I
    .end local v1    # "m":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt(II)I
    .locals 2
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 370
    if-ge p1, p2, :cond_0

    .line 372
    invoke-virtual {p0, p1, p2}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    move-result v0

    return v0

    .line 371
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .locals 2

    .line 381
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 13
    .param p1, "bound"    # J

    .line 394
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 396
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v2

    .line 397
    .local v2, "r":J
    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    .line 398
    .local v4, "m":J
    and-long v6, p1, v4

    cmp-long v8, v6, v0

    if-nez v8, :cond_0

    .line 399
    and-long v0, v2, v4

    .end local v2    # "r":J
    .local v0, "r":J
    goto :goto_1

    .line 401
    .end local v0    # "r":J
    .restart local v2    # "r":J
    :cond_0
    const/4 v6, 0x1

    ushr-long v7, v2, v6

    .line 402
    .local v7, "u":J
    :goto_0
    add-long v9, v7, v4

    rem-long v11, v7, p1

    move-wide v2, v11

    sub-long/2addr v9, v11

    cmp-long v11, v9, v0

    if-gez v11, :cond_1

    .line 403
    invoke-virtual {p0}, Lj$/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v9

    invoke-static {v9, v10}, Lj$/util/concurrent/ThreadLocalRandom;->mix64(J)J

    move-result-wide v9

    ushr-long v7, v9, v6

    goto :goto_0

    .line 402
    :cond_1
    move-wide v0, v2

    .line 406
    .end local v2    # "r":J
    .end local v7    # "u":J
    .restart local v0    # "r":J
    :goto_1
    return-wide v0

    .line 395
    .end local v0    # "r":J
    .end local v4    # "m":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong(JJ)J
    .locals 2
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 421
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 423
    invoke-virtual {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    move-result-wide v0

    return-wide v0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bound must be greater than origin"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final nextSeed()J
    .locals 4

    .line 231
    iget-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v0, v2

    move-wide v2, v0

    .local v2, "r":J
    iput-wide v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->threadLocalRandomSeed:J

    .line 232
    return-wide v2
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .line 222
    iget-boolean v0, p0, Lj$/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_0

    .line 224
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
