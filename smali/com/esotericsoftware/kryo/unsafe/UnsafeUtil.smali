.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# static fields
.field public static final booleanArrayBaseOffset:J

.field public static final byteArrayBaseOffset:J

.field public static final charArrayBaseOffset:J

.field private static cleanMethod:Ljava/lang/reflect/Method;

.field private static cleanerMethod:Ljava/lang/reflect/Method;

.field private static directByteBufferConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final doubleArrayBaseOffset:J

.field public static final floatArrayBaseOffset:J

.field public static final intArrayBaseOffset:J

.field public static final longArrayBaseOffset:J

.field public static final shortArrayBaseOffset:J

.field public static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 53
    const-string v1, "kryo"

    const/4 v2, 0x0

    .line 54
    .local v2, "tempUnsafe":Lsun/misc/Unsafe;
    const-wide/16 v3, 0x0

    .line 55
    .local v3, "tempByteArrayBaseOffset":J
    const-wide/16 v5, 0x0

    .line 56
    .local v5, "tempFloatArrayBaseOffset":J
    const-wide/16 v7, 0x0

    .line 57
    .local v7, "tempDoubleArrayBaseOffset":J
    const-wide/16 v9, 0x0

    .line 58
    .local v9, "tempIntArrayBaseOffset":J
    const-wide/16 v11, 0x0

    .line 59
    .local v11, "tempLongArrayBaseOffset":J
    const-wide/16 v13, 0x0

    .line 60
    .local v13, "tempShortArrayBaseOffset":J
    const-wide/16 v15, 0x0

    .line 61
    .local v15, "tempCharArrayBaseOffset":J
    const-wide/16 v17, 0x0

    .line 64
    .local v17, "tempBooleanArrayBaseOffset":J
    move-object/from16 v19, v2

    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .local v19, "tempUnsafe":Lsun/misc/Unsafe;
    :try_start_0
    sget-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    if-nez v0, :cond_0

    .line 65
    const-class v0, Lsun/misc/Unsafe;

    const-string/jumbo v2, "theUnsafe"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 66
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v2, v20

    .line 68
    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    move-object/from16 v20, v0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    .local v20, "field":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v0, [B

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    int-to-long v3, v0

    .line 69
    :try_start_2
    const-class v0, [C

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v21, v3

    .end local v3    # "tempByteArrayBaseOffset":J
    .local v21, "tempByteArrayBaseOffset":J
    int-to-long v3, v0

    .line 70
    .end local v15    # "tempCharArrayBaseOffset":J
    .local v3, "tempCharArrayBaseOffset":J
    :try_start_3
    const-class v0, [S

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v13, v0

    .line 71
    const-class v0, [I

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v9, v0

    .line 72
    const-class v0, [F

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v5, v0

    .line 73
    const-class v0, [J

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v11, v0

    .line 74
    const-class v0, [D

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v7, v0

    .line 75
    const-class v0, [Z

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v19, v2

    move-wide v15, v3

    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v3    # "tempCharArrayBaseOffset":J
    .restart local v15    # "tempCharArrayBaseOffset":J
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    int-to-long v2, v0

    .line 76
    .end local v17    # "tempBooleanArrayBaseOffset":J
    .end local v20    # "field":Ljava/lang/reflect/Field;
    .local v2, "tempBooleanArrayBaseOffset":J
    move-wide/from16 v17, v2

    move-object/from16 v2, v19

    move-wide/from16 v3, v21

    goto :goto_0

    .line 79
    .end local v15    # "tempCharArrayBaseOffset":J
    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .local v2, "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v3    # "tempCharArrayBaseOffset":J
    .restart local v17    # "tempBooleanArrayBaseOffset":J
    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    move-wide v15, v3

    move-wide/from16 v3, v21

    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v3    # "tempCharArrayBaseOffset":J
    .restart local v15    # "tempCharArrayBaseOffset":J
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    goto :goto_1

    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v21    # "tempByteArrayBaseOffset":J
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .local v3, "tempByteArrayBaseOffset":J
    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    move-wide/from16 v21, v3

    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v3    # "tempByteArrayBaseOffset":J
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v21    # "tempByteArrayBaseOffset":J
    goto :goto_1

    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v21    # "tempByteArrayBaseOffset":J
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v3    # "tempByteArrayBaseOffset":J
    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    goto :goto_1

    .line 77
    :cond_0
    :try_start_4
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Unsafe is not available on Android."

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 81
    :cond_1
    move-object/from16 v2, v19

    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    :goto_0
    goto :goto_3

    .line 79
    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    :catch_3
    move-exception v0

    move-object/from16 v2, v19

    .line 80
    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    :goto_1
    sget-boolean v19, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v19, :cond_2

    move-object/from16 v19, v2

    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    const-string v2, "Unsafe is not available."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    :cond_2
    move-object/from16 v19, v2

    .line 83
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    :goto_2
    move-object/from16 v2, v19

    .end local v19    # "tempUnsafe":Lsun/misc/Unsafe;
    .restart local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    :goto_3
    sput-wide v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    .line 84
    sput-wide v15, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    .line 85
    sput-wide v13, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    .line 86
    sput-wide v9, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    .line 87
    sput-wide v5, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    .line 88
    sput-wide v11, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    .line 89
    sput-wide v7, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    .line 90
    sput-wide v17, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    .line 91
    sput-object v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    .line 97
    .end local v2    # "tempUnsafe":Lsun/misc/Unsafe;
    .end local v3    # "tempByteArrayBaseOffset":J
    .end local v5    # "tempFloatArrayBaseOffset":J
    .end local v7    # "tempDoubleArrayBaseOffset":J
    .end local v9    # "tempIntArrayBaseOffset":J
    .end local v11    # "tempLongArrayBaseOffset":J
    .end local v13    # "tempShortArrayBaseOffset":J
    .end local v15    # "tempCharArrayBaseOffset":J
    .end local v17    # "tempBooleanArrayBaseOffset":J
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 99
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    .line 100
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 104
    goto :goto_4

    .line 101
    :catch_4
    move-exception v0

    .line 102
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-boolean v4, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "No direct ByteBuffer constructor is available."

    invoke-static {v1, v4, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_3
    const/4 v4, 0x0

    sput-object v4, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    .line 110
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :goto_4
    :try_start_6
    const-class v0, Lsun/nio/ch/DirectBuffer;

    const-string v3, "cleaner"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    .line 111
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "clean"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanMethod:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 116
    goto :goto_5

    .line 113
    :catch_5
    move-exception v0

    .line 114
    .restart local v0    # "ex":Ljava/lang/Exception;
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "No direct ByteBuffer clean method is available."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_4
    const/4 v1, 0x0

    sput-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    .line 117
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 140
    instance-of v0, p0, Lsun/nio/ch/DirectBuffer;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 143
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public static isNewDirectBufferAvailable()Z
    .locals 1

    .line 135
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newDirectBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "address"    # J
    .param p2, "size"    # I

    .line 124
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating a ByteBuffer at address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 125
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No direct ByteBuffer constructor is available."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
