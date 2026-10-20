.class public abstract Lmoe/matsuri/nb4a/TempDatabase;
.super Landroidx/room/RoomDatabase;
.source "TempDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/matsuri/nb4a/TempDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lmoe/matsuri/nb4a/TempDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "profileCacheDao",
        "Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;",
        "Companion",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lmoe/matsuri/nb4a/TempDatabase$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lmoe/matsuri/nb4a/TempDatabase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$fAq1_qvcjN-iyarnWzlNiVTh4xk()Lmoe/matsuri/nb4a/TempDatabase;
    .locals 1

    invoke-static {}, Lmoe/matsuri/nb4a/TempDatabase;->instance_delegate$lambda$1()Lmoe/matsuri/nb4a/TempDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jBS0XzeN0pTFn0UJEeWiShJ_kLU(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lmoe/matsuri/nb4a/TempDatabase;->instance_delegate$lambda$1$lambda$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmoe/matsuri/nb4a/TempDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmoe/matsuri/nb4a/TempDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmoe/matsuri/nb4a/TempDatabase;->Companion:Lmoe/matsuri/nb4a/TempDatabase$Companion;

    .line 16
    new-instance v0, Lmoe/matsuri/nb4a/TempDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/TempDatabase$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/TempDatabase;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 11
    return-void
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 11
    sget-object v0, Lmoe/matsuri/nb4a/TempDatabase;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final instance_delegate$lambda$1()Lmoe/matsuri/nb4a/TempDatabase;
    .locals 2

    .line 17
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lmoe/matsuri/nb4a/TempDatabase;

    invoke-static {v0, v1}, Landroidx/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 20
    new-instance v1, Lmoe/matsuri/nb4a/TempDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/TempDatabase$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$Builder;->setQueryExecutor(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lmoe/matsuri/nb4a/TempDatabase;

    return-object v0
.end method

.method private static final instance_delegate$lambda$1$lambda$0(Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "it"    # Ljava/lang/Runnable;

    .line 20
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lmoe/matsuri/nb4a/TempDatabase$Companion$instance$2$1$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lmoe/matsuri/nb4a/TempDatabase$Companion$instance$2$1$1;-><init>(Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public abstract profileCacheDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;
.end method
