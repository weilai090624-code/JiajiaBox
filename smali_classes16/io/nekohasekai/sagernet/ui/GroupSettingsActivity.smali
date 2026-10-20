.class public final Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "GroupSettingsActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$Companion;,
        Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$DeleteConfirmationDialogFragment;,
        Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$GroupIdArg;,
        Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;,
        Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$PasswordSummaryProvider;,
        Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$UnsavedChangesDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupSettingsActivity.kt\nio/nekohasekai/sagernet/ui/GroupSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,387:1\n1#2:388\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 62\u00020\u00012\u00020\u0002:\u0006345678B\u0011\u0012\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\n\u0010\n\u001a\u00020\u000b*\u00020\u000cJ\n\u0010\r\u001a\u00020\u000b*\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u0010\u001a\u00020\u000b*\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0012\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0015J\u000e\u0010\u0017\u001a\u00020\u000bH\u0086@\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u000bH\u0016J\u0008\u0010&\u001a\u00020\u000fH\u0016J\u0008\u0010\'\u001a\u00020\u000bH\u0014J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0015H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0017\u00101\u001a\u0008\u0012\u0004\u0012\u00020.0-\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00100\u00a8\u00069"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "resId",
        "",
        "<init>",
        "(I)V",
        "frontProxyPreference",
        "Lio/nekohasekai/sagernet/widget/OutboundPreference;",
        "landingProxyPreference",
        "init",
        "",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "serialize",
        "needSave",
        "",
        "createPreferences",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "onCreate",
        "saveAndExit",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "child",
        "Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;",
        "getChild",
        "()Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;",
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
        "selectProfileForAddFront",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroid/content/Intent;",
        "getSelectProfileForAddFront",
        "()Landroidx/activity/result/ActivityResultLauncher;",
        "selectProfileForAddLanding",
        "getSelectProfileForAddLanding",
        "UnsavedChangesDialogFragment",
        "GroupIdArg",
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
.field public static final Companion:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$Companion;

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "id"


# instance fields
.field private final child$delegate:Lkotlin/Lazy;

.field private frontProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

.field private landingProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

