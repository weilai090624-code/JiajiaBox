.class public final Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "RouteSettingsActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$Companion;,
        Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;,
        Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;,
        Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$PasswordSummaryProvider;,
        Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$ProfileIdArg;,
        Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$UnsavedChangesDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSettingsActivity.kt\nio/nekohasekai/sagernet/ui/RouteSettingsActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,394:1\n774#2:395\n865#2,2:396\n1#3:398\n*S KotlinDebug\n*F\n+ 1 RouteSettingsActivity.kt\nio/nekohasekai/sagernet/ui/RouteSettingsActivity\n*L\n95#1:395\n95#1:396,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0006FGHIJKB\u0011\u0012\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\n\u0010\u0007\u001a\u00020\u0008*\u00020\u000bJ\n\u0010\u000c\u001a\u00020\u0008*\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\u0010J\u001e\u0010\u0011\u001a\u00020\u0008*\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u0016\u001a\u00020\u0008H\u0014J\u001c\u0010*\u001a\u00020\u0008*\u00020\u00122\u0006\u0010+\u001a\u00020,2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010-\u001a\u00020\u00102\u0006\u0010.\u001a\u00020/J\u0012\u00100\u001a\u00020\u00082\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u000e\u00101\u001a\u00020\u0008H\u0086@\u00a2\u0006\u0002\u00102J\u0010\u00109\u001a\u00020\u00102\u0006\u0010:\u001a\u00020;H\u0016J\u0010\u0010<\u001a\u00020\u00102\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u00020\u0008H\u0016J\u0008\u0010@\u001a\u00020\u0010H\u0016J\u0008\u0010A\u001a\u00020\u0008H\u0014J\u0018\u0010B\u001a\u00020\u00082\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020\nH\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001b\u00103\u001a\u0002048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u00108\u001a\u0004\u00085\u00106\u00a8\u0006L"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "resId",
        "",
        "<init>",
        "(I)V",
        "init",
        "",
        "packageName",
        "",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "serialize",
        "editConfigPreference",
        "Lmoe/matsuri/nb4a/ui/EditConfigPreference;",
        "needSave",
        "",
        "createPreferences",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "onResume",
        "selectProfileForAdd",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "getSelectProfileForAdd",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "selectAppList",
        "getSelectAppList",
        "outbound",
        "Lio/nekohasekai/sagernet/widget/OutboundPreference;",
        "getOutbound",
        "()Lio/nekohasekai/sagernet/widget/OutboundPreference;",
        "setOutbound",
        "(Lio/nekohasekai/sagernet/widget/OutboundPreference;)V",
        "apps",
        "Lio/nekohasekai/sagernet/widget/AppListPreference;",
        "getApps",
        "()Lio/nekohasekai/sagernet/widget/AppListPreference;",
        "setApps",
        "(Lio/nekohasekai/sagernet/widget/AppListPreference;)V",
        "viewCreated",
        "view",
        "Landroid/view/View;",
        "displayPreferenceDialog",
        "preference",
        "Landroidx/preference/Preference;",
        "onCreate",
        "saveAndExit",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "child",
        "Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;",
        "getChild",
        "()Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;",
        "child$delegate",
        "Lkotlin/Lazy;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onBackPressed",
        "onSupportNavigateUp",
        "onDestroy",
        "onPreferenceDataStoreChanged",
        "store",
        "Landroidx/preference/PreferenceDataStore;",
        "key",
        "UnsavedChangesDialogFragment",
        "ProfileIdArg",
        "DeleteConfirmationDialogFragment",
        "Companion",
        "MyPreferenceFragmentCompat",
        "PasswordSummaryProvider",
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
.field public static final Companion:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$Companion;

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field public static final EXTRA_ROUTE_ID:Ljava/lang/String; = "id"


# instance fields
.field public apps:Lio/nekohasekai/sagernet/widget/AppListPreference;

.field private final child$delegate:Lkotlin/Lazy;

.field private editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

.field public outbound:Lio/nekohasekai/sagernet/widget/OutboundPreference;

