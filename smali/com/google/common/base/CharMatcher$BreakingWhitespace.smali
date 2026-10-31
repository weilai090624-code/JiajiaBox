.class final Lcom/google/common/base/CharMatcher$BreakingWhitespace;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakingWhitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1247
    new-instance v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$BreakingWhitespace;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1245
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1245
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public matches(C)Z
    .registers 5
    .param p1, "c"    # C

    .line 1251
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_12

    .line 1268
    const/16 v2, 0x2000

    if-lt p1, v2, :cond_11

    const/16 v2, 0x200a

    if-gt p1, v2, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    .line 1266
    :sswitch_f
    return v0

    .line 1264
    :sswitch_10
    return v1

    .line 1268
    :cond_11
    :goto_11
    return v0

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xb -> :sswitch_10
        0xc -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x85 -> :sswitch_10
        0x1680 -> :sswitch_10
        0x2007 -> :sswitch_f
        0x2028 -> :sswitch_10
        0x2029 -> :sswitch_10
        0x205f -> :sswitch_10
        0x3000 -> :sswitch_10
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1274
    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method
