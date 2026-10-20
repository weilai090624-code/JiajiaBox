.class public final Lio/nekohasekai/sagernet/ui/AppListActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "AppListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;,
        Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;,
        Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;,
        Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity\n+ 2 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,322:1\n30#2:323\n65#3,16:324\n93#3,3:340\n*S KotlinDebug\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity\n*L\n168#1:323\n219#1:324,16\n219#1:340,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 22\u00020\u0001:\u00042345B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0013H\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0003J\u0012\u0010\u001e\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020\u001bH\u0016J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020+H\u0016J\u001a\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0008\u00101\u001a\u00020\u0017H\u0014R#\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AppListActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "<init>",
        "()V",
        "loading",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "getLoading",
        "()Landroid/view/View;",
        "loading$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;",
        "proxiedUids",
        "Landroid/util/SparseBooleanArray;",
        "loader",
        "Lkotlinx/coroutines/Job;",
        "apps",
        "",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
        "appsAdapter",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;",
        "initProxiedUids",
        "",
        "str",
        "",
        "isProxiedApp",
        "",
        "app",
        "loadApps",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "sysApps",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onSupportNavigateUp",
        "supportNavigateUpTo",
        "upIntent",
        "Landroid/content/Intent;",
        "onKeyUp",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onDestroy",
        "Companion",
        "ProxiedApp",
        "AppViewHolder",
        "AppsAdapter",
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
.field public static final Companion:Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;

.field private static final SWITCH:Ljava/lang/String; = "switch"


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
            ">;"
        }
    .end annotation
.end field

.field private final appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

.field private binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

.field private loader:Lkotlinx/coroutines/Job;

.field private final loading$delegate:Lkotlin/Lazy;

.field private final proxiedUids:Landroid/util/SparseBooleanArray;

.field private sysApps:Z