.field private final selectAppList:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final selectProfileForAdd:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6NXdZqYrSmurbrpbML5WoOE_fY0(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectAppList$lambda$3(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G30FUa8xt4GFB58juNh6AQ_MGf8(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectProfileForAdd$lambda$2(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a8Q2UqdMxo2j10Uw9SuFiJTSvQY(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->viewCreated$lambda$4(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$egwLOYP6RlflSg812KfcXSeGY7I(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->child_delegate$lambda$9(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o18IwF7q2uxSKrBGFJS3MNWNb88(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->viewCreated$lambda$5(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->Companion:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 47
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>(I)V

    .line 125
    nop

    .line 126
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 127
    nop

    .line 125
    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectProfileForAdd:Landroidx/activity/result/ActivityResultLauncher;

    .line 141
    nop

    .line 142
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 143
    nop

    .line 141
    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectAppList:Landroidx/activity/result/ActivityResultLauncher;

    .line 288
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->child$delegate:Lkotlin/Lazy;

    .line 45
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 46
    const p1, 0x7f0d005b

    .line 45
    :cond_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;-><init>(I)V

    .line 47
    return-void
.end method

.method private static final child_delegate$lambda$9(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    .line 288
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.RouteSettingsActivity.MyPreferenceFragmentCompat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;

    return-object v0
.end method

.method private static final selectAppList$lambda$3(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getApps()Lio/nekohasekai/sagernet/widget/AppListPreference;

    move-result-object p1

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/widget/AppListPreference;->postUpdate()V

    .line 145
    return-void
.end method

.method private static final selectProfileForAdd$lambda$2(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    const-string v0, "<destruct>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Landroidx/activity/result/ActivityResultKt;->component1(Landroidx/activity/result/ActivityResult;)I

    move-result v0

    .local v0, "resultCode":I
    invoke-static {p1}, Landroidx/activity/result/ActivityResultKt;->component2(Landroidx/activity/result/ActivityResult;)Landroid/content/Intent;

    move-result-object p1

    .line 128
    .local p1, "data":Landroid/content/Intent;
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$selectProfileForAdd$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$selectProfileForAdd$1$1;-><init>(Landroid/content/Intent;Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 139
    :cond_0
    return-void
.end method

.method private static final viewCreated$lambda$4(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectProfileForAdd:Landroidx/activity/result/ActivityResultLauncher;

    .line 157
    new-instance v0, Landroid/content/Intent;

    .line 158
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;

    .line 157
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 161
    const/4 p1, 0x0

    goto :goto_0

    .line 163
    :cond_0
    const/4 p1, 0x1

    .line 164
    :goto_0
    return p1
.end method

.method private static final viewCreated$lambda$5(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Landroidx/preference/Preference;)Z
    .locals 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .param p1, "it"    # Landroidx/preference/Preference;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectAppList:Landroidx/activity/result/ActivityResultLauncher;

    .line 169
    new-instance v1, Landroid/content/Intent;

    .line 170
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/AppListActivity;

    .line 169
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "$this$createPreferences"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "rootKey"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const v0, 0x7f160010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 114
    const-string v0, "serverConfig"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    .line 115
    return-void
.end method

.method public final displayPreferenceDialog(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public final getApps()Lio/nekohasekai/sagernet/widget/AppListPreference;
    .locals 1

    .line 148
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->apps:Lio/nekohasekai/sagernet/widget/AppListPreference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "apps"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChild()Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;
    .locals 1

    .line 288
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->child$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;

    return-object v0
.end method

.method public final getOutbound()Lio/nekohasekai/sagernet/widget/OutboundPreference;
    .locals 1

    .line 147
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->outbound:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "outbound"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSelectAppList()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectAppList:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public final getSelectProfileForAdd()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->selectProfileForAdd:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public final init(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .locals 11
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteName(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setServerConfig(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getDomains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteDomain(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteIP(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRoutePort(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSourcePort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteSourcePort(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteNetwork(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteSource(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteProtocol(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getOutbound()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteOutboundRule(J)V

    .line 70
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getOutbound()J

    move-result-wide v1

    .line 71
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const-wide/16 v3, -0x2

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x3

    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRouteOutbound(I)V

    .line 76
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPackages()Ljava/util/Set;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v1, "\n"

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setRoutePackages(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public final init(Ljava/lang/String;)V
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;

    .line 51
    move-object/from16 v0, p1

    new-instance v15, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object v1, v15

    const/16 v19, 0x3fff

    const/16 v20, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v20}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v21

    .local v1, "$this$init_u24lambda_u240":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v2, 0x0

    .line 52
    .local v2, "$i$a$-apply-RouteSettingsActivity$init$1":I
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    .line 53
    invoke-static/range {p1 .. p1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/database/RuleEntity;->setPackages(Ljava/util/Set;)V

    .line 54
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v3

    sget-object v6, Lio/nekohasekai/sagernet/utils/PackageCache;->INSTANCE:Lio/nekohasekai/sagernet/utils/PackageCache;

    invoke-virtual {v6, v0}, Lio/nekohasekai/sagernet/utils/PackageCache;->loadLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    const v4, 0x7f130252

    invoke-virtual {v3, v4, v5}, Lio/nekohasekai/sagernet/SagerNet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/database/RuleEntity;->setName(Ljava/lang/String;)V

    .line 56
    :cond_2
    nop

    .line 51
    .end local v1    # "$this$init_u24lambda_u240":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v2    # "$i$a$-apply-RouteSettingsActivity$init$1":I
    nop

    .line 56
    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->init(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    .line 57
    return-void
.end method

.method public final needSave()Z
    .locals 1

    .line 105
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getDirty()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 6

    .line 298
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->needSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$UnsavedChangesDialogFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$UnsavedChangesDialogFragment;-><init>()V

    move-object v1, v0

    .line 398
    .local v1, "$this$onBackPressed_u24lambda_u2410":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$UnsavedChangesDialogFragment;
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$a$-apply-RouteSettingsActivity$onBackPressed$1":I
    move-object v3, v1

    check-cast v3, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->key$default(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .end local v1    # "$this$onBackPressed_u24lambda_u2410":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$UnsavedChangesDialogFragment;
    .end local v2    # "$i$a$-apply-RouteSettingsActivity$onBackPressed$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$UnsavedChangesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onBackPressed()V

    .line 301
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 217
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 218
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 219
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onCreate_u24lambda_u246":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x0

    .line 220
    .local v1, "$i$a$-apply-RouteSettingsActivity$onCreate$1":I
    const v2, 0x7f130080

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 221
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 222
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 223
    nop

    .line 219
    .end local v0    # "$this$onCreate_u24lambda_u246":Landroidx/appcompat/app/ActionBar;
    .end local v1    # "$i$a$-apply-RouteSettingsActivity$onCreate$1":I
    nop

    .line 225
    :cond_0
    if-nez p1, :cond_1

    .line 226
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 227
    .local v0, "editingId":J
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2, v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setEditingId(J)V

    .line 228
    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$onCreate$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$onCreate$2;-><init>(JLio/nekohasekai/sagernet/ui/RouteSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 255
    .end local v0    # "editingId":J
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 309
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->unregisterChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 310
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onDestroy()V

    .line 311
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getChild()Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceDataStoreChanged(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;)V
    .locals 2
    .param p1, "store"    # Landroidx/preference/PreferenceDataStore;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    const-string v0, "profileDirty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onResume()V

    .line 120
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->editConfigPreference:Lmoe/matsuri/nb4a/ui/EditConfigPreference;

    if-nez v0, :cond_0

    const-string v0, "editConfigPreference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lmoe/matsuri/nb4a/ui/EditConfigPreference;->notifyChanged()V

    .line 123
    :cond_1
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 304
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->finish()V

    .line 305
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final saveAndExit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 32
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;

    iget v2, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v9, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->result:Ljava/lang/Object;

    .local v9, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 257
    iget v3, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    .local v3, "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :pswitch_1
    iget-object v3, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    .restart local v3    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :pswitch_2
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v11, p0

    .line 259
    .local v11, "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->needSave()Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    new-instance v3, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$2;

    const/4 v4, 0x0

    invoke-direct {v3, v11, v4}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$2;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x1

    iput v4, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    invoke-static {v3, v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v11    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    if-ne v3, v10, :cond_1

    .line 257
    return-object v10

    .line 266
    :cond_1
    :goto_1
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 269
    .restart local v11    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :cond_2
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v3

    .line 270
    .local v3, "editingId":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    .end local v3    # "editingId":J
    if-nez v7, :cond_5

    .line 271
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "pkg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, -0x1

    invoke-virtual {v11, v4, v3}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 275
    :cond_3
    sget-object v3, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    new-instance v4, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object v12, v4

    const/16 v30, 0x3fff

    const/16 v31, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v12 .. v31}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v4

    .line 398
    .local v5, "$this$saveAndExit_u24lambda_u247":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v6, 0x0

    .line 275
    .local v6, "$i$a$-apply-RouteSettingsActivity$saveAndExit$3":I
    invoke-virtual {v11, v5}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->serialize(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    .end local v5    # "$this$saveAndExit_u24lambda_u247":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v6    # "$i$a$-apply-RouteSettingsActivity$saveAndExit$3":I
    iput-object v11, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, v1

    invoke-static/range {v3 .. v8}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule$default(Lio/nekohasekai/sagernet/database/ProfileManager;Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_4

    .line 257
    return-object v10

    .line 275
    :cond_4
    move-object v3, v11

    .end local v11    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .local v3, "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :goto_2
    goto :goto_4

    .line 277
    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .restart local v11    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :cond_5
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v3

    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v3

    .line 278
    .local v3, "entity":Lio/nekohasekai/sagernet/database/RuleEntity;
    if-nez v3, :cond_6

    .line 279
    .end local v3    # "entity":Lio/nekohasekai/sagernet/database/RuleEntity;
    invoke-virtual {v11}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->finish()V

    .line 280
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    .line 282
    .restart local v3    # "entity":Lio/nekohasekai/sagernet/database/RuleEntity;
    :cond_6
    sget-object v4, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    .end local v3    # "entity":Lio/nekohasekai/sagernet/database/RuleEntity;
    move-object v5, v3

    .line 398
    .local v5, "$this$saveAndExit_u24lambda_u248":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v6, 0x0

    .line 282
    .local v6, "$i$a$-apply-RouteSettingsActivity$saveAndExit$4":I
    invoke-virtual {v11, v5}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->serialize(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    .end local v5    # "$this$saveAndExit_u24lambda_u248":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v6    # "$i$a$-apply-RouteSettingsActivity$saveAndExit$4":I
    iput-object v11, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$saveAndExit$1;->label:I

    invoke-virtual {v4, v3, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->updateRule(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_7

    .line 257
    return-object v10

    .line 282
    :cond_7
    move-object v3, v11

    .line 284
    .end local v11    # "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .local v3, "this":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :goto_3
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->finish()V

    .line 286
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .locals 12
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setName(Ljava/lang/String;)V

    .line 81
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServerConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setConfig(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setDomains(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setIp(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRoutePort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setPort(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteSourcePort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setSourcePort(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteNetwork()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setNetwork(Ljava/lang/String;)V

    .line 87
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setSource(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setProtocol(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteOutbound()I

    move-result v0

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 93
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRouteOutboundRule()J

    move-result-wide v3

    goto :goto_0

    .line 92
    :pswitch_0
    const-wide/16 v3, -0x2

    goto :goto_0

    .line 91
    :pswitch_1
    const-wide/16 v3, -0x1

    goto :goto_0

    .line 90
    :pswitch_2
    move-wide v3, v1

    .line 89
    :goto_0
    invoke-virtual {p1, v3, v4}, Lio/nekohasekai/sagernet/database/RuleEntity;->setOutbound(J)V

    .line 95
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getRoutePackages()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v0, "\n"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 395
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v0

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 396
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 95
    .local v10, "$i$a$-filter-RouteSettingsActivity$serialize$1":I
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 396
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-filter-RouteSettingsActivity$serialize$1":I
    if-nez v11, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 395
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 95
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setPackages(Ljava/util/Set;)V

    .line 97
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->setEnabled(Z)V

    .line 100
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setApps(Lio/nekohasekai/sagernet/widget/AppListPreference;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/widget/AppListPreference;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->apps:Lio/nekohasekai/sagernet/widget/AppListPreference;

    return-void
.end method

.method public final setOutbound(Lio/nekohasekai/sagernet/widget/OutboundPreference;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/widget/OutboundPreference;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->outbound:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    return-void
.end method

.method public final viewCreated(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "$this$viewCreated"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-string v0, "routeOutbound"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/nekohasekai/sagernet/widget/OutboundPreference;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->setOutbound(Lio/nekohasekai/sagernet/widget/OutboundPreference;)V

    .line 152
    const-string v0, "routePackages"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/nekohasekai/sagernet/widget/AppListPreference;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->setApps(Lio/nekohasekai/sagernet/widget/AppListPreference;)V

    .line 154
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getOutbound()Lio/nekohasekai/sagernet/widget/OutboundPreference;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->getApps()Lio/nekohasekai/sagernet/widget/AppListPreference;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/widget/AppListPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    return-void
.end method
