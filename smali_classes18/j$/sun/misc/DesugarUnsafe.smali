.class public final Lj$/sun/misc/DesugarUnsafe;
.super Ljava/lang/Object;
.source "DesugarUnsafe.java"


# static fields
.field private static final theUnsafeWrapper:Lj$/sun/misc/DesugarUnsafe;


# instance fields
.field private final theUnsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    invoke-static {}, Lj$/sun/misc/DesugarUnsafe;->getUnsafeField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 56
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    :try_start_0
    new-instance v1, Lj$/sun/misc/DesugarUnsafe;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;

    invoke-direct {v1, v2}, Lj$/sun/misc/DesugarUnsafe;-><init>(Lsun/misc/Unsafe;)V

    sput-object v1, Lj$/sun/misc/DesugarUnsafe;->theUnsafeWrapper:Lj$/sun/misc/DesugarUnsafe;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    nop

    .line 62
    .end local v0    # "field":Ljava/lang/reflect/Field;
    return-void

    .line 59
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Couldn\'t get the Unsafe"

    invoke-direct {v2, v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0
    .param p1, "theUnsafe"    # Lsun/misc/Unsafe;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    .line 70
    return-void
.end method

.method public static getUnsafe()Lj$/sun/misc/DesugarUnsafe;
    .locals 1

    .line 114
    sget-object v0, Lj$/sun/misc/DesugarUnsafe;->theUnsafeWrapper:Lj$/sun/misc/DesugarUnsafe;

    return-object v0
.end method

.method private static getUnsafeField()Ljava/lang/reflect/Field;
    .locals 7

    .line 74
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-class v1, Lsun/misc/Unsafe;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 77
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Lsun/misc/Unsafe;

    .line 78
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    return-object v4

    .line 76
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Couldn\'t find the Unsafe"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addressSize()I
    .locals 1

    .line 698
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->addressSize()I

    move-result v0

    return v0
.end method

.method public allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 716
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public allocateMemory(J)J
    .locals 2
    .param p1, "bytes"    # J

    .line 355
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 275
    .local p1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public arrayIndexScale(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 290
    .local p1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public compareAndSetInt(Ljava/lang/Object;JII)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # I
    .param p5, "x"    # I

    .line 313
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public compareAndSetLong(Ljava/lang/Object;JJJ)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # J
    .param p6, "x"    # J

    .line 326
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public compareAndSetObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # Ljava/lang/Object;
    .param p5, "x"    # Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compareAndSwapInt(Ljava/lang/Object;JII)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # I
    .param p5, "x"    # I

    .line 742
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public compareAndSwapLong(Ljava/lang/Object;JJJ)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # J
    .param p6, "x"    # J

    .line 755
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method public compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "expected"    # Ljava/lang/Object;
    .param p5, "x"    # Ljava/lang/Object;

    .line 729
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyMemory(JJJ)V
    .locals 7
    .param p1, "srcAddr"    # J
    .param p3, "dstAddr"    # J
    .param p5, "bytes"    # J

    .line 386
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->copyMemory(JJJ)V

    .line 387
    return-void
.end method

.method public copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 4
    .param p1, "srcBase"    # Ljava/lang/Object;
    .param p2, "srcOffset"    # J
    .param p4, "destBase"    # Ljava/lang/Object;
    .param p5, "destOffset"    # J
    .param p7, "bytes"    # J

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v1, v0

    cmp-long v3, v1, p7

    if-gez v3, :cond_2

    .line 412
    int-to-long v1, v0

    add-long/2addr v1, p2

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->getByte(J)B

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v1, v2}, Lj$/sun/misc/DesugarUnsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    .line 413
    .local v1, "value":B
    :goto_1
    if-nez p4, :cond_1

    .line 414
    int-to-long v2, v0

    add-long/2addr v2, p5

    invoke-virtual {p0, v2, v3, v1}, Lj$/sun/misc/DesugarUnsafe;->putByte(JB)V

    goto :goto_2

    .line 416
    :cond_1
    int-to-long v2, v0

    add-long/2addr v2, p5

    invoke-virtual {p0, p4, v2, v3, v1}, Lj$/sun/misc/DesugarUnsafe;->putByte(Ljava/lang/Object;JB)V

    .line 411
    .end local v1    # "value":B
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public ensureClassInitialized(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 860
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    nop

    .line 865
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public freeMemory(J)V
    .locals 1
    .param p1, "address"    # J

    .line 366
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->allocateMemory(J)J

    .line 367
    return-void
.end method

.method public getAndAddInt(Ljava/lang/Object;JI)I
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # I

    .line 134
    nop

    :cond_0
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    .line 135
    .local v0, "v":I
    iget-object v1, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    add-int v6, v0, p4

    move-object v2, p1

    move-wide v3, p2

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    return v0
.end method

.method public getAndAddLong(Ljava/lang/Object;JJ)J
    .locals 15
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "delta"    # J

    .line 154
    move-object v0, p0

    :cond_0
    iget-object v1, v0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    invoke-virtual {v1, v10, v11, v12}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 155
    .local v13, "v":J
    iget-object v2, v0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    add-long v8, v13, p4

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide v6, v13

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    return-wide v13
.end method

.method public getAndSetInt(Ljava/lang/Object;JI)I
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # I

    .line 174
    nop

    :cond_0
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    .line 175
    .local v0, "v":I
    iget-object v1, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v2, p1

    move-wide v3, p2

    move v5, v0

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return v0
.end method

.method public getAndSetLong(Ljava/lang/Object;JJ)J
    .locals 15
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # J

    .line 194
    move-object v0, p0

    :cond_0
    iget-object v1, v0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object/from16 v10, p1

    move-wide/from16 v11, p2

    invoke-virtual {v1, v10, v11, v12}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v13

    .line 195
    .local v13, "v":J
    iget-object v2, v0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide v6, v13

    move-wide/from16 v8, p4

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    return-wide v13
.end method

.method public getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 214
    nop

    :cond_0
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "v":Ljava/lang/Object;
    iget-object v1, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, v0

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lj$/com/android/tools/r8/DesugarVarHandle$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 516
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method public getByte(J)B
    .locals 1
    .param p1, "address"    # J

    .line 605
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;J)B
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 528
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method public getChar(J)C
    .locals 1
    .param p1, "address"    # J

    .line 634
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getChar(J)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/Object;J)C
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 552
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    return v0
.end method

