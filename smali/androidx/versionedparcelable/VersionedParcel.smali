.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# static fields
.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final TAG:Ljava/lang/String; = "VersionedParcel"

.field private static final TYPE_BINDER:I = 0x5

.field private static final TYPE_FLOAT:I = 0x8

.field private static final TYPE_INTEGER:I = 0x7

.field private static final TYPE_PARCELABLE:I = 0x2

.field private static final TYPE_SERIALIZABLE:I = 0x3

.field private static final TYPE_STRING:I = 0x4

.field private static final TYPE_VERSIONED_PARCELABLE:I = 0x1


# instance fields
.field protected final mParcelizerCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReadCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriteCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "readCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p2, "writeCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    .local p3, "parcelizerCache":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Ljava/lang/Class;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    .line 88
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    .line 89
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    .line 90
    return-void
.end method

.method private createException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1219
    packed-switch p1, :pswitch_data_58

    .line 1237
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown exception code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1223
    :pswitch_26
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1225
    :pswitch_2c
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1227
    :pswitch_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1229
    :pswitch_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1231
    :pswitch_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1233
    :pswitch_44
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    return-object v0

    .line 1235
    :pswitch_4a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1221
    :pswitch_50
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    nop

    :pswitch_data_58
    .packed-switch -0x9
        :pswitch_50
        :pswitch_3
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method

.method private findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1628
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/versionedparcelable/VersionedParcelable;>;"
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1629
    .local v0, "ret":Ljava/lang/Class;
    if-nez v0, :cond_3a

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1631
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const-string v2, "%s.%sParcelizer"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1632
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1633
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/String;
    :cond_3a
    return-object v0
.end method

.method private getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "parcelCls"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1605
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_29

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1607
    .local v1, "start":J
    const-class v3, Landroidx/versionedparcelable/VersionedParcel;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p1, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 1608
    .local v4, "cls":Ljava/lang/Class;
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "read"

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1609
    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    .end local v1    # "start":J
    .end local v4    # "cls":Ljava/lang/Class;
    :cond_29
    return-object v0
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 1208
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    .line 1209
    :cond_c
    return-object p0
.end method

.method private getType(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 995
    .local p1, "t":Ljava/lang/Object;, "TT;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 996
    const/4 v0, 0x4

    return v0

    .line 997
    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_c

    .line 998
    const/4 v0, 0x2

    return v0

    .line 999
    :cond_c
    instance-of v0, p1, Landroidx/versionedparcelable/VersionedParcelable;

    if-eqz v0, :cond_12

    .line 1000
    const/4 v0, 0x1

    return v0

    .line 1001
    :cond_12
    instance-of v0, p1, Ljava/io/Serializable;

    if-eqz v0, :cond_18

    .line 1002
    const/4 v0, 0x3

    return v0

    .line 1003
    :cond_18
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_1e

    .line 1004
    const/4 v0, 0x5

    return v0

    .line 1005
    :cond_1e
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    .line 1006
    const/4 v0, 0x7

    return v0

    .line 1007
    :cond_24
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2b

    .line 1008
    const/16 v0, 0x8

    return v0

    .line 1010
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be VersionedParcelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .param p1, "baseCls"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1617
    .local v0, "m":Ljava/lang/reflect/Method;
    if-nez v0, :cond_31

    .line 1618
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 1619
    .local v1, "cls":Ljava/lang/Class;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1620
    .local v2, "start":J
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-class v5, Landroidx/versionedparcelable/VersionedParcel;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "write"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1621
    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v2    # "start":J
    :cond_31
    return-object v0
.end method

.method private readCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection<",
            "TT;>;>(TS;)TS;"
        }
    .end annotation

    .line 1344
    .local p1, "list":Ljava/util/Collection;, "TS;"
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1345
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 1346
    return-object v1

    .line 1348
    :cond_8
    if-eqz v0, :cond_51

    .line 1349
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v2

    .line 1350
    .local v2, "type":I
    if-gez v0, :cond_11

    .line 1351
    return-object v1

    .line 1353
    :cond_11
    packed-switch v2, :pswitch_data_52

    goto :goto_51

    .line 1379
    :goto_15
    :pswitch_15
    if-lez v0, :cond_51

    .line 1380
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1381
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 1355
    :goto_21
    :pswitch_21
    if-lez v0, :cond_51

    .line 1356
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1357
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 1373
    :goto_2d
    :pswitch_2d
    if-lez v0, :cond_51

    .line 1374
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1375
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 1361
    :goto_39
    :pswitch_39
    if-lez v0, :cond_51

    .line 1362
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1363
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 1367
    :goto_45
    :pswitch_45
    if-lez v0, :cond_51

    .line 1368
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1369
    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    .line 1386
    .end local v2    # "type":I
    :cond_51
    :goto_51
    return-object p1

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_45
        :pswitch_39
        :pswitch_2d
        :pswitch_21
        :pswitch_15
    .end packed-switch
