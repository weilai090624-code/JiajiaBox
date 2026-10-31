.class Landroidx/appcompat/app/ResourcesFlusher;
.super Ljava/lang/Object;
.source "ResourcesFlusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ResourcesFlusher$Api16Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourcesFlusher"

.field private static sDrawableCacheField:Ljava/lang/reflect/Field;

.field private static sDrawableCacheFieldFetched:Z

.field private static sResourcesImplField:Ljava/lang/reflect/Field;

.field private static sResourcesImplFieldFetched:Z

.field private static sThemedResourceCacheClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sThemedResourceCacheClazzFetched:Z

.field private static sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

.field private static sThemedResourceCache_mUnthemedEntriesFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method static flush(Landroid/content/res/Resources;)V
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    .line 49
    return-void

    .line 50
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_11

    .line 51
    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushNougats(Landroid/content/res/Resources;)V

    goto :goto_1f

    .line 52
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1b

    .line 53
    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushMarshmallows(Landroid/content/res/Resources;)V

    goto :goto_1f

    .line 54
    :cond_1b
    nop

    .line 55
    invoke-static {p0}, Landroidx/appcompat/app/ResourcesFlusher;->flushLollipops(Landroid/content/res/Resources;)V

    .line 57
    :goto_1f
    return-void
.end method

.method private static flushLollipops(Landroid/content/res/Resources;)V
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 61
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    const-string v1, "ResourcesFlusher"

    if-nez v0, :cond_1f

    .line 63
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 67
    goto :goto_1d

    .line 65
    :catch_17
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 70
    :cond_1f
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_39

    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, "drawableCache":Ljava/util/Map;
    :try_start_24
    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2c} :catch_2e

    move-object v0, v2

    .line 76
    goto :goto_34

    .line 74
    :catch_2e
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_34
    if-eqz v0, :cond_39

    .line 78
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    .end local v0    # "drawableCache":Ljava/util/Map;
    :cond_39
    return-void
.end method

.method private static flushMarshmallows(Landroid/content/res/Resources;)V
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 85
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    const-string v1, "ResourcesFlusher"

    if-nez v0, :cond_1f

    .line 87
    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 88
    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 91
    goto :goto_1d

    .line 89
    :catch_17
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 95
    :cond_1f
    const/4 v0, 0x0

    .line 96
    .local v0, "drawableCache":Ljava/lang/Object;
    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_32

    .line 98
    :try_start_24
    sget-object v2, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2a} :catch_2c

    move-object v0, v1

    .line 101
    goto :goto_32

    .line 99
    :catch_2c
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_32
    :goto_32
    if-nez v0, :cond_35

    .line 106
    return-void

    .line 109
    :cond_35
    invoke-static {v0}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method private static flushNougats(Landroid/content/res/Resources;)V
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 114
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_1f

    .line 116
    :try_start_7
    const-class v0, Landroid/content/res/Resources;

    const-string v3, "mResourcesImpl"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    .line 117
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    .line 120
    goto :goto_1d

    .line 118
    :catch_17
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1d
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplFieldFetched:Z

    .line 124
    :cond_1f
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_24

    .line 126
    return-void

    .line 129
    :cond_24
    const/4 v0, 0x0

    .line 131
    .local v0, "resourcesImpl":Ljava/lang/Object;
    :try_start_25
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sResourcesImplField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2b} :catch_2d

    move-object v0, v3

    .line 134
    goto :goto_33

    .line 132
    :catch_2d
    move-exception v3

    .line 133
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_33
    if-nez v0, :cond_36

    .line 138
    return-void

    .line 141
    :cond_36
    sget-boolean v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    if-nez v3, :cond_54

    .line 143
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mDrawableCache"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    .line 144
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3a .. :try_end_4b} :catch_4c

    .line 147
    goto :goto_52

    .line 145
    :catch_4c
    move-exception v3

    .line 146
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_52
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheFieldFetched:Z

    .line 151
    :cond_54
    const/4 v1, 0x0

    .line 152
    .local v1, "drawableCache":Ljava/lang/Object;
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_67

    .line 154
    :try_start_59
    sget-object v3, Landroidx/appcompat/app/ResourcesFlusher;->sDrawableCacheField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_5f} :catch_61

    move-object v1, v2

    .line 157
    goto :goto_67

    .line 155
    :catch_61
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :cond_67
    :goto_67
    if-eqz v1, :cond_6c

    .line 161
    invoke-static {v1}, Landroidx/appcompat/app/ResourcesFlusher;->flushThemedResourcesCache(Ljava/lang/Object;)V

    .line 163
    :cond_6c
    return-void
.end method

.method private static flushThemedResourcesCache(Ljava/lang/Object;)V
    .registers 5
    .param p0, "cache"    # Ljava/lang/Object;

    .line 167
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_18

    .line 169
    :try_start_7
    const-string v0, "android.content.res.ThemedResourceCache"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_f} :catch_10

    .line 172
    goto :goto_16

    .line 170
    :catch_10
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_16
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazzFetched:Z

    .line 176
    :cond_18
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    if-nez v0, :cond_1d

    .line 178
    return-void

    .line 181
    :cond_1d
    sget-boolean v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    if-nez v0, :cond_39

    .line 183
    :try_start_21
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCacheClazz:Ljava/lang/Class;

    const-string v3, "mUnthemedEntries"

    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 185
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_30
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_30} :catch_31

    .line 188
    goto :goto_37

    .line 186
    :catch_31
    move-exception v0

    .line 187
    .local v0, "ee":Ljava/lang/NoSuchFieldException;
    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "ee":Ljava/lang/NoSuchFieldException;
    :goto_37
    sput-boolean v1, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesFieldFetched:Z

    .line 192
    :cond_39
    sget-object v0, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3e

    .line 194
    return-void

    .line 197
    :cond_3e
    const/4 v0, 0x0

    .line 199
    .local v0, "unthemedEntries":Landroid/util/LongSparseArray;
    :try_start_3f
    sget-object v1, Landroidx/appcompat/app/ResourcesFlusher;->sThemedResourceCache_mUnthemedEntriesField:Ljava/lang/reflect/Field;

    .line 200
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_47} :catch_49

    move-object v0, v1

    .line 203
    goto :goto_4f

    .line 201
    :catch_49
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_4f
    if-eqz v0, :cond_54

    .line 206
    invoke-static {v0}, Landroidx/appcompat/app/ResourcesFlusher$Api16Impl;->clear(Landroid/util/LongSparseArray;)V

    .line 208
    :cond_54
    return-void
.end method
