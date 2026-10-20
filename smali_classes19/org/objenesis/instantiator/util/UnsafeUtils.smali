.class public final Lorg/objenesis/instantiator/util/UnsafeUtils;
.super Ljava/lang/Object;
.source "UnsafeUtils.java"


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    :try_start_0
    const-class v0, Lsun/misc/Unsafe;

    const-string v1, "theUnsafe"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .local v0, "f":Ljava/lang/reflect/Field;
    nop

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 42
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;

    sput-object v1, Lorg/objenesis/instantiator/util/UnsafeUtils;->unsafe:Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    nop

    .line 46
    .end local v0    # "f":Ljava/lang/reflect/Field;
    return-void

    .line 43
    .restart local v0    # "f":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 37
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .line 51
    sget-object v0, Lorg/objenesis/instantiator/util/UnsafeUtils;->unsafe:Lsun/misc/Unsafe;

    return-object v0
.end method
