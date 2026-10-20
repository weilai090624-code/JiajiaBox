.class final Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProfileManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/database/ProfileManager;->deleteRules(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileManager.kt\nio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,240:1\n1863#2,2:241\n*S KotlinDebug\n*F\n+ 1 ProfileManager.kt\nio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2\n*L\n178#1:241,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.database.ProfileManager$deleteRules$2"
    f = "ProfileManager.kt"
    i = {
        0x0
    }
    l = {
        0xb3
    }
    m = "invokeSuspend"
    n = {
        "$this$ruleIterator"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->$rules:Ljava/util/List;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->$rules:Ljava/util/List;

    invoke-direct {v0, v1, p2}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->invoke(Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget v1, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->label:I

    packed-switch v1, :pswitch_data_0

    .end local p0    # "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p0    # "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "$i$f$forEach":I
    const/4 v2, 0x0

    .local v2, "$i$a$-forEach-ProfileManager$deleteRules$2$1":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    .local v4, "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, p0

    goto :goto_1

    .end local v1    # "$i$f$forEach":I
    .end local v2    # "$i$a$-forEach-ProfileManager$deleteRules$2$1":I
    .end local v4    # "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    .line 178
    .local v1, "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->$rules:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 241
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, p0

    move-object v10, v4

    move-object v4, v1

    move v1, v3

    move-object v3, v10

    .end local v3    # "$i$f$forEach":I
    .end local p0    # "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    .local v1, "$i$f$forEach":I
    .local v2, "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    .restart local v4    # "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    check-cast v5, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local v5, "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v6, 0x0

    .line 179
    .local v6, "$i$a$-forEach-ProfileManager$deleteRules$2$1":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/RuleEntity;->getId()J

    move-result-wide v7

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->L$1:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v2, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;->label:I

    invoke-interface {v4, v7, v8, v2}, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;->onRemoved(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    if-ne v5, v0, :cond_0

    .line 177
    return-object v0

    .line 179
    :cond_0
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v6

    .line 180
    .end local v4    # "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    .end local v6    # "$i$a$-forEach-ProfileManager$deleteRules$2$1":I
    .local v2, "$i$a$-forEach-ProfileManager$deleteRules$2$1":I
    .local v3, "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    .local v5, "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    :goto_1
    nop

    .line 241
    .end local v2    # "$i$a$-forEach-ProfileManager$deleteRules$2$1":I
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_0

    .line 242
    .end local v3    # "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    .end local v5    # "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    .local v2, "this":Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;
    .restart local v4    # "$this$ruleIterator":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    :cond_1
    nop

    .line 181
    .end local v1    # "$i$f$forEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
