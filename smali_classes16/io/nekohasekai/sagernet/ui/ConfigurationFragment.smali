.class public final Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "ConfigurationFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;,
        Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;,
        Lio/nekohasekai/sagernet/ui/ConfigurationFragment$SelectCallback;,
        Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0004WXYZB)\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010*\u001a\u0004\u0018\u00010+J\u0008\u00100\u001a\u000201H\u0002J\u0010\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u00072\u0006\u00103\u001a\u000204H\u0016J\u0012\u00106\u001a\u0002012\u0008\u00107\u001a\u0004\u0018\u000108H\u0017J\u001a\u00109\u001a\u0002012\u0006\u0010:\u001a\u00020;2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0018\u0010<\u001a\u0002012\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u000204H\u0016J\u0008\u0010@\u001a\u000201H\u0016J\u0018\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020DH\u0016J\u001c\u0010H\u001a\u0002012\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020K0JH\u0086@\u00a2\u0006\u0002\u0010LJ\u0010\u0010M\u001a\u00020\u00072\u0006\u0010N\u001a\u00020OH\u0016J\u000e\u0010P\u001a\u0002012\u0006\u0010Q\u001a\u00020\u0007J\u0006\u0010R\u001a\u000201J\u0010\u0010T\u001a\u0002012\u0006\u0010U\u001a\u00020VH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00060\u0015R\u00020\u0000X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u001b\u0010&\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010)\u001a\u0004\u0008\'\u0010\u000fR\u0011\u0010,\u001a\u00020-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u001c\u0010E\u001a\u0010\u0012\u000c\u0012\n G*\u0004\u0018\u000104040FX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010S\u001a\u0010\u0012\u000c\u0012\n G*\u0004\u0018\u000104040FX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006["
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "select",
        "",
        "selectedItem",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "titleRes",
        "",
        "<init>",
        "(ZLio/nekohasekai/sagernet/database/ProxyEntity;I)V",
        "getSelect",
        "()Z",
        "getSelectedItem",
        "()Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "getTitleRes",
        "()I",
        "adapter",
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;",
        "getAdapter",
        "()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;",
        "setAdapter",
        "(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;)V",
        "tabLayout",
        "Lcom/google/android/material/tabs/TabLayout;",
        "getTabLayout",
        "()Lcom/google/android/material/tabs/TabLayout;",
        "setTabLayout",
        "(Lcom/google/android/material/tabs/TabLayout;)V",
        "groupPager",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getGroupPager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "setGroupPager",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
        "alwaysShowAddress",
        "getAlwaysShowAddress",
        "alwaysShowAddress$delegate",
        "Lkotlin/Lazy;",
        "getCurrentGroupFragment",
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;",
        "updateSelectedCallback",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "getUpdateSelectedCallback",
        "()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "syncGlassInset",
        "",
        "onQueryTextChange",
        "query",
        "",
        "onQueryTextSubmit",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "onPreferenceDataStoreChanged",
        "store",
        "Landroidx/preference/PreferenceDataStore;",
        "key",
        "onDestroy",
        "onKeyDown",
        "ketCode",
        "event",
        "Landroid/view/KeyEvent;",
        "importFile",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "kotlin.jvm.PlatformType",
        "import",
        "proxies",
        "",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onMenuItemClick",
        "item",
        "Landroid/view/MenuItem;",
        "pingTest",
        "icmpPing",
        "urlTest",
        "exportConfig",
        "cancelSearch",
        "searchView",
        "Landroidx/appcompat/widget/SearchView;",
        "SelectCallback",
        "TestDialog",
        "GroupPagerAdapter",
        "GroupFragment",
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


# instance fields
.field public adapter:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

.field private final alwaysShowAddress$delegate:Lkotlin/Lazy;

.field private final exportConfig:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public groupPager:Landroidx/viewpager2/widget/ViewPager2;

.field private final importFile:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final select:Z

.field private final selectedItem:Lio/nekohasekai/sagernet/database/ProxyEntity;

