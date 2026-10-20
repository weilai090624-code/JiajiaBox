.class public final Lio/nekohasekai/sagernet/database/RuleEntity$Dao$DefaultImpls;
.super Ljava/lang/Object;
.source "RuleEntity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/database/RuleEntity$Dao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic enabledRules$default(Lio/nekohasekai/sagernet/database/RuleEntity$Dao;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 74
    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 75
    const/4 p1, 0x1

    .line 74
    :cond_0
    invoke-interface {p0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->enabledRules(Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: enabledRules"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
