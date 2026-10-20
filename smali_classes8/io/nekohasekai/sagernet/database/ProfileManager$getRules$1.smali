.class final Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ProfileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/database/ProfileManager;->getRules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.database.ProfileManager"
    f = "ProfileManager.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x4
    }
    l = {
        0xbc,
        0xc4,
        0xd5,
        0xdb,
        0xe2
    }
    m = "getRules"
    n = {
        "this",
        "this",
        "this",
        "country",
        "displayCountry",
        "this",
        "country",
        "displayCountry",
        "this"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$2",
        "L$3",
        "L$0",
        "L$2",
        "L$3",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/nekohasekai/sagernet/database/ProfileManager;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProfileManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->this$0:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->result:Ljava/lang/Object;

    iget v0, p0, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->this$0:Lio/nekohasekai/sagernet/database/ProfileManager;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->getRules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
