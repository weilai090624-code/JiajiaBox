.class public final enum Lorg/yaml/snakeyaml/introspector/BeanAccess;
.super Ljava/lang/Enum;
.source "BeanAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/introspector/BeanAccess;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field public static final enum DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field public static final enum FIELD:Lorg/yaml/snakeyaml/introspector/BeanAccess;

.field public static final enum PROPERTY:Lorg/yaml/snakeyaml/introspector/BeanAccess;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 23
    new-instance v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/introspector/BeanAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 26
    new-instance v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;

    const-string v1, "FIELD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/yaml/snakeyaml/introspector/BeanAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->FIELD:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 29
    new-instance v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;

    const-string v1, "PROPERTY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/yaml/snakeyaml/introspector/BeanAccess;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->PROPERTY:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/yaml/snakeyaml/introspector/BeanAccess;

    sget-object v1, Lorg/yaml/snakeyaml/introspector/BeanAccess;->DEFAULT:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/introspector/BeanAccess;->FIELD:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    aput-object v1, v0, v3

    sget-object v1, Lorg/yaml/snakeyaml/introspector/BeanAccess;->PROPERTY:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    aput-object v1, v0, v4

    sput-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->$VALUES:[Lorg/yaml/snakeyaml/introspector/BeanAccess;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/introspector/BeanAccess;
    .registers 1

    .line 21
    sget-object v0, Lorg/yaml/snakeyaml/introspector/BeanAccess;->$VALUES:[Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/introspector/BeanAccess;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/introspector/BeanAccess;

    return-object v0
.end method