.field private final selectProfileForAddFront:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final selectProfileForAddLanding:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$J9lHZFhkxYwPJrsMfT_nmtoILzY(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$lambda$8(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$V76GNV9ARbnLC4r0F7_Se9OgKt0(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->child_delegate$lambda$12(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZomRdxywm109aCU6WWRrWF76p18(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$lambda$7(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$acfBmLu5pzFX4wDSFRxbEdmMqPI(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddLanding$lambda$15(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jLyS49UgkMLfJG7gYo6DGcaU5xo(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddFront$lambda$14(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kJDN31i4hJK_xilfaQbMV5GIjeQ(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$lambda$3$lambda$2(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uXpsMyQqkXZ_16h-t_4MHLKXDmg(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$lambda$5$lambda$4(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vn1FEg-qLg67oLkRPQsJkyIKD1U(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$lambda$6(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->Companion:Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 38
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>(I)V

    .line 264
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->child$delegate:Lkotlin/Lazy;

    .line 359
    nop

    .line 360
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 361
    nop

    .line 359
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddFront:Landroidx/activity/result/ActivityResultLauncher;

    .line 373
    nop

    .line 374
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    .line 375
    nop

    .line 373
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddLanding:Landroidx/activity/result/ActivityResultLauncher;

    .line 36
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 36
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 37
    const p1, 0x7f0d003f

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;-><init>(I)V

    .line 38
    return-void
.end method

.method public static final synthetic access$getFrontProxyPreference$p(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)Lio/nekohasekai/sagernet/widget/OutboundPreference;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->frontProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    return-object v0
.end method

.method public static final synthetic access$getLandingProxyPreference$p(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)Lio/nekohasekai/sagernet/widget/OutboundPreference;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    .line 35
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->landingProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    return-object v0
.end method

.method private static final child_delegate$lambda$12(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    .line 264
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.GroupSettingsActivity.MyPreferenceFragmentCompat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;

    return-object v0
.end method

.method private static final createPreferences$lambda$3$lambda$2(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddFront:Landroidx/activity/result/ActivityResultLauncher;

    .line 106
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 108
    const/4 p1, 0x0

    goto :goto_0

    .line 110
    :cond_0
    const/4 p1, 0x1

    .line 111
    :goto_0
    return p1
.end method

.method private static final createPreferences$lambda$5$lambda$4(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddLanding:Landroidx/activity/result/ActivityResultLauncher;

    .line 121
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 123
    const/4 p1, 0x0

    goto :goto_0

    .line 125
    :cond_0
    const/4 p1, 0x1

    .line 126
    :goto_0
    return p1
.end method

.method private static final createPreferences$lambda$6(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$groupSubscription"    # Landroidx/preference/PreferenceCategory;
    .param p1, "$subscriptionUpdate"    # Landroidx/preference/PreferenceCategory;
    .param p3, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p2, p3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$updateGroupType(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;I)V

    .line 142
    const/4 p2, 0x1

    return p2
.end method

.method private static final createPreferences$lambda$7(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string p0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 153
    .local p0, "delay":Ljava/lang/Integer;
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 154
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 157
    :cond_1
    :goto_0
    return v0
.end method

.method private static final createPreferences$lambda$8(Landroidx/preference/EditTextPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$subscriptionAutoUpdateDelay"    # Landroidx/preference/EditTextPreference;
    .param p2, "newValue"    # Ljava/lang/Object;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 161
    const/4 p1, 0x1

    return p1
.end method

.method private static final createPreferences$updateGroupType(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;I)V
    .locals 1
    .param p0, "groupSubscription"    # Landroidx/preference/PreferenceCategory;
    .param p1, "subscriptionUpdate"    # Landroidx/preference/PreferenceCategory;
    .param p2, "groupType"    # I

    .line 135
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    .local v0, "isSubscription":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 137
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 138
    return-void
.end method

.method static synthetic createPreferences$updateGroupType$default(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;IILjava/lang/Object;)V
    .locals 0

    .line 134
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    sget-object p2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/database/DataStore;->getGroupType()I

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$updateGroupType(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;I)V

    return-void
.end method

.method private static final selectProfileForAddFront$lambda$14(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .param p1, "it"    # Landroidx/activity/result/ActivityResult;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$selectProfileForAddFront$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$selectProfileForAddFront$1$1;-><init>(Landroidx/activity/result/ActivityResult;Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 371
    :cond_0
    return-void
.end method

.method private static final selectProfileForAddLanding$lambda$15(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .param p1, "it"    # Landroidx/activity/result/ActivityResult;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$selectProfileForAddLanding$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$selectProfileForAddLanding$1$1;-><init>(Landroidx/activity/result/ActivityResult;Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method public final createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .param p1, "$this$createPreferences"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "rootKey"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const v0, 0x7f160008

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    .line 99
    const-string v0, "groupFrontProxy"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/nekohasekai/sagernet/widget/OutboundPreference;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->frontProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    .line 100
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->frontProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "frontProxyPreference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .local v0, "$this$createPreferences_u24lambda_u243":Lio/nekohasekai/sagernet/widget/OutboundPreference;
    :cond_0
    const/4 v2, 0x0

    .line 101
    .local v2, "$i$a$-apply-GroupSettingsActivity$createPreferences$1":I
    const v3, 0x7f030009

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setEntries(I)V

    .line 102
    const v4, 0x7f03000a

    invoke-virtual {v0, v4}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setEntryValues(I)V

    .line 103
    new-instance v5, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)V

    invoke-virtual {v0, v5}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    nop

    .line 100
    .end local v0    # "$this$createPreferences_u24lambda_u243":Lio/nekohasekai/sagernet/widget/OutboundPreference;
    .end local v2    # "$i$a$-apply-GroupSettingsActivity$createPreferences$1":I
    nop

    .line 114
    const-string v0, "groupLandingProxy"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/nekohasekai/sagernet/widget/OutboundPreference;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->landingProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    .line 115
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->landingProxyPreference:Lio/nekohasekai/sagernet/widget/OutboundPreference;

    if-nez v0, :cond_1

    const-string v0, "landingProxyPreference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .local v0, "$this$createPreferences_u24lambda_u245":Lio/nekohasekai/sagernet/widget/OutboundPreference;
    :cond_1
    const/4 v2, 0x0

    .line 116
    .local v2, "$i$a$-apply-GroupSettingsActivity$createPreferences$2":I
    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setEntries(I)V

    .line 117
    invoke-virtual {v0, v4}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setEntryValues(I)V

    .line 118
    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;)V

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/widget/OutboundPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    nop

    .line 115
    .end local v0    # "$this$createPreferences_u24lambda_u245":Lio/nekohasekai/sagernet/widget/OutboundPreference;
    .end local v2    # "$i$a$-apply-GroupSettingsActivity$createPreferences$2":I
    nop

    .line 130
    const-string v0, "groupType"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;

    .line 131
    .local v0, "groupType":Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;
    const-string v2, "groupSubscription"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 132
    .local v2, "groupSubscription":Landroidx/preference/PreferenceCategory;
    const-string v3, "subscriptionUpdate"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 139
    .local v3, "subscriptionUpdate":Landroidx/preference/PreferenceCategory;
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v4, v5, v1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->createPreferences$updateGroupType$default(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;IILjava/lang/Object;)V

    .line 140
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda5;-><init>(Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;)V

    invoke-virtual {v0, v1}, Lmoe/matsuri/nb4a/ui/SimpleMenuPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    const-string v1, "subscriptionAutoUpdate"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/preference/SwitchPreference;

    .line 145
    nop

    .line 148
    .local v1, "subscriptionAutoUpdate":Landroidx/preference/SwitchPreference;
    const-string v4, "subscriptionAutoUpdateDelay"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroidx/preference/EditTextPreference;

    .line 147
    nop

    .line 150
    .local v4, "subscriptionAutoUpdateDelay":Landroidx/preference/EditTextPreference;
    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/preference/EditTextPreference;->setEnabled(Z)V

    .line 151
    new-instance v5, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v4, v5}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    new-instance v5, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v5, v4}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$$ExternalSyntheticLambda7;-><init>(Landroidx/preference/EditTextPreference;)V

    invoke-virtual {v1, v5}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    return-void
.end method

.method public final getChild()Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;
    .locals 1

    .line 264
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->child$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;

    return-object v0
.end method

.method public final getSelectProfileForAddFront()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddFront:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public final getSelectProfileForAddLanding()Landroidx/activity/result/ActivityResultLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->selectProfileForAddLanding:Landroidx/activity/result/ActivityResultLauncher;

    return-object v0
.end method

.method public final init(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 8
    .param p1, "$this$init"    # Lio/nekohasekai/sagernet/database/ProxyGroup;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setGroupName(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setGroupType(I)V

    .line 47
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setGroupOrder(I)V

    .line 48
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->isSelector()Z

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setGroupIsSelector(Z)V

    .line 50
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getFrontProxy()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setFrontProxy(J)V

    .line 51
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getLandingProxy()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setLandingProxy(J)V

    .line 52
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getFrontProxy()J

    move-result-wide v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setFrontProxyTmp(I)V

    .line 53
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getLandingProxy()J

    move-result-wide v1

    cmp-long v7, v1, v5

    if-ltz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/database/DataStore;->setLandingProxyTmp(I)V

    .line 55
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/SubscriptionBean;-><init>()V

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    .line 56
    .local v0, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    :cond_3
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionLink(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->forceResolve:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionForceResolve(Z)V

    .line 58
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->deduplication:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionDeduplication(Z)V

    .line 59
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->updateWhenConnectedOnly:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionUpdateWhenConnectedOnly(Z)V

    .line 60
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->customUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionUserAgent(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdate:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionAutoUpdate(Z)V

    .line 62
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-object v2, v0, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdateDelay:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSubscriptionAutoUpdateDelay(I)V

    .line 63
    return-void
.end method

.method public final needSave()Z
    .locals 1

    .line 89
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getDirty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 6

    .line 274
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->needSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$UnsavedChangesDialogFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$UnsavedChangesDialogFragment;-><init>()V

    move-object v1, v0

    .line 388
    .local v1, "$this$onBackPressed_u24lambda_u2413":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$UnsavedChangesDialogFragment;
    const/4 v2, 0x0

    .line 275
    .local v2, "$i$a$-apply-GroupSettingsActivity$onBackPressed$1":I
    move-object v3, v1

    check-cast v3, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->key$default(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .end local v1    # "$this$onBackPressed_u24lambda_u2413":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$UnsavedChangesDialogFragment;
    .end local v2    # "$i$a$-apply-GroupSettingsActivity$onBackPressed$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$UnsavedChangesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onBackPressed()V

    .line 277
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 201
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 203
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onCreate_u24lambda_u249":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x0

    .line 204
    .local v1, "$i$a$-apply-GroupSettingsActivity$onCreate$1":I
    const v2, 0x7f130116

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 205
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 206
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 207
    nop

    .line 203
    .end local v0    # "$this$onCreate_u24lambda_u249":Landroidx/appcompat/app/ActionBar;
    .end local v1    # "$i$a$-apply-GroupSettingsActivity$onCreate$1":I
    nop

    .line 209
    :cond_0
    if-nez p1, :cond_1

    .line 210
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 211
    .local v0, "editingId":J
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2, v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setEditingId(J)V

    .line 212
    new-instance v2, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$onCreate$2;-><init>(JLio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 238
    .end local v0    # "editingId":J
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 285
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->unregisterChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 286
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onDestroy()V

    .line 287
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->getChild()Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$MyPreferenceFragmentCompat;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    .line 290
    const-string v0, "profileDirty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 280
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->finish()V

    .line 281
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final saveAndExit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28
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

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;

    iget v2, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 240
    iget v5, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    .local v4, "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    :pswitch_1
    iget-object v4, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;

    .restart local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    :pswitch_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .line 242
    .local v5, "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v6

    .line 243
    .local v6, "editingId":J
    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    cmp-long v11, v6, v8

    .end local v6    # "editingId":J
    if-nez v11, :cond_2

    .line 244
    sget-object v6, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    new-instance v7, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v11, v7

    const/16 v26, 0x3ff

    const/16 v27, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    invoke-direct/range {v11 .. v27}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v7

    .line 388
    .local v8, "$this$saveAndExit_u24lambda_u2410":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v9, 0x0

    .line 244
    .local v9, "$i$a$-apply-GroupSettingsActivity$saveAndExit$2":I
    invoke-virtual {v5, v8}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->serialize(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .end local v8    # "$this$saveAndExit_u24lambda_u2410":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v9    # "$i$a$-apply-GroupSettingsActivity$saveAndExit$2":I
    iput-object v5, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    iput v10, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->label:I

    invoke-virtual {v6, v7, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_1

    .line 240
    return-object v4

    .line 244
    :cond_1
    move-object v4, v5

    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .restart local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    :goto_1
    move-object v5, v4

    goto :goto_5

    .line 245
    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .restart local v5    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    :cond_2
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->needSave()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 246
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v6

    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v6

    .line 247
    .local v6, "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-nez v6, :cond_3

    .line 248
    .end local v6    # "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->finish()V

    .line 249
    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 251
    .restart local v5    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .restart local v6    # "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_3
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 252
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getGroupType()I

    move-result v7

    if-ne v7, v10, :cond_5

    .line 253
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v7, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    sget-object v8, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionLink()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 251
    :goto_3
    move v7, v10

    .line 254
    .local v7, "keepUserInfo":Z
    if-nez v7, :cond_6

    .line 255
    .end local v7    # "keepUserInfo":Z
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v8, ""

    iput-object v8, v7, Lio/nekohasekai/sagernet/database/SubscriptionBean;->subscriptionUserinfo:Ljava/lang/String;

    .line 257
    :cond_6
    sget-object v7, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    .end local v6    # "entity":Lio/nekohasekai/sagernet/database/ProxyGroup;
    move-object v8, v6

    .line 388
    .local v8, "$this$saveAndExit_u24lambda_u2411":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v9, 0x0

    .line 257
    .local v9, "$i$a$-apply-GroupSettingsActivity$saveAndExit$3":I
    invoke-virtual {v5, v8}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->serialize(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .end local v8    # "$this$saveAndExit_u24lambda_u2411":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v9    # "$i$a$-apply-GroupSettingsActivity$saveAndExit$3":I
    iput-object v5, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v1, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity$saveAndExit$1;->label:I

    invoke-virtual {v7, v6, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->updateGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_7

    .line 240
    return-object v4

    .line 257
    :cond_7
    move-object v4, v5

    .line 260
    .end local v5    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .restart local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    :goto_4
    move-object v5, v4

    .end local v4    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    .restart local v5    # "this":Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;
    :cond_8
    :goto_5
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/GroupSettingsActivity;->finish()V

    .line 262
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Lio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 6
    .param p1, "$this$serialize"    # Lio/nekohasekai/sagernet/database/ProxyGroup;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getGroupName()Ljava/lang/String;

    move-result-object v0

    .line 388
    move-object v1, v0

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 66
    .local v2, "$i$a$-takeIf-GroupSettingsActivity$serialize$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-takeIf-GroupSettingsActivity$serialize$1":I
    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "My group"

    :cond_1
    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setName(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getGroupType()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setType(I)V

    .line 68
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getGroupOrder()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setOrder(I)V

    .line 69
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getGroupIsSelector()Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setSelector(Z)V

    .line 71
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getFrontProxyTmp()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getFrontProxy()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v1

    :goto_1
    invoke-virtual {p1, v4, v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setFrontProxy(J)V

    .line 72
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getLandingProxyTmp()I

    move-result v0

    if-ne v0, v3, :cond_3

    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getLandingProxy()J

    move-result-wide v1

    :cond_3
    invoke-virtual {p1, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setLandingProxy(J)V

    .line 74
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    move v0, v1

    .line 75
    .local v0, "isSubscription":Z
    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v1

    if-nez v1, :cond_5

    new-instance v1, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/SubscriptionBean;-><init>()V

    check-cast v1, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    :cond_5
    move-object v2, v1

    .local v2, "$this$serialize_u24lambda_u241":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    const/4 v3, 0x0

    .line 77
    .local v3, "$i$a$-apply-GroupSettingsActivity$serialize$2":I
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionLink()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    .line 78
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionForceResolve()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->forceResolve:Ljava/lang/Boolean;

    .line 79
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionDeduplication()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->deduplication:Ljava/lang/Boolean;

    .line 80
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionUpdateWhenConnectedOnly()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->updateWhenConnectedOnly:Ljava/lang/Boolean;

    .line 81
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionUserAgent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->customUserAgent:Ljava/lang/String;

    .line 82
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionAutoUpdate()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdate:Ljava/lang/Boolean;

    .line 83
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getSubscriptionAutoUpdateDelay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lio/nekohasekai/sagernet/database/SubscriptionBean;->autoUpdateDelay:Ljava/lang/Integer;

    .line 84
    nop

    .line 76
    .end local v2    # "$this$serialize_u24lambda_u241":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    .end local v3    # "$i$a$-apply-GroupSettingsActivity$serialize$2":I
    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setSubscription(Lio/nekohasekai/sagernet/database/SubscriptionBean;)V

    .line 86
    :cond_6
    return-void
.end method