.end method

.method private readException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 4
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 1198
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 1199
    .local v0, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private readExceptionCode()I
    .registers 2

    .line 1193
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1194
    .local v0, "code":I
    return v0
.end method

.method private writeCollection(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 880
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_7

    .line 881
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 882
    return-void

    .line 885
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 886
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 887
    if-lez v0, :cond_c6

    .line 888
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v1

    .line 889
    .local v1, "type":I
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 890
    packed-switch v1, :pswitch_data_c8

    :pswitch_22
    goto/16 :goto_c6

    .line 922
    :pswitch_24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 923
    .local v3, "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 924
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_28

    .line 917
    :pswitch_3d
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 918
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 919
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_41

    .line 920
    :cond_56
    goto/16 :goto_c6

    .line 912
    :pswitch_58
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 913
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 914
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_5c

    .line 915
    :cond_6d
    goto :goto_c6

    .line 892
    :pswitch_6e
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 893
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 894
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_72

    .line 895
    :cond_83
    goto :goto_c6

    .line 907
    :pswitch_84
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_88
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 908
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Ljava/io/Serializable;

    invoke-direct {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 909
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_88

    .line 910
    :cond_99
    goto :goto_c6

    .line 897
    :pswitch_9a
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_af

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 898
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 899
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_9e

    .line 900
    :cond_af
    goto :goto_c6

    .line 902
    :pswitch_b0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 903
    .restart local v3    # "v":Ljava/lang/Object;, "TT;"
    move-object v4, v3

    check-cast v4, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v4}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 904
    .end local v3    # "v":Ljava/lang/Object;, "TT;"
    goto :goto_b4

    .line 905
    :cond_c5
    nop

    .line 928
    .end local v1    # "type":I
    :cond_c6
    :goto_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_9a
        :pswitch_84
        :pswitch_6e
        :pswitch_58
        :pswitch_22
        :pswitch_3d
        :pswitch_24
    .end packed-switch
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)V"
        }
    .end annotation

    .line 875
    .local p1, "val":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 876
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    .line 877
    return-void
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .registers 8
    .param p1, "s"    # Ljava/io/Serializable;

    .line 1062
    if-nez p1, :cond_7

    .line 1063
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1064
    return-void

    .line 1066
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1069
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1071
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1072
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 1075
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2b

    .line 1080
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    nop

    .line 1081
    return-void

    .line 1076
    :catch_2b
    move-exception v2

    .line 1077
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VersionedParcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 7
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 1040
    const/4 v0, 0x0

    .line 1042
    .local v0, "name":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_9} :catch_13

    move-object v0, v1

    .line 1046
    nop

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1048
    return-void

    .line 1043
    :catch_13
    move-exception v1

    .line 1044
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have a Parcelizer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected readArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1444
    .local p1, "def":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1445
    .local v0, "n":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 1446
    return-object v1

    .line 1448
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1449
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-eqz v0, :cond_56

    .line 1450
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    .line 1451
    .local v3, "type":I
    if-gez v0, :cond_16

    .line 1452
    return-object v1

    .line 1454
    :cond_16
    packed-switch v3, :pswitch_data_5c

    goto :goto_56

    .line 1480
    :goto_1a
    :pswitch_1a
    if-lez v0, :cond_56

    .line 1481
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 1456
    :goto_26
    :pswitch_26
    if-lez v0, :cond_56

    .line 1457
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1458
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1474
    :goto_32
    :pswitch_32
    if-lez v0, :cond_56

    .line 1475
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1476
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 1462
    :goto_3e
    :pswitch_3e
    if-lez v0, :cond_56

    .line 1463
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    add-int/lit8 v0, v0, -0x1

    goto :goto_3e

    .line 1468
    :goto_4a
    :pswitch_4a
    if-lez v0, :cond_56

    .line 1469
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1470
    add-int/lit8 v0, v0, -0x1

    goto :goto_4a

    .line 1487
    .end local v3    # "type":I
    :cond_56
    :goto_56
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_26
        :pswitch_1a
    .end packed-switch
