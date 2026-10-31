.class public final Landroidx/core/content/res/ResourcesCompat;
.super Ljava/lang/Object;
.source "ResourcesCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;,
        Landroidx/core/content/res/ResourcesCompat$Api21Impl;,
        Landroidx/core/content/res/ResourcesCompat$Api23Impl;,
        Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;,
        Landroidx/core/content/res/ResourcesCompat$Api29Impl;,
        Landroidx/core/content/res/ResourcesCompat$FontCallback;,
        Landroidx/core/content/res/ResourcesCompat$ThemeCompat;
    }
.end annotation


# static fields
.field public static final ID_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResourcesCompat"

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;",
            "Landroid/util/SparseArray<",
            "Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTempTypedValue:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    .line 79
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    return-void
.end method

.method private static addColorStateListToCache(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;ILandroid/content/res/ColorStateList;Landroid/content/res/Resources$Theme;)V
    .registers 8
    .param p0, "key"    # Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    .param p1, "resId"    # I
    .param p2, "value"    # Landroid/content/res/ColorStateList;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 298
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 300
    .local v1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    if-nez v1, :cond_18

    .line 301
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 302
    sget-object v2, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_18
    new-instance v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    .line 305
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, p2, v3, p3}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V

    .line 304
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 306
    .end local v1    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public static clearCachesForTheme(Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;

    .line 103
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    .line 107
    .local v2, "key":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    if-eqz v2, :cond_26

    iget-object v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources$Theme;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 110
    .end local v2    # "key":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    :cond_26
    goto :goto_d

    .line 111
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;>;"
    :cond_27
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static getCachedColorStateList(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;I)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "key"    # Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    .param p1, "resId"    # I

    .line 274
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 276
    .local v1, "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_46

    .line 277
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;

    .line 278
    .local v2, "entry":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;
    if-eqz v2, :cond_46

    .line 279
    iget-object v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v3, :cond_31

    iget v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mThemeHash:I

    if-eqz v3, :cond_3f

    :cond_31
    iget-object v3, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v3, :cond_43

    iget v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mThemeHash:I

    iget-object v4, p0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    .line 281
    invoke-virtual {v4}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_43

    .line 283
    :cond_3f
    iget-object v3, v2, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;->mValue:Landroid/content/res/ColorStateList;

    monitor-exit v0

    return-object v3

    .line 286
    :cond_43
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 290
    .end local v1    # "entries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;>;"
    .end local v2    # "entry":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheEntry;
    :cond_46
    monitor-exit v0

    .line 291
    const/4 v0, 0x0

    return-object v0

    .line 290
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public static getCachedFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 440
    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_8
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 201
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api23Impl;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0

    .line 203
    :cond_b
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 232
    new-instance v0, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;

    invoke-direct {v0, p0, p2}, Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    .line 233
    .local v0, "key":Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;
    invoke-static {v0, p1}, Landroidx/core/content/res/ResourcesCompat;->getCachedColorStateList(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 234
    .local v1, "csl":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_c

    .line 235
    return-object v1

    .line 238
    :cond_c
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat;->inflateColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_16

    .line 241
    invoke-static {v0, p1, v1, p2}, Landroidx/core/content/res/ResourcesCompat;->addColorStateListToCache(Landroidx/core/content/res/ResourcesCompat$ColorStateListCacheKey;ILandroid/content/res/ColorStateList;Landroid/content/res/Resources$Theme;)V

    .line 242
    return-object v1

    .line 245
    :cond_16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_21

    .line 246
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api23Impl;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2

    .line 248
    :cond_21
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method public static getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 137
    nop

    .line 138
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat$Api21Impl;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 171
    nop

    .line 172
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat$Api21Impl;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFloat(Landroid/content/res/Resources;I)F
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 376
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 377
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat$Api29Impl;->getFloat(Landroid/content/res/Resources;I)F

    move-result v0

    return v0

    .line 380
    :cond_b
    invoke-static {}, Landroidx/core/content/res/ResourcesCompat;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 381
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 382
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1d

    .line 383
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1

    .line 385
    :cond_1d
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 412
    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_8
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 543
    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_8
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "fontCallback"    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 523
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 525
    const/4 v0, -0x4

    invoke-virtual {p2, v0, p3}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 527
    return-void

    .line 529
    :cond_e
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    .line 531
    return-void
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .registers 2

    .line 318
    sget-object v0, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 319
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_15

    .line 320
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 321
    sget-object v1, Landroidx/core/content/res/ResourcesCompat;->sTempTypedValue:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 323
    :cond_15
    return-object v0
.end method

.method private static inflateColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 258
    invoke-static {p0, p1}, Landroidx/core/content/res/ResourcesCompat;->isColorInt(Landroid/content/res/Resources;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 260
    return-object v1

    .line 262
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 264
    .local v0, "xml":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_c
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/ColorStateListInflaterCompat;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    return-object v1

    .line 265
    :catch_11
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ResourcesCompat"

    const-string v4, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static isColorInt(Landroid/content/res/Resources;I)Z
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I

    .line 310
    invoke-static {}, Landroidx/core/content/res/ResourcesCompat;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v0

    .line 311
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 312
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_15

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method private static loadFont(Landroid/content/Context;ILandroid/util/TypedValue;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "style"    # I
    .param p4, "fontCallback"    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "isRequestFromLayoutInflator"    # Z
    .param p7, "isCachedOnly"    # Z

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 568
    .local v9, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x1

    move v10, p1

    move-object v11, p2

    invoke-virtual {v9, p1, p2, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 569
    move-object v0, p0

    move-object v1, v9

    move-object v2, p2

    move v3, p1

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroidx/core/content/res/ResourcesCompat;->loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;

    move-result-object v0

    .line 571
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-nez v0, :cond_45

    if-nez p4, :cond_45

    if-eqz p7, :cond_22

    goto :goto_45

    .line 572
    :cond_22
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 573
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be retrieved."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_45
    :goto_45
    return-object v0
.end method

.method private static loadFont(Landroid/content/Context;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    .registers 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "fontCallback"    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "isRequestFromLayoutInflator"    # Z
    .param p8, "isCachedOnly"    # Z

    .line 599
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    const-string v10, "ResourcesCompat"

    iget-object v0, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11b

    .line 604
    iget-object v0, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 605
    .local v9, "file":Ljava/lang/String;
    const-string v0, "res/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, -0x3

    const/16 v16, 0x0

    if-nez v0, :cond_27

    .line 607
    if-eqz v14, :cond_26

    .line 608
    invoke-virtual {v14, v8, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 611
    :cond_26
    return-object v16

    .line 613
    :cond_27
    iget v0, v12, Landroid/util/TypedValue;->assetCookie:I

    move/from16 v7, p4

    invoke-static {v11, v13, v9, v0, v7}, Landroidx/core/graphics/TypefaceCompat;->findFromCache(Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v6

    .line 616
    .local v6, "typeface":Landroid/graphics/Typeface;
    if-eqz v6, :cond_37

    .line 617
    if-eqz v14, :cond_36

    .line 618
    invoke-virtual {v14, v6, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 620
    :cond_36
    return-object v6

    .line 621
    :cond_37
    if-eqz p8, :cond_3a

    .line 622
    return-object v16

    .line 626
    :cond_3a
    :try_start_3a
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_3e} :catch_f8
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_d5

    :try_start_3e
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 627
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 628
    .local v0, "rp":Landroid/content/res/XmlResourceParser;
    nop

    .line 629
    invoke-static {v0, v11}, Landroidx/core/content/res/FontResourcesParserCompat;->parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v1
    :try_end_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_4f} :catch_c8
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4f} :catch_d5

    move-object/from16 v17, v1

    .line 630
    .local v17, "familyEntry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    if-nez v17, :cond_6c

    .line 631
    :try_start_53
    const-string v1, "Failed to find font-family tag"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz v14, :cond_5d

    .line 633
    invoke-virtual {v14, v8, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_5d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_5d} :catch_66
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5d} :catch_5e

    .line 636
    :cond_5d
    return-object v16

    .line 655
    .end local v0    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :catch_5e
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    const/4 v11, -0x3

    goto/16 :goto_dd

    .line 653
    :catch_66
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    const/4 v11, -0x3

    goto/16 :goto_fe

    .line 638
    .restart local v0    # "rp":Landroid/content/res/XmlResourceParser;
    .restart local v17    # "familyEntry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    :cond_6c
    :try_start_6c
    iget v5, v12, Landroid/util/TypedValue;->assetCookie:I
    :try_end_6e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6e} :catch_c8
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6e} :catch_d5

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v18, v5

    move-object v5, v9

    move-object/from16 v19, v6

    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .local v19, "typeface":Landroid/graphics/Typeface;
    move/from16 v6, v18

    move/from16 v7, p4

    const/4 v11, -0x3

    move-object/from16 v8, p5

    move-object/from16 v18, v9

    .end local v9    # "file":Ljava/lang/String;
    .local v18, "file":Ljava/lang/String;
    move-object/from16 v9, p6

    move-object/from16 v20, v10

    move/from16 v10, p7

    :try_start_8a
    invoke-static/range {v1 .. v10}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFamilyXml(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;ILjava/lang/String;IILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 642
    .end local v0    # "rp":Landroid/content/res/XmlResourceParser;
    .end local v17    # "familyEntry":Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .end local v18    # "file":Ljava/lang/String;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v6    # "typeface":Landroid/graphics/Typeface;
    .restart local v9    # "file":Ljava/lang/String;
    :cond_8f
    move-object/from16 v19, v6

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    const/4 v11, -0x3

    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .end local v9    # "file":Ljava/lang/String;
    .restart local v18    # "file":Ljava/lang/String;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    iget v5, v12, Landroid/util/TypedValue;->assetCookie:I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, v18

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_a6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8a .. :try_end_a6} :catch_c0
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a6} :catch_bc

    move-object v6, v0

    .line 644
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v6    # "typeface":Landroid/graphics/Typeface;
    if-eqz v14, :cond_bb

    .line 645
    if-eqz v6, :cond_af

    .line 646
    :try_start_ab
    invoke-virtual {v14, v6, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_bb

    .line 648
    :cond_af
    invoke-virtual {v14, v11, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V
    :try_end_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ab .. :try_end_b2} :catch_b5
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_b2} :catch_b3

    goto :goto_bb

    .line 655
    :catch_b3
    move-exception v0

    goto :goto_dd

    .line 653
    :catch_b5
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto :goto_fe

    .line 652
    :cond_bb
    :goto_bb
    return-object v6

    .line 655
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    :catch_bc
    move-exception v0

    move-object/from16 v6, v19

    goto :goto_dd

    .line 653
    :catch_c0
    move-exception v0

    move-object/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v3, v20

    goto :goto_fe

    .end local v18    # "file":Ljava/lang/String;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v6    # "typeface":Landroid/graphics/Typeface;
    .restart local v9    # "file":Ljava/lang/String;
    :catch_c8
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    const/4 v11, -0x3

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    .end local v6    # "typeface":Landroid/graphics/Typeface;
    .end local v9    # "file":Ljava/lang/String;
    .restart local v18    # "file":Ljava/lang/String;
    .restart local v19    # "typeface":Landroid/graphics/Typeface;
    goto :goto_fe

    .line 655
    .end local v18    # "file":Ljava/lang/String;
    .end local v19    # "typeface":Landroid/graphics/Typeface;
    .restart local v6    # "typeface":Landroid/graphics/Typeface;
    .restart local v9    # "file":Ljava/lang/String;
    :catch_d5
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    const/4 v11, -0x3

    .line 656
    .end local v9    # "file":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "file":Ljava/lang/String;
    :goto_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read xml resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    .end local v18    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_115

    .line 653
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/lang/String;
    .restart local v9    # "file":Ljava/lang/String;
    :catch_f8
    move-exception v0

    move-object/from16 v19, v6

    move-object v2, v9

    move-object v3, v10

    const/4 v11, -0x3

    .line 654
    .end local v9    # "file":Ljava/lang/String;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "file":Ljava/lang/String;
    :goto_fe
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse xml resource "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 658
    :goto_115
    if-eqz v14, :cond_11a

    .line 659
    invoke-virtual {v14, v11, v15}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 662
    :cond_11a
    return-object v16

    .line 600
    .end local v2    # "file":Ljava/lang/String;
    .end local v6    # "typeface":Landroid/graphics/Typeface;
    :cond_11b
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 601
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is not a Font: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