.field public tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field private final titleRes:I

.field private final updateSelectedCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method public static synthetic $r8$lambda$-rpXmlZ8-Tp4Ceew_LFUtgHVixQ(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->pingTest$lambda$10(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0Fvts30jlrC3ORMuRA-HpHMhW3I(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->urlTest$lambda$13(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2VwKzQFelfArsuhstuJobQpgQpE(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->importFile$lambda$8(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4GHauY-7jKE9m-1GlJ4c2xE54wc(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->pingTest$lambda$11(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$71tMwzuvwgZoE8mS4M24RDV7C_Y(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->onViewCreated$lambda$6(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9DPXwRydYJmbiJGnJjUNSsPoTOY(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroidx/appcompat/widget/SearchView;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->onViewCreated$lambda$3(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroidx/appcompat/widget/SearchView;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Epj8FdJh9rdOkq78AFMjQAzprTA(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->onViewCreated$lambda$5$lambda$4(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GeFhXXxwc8pE6E54k06NlJTx4d8(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->urlTest$lambda$12(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IiPMWy-CBtDaaY64q9KSlLHvX7Y()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->alwaysShowAddress_delegate$lambda$0()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$Il4w_GOOu-Qe45kHQOiMIRpE-FI(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->exportConfig$lambda$14(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TOPzBY7LwEQWDfHaKu2nlpMYyoE(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->onViewCreated$lambda$5(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUONEOMxsxyIgHKdjHNCaZ0Uw4w(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->onViewCreated$lambda$2(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfn0kg3UzzDlNrtZOPvxoJHPXiI(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->syncGlassInset$lambda$1(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "select"    # Z

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    return-void
.end method

.method public constructor <init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;)V
    .locals 6
    .param p1, "select"    # Z
    .param p2, "selectedItem"    # Lio/nekohasekai/sagernet/database/ProxyEntity;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    return-void
.end method

.method public constructor <init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;I)V
    .locals 3
    .param p1, "select"    # Z
    .param p2, "selectedItem"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p3, "titleRes"    # I

    .line 120
    const v0, 0x7f0d0047

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    .line 119
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->select:Z

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->selectedItem:Lio/nekohasekai/sagernet/database/ProxyEntity;

    iput p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->titleRes:I

    .line 134
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->alwaysShowAddress$delegate:Lkotlin/Lazy;

    .line 145
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$updateSelectedCallback$1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$updateSelectedCallback$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->updateSelectedCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 304
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda8;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->importFile:Landroidx/activity/result/ActivityResultLauncher;

    .line 1735
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$CreateDocument;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda9;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {p0, v0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->exportConfig:Landroidx/activity/result/ActivityResultLauncher;

    .line 118
    return-void
.end method

.method public synthetic constructor <init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 118
    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 119
    const/4 p1, 0x0

    .line 118
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 119
    const/4 p2, 0x0

    .line 118
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 119
    const/4 p3, 0x0

    .line 118
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;-><init>(ZLio/nekohasekai/sagernet/database/ProxyEntity;I)V

    .line 120
    return-void
.end method

.method public static final synthetic access$getExportConfig$p(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 118
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->exportConfig:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public static final synthetic access$syncGlassInset(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 0
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 118
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->syncGlassInset()V

    return-void
.end method

.method private static final alwaysShowAddress_delegate$lambda$0()Z
    .locals 1

    .line 134
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getAlwaysShowAddress()Z

    move-result v0

    return v0
.end method

.method private final cancelSearch(Landroidx/appcompat/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroidx/appcompat/widget/SearchView;

    .line 1759
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onActionViewCollapsed()V

    .line 1760
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1761
    return-void
.end method

.method private static final exportConfig$lambda$14(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "data"    # Landroid/net/Uri;

    .line 1736
    if-eqz p1, :cond_0

    .line 1737
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$exportConfig$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$exportConfig$1$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1756
    :cond_0
    return-void
.end method

.method private static final importFile$lambda$8(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "file"    # Landroid/net/Uri;

    .line 305
    if-eqz p1, :cond_0

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$importFile$1$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 348
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$2(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 203
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 204
    return-void
.end method

.method private static final onViewCreated$lambda$3(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroidx/appcompat/widget/SearchView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "$searchView"    # Landroidx/appcompat/widget/SearchView;
    .param p3, "hasFocus"    # Z

    .line 213
    if-nez p3, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->cancelSearch(Landroidx/appcompat/widget/SearchView;)V

    .line 216
    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$5(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p2, "position"    # I

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 230
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 232
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 235
    return-void
.end method

.method private static final onViewCreated$lambda$5$lambda$4(Landroid/view/View;)Z
    .locals 1
    .param p0, "it"    # Landroid/view/View;

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method private static final onViewCreated$lambda$6(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroid/view/View;)V
    .locals 10
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "it"    # Landroid/view/View;

    .line 240
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getCurrentGroupFragment()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    move-result-object v0

    .line 242
    .local v0, "fragment":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    if-eqz v0, :cond_3

    .line 243
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->selectedItem:Lio/nekohasekai/sagernet/database/ProxyEntity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v1

    .line 245
    .local v1, "selectedProxy":J
    :goto_0
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationAdapter;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationAdapter;->getConfigurationIdList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 244
    nop

    .line 246
    .local v3, "selectedProfileIndex":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 247
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getLayoutManager()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v4

    .line 248
    .local v4, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    .line 249
    .local v6, "first":I
    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v7

    .line 251
    .local v7, "last":I
    const/4 v8, 0x1

    if-gt v6, v3, :cond_1

    if-gt v3, v7, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_2

    .line 252
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getConfigurationListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-static {v5, v3, v8}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->scrollTo(Landroidx/recyclerview/widget/RecyclerView;IZ)V

    .line 253
    return-void

    .line 258
    .end local v4    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v6    # "first":I
    .end local v7    # "last":I
    :cond_2
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getConfigurationListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v5, v6, v7}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->scrollTo$default(Landroidx/recyclerview/widget/RecyclerView;IZILjava/lang/Object;)V

    .line 261
    .end local v1    # "selectedProxy":J
    .end local v3    # "selectedProfileIndex":I
    :cond_3
    return-void
.end method

.method private static final pingTest$lambda$10(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)Lkotlin/Unit;
    .locals 2
    .param p0, "$test"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    .param p1, "$dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "$mainJob"    # Lkotlinx/coroutines/Job;
    .param p3, "$testJobs"    # Ljava/util/List;

    .line 828
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getDialogStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 829
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 830
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$1$1;-><init>(Lkotlinx/coroutines/Job;Ljava/util/List;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 843
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final pingTest$lambda$11(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Lkotlin/Unit;
    .locals 4
    .param p0, "$test"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    .param p1, "$dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p3, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 845
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getDialogStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 846
    new-instance v0, Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

    .line 847
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f1300a1

    invoke-virtual {p3, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-direct {v0, v1, v2}, Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setNotification(Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;)V

    .line 850
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->hide()V

    .line 851
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final syncGlassInset()V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void
.end method

.method private static final syncGlassInset$lambda$1(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 162
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getHeight()I

    move-result v0

    .line 164
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 163
    :goto_0
    add-int/2addr v0, v1

    .line 165
    .local v0, "top":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v2, v2}, Landroidx/viewpager2/widget/ViewPager2;->setPadding(IIII)V

    .line 167
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setClipToPadding(Z)V

    .line 168
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setClipChildren(Z)V

    .line 170
    :cond_2
    return-void
.end method

.method private static final urlTest$lambda$12(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)Lkotlin/Unit;
    .locals 2
    .param p0, "$test"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    .param p1, "$dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "$mainJob"    # Lkotlinx/coroutines/Job;
    .param p3, "$testJobs"    # Ljava/util/List;

    .line 897
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getDialogStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 898
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 899
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$1$1;-><init>(Lkotlinx/coroutines/Job;Ljava/util/List;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 912
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final urlTest$lambda$13(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)Lkotlin/Unit;
    .locals 4
    .param p0, "$test"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    .param p1, "$dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p3, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 914
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getDialogStatus()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 915
    new-instance v0, Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;

    .line 916
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f1300a1

    invoke-virtual {p3, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-direct {v0, v1, v2}, Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setNotification(Lmoe/matsuri/nb4a/ui/ConnectionTestNotification;)V

    .line 919
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->hide()V

    .line 920
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->adapter:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAlwaysShowAddress()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->alwaysShowAddress$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getCurrentGroupFragment()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    .locals 4

    .line 137
    nop

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedGroup()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->e(Ljava/lang/Throwable;)V

    .line 141
    const/4 v1, 0x0

    move-object v0, v1

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public final getGroupPager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->groupPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "groupPager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSelect()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->select:Z

    return v0
.end method

.method public final getSelectedItem()Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->selectedItem:Lio/nekohasekai/sagernet/database/ProxyEntity;

    return-object v0
.end method

.method public final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "tabLayout"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitleRes()I
    .locals 1

    .line 119
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->titleRes:I

    return v0
.end method

.method public final getUpdateSelectedCallback()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->updateSelectedCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object v0
.end method

.method public final import(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 350
    iget v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-wide v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->J$0:J

    .local v3, "targetId":J
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .local v5, "proxies":Ljava/util/List;
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .local v6, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v9, v3

    move-object v11, v5

    move-object v12, v6

    goto :goto_2

    .end local v3    # "targetId":J
    .end local v5    # "proxies":Ljava/util/List;
    .end local v6    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 351
    .local v3, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .local p1, "proxies":Ljava/util/List;
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroupForImport()J

    move-result-wide v4

    .line 352
    .local v4, "targetId":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v11, p1

    move-object v12, v3

    move-wide v9, v4

    move-object p1, v6

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .end local v4    # "targetId":J
    .end local p1    # "proxies":Ljava/util/List;
    .local v9, "targetId":J
    .local v11, "proxies":Ljava/util/List;
    .local v12, "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 353
    .local v3, "proxy":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    sget-object v4, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iput-object v12, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$2:Ljava/lang/Object;

    iput-wide v9, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->label:I

    invoke-virtual {v4, v9, v10, v3, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->createProfile(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "proxy":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    if-ne v3, v2, :cond_1

    .line 350
    return-object v2

    .line 353
    :cond_1
    :goto_2
    goto :goto_1

    .line 355
    :cond_2
    new-instance p1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$2;

    const/4 v8, 0x0

    move-object v3, p1

    move-wide v4, v9

    move-object v6, v12

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$2;-><init>(JLio/nekohasekai/sagernet/ui/ConfigurationFragment;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$import$1;->label:I

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v9    # "targetId":J
    .end local v11    # "proxies":Ljava/util/List;
    .end local v12    # "this":Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    if-ne p1, v2, :cond_3

    .line 350
    return-object v2

    .line 364
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 182
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 186
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setReorderingAllowed(Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 187
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 188
    move-object v1, p0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->attach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 191
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 285
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->unregisterChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 287
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->adapter:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->removeListener(Lio/nekohasekai/sagernet/database/GroupManager$Listener;)V

    .line 289
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$Listener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->removeListener(Lio/nekohasekai/sagernet/database/ProfileManager$Listener;)V

    .line 292
    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onDestroy()V

    .line 293
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "ketCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getCurrentGroupFragment()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    move-result-object v0

    .line 297
    .local v0, "fragment":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getConfigurationListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1

    .local v1, "$this$onKeyDown_u24lambda_u247":Landroidx/recyclerview/widget/RecyclerView;
    const/4 v2, 0x0

    .line 298
    .local v2, "$i$a$-apply-ConfigurationFragment$onKeyDown$1":I
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    .line 299
    :cond_0
    nop

    .line 297
    .end local v1    # "$this$onKeyDown_u24lambda_u247":Landroidx/recyclerview/widget/RecyclerView;
    .end local v2    # "$i$a$-apply-ConfigurationFragment$onKeyDown$1":I
    :cond_1
    nop

    .line 300
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 469
    :sswitch_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroup()Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    .line 470
    .local v0, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 471
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const v3, 0x7f130111

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->snackbar(Landroidx/fragment/app/Fragment;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 472
    sget-object v2, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMenuItemClick: Group("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not subscription"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :cond_0
    move-object v3, p0

    check-cast v3, Landroidx/fragment/app/Fragment;

    new-instance v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$3;

    invoke-direct {v4, v0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$3;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnLifecycleDispatcher(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 369
    .end local v0    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/nekohasekai/sagernet/ui/ScannerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 555
    :sswitch_2
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$7;

    invoke-direct {v0, p0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$7;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 449
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/WireGuardSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 411
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 415
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v2, v0

    .local v2, "$this$onMenuItemClick_u24lambda_u249":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 416
    .local v3, "$i$a$-apply-ConfigurationFragment$onMenuItemClick$2":I
    const-string v4, "vless"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    nop

    .line 415
    .end local v2    # "$this$onMenuItemClick_u24lambda_u249":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-ConfigurationFragment$onMenuItemClick$2":I
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 441
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/TuicSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 425
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/TrojanGoSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 421
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/TrojanSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 445
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/SSHSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 407
    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 399
    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/SocksSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 453
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 433
    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/NaiveSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 429
    :sswitch_e
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 437
    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    :sswitch_10
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/HttpSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 461
    :sswitch_11
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 465
    :sswitch_12
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 457
    :sswitch_13
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 395
    :sswitch_14
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->importFile:Landroidx/activity/result/ActivityResultLauncher;

    const-string v3, "*/*"

    invoke-static {v0, v2, v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->startFilesForResult(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :sswitch_15
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getClipboardText()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "text":Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const v3, 0x7f13009a

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->snackbar(Landroidx/fragment/app/Fragment;Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 376
    :cond_1
    new-instance v3, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;

    invoke-direct {v3, v0, p0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$1;-><init>(Ljava/lang/String;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 611
    .end local v0    # "text":Ljava/lang/String;
    :sswitch_16
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->urlTest()V

    goto :goto_0

    .line 516
    :sswitch_17
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$6;

    invoke-direct {v0, p0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$6;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 498
    :sswitch_18
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$5;

    invoke-direct {v0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$5;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 607
    :sswitch_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->pingTest(Z)V

    goto :goto_0

    .line 481
    :sswitch_1a
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$4;

    invoke-direct {v0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onMenuItemClick$4;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 614
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0041 -> :sswitch_1a
        0x7f0a0044 -> :sswitch_19
        0x7f0a0045 -> :sswitch_18
        0x7f0a0046 -> :sswitch_17
        0x7f0a0047 -> :sswitch_16
        0x7f0a0057 -> :sswitch_15
        0x7f0a0058 -> :sswitch_14
        0x7f0a0062 -> :sswitch_13
        0x7f0a0063 -> :sswitch_12
        0x7f0a0064 -> :sswitch_11
        0x7f0a0066 -> :sswitch_10
        0x7f0a0067 -> :sswitch_f
        0x7f0a0068 -> :sswitch_e
        0x7f0a0069 -> :sswitch_d
        0x7f0a006b -> :sswitch_c
        0x7f0a006c -> :sswitch_b
        0x7f0a006d -> :sswitch_a
        0x7f0a006e -> :sswitch_9
        0x7f0a006f -> :sswitch_8
        0x7f0a0070 -> :sswitch_7
        0x7f0a0071 -> :sswitch_6
        0x7f0a0072 -> :sswitch_5
        0x7f0a0073 -> :sswitch_4
        0x7f0a0074 -> :sswitch_3
        0x7f0a007b -> :sswitch_2
        0x7f0a007d -> :sswitch_1
        0x7f0a008b -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceDataStoreChanged(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;)V
    .locals 2
    .param p1, "store"    # Landroidx/preference/PreferenceDataStore;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onPreferenceDataStoreChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$onPreferenceDataStoreChanged$1;-><init>(Ljava/lang/String;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnMainDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 282
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getCurrentGroupFragment()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment$ConfigurationAdapter;->filter(Ljava/lang/String;)V

    .line 175
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 196
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->select:Z

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 198
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->titleRes:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 201
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f080107

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 202
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda10;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    .line 208
    .local v0, "searchView":Landroidx/appcompat/widget/SearchView;
    if-eqz v0, :cond_1

    .line 209
    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 210
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 212
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda11;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 219
    :cond_1
    const v1, 0x7f0a0144

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->setGroupPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 220
    const v1, 0x7f0a0147

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->setTabLayout(Lcom/google/android/material/tabs/TabLayout;)V

    .line 221
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->setAdapter(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;)V

    .line 222
    sget-object v1, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/database/ProfileManager$Listener;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/ProfileManager;->addListener(Lio/nekohasekai/sagernet/database/ProfileManager$Listener;)V

    .line 223
    sget-object v1, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v2

    check-cast v2, Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/GroupManager;->addListener(Lio/nekohasekai/sagernet/database/GroupManager$Listener;)V

    .line 225
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getAdapter()Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 226
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 228
    new-instance v1, Lcom/google/android/material/tabs/TabLayoutMediator;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    .line 235
    new-instance v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda12;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    .line 228
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 235
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 237
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->syncGlassInset()V

    .line 239
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->registerChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 264
    return-void
.end method

.method public final pingTest(Z)V
    .locals 12
    .param p1, "icmpPing"    # Z

    .line 715
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRunningTest()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRunningTest(Z)V

    .line 716
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    .line 717
    .local v0, "test":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v8

    .line 718
    .local v8, "dialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    check-cast v9, Ljava/util/List;

    .line 719
    .local v9, "testJobs":Ljava/util/List;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroup()Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v10

    .line 721
    .local v10, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    new-instance v11, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;

    const/4 v7, 0x0

    move-object v1, v11

    move-object v2, v10

    move-object v3, v0

    move-object v4, v9

    move v5, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$pingTest$mainJob$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Ljava/util/List;ZLio/nekohasekai/sagernet/ui/ConfigurationFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v11}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v1

    .line 827
    .local v1, "mainJob":Lkotlinx/coroutines/Job;
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, v8, v1, v9}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda5;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setCancel(Lkotlin/jvm/functions/Function0;)V

    .line 844
    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v8, v10, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda6;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setMinimize(Lkotlin/jvm/functions/Function0;)V

    .line 852
    return-void
.end method

.method public final setAdapter(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->adapter:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    return-void
.end method

.method public final setGroupPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/viewpager2/widget/ViewPager2;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->groupPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public final setTabLayout(Lcom/google/android/material/tabs/TabLayout;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/google/android/material/tabs/TabLayout;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method

.method public final urlTest()V
    .locals 6

    .line 856
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRunningTest()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRunningTest(Z)V

    .line 857
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    .line 858
    .local v0, "test":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->getBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 859
    .local v1, "dialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 860
    .local v2, "testJobs":Ljava/util/List;
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroup()Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v3

    .line 862
    .local v3, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    new-instance v4, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v0, v2, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$urlTest$mainJob$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v4}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v4

    .line 896
    .local v4, "mainJob":Lkotlinx/coroutines/Job;
    new-instance v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1, v4, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lkotlinx/coroutines/Job;Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setCancel(Lkotlin/jvm/functions/Function0;)V

    .line 913
    new-instance v5, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0, v1, v3, p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;Landroidx/appcompat/app/AlertDialog;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$TestDialog;->setMinimize(Lkotlin/jvm/functions/Function0;)V

    .line 921
    return-void
.end method
