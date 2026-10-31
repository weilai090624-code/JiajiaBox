.class final Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$2;
.super Ljava/lang/ThreadLocal;
.source "UnicodeEscaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 500
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .line 500
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/external/com/google/gdata/util/common/base/UnicodeEscaper$2;->initialValue()[C

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()[C
    .registers 2

    .line 503
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method