# direct methods
.method public static synthetic $r8$lambda$bdTJUtPRh0w6a4zdnlotwwxEfdQ(Lio/nekohasekai/sagernet/ui/AppListActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity;->onCreate$lambda$5(Lio/nekohasekai/sagernet/ui/AppListActivity;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2Y8RdrQUIgfPIFPF0hnBOxnFgM(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->loading_delegate$lambda$0(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rPqwJ3GSPwqswtJ0V-yz_oIRBsc(Lio/nekohasekai/sagernet/ui/AppListActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->onCreate$lambda$2(Lio/nekohasekai/sagernet/ui/AppListActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/AppListActivity;->Companion:Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>()V

    .line 154
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->loading$delegate:Lkotlin/Lazy;

    .line 157
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;

    .line 159
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->apps:Ljava/util/List;

    .line 160
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    .line 44
    return-void
.end method

.method public static final synthetic access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->apps:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getAppsAdapter$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    return-object v0
.end method

.method public static final synthetic access$getBinding$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    return-object v0
.end method

.method public static final synthetic access$getLoading(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 44
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getLoading()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getProxiedUids$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public static final synthetic access$getSysApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Z
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 44
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->sysApps:Z

    return v0
.end method

.method public static final synthetic access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p1, "app"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 44
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p1, "<set-?>"    # Ljava/util/List;

    .line 44
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->apps:Ljava/util/List;

    return-void
.end method

.method private final getLoading()Landroid/view/View;
    .locals 1

    .line 154
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->loading$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final initProxiedUids(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 164
    sget-object v0, Lio/nekohasekai/sagernet/ui/AppListActivity;->Companion:Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;->access$getCachedApps(Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;)Ljava/util/Map;

    move-result-object v0

    .line 165
    .local v0, "apps":Ljava/util/Map;
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    .local v2, "line":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_1

    goto :goto_0

    .line 167
    .local v3, "app":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 168
    .local v4, "uid":I
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;

    .local v5, "$this$set$iv":Landroid/util/SparseBooleanArray;
    const/4 v6, 0x1

    .local v6, "value$iv":Z
    const/4 v7, 0x0

    .line 323
    .local v7, "$i$f$set":I
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "app":Landroid/content/pm/PackageInfo;
    .end local v4    # "uid":I
    .end local v5    # "$this$set$iv":Landroid/util/SparseBooleanArray;
    .end local v6    # "value$iv":Z
    .end local v7    # "$i$f$set":I
    goto :goto_0

    .line 170
    :cond_2
    return-void
.end method

.method static synthetic initProxiedUids$default(Lio/nekohasekai/sagernet/ui/AppListActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 162
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/DataStore;->getRoutePackages()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->initProxiedUids(Ljava/lang/String;)V

    return-void
.end method

.method private final isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z
    .locals 2
    .param p1, "app"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    .line 172
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->proxiedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private final loadApps()V
    .locals 3

    .line 176
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->loader:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 177
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v2, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;

    invoke-direct {v2, p0, v1}, Lio/nekohasekai/sagernet/ui/AppListActivity$loadApps$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenCreated(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->loader:Lkotlinx/coroutines/Job;

    .line 189
    return-void
.end method

.method private static final loading_delegate$lambda$0(Lio/nekohasekai/sagernet/ui/AppListActivity;)Landroid/view/View;
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 154
    const v0, 0x7f0a0192

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static final onCreate$lambda$2(Lio/nekohasekai/sagernet/ui/AppListActivity;Landroid/view/View;)V
    .locals 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$onCreate_u24lambda_u242_u24lambda_u241":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 200
    .local v2, "$i$a$-apply-AppListActivity$onCreate$1$intent$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "package"

    invoke-static {v5, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    nop

    .line 199
    .end local v1    # "$this$onCreate_u24lambda_u242_u24lambda_u241":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-AppListActivity$onCreate$1$intent$1":I
    nop

    .line 198
    nop

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method private static final onCreate$lambda$5(Lio/nekohasekai/sagernet/ui/AppListActivity;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p2, "isChecked"    # Z

    .line 225
    iput-boolean p2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->sysApps:Z

    .line 226
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->search:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 192
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    .line 195
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->setContentView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->appPlaceholder:Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppPlaceholderBinding;->openSettings:Lcom/google/android/material/button/MaterialButton;

    new-instance v3, Lio/nekohasekai/sagernet/ui/AppListActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    invoke-virtual {v0, v3}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 206
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .local v0, "$this$onCreate_u24lambda_u243":Landroidx/appcompat/app/ActionBar;
    const/4 v4, 0x0

    .line 207
    .local v4, "$i$a$-apply-AppListActivity$onCreate$2":I
    const v5, 0x7f13026b

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 208
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 209
    const v5, 0x7f080107

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 210
    nop

    .line 206
    .end local v0    # "$this$onCreate_u24lambda_u243":Landroidx/appcompat/app/ActionBar;
    .end local v4    # "$i$a$-apply-AppListActivity$onCreate$2":I
    nop

    .line 212
    :cond_3
    invoke-static {p0, v2, v3, v2}, Lio/nekohasekai/sagernet/ui/AppListActivity;->initProxiedUids$default(Lio/nekohasekai/sagernet/ui/AppListActivity;Ljava/lang/String;ILjava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v4}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 214
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 215
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 217
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->getRoot()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v3, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v3, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 219
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->search:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "search"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 324
    .local v0, "$this$addTextChangedListener_u24default$iv":Landroid/widget/TextView;
    nop

    .line 330
    nop

    .line 324
    nop

    .line 336
    nop

    .line 324
    const/4 v3, 0x0

    .line 339
    .local v3, "$i$f$addTextChangedListener":I
    new-instance v4, Lio/nekohasekai/sagernet/ui/AppListActivity$onCreate$$inlined$addTextChangedListener$default$1;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$onCreate$$inlined$addTextChangedListener$default$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    .line 340
    .local v4, "textWatcher$iv":Lio/nekohasekai/sagernet/ui/AppListActivity$onCreate$$inlined$addTextChangedListener$default$1;
    move-object v5, v4

    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 342
    move-object v0, v4

    check-cast v0, Landroid/text/TextWatcher;

    .line 223
    .end local v0    # "$this$addTextChangedListener_u24default$iv":Landroid/widget/TextView;
    .end local v3    # "$i$f$addTextChangedListener":I
    .end local v4    # "textWatcher$iv":Lio/nekohasekai/sagernet/ui/AppListActivity$onCreate$$inlined$addTextChangedListener$default$1;
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->showSystemApps:Lcom/google/android/material/chip/Chip;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->sysApps:Z

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 224
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->showSystemApps:Lcom/google/android/material/chip/Chip;

    new-instance v1, Lio/nekohasekai/sagernet/ui/AppListActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->loadApps()V

    .line 230
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .line 318
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->loader:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 319
    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onDestroy()V

    .line 320
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 313
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    .line 314
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/MaterialToolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/MaterialToolbar;->hideOverflowMenu()Z

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->toolbar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/MaterialToolbar;->showOverflowMenu()Z

    move-result v0

    goto :goto_2

    .line 315
    :cond_4
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_2
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 242
    :sswitch_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;

    invoke-direct {v0, p0, v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 258
    return v2

    .line 284
    :sswitch_1
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getClipboard()Landroid/content/ClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    .line 283
    :goto_0
    nop

    .line 285
    .local v0, "proxiedAppString":Ljava/lang/String;
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_5

    .line 286
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v5

    .line 287
    .local v5, "i":I
    nop

    .line 288
    if-gez v5, :cond_3

    :try_start_0
    const-string v6, ""

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .local v6, "apps":Ljava/lang/String;
    :goto_3
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7, v6}, Lio/nekohasekai/sagernet/database/DataStore;->setRoutePackages(Ljava/lang/String;)V

    .line 291
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v7, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v4

    :cond_4
    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    check-cast v7, Landroid/view/View;

    .line 290
    const v8, 0x7f130030

    invoke-static {v7, v8, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v7

    .line 292
    invoke-virtual {v7}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 293
    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/AppListActivity;->initProxiedUids(Ljava/lang/String;)V

    .line 294
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->appsAdapter:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->getItemCount()I

    move-result v8

    const-string v9, "switch"

    invoke-virtual {v7, v3, v8, v9}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return v2

    .line 296
    .end local v6    # "apps":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 299
    .end local v5    # "i":I
    :cond_5
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v2, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v4, v2

    :goto_4
    iget-object v1, v4, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    check-cast v1, Landroid/view/View;

    const v2, 0x7f13002e

    invoke-static {v1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_7

    .line 273
    .end local v0    # "proxiedAppString":Ljava/lang/String;
    :sswitch_2
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "false\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getRoutePackages()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/SagerNet$Companion;->trySetPrimaryClip(Ljava/lang/String;)Z

    move-result v0

    .line 275
    .local v0, "success":Z
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AppListActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;

    if-nez v5, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object v4, v5

    :goto_5
    iget-object v1, v4, Lio/nekohasekai/sagernet/databinding/LayoutAppListBinding;->list:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    check-cast v1, Landroid/view/View;

    .line 276
    if-eqz v0, :cond_8

    const v4, 0x7f130029

    goto :goto_6

    :cond_8
    const v4, 0x7f130027

    .line 277
    :goto_6
    nop

    .line 274
    invoke-static {v1, v4, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 279
    return v2

    .line 262
    .end local v0    # "success":Z
    :sswitch_3
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$2;

    invoke-direct {v0, p0, v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$onOptionsItemSelected$2;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 302
    :goto_7
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0040 -> :sswitch_3
        0x7f0a0050 -> :sswitch_2
        0x7f0a0057 -> :sswitch_1
        0x7f0a0059 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 306
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->finish()V

    .line 307
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 1
    .param p1, "upIntent"    # Landroid/content/Intent;

    const-string v0, "upIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    return-void
.end method
