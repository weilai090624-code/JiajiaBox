.class public final Lorg/objenesis/strategy/PlatformDescription;
.super Ljava/lang/Object;
.source "PlatformDescription.java"


# static fields
.field public static final ANDROID_VERSION:I

.field public static final DALVIK:Ljava/lang/String; = "Dalvik"

.field public static final GAE_VERSION:Ljava/lang/String;

.field public static final GNU:Ljava/lang/String; = "GNU libgcj"

.field public static final HOTSPOT:Ljava/lang/String; = "Java HotSpot"

.field public static final IS_ANDROID_OPENJDK:Z

.field public static final JVM_NAME:Ljava/lang/String;

.field public static final OPENJDK:Ljava/lang/String; = "OpenJDK"

.field public static final PERC:Ljava/lang/String; = "PERC"

.field public static final SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final SUN:Ljava/lang/String; = "Java HotSpot"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VENDOR:Ljava/lang/String;

.field public static final VENDOR_VERSION:Ljava/lang/String;

.field public static final VM_INFO:Ljava/lang/String;

.field public static final VM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    nop

    .line 54
    const-string v0, "java.specification.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->SPECIFICATION_VERSION:Ljava/lang/String;

    .line 57
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->VM_VERSION:Ljava/lang/String;

    .line 60
    const-string v0, "java.vm.info"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->VM_INFO:Ljava/lang/String;

    .line 63
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->VENDOR_VERSION:Ljava/lang/String;

    .line 66
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->VENDOR:Ljava/lang/String;

    .line 69
    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    .line 72
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->getAndroidVersion()I

    move-result v0

    sput v0, Lorg/objenesis/strategy/PlatformDescription;->ANDROID_VERSION:I

    .line 75
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->getIsAndroidOpenJDK()Z

    move-result v0

    sput-boolean v0, Lorg/objenesis/strategy/PlatformDescription;->IS_ANDROID_OPENJDK:Z

    .line 78
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->getGaeRuntimeVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/objenesis/strategy/PlatformDescription;->GAE_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method public static describePlatform()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/objenesis/strategy/PlatformDescription;->SPECIFICATION_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (VM vendor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/objenesis/strategy/PlatformDescription;->VENDOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", VM vendor version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/objenesis/strategy/PlatformDescription;->VENDOR_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", JVM name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", JVM version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/objenesis/strategy/PlatformDescription;->VM_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", JVM info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/objenesis/strategy/PlatformDescription;->VM_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "desc":Ljava/lang/String;
    sget v1, Lorg/objenesis/strategy/PlatformDescription;->ANDROID_VERSION:I

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", API level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/objenesis/strategy/PlatformDescription;->ANDROID_VERSION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method private static getAndroidVersion()I
    .locals 1

    .line 165
    const-string v0, "Dalvik"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_0
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->getAndroidVersion0()I

    move-result v0

    return v0
.end method

.method private static getAndroidVersion0()I
    .locals 4

    .line 174
    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 178
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 181
    :try_start_1
    const-string v1, "SDK_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .local v1, "field":Ljava/lang/reflect/Field;
    nop

    .line 189
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    .local v2, "version":I
    nop

    .line 194
    return v2

    .line 191
    .end local v2    # "version":I
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 183
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->getOldAndroidVersion(Ljava/lang/Class;)I

    move-result v2

    return v2

    .line 176
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getGaeRuntimeVersion()Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "com.google.appengine.runtime.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getIsAndroidOpenJDK()Z
    .locals 4

    .line 124
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->getAndroidVersion()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 129
    :cond_0
    const-string v0, "java.boot.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "bootClasspath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "core-oj.jar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static getOldAndroidVersion(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 200
    .local p0, "versionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v0, "SDK"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .local v0, "field":Ljava/lang/reflect/Field;
    nop

    .line 207
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    .local v1, "version":Ljava/lang/String;
    nop

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 209
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 202
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isAfterJava11()Z
    .locals 3

    .line 149
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->isAfterJigsaw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 150
    return v1

    .line 152
    :cond_0
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->SPECIFICATION_VERSION:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "version":I
    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isAfterJigsaw()Z
    .locals 2

    .line 139
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->SPECIFICATION_VERSION:Ljava/lang/String;

    .line 140
    .local v0, "version":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isAndroidOpenJDK()Z
    .locals 1

    .line 120
    sget-boolean v0, Lorg/objenesis/strategy/PlatformDescription;->IS_ANDROID_OPENJDK:Z

    return v0
.end method

.method public static isGoogleAppEngine()Z
    .locals 1

    .line 157
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->GAE_VERSION:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThisJVM(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 111
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