.method public getDouble(J)D
    .locals 2
    .param p1, "address"    # J

    .line 682
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 588
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(J)F
    .locals 1
    .param p1, "address"    # J

    .line 670
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 576
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method public getInt(J)I
    .locals 1
    .param p1, "address"    # J

    .line 646
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 465
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public getIntVolatile(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 779
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public getLong(J)J
    .locals 2
    .param p1, "address"    # J

    .line 658
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 564
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongVolatile(Ljava/lang/Object;J)J
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 791
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 496
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcquire(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 295
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 764
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShort(J)S
    .locals 1
    .param p1, "address"    # J

    .line 622
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/Object;J)S
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 540
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    return v0
.end method

.method public objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 253
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 258
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/sun/misc/DesugarUnsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Cannot find field:"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 254
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .line 238
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method public pageSize()I
    .locals 1

    .line 707
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lsun/misc/Unsafe;->pageSize()I

    move-result v0

    return v0
.end method

.method public park(ZJ)V
    .locals 1
    .param p1, "isAbsolute"    # Z
    .param p2, "time"    # J

    .line 849
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 850
    return-void
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Z

    .line 522
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 523
    return-void
.end method

.method public putByte(JB)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # B

    .line 616
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    .line 617
    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # B

    .line 534
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 535
    return-void
.end method

.method public putChar(JC)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # C

    .line 640
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putChar(JC)V

    .line 641
    return-void
.end method

.method public putChar(Ljava/lang/Object;JC)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # C

    .line 558
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 559
    return-void
.end method

.method public putDouble(JD)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # D

    .line 688
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putDouble(JD)V

    .line 689
    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # D

    .line 594
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 595
    return-void
.end method

.method public putFloat(JF)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # F

    .line 676
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putFloat(JF)V

    .line 677
    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # F

    .line 582
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 583
    return-void
.end method

.method public putInt(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # I

    .line 652
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    .line 653
    return-void
.end method

.method public putInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # I

    .line 486
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 487
    return-void
.end method

.method public putIntVolatile(Ljava/lang/Object;JI)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # I

    .line 785
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 786
    return-void
.end method

.method public putLong(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # J

    .line 664
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    .line 665
    return-void
.end method

.method public putLong(Ljava/lang/Object;JJ)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # J

    .line 570
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 571
    return-void
.end method

.method public putLongVolatile(Ljava/lang/Object;JJ)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # J

    .line 797
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 798
    return-void
.end method

.method public putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 511
    return-void
.end method

.method public putObjectRelease(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 301
    return-void
.end method

.method public putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 774
    return-void
.end method

.method public putOrderedInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # I

    .line 816
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    .line 817
    return-void
.end method

.method public putOrderedLong(Ljava/lang/Object;JJ)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # J

    .line 822
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 823
    return-void
.end method

.method public putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # Ljava/lang/Object;

    .line 810
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 811
    return-void
.end method

.method public putShort(JS)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "x"    # S

    .line 628
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putShort(JS)V

    .line 629
    return-void
.end method

.method public putShort(Ljava/lang/Object;JS)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "x"    # S

    .line 546
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 547
    return-void
.end method

.method public setMemory(JJB)V
    .locals 6
    .param p1, "address"    # J
    .param p3, "bytes"    # J
    .param p5, "value"    # B

    .line 376
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->setMemory(JJB)V

    .line 377
    return-void
.end method

.method public unpark(Ljava/lang/Object;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Object;

    .line 836
    iget-object v0, p0, Lj$/sun/misc/DesugarUnsafe;->theUnsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 837
    return-void
.end method