.end method

.method public readArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 1435
    .local p1, "def":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1436
    return-object p1

    .line 1438
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .registers 4
    .param p1, "def"    # Z
    .param p2, "fieldId"    # I

    .line 399
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 400
    return p1

    .line 402
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    return v0
.end method

.method protected readBooleanArray()[Z
    .registers 5

    .line 587
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 588
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 589
    const/4 v1, 0x0

    return-object v1

    .line 591
    :cond_8
    new-array v1, v0, [Z

    .line 592
    .local v1, "val":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1b

    .line 593
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    aput-boolean v3, v1, v2

    .line 592
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 595
    .end local v2    # "i":I
    :cond_1b
    return-object v1
.end method

.method public readBooleanArray([ZI)[Z
    .registers 4
    .param p1, "def"    # [Z
    .param p2, "fieldId"    # I

    .line 578
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 579
    return-object p1

    .line 581
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    move-result-object v0

    return-object v0
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "def"    # Landroid/os/Bundle;
    .param p2, "fieldId"    # I

    .line 493
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 494
    return-object p1

    .line 496
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public readByte(BI)B
    .registers 4
    .param p1, "def"    # B
    .param p2, "fieldId"    # I

    .line 1245
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1246
    return p1

    .line 1248
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .registers 4
    .param p1, "def"    # [B
    .param p2, "fieldId"    # I

    .line 472
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 473
    return-object p1

    .line 475
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public readCharArray([CI)[C
    .registers 7
    .param p1, "def"    # [C
    .param p2, "fieldId"    # I

    .line 625
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 626
    return-object p1

    .line 628
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 629
    .local v0, "n":I
    if-gez v0, :cond_f

    .line 630
    const/4 v1, 0x0

    return-object v1

    .line 632
    :cond_f
    new-array v1, v0, [C

    .line 633
    .local v1, "val":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_1e

    .line 634
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 636
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method protected abstract readCharSequence()Ljava/lang/CharSequence;
.end method

.method public readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "def"    # Ljava/lang/CharSequence;
    .param p2, "fieldId"    # I

    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 617
    return-object p1

    .line 619
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readDouble()D
.end method

.method public readDouble(DI)D
    .registers 6
    .param p1, "def"    # D
    .param p3, "fieldId"    # I

    .line 441
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 442
    return-wide p1

    .line 444
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method protected readDoubleArray()[D
    .registers 6

    .line 804
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 805
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 806
    const/4 v1, 0x0

    return-object v1

    .line 808
    :cond_8
    new-array v1, v0, [D

    .line 809
    .local v1, "val":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 810
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 809
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 812
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public readDoubleArray([DI)[D
    .registers 4
    .param p1, "def"    # [D
    .param p2, "fieldId"    # I

    .line 795
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 796
    return-object p1

    .line 798
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    move-result-object v0

    return-object v0
.end method

.method public readException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .registers 6
    .param p1, "def"    # Ljava/lang/Exception;
    .param p2, "fieldId"    # I

    .line 1170
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1171
    return-object p1

    .line 1173
    :cond_7
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;->readExceptionCode()I

    move-result v0

    .line 1174
    .local v0, "code":I
    if-eqz v0, :cond_16

    .line 1175
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "msg":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    return-object v2

    .line 1178
    .end local v1    # "msg":Ljava/lang/String;
    :cond_16
    return-object p1
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .registers 4
    .param p1, "def"    # F
    .param p2, "fieldId"    # I

    .line 430
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 431
    return p1

    .line 433
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v0

    return v0
.end method

.method protected readFloatArray()[F
    .registers 5

    .line 760
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 761
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 762
    const/4 v1, 0x0

    return-object v1

    .line 764
    :cond_8
    new-array v1, v0, [F

    .line 765
    .local v1, "val":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 766
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v3

    aput v3, v1, v2

    .line 765
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 768
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public readFloatArray([FI)[F
    .registers 4
    .param p1, "def"    # [F
    .param p2, "fieldId"    # I

    .line 751
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 752
    return-object p1

    .line 754
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    move-result-object v0

    return-object v0
.end method

.method protected readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 6
    .param p1, "parcelCls"    # Ljava/lang/String;
    .param p2, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .line 1565
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1566
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 1576
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :catch_12
    move-exception v0

    .line 1577
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1574
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1b
    move-exception v0

    .line 1575
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1569
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_24
    move-exception v0

    .line 1570
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_34

    .line 1571
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1573
    :cond_34
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1567
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3c
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .registers 4
    .param p1, "def"    # I
    .param p2, "fieldId"    # I

    .line 409
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 410
    return p1

    .line 412
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    return v0
.end method

.method protected readIntArray()[I
    .registers 5

    .line 672
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 673
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 674
    const/4 v1, 0x0

    return-object v1

    .line 676
    :cond_8
    new-array v1, v0, [I

    .line 677
    .local v1, "val":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 678
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 677
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 680
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public readIntArray([II)[I
    .registers 4
    .param p1, "def"    # [I
    .param p2, "fieldId"    # I

    .line 663
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 664
    return-object p1

    .line 666
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    move-result-object v0

    return-object v0
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1337
    .local p1, "def":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1338
    return-object p1

    .line 1340
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .registers 6
    .param p1, "def"    # J
    .param p3, "fieldId"    # I

    .line 419
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 420
    return-wide p1

    .line 422
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readLongArray()[J
    .registers 6

    .line 716
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 717
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 718
    const/4 v1, 0x0

    return-object v1

    .line 720
    :cond_8
    new-array v1, v0, [J

    .line 721
    .local v1, "val":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_16

    .line 722
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 724
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method public readLongArray([JI)[J
    .registers 4
    .param p1, "def"    # [J
    .param p2, "fieldId"    # I

    .line 707
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 708
    return-object p1

    .line 710
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    move-result-object v0

    return-object v0
.end method

.method public readMap(Ljava/util/Map;I)Ljava/util/Map;
    .registers 10
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1401
    .local p1, "def":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1402
    return-object p1

    .line 1404
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1405
    .local v0, "size":I
    if-gez v0, :cond_f

    .line 1406
    const/4 v1, 0x0

    return-object v1

    .line 1408
    :cond_f
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 1409
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez v0, :cond_17

    .line 1410
    return-object v1

    .line 1412
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1413
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<TK;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    .local v3, "valueList":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 1415
    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 1416
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-ge v4, v0, :cond_38

    .line 1417
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1419
    .end local v4    # "i":I
    :cond_38
    return-object v1
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 481
    .local p1, "def":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 482
    return-object p1

    .line 484
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .registers 9

    .line 1523
    const-string v0, ")"

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_a

    .line 1529
    const/4 v0, 0x0

    return-object v0

    .line 1532
    :cond_a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    move-result-object v2

    .line 1533
    .local v2, "serializedData":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1535
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_13
    new-instance v4, Landroidx/versionedparcelable/VersionedParcel$1;

    invoke-direct {v4, p0, v3}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    .line 1547
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/Serializable;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1e} :catch_1f

    return-object v5

    .line 1552
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_1f
    move-exception v4

    .line 1553
    .local v4, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1548
    .end local v4    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_3d
    move-exception v4

    .line 1549
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VersionedParcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1318
    .local p1, "def":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1319
    return-object p1

    .line 1321
    :cond_7
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public readSize(Landroid/util/Size;I)Landroid/util/Size;
    .registers 6
    .param p1, "def"    # Landroid/util/Size;
    .param p2, "fieldId"    # I

    .line 1256
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1257
    return-object p1

    .line 1259
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1260
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1261
    .local v0, "width":I
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 1262
    .local v1, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2

    .line 1264
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public readSizeF(Landroid/util/SizeF;I)Landroid/util/SizeF;
    .registers 6
    .param p1, "def"    # Landroid/util/SizeF;
    .param p2, "fieldId"    # I

    .line 1272
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1273
    return-object p1

    .line 1275
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1276
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v0

    .line 1277
    .local v0, "width":F
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v1

    .line 1278
    .local v1, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2

    .line 1280
    .end local v0    # "width":F
    .end local v1    # "height":F
    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public readSparseBooleanArray(Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .registers 8
    .param p1, "def"    # Landroid/util/SparseBooleanArray;
    .param p2, "fieldId"    # I

    .line 1289
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1290
    return-object p1

    .line 1292
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1293
    .local v0, "n":I
    if-gez v0, :cond_f

    .line 1294
    const/4 v1, 0x0

    return-object v1

    .line 1296
    :cond_f
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1297
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    const/4 v2, 0x0

    .line 1298
    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_25

    .line 1299
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1300
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1302
    :cond_25
    return-object v1
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "def"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .line 451
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 452
    return-object p1

    .line 454
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 4
    .param p1, "def"    # Landroid/os/IBinder;
    .param p2, "fieldId"    # I

    .line 461
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 462
    return-object p1

    .line 464
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    .line 1509
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1510
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1511
    const/4 v1, 0x0

    return-object v1

    .line 1513
    :cond_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v1

    return-object v1
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 4
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 1493
    .local p1, "def":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1494
    return-object p1

    .line 1496
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .registers 3
    .param p1, "allowSerialization"    # Z
    .param p2, "ignoreParcelables"    # Z

    .line 269
    return-void
.end method

.method protected writeArray([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 948
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    if-nez p1, :cond_7

    .line 949
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 950
    return-void

    .line 953
    :cond_7
    array-length v0, p1

    .line 954
    .local v0, "n":I
    const/4 v1, 0x0

    .line 955
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 956
    if-lez v0, :cond_58

    .line 957
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    move-result v2

    .line 958
    .local v2, "type":I
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 959
    packed-switch v2, :pswitch_data_5a

    goto :goto_58

    .line 985
    :goto_1c
    :pswitch_1c
    if-ge v1, v0, :cond_58

    .line 986
    aget-object v3, p1, v1

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 987
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 961
    :goto_28
    :pswitch_28
    if-ge v1, v0, :cond_58

    .line 962
    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 979
    :goto_34
    :pswitch_34
    if-ge v1, v0, :cond_58

    .line 980
    aget-object v3, p1, v1

    check-cast v3, Ljava/io/Serializable;

    invoke-direct {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 967
    :goto_40
    :pswitch_40
    if-ge v1, v0, :cond_58

    .line 968
    aget-object v3, p1, v1

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 969
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 973
    :goto_4c
    :pswitch_4c
    if-ge v1, v0, :cond_58

    .line 974
    aget-object v3, p1, v1

    check-cast v3, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 975
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 992
    .end local v2    # "type":I
    :cond_58
    :goto_58
    return-void

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_40
        :pswitch_34
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method

.method public writeArray([Ljava/lang/Object;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    .line 941
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 942
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    .line 943
    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .registers 3
    .param p1, "val"    # Z
    .param p2, "fieldId"    # I

    .line 294
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 295
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 296
    return-void
.end method

.method protected writeBooleanArray([Z)V
    .registers 5
    .param p1, "val"    # [Z

    .line 564
    if-eqz p1, :cond_12

    .line 565
    array-length v0, p1

    .line 566
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 568
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 570
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 571
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 573
    :goto_16
    return-void
.end method

.method public writeBooleanArray([ZI)V
    .registers 3
    .param p1, "val"    # [Z
    .param p2, "fieldId"    # I

    .line 557
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 558
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    .line 559
    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "val"    # Landroid/os/Bundle;
    .param p2, "fieldId"    # I

    .line 285
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 286
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    .line 287
    return-void
.end method

.method public writeByte(BI)V
    .registers 3
    .param p1, "val"    # B
    .param p2, "fieldId"    # I

    .line 504
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 505
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 506
    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .registers 3
    .param p1, "b"    # [B
    .param p2, "fieldId"    # I

    .line 304
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 305
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    .line 306
    return-void
.end method

.method protected abstract writeByteArray([BII)V
.end method

.method public writeByteArray([BIII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "fieldId"    # I

    .line 316
    invoke-virtual {p0, p4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 317
    invoke-virtual {p0, p1, p2, p3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BII)V

    .line 318
    return-void
.end method

.method public writeCharArray([CI)V
    .registers 6
    .param p1, "val"    # [C
    .param p2, "fieldId"    # I

    .line 601
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 602
    if-eqz p1, :cond_15

    .line 603
    array-length v0, p1

    .line 604
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 605
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_14

    .line 606
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 608
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_14
    goto :goto_19

    .line 609
    :cond_15
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 611
    :goto_19
    return-void
.end method

.method protected abstract writeCharSequence(Ljava/lang/CharSequence;)V
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;I)V
    .registers 3
    .param p1, "val"    # Ljava/lang/CharSequence;
    .param p2, "fieldId"    # I

    .line 325
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 326
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method protected abstract writeDouble(D)V
.end method

.method public writeDouble(DI)V
    .registers 4
    .param p1, "val"    # D
    .param p3, "fieldId"    # I

    .line 361
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 362
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 363
    return-void
.end method

.method protected writeDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .line 781
    if-eqz p1, :cond_12

    .line 782
    array-length v0, p1

    .line 783
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 785
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 787
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 788
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 790
    :goto_16
    return-void
.end method

.method public writeDoubleArray([DI)V
    .registers 3
    .param p1, "val"    # [D
    .param p2, "fieldId"    # I

    .line 774
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 775
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    .line 776
    return-void
.end method

.method public writeException(Ljava/lang/Exception;I)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fieldId"    # I

    .line 1107
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1108
    if-nez p1, :cond_9

    .line 1109
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->writeNoException()V

    .line 1110
    return-void

    .line 1112
    :cond_9
    const/4 v0, 0x0

    .line 1113
    .local v0, "code":I
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_21

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 1117
    const/16 v0, -0x9

    goto :goto_4a

    .line 1118
    :cond_21
    instance-of v1, p1, Ljava/lang/SecurityException;

    if-eqz v1, :cond_27

    .line 1119
    const/4 v0, -0x1

    goto :goto_4a

    .line 1120
    :cond_27
    instance-of v1, p1, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_2d

    .line 1121
    const/4 v0, -0x2

    goto :goto_4a

    .line 1122
    :cond_2d
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_33

    .line 1123
    const/4 v0, -0x3

    goto :goto_4a

    .line 1124
    :cond_33
    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_39

    .line 1125
    const/4 v0, -0x4

    goto :goto_4a

    .line 1126
    :cond_39
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_3f

    .line 1127
    const/4 v0, -0x5

    goto :goto_4a

    .line 1128
    :cond_3f
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_45

    .line 1129
    const/4 v0, -0x6

    goto :goto_4a

    .line 1130
    :cond_45
    instance-of v1, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_4a

    .line 1131
    const/4 v0, -0x7

    .line 1133
    :cond_4a
    :goto_4a
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1134
    if-nez v0, :cond_5d

    .line 1135
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_57

    .line 1136
    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1138
    :cond_57
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1140
    :cond_5d
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1141
    packed-switch v0, :pswitch_data_70

    goto :goto_6e

    .line 1144
    :pswitch_68
    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 1147
    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch -0x9
        :pswitch_68
    .end packed-switch
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .registers 3
    .param p1, "val"    # F
    .param p2, "fieldId"    # I

    .line 352
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 353
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 354
    return-void
.end method

.method protected writeFloatArray([F)V
    .registers 5
    .param p1, "val"    # [F

    .line 737
    if-eqz p1, :cond_12

    .line 738
    array-length v0, p1

    .line 739
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 741
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 743
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 744
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 746
    :goto_16
    return-void
.end method

.method public writeFloatArray([FI)V
    .registers 3
    .param p1, "val"    # [F
    .param p2, "fieldId"    # I

    .line 730
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 731
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    .line 732
    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .registers 3
    .param p1, "val"    # I
    .param p2, "fieldId"    # I

    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 336
    return-void
.end method

.method protected writeIntArray([I)V
    .registers 5
    .param p1, "val"    # [I

    .line 649
    if-eqz p1, :cond_12

    .line 650
    array-length v0, p1

    .line 651
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 652
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 653
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 655
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 656
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 658
    :goto_16
    return-void
.end method

.method public writeIntArray([II)V
    .registers 3
    .param p1, "val"    # [I
    .param p2, "fieldId"    # I

    .line 642
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 643
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    .line 644
    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 840
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 841
    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .registers 4
    .param p1, "val"    # J
    .param p3, "fieldId"    # I

    .line 343
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 344
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 345
    return-void
.end method

.method protected writeLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .line 693
    if-eqz p1, :cond_12

    .line 694
    array-length v0, p1

    .line 695
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 697
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 699
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 700
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 702
    :goto_16
    return-void
.end method

.method public writeLongArray([JI)V
    .registers 3
    .param p1, "val"    # [J
    .param p2, "fieldId"    # I

    .line 686
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 687
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    .line 688
    return-void
.end method

.method public writeMap(Ljava/util/Map;I)V
    .registers 9
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 854
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 855
    if-nez p1, :cond_a

    .line 856
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 857
    return-void

    .line 859
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 860
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 861
    if-nez v0, :cond_14

    .line 862
    return-void

    .line 864
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v1, "keySet":Ljava/util/List;, "Ljava/util/List<TK;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v2, "valueSet":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 867
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_26

    .line 870
    :cond_41
    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    .line 871
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    .line 872
    return-void
.end method

.method protected writeNoException()V
    .registers 2

    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1158
    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "fieldId"    # I

    .line 391
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 392
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    .line 393
    return-void
.end method

.method public writeSerializable(Ljava/io/Serializable;I)V
    .registers 3
    .param p1, "s"    # Ljava/io/Serializable;
    .param p2, "fieldId"    # I

    .line 1057
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1058
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 1059
    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .registers 3
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)V"
        }
    .end annotation

    .line 826
    .local p1, "val":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    .line 827
    return-void
.end method

.method public writeSize(Landroid/util/Size;I)V
    .registers 4
    .param p1, "val"    # Landroid/util/Size;
    .param p2, "fieldId"    # I

    .line 514
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 515
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 516
    if-eqz p1, :cond_1b

    .line 517
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 518
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 520
    :cond_1b
    return-void
.end method

.method public writeSizeF(Landroid/util/SizeF;I)V
    .registers 4
    .param p1, "val"    # Landroid/util/SizeF;
    .param p2, "fieldId"    # I

    .line 528
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 529
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 530
    if-eqz p1, :cond_1b

    .line 531
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 532
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 534
    :cond_1b
    return-void
.end method

.method public writeSparseBooleanArray(Landroid/util/SparseBooleanArray;I)V
    .registers 6
    .param p1, "val"    # Landroid/util/SparseBooleanArray;
    .param p2, "fieldId"    # I

    .line 539
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 540
    if-nez p1, :cond_a

    .line 541
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 542
    return-void

    .line 544
    :cond_a
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 545
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 546
    const/4 v1, 0x0

    .line 547
    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_25

    .line 548
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 549
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 552
    :cond_25
    return-void
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "fieldId"    # I

    .line 370
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 371
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .registers 3
    .param p1, "val"    # Landroid/os/IBinder;
    .param p2, "fieldId"    # I

    .line 379
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 380
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 381
    return-void
.end method

.method protected abstract writeStrongInterface(Landroid/os/IInterface;)V
.end method

.method public writeStrongInterface(Landroid/os/IInterface;I)V
    .registers 3
    .param p1, "val"    # Landroid/os/IInterface;
    .param p2, "fieldId"    # I

    .line 276
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 277
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 278
    return-void
.end method

.method protected writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 6
    .param p2, "versionedParcel"    # Landroidx/versionedparcelable/VersionedParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .line 1586
    .local p1, "val":Landroidx/versionedparcelable/VersionedParcelable;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1587
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_20
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_17

    .line 1599
    nop

    .line 1600
    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-void

    .line 1597
    :catch_17
    move-exception v0

    .line 1598
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1595
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_20
    move-exception v0

    .line 1596
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1590
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_29
    move-exception v0

    .line 1591
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_39

    .line 1592
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 1594
    :cond_39
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1588
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_41
    move-exception v0

    .line 1589
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 3
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;

    .line 1028
    if-nez p1, :cond_7

    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    .line 1030
    return-void

    .line 1032
    :cond_7
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 1035
    .local v0, "subParcel":Landroidx/versionedparcelable/VersionedParcel;
    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 1036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    .line 1037
    return-void
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .registers 3
    .param p1, "p"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p2, "fieldId"    # I

    .line 1021
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    .line 1022
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    .line 1023
    return-void
.end method
