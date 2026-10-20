.class synthetic Lorg/yaml/snakeyaml/introspector/PropertyUtils$1;
.super Ljava/lang/Object;
.source "PropertyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/introspector/PropertyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$yaml$snakeyaml$introspector$BeanAccess:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    invoke-static {}, Lorg/yaml/snakeyaml/introspector/BeanAccess;->values()[Lorg/yaml/snakeyaml/introspector/BeanAccess;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils$1;->$SwitchMap$org$yaml$snakeyaml$introspector$BeanAccess:[I

    :try_start_0
    sget-object v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils$1;->$SwitchMap$org$yaml$snakeyaml$introspector$BeanAccess:[I

    sget-object v1, Lorg/yaml/snakeyaml/introspector/BeanAccess;->FIELD:Lorg/yaml/snakeyaml/introspector/BeanAccess;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/introspector/BeanAccess;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
