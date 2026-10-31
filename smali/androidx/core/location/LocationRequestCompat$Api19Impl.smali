.class Landroidx/core/location/LocationRequestCompat$Api19Impl;
.super Ljava/lang/Object;
.source "LocationRequestCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationRequestCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api19Impl"
.end annotation


# static fields
.field private static sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

.field private static sLocationRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSetExpireInMethod:Ljava/lang/reflect/Method;

.field private static sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

.field private static sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

.field private static sSetQualityMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    return-void
.end method

.method public static toLocationRequest(Landroidx/core/location/LocationRequestCompat;Ljava/lang/String;)Ljava/lang/Object;
    .registers 12
    .param p0, "obj"    # Landroidx/core/location/LocationRequestCompat;
    .param p1, "provider"    # Ljava/lang/String;

    .line 536
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    if-nez v1, :cond_d

    .line 537
    const-string v1, "android.location.LocationRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    .line 539
    :cond_d
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_37

    .line 540
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    const-string v7, "createFromDeprecatedProvider"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    .line 541
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    .line 545
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 548
    :cond_37
    sget-object v1, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sCreateFromDeprecatedProviderMethod:Ljava/lang/reflect/Method;

    .line 550
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getIntervalMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 551
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateDistanceMeters()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v7, v4, v6

    aput-object v8, v4, v3

    aput-object v9, v4, v2

    .line 548
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 552
    .local v1, "request":Ljava/lang/Object;
    if-nez v1, :cond_5e

    .line 553
    return-object v0

    .line 556
    :cond_5e
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_78

    .line 557
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    const-string/jumbo v3, "setQuality"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    .line 559
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 561
    :cond_78
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetQualityMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getQuality()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_a3

    .line 564
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    const-string/jumbo v3, "setFastestInterval"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    .line 566
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 569
    :cond_a3
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetFastestIntervalMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMinUpdateIntervalMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMaxUpdates()I

    move-result v2

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_e8

    .line 572
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_d7

    .line 573
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    const-string/jumbo v3, "setNumUpdates"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    .line 575
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 578
    :cond_d7
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetNumUpdatesMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getMaxUpdates()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    :cond_e8
    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getDurationMillis()J

    move-result-wide v2

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v4, v2, v7

    if-gez v4, :cond_120

    .line 582
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_10f

    .line 583
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sLocationRequestClass:Ljava/lang/Class;

    const-string/jumbo v3, "setExpireIn"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    .line 585
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 588
    :cond_10f
    sget-object v2, Landroidx/core/location/LocationRequestCompat$Api19Impl;->sSetExpireInMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Landroidx/core/location/LocationRequestCompat;->getDurationMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_120
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_120} :catch_127
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_120} :catch_125
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_120} :catch_123
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_120} :catch_121

    .line 591
    :cond_120
    return-object v1

    .line 592
    .end local v1    # "request":Ljava/lang/Object;
    :catch_121
    move-exception v1

    goto :goto_128

    :catch_123
    move-exception v1

    goto :goto_128

    :catch_125
    move-exception v1

    goto :goto_128

    :catch_127
    move-exception v1

    .line 596
    :goto_128
    return-object v0
.end method
