.class public final Lj$/jdk/internal/util/StaticProperty;
.super Ljava/lang/Object;
.source "StaticProperty.java"


# static fields
.field private static final JAVA_HOME:Ljava/lang/String;

.field private static final JDK_SERIAL_FILTER:Ljava/lang/String;

.field private static final USER_DIR:Ljava/lang/String;

.field private static final USER_HOME:Ljava/lang/String;

.field private static final USER_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "java.home"

    invoke-static {v0}, Lj$/jdk/internal/util/StaticProperty;->initProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/jdk/internal/util/StaticProperty;->JAVA_HOME:Ljava/lang/String;

    .line 42
    const-string v0, "user.home"

    invoke-static {v0}, Lj$/jdk/internal/util/StaticProperty;->initProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/jdk/internal/util/StaticProperty;->USER_HOME:Ljava/lang/String;

    .line 43
    const-string v0, "user.dir"

    invoke-static {v0}, Lj$/jdk/internal/util/StaticProperty;->initProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/jdk/internal/util/StaticProperty;->USER_DIR:Ljava/lang/String;

    .line 44
    const-string v0, "user.name"

    invoke-static {v0}, Lj$/jdk/internal/util/StaticProperty;->initProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/jdk/internal/util/StaticProperty;->USER_NAME:Ljava/lang/String;

    .line 45
    const-string v0, "jdk.serialFilter"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj$/jdk/internal/util/StaticProperty;->JDK_SERIAL_FILTER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .line 50
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 54
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static javaHome()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lj$/jdk/internal/util/StaticProperty;->JAVA_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public static jdkSerialFilter()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lj$/jdk/internal/util/StaticProperty;->JDK_SERIAL_FILTER:Ljava/lang/String;

    return-object v0
.end method

.method public static userDir()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lj$/jdk/internal/util/StaticProperty;->USER_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static userHome()Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lj$/jdk/internal/util/StaticProperty;->USER_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public static userName()Ljava/lang/String;
    .locals 1

    .line 106
    sget-object v0, Lj$/jdk/internal/util/StaticProperty;->USER_NAME:Ljava/lang/String;

    return-object v0
.end method
