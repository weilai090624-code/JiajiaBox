.class public abstract Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "ProfileSettingsActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$Companion;,
        Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$DeleteConfirmationDialogFragment;,
        Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;,
        Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$PasswordSummaryProvider;,
        Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$ProfileIdArg;,
        Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        ">",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileSettingsActivity.kt\nio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,396:1\n1#2:397\n774#3:398\n865#3,2:399\n*S KotlinDebug\n*F\n+ 1 ProfileSettingsActivity.kt\nio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity\n*L\n161#1:398\n161#1:399,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u0000 A*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004:\u0006>?@ABCB\u0011\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\r\u0010\t\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\nJ\u0011\u0010\u000b\u001a\u00020\u000c*\u00028\u0000H&\u00a2\u0006\u0002\u0010\rJ\u0011\u0010\u000e\u001a\u00020\u000c*\u00028\u0000H&\u00a2\u0006\u0002\u0010\rJ\u0012\u0010\u001d\u001a\u00020\u000c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u000e\u0010 \u001a\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010!J\u0010\u0010\'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020\u000cH\u0016J\u0008\u0010.\u001a\u00020\u0016H\u0016J\u0008\u0010/\u001a\u00020\u000cH\u0014J\u0018\u00100\u001a\u00020\u000c2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u000204H\u0016J \u00105\u001a\u00020\u000c*\u0002062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u00107\u001a\u0004\u0018\u000104H&J\u001e\u00108\u001a\u00020\u000c*\u0002062\u0006\u00109\u001a\u00020:2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0014\u0010;\u001a\u00020\u0016*\u0002062\u0006\u0010<\u001a\u00020=H\u0016R\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00108FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R+\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168D@DX\u0084\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\"\u001a\u00020#8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0014\u001a\u0004\u0008$\u0010%\u00a8\u0006D"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;",
        "T",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "resId",
        "",
        "<init>",
        "(I)V",
        "createEntity",
        "()Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "init",
        "",
        "(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V",
        "serialize",
        "proxyEntity",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "getProxyEntity",
        "()Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "proxyEntity$delegate",
        "Lkotlin/Lazy;",
        "<set-?>",
        "",
        "isSubscription",
        "()Z",
        "setSubscription",
        "(Z)V",
        "isSubscription$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "saveAndExit",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "child",
        "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;",
        "getChild",
        "()Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;",
        "child$delegate",
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
        "",
        "createPreferences",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "rootKey",
        "viewCreated",
        "view",
        "Landroid/view/View;",
        "displayPreferenceDialog",
        "preference",
        "Landroidx/preference/Preference;",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$Companion;

.field public static final EXTRA_IS_SUBSCRIPTION:Ljava/lang/String; = "sub"

.field public static final EXTRA_PROFILE_ID:Ljava/lang/String; = "id"


# instance fields
.field private final child$delegate:Lkotlin/Lazy;

.field private final isSubscription$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final proxyEntity$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Lypu8yTDcXEmYFaZLmv5KurmVwc(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;)Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->child_delegate$lambda$4(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;)Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dm-no84OCc6KpmyAJp5c6d81ZTw()Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->proxyEntity_delegate$lambda$0()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 91
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "isSubscription"

    const-string v3, "isSubscription()Z"

    const-class v4, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->Companion:Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 49
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>(I)V

    .line 90
    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->proxyEntity$delegate:Lkotlin/Lazy;

    .line 91
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->isSubscription$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 153
    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->child$delegate:Lkotlin/Lazy;

    .line 47
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 47
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 48
    const p1, 0x7f0d003f

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;-><init>(I)V

    .line 49
    return-void
.end method

.method private static final child_delegate$lambda$4(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;)Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    .line 153
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0263

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.profile.ProfileSettingsActivity.MyPreferenceFragmentCompat"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;

    return-object v0
.end method

.method private static final proxyEntity_delegate$lambda$0()Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 3

    .line 90
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic saveAndExit$suspendImpl(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            ">(",
            "Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;-><init>(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 133
    iget v3, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    .local p0, "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local p0    # "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    :pswitch_1
    iget-object p0, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;

    .restart local p0    # "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .restart local p0    # "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v3

    .line 136
    .local v3, "editingId":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    .end local v3    # "editingId":J
    if-nez v7, :cond_2

    .line 137
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingGroup()J

    move-result-wide v3

    .line 138
    .local v3, "editingGroup":J
    sget-object v5, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v6

    .end local v3    # "editingGroup":J
    move-object v7, v6

    .line 397
    .local v7, "$this$saveAndExit_u24lambda_u242":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v8, 0x0

    .line 138
    .local v8, "$i$a$-apply-ProfileSettingsActivity$saveAndExit$2":I
    invoke-virtual {p0, v7}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V

    .end local v7    # "$this$saveAndExit_u24lambda_u242":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v8    # "$i$a$-apply-ProfileSettingsActivity$saveAndExit$2":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p0, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->label:I

    invoke-virtual {v5, v3, v4, v6, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->createProfile(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 133
    return-object v2

    .line 138
    :cond_1
    :goto_1
    goto :goto_3

    .line 140
    :cond_2
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v3

    if-nez v3, :cond_3

    .line 141
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->finish()V

    .line 142
    .end local p0    # "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 144
    .restart local p0    # "$this":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;
    :cond_3
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v3

    sget-object v5, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    .line 145
    sget-object v3, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/SagerNet$Companion;->stopService()V

    .line 147
    :cond_4
    sget-object v3, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v4

    .line 397
    .local v5, "$this$saveAndExit_u24lambda_u243":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v6, 0x0

    .line 147
    .local v6, "$i$a$-apply-ProfileSettingsActivity$saveAndExit$3":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type T of io.nekohasekai.sagernet.ui.profile.ProfileSettingsActivity"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V

    .end local v5    # "$this$saveAndExit_u24lambda_u243":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v6    # "$i$a$-apply-ProfileSettingsActivity$saveAndExit$3":I
    iput-object p0, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$saveAndExit$1;->label:I

    invoke-virtual {v3, v4, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->updateProfile(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    .line 133
    return-object v2

    .line 149
    :cond_5
    :goto_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->finish()V

    .line 151
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract createEntity()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public displayPreferenceDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "$this$displayPreferenceDialog"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "preference"    # Landroidx/preference/Preference;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preference"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public final getChild()Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;
    .locals 1

    .line 153
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->child$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;

    return-object v0
.end method

.method public final getProxyEntity()Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->proxyEntity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyEntity;

    return-object v0
.end method

.method public abstract init(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final isSubscription()Z
    .locals 3

    .line 91
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->isSubscription$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 6

    .line 178
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;-><init>()V

    move-object v1, v0

    .line 397
    .local v1, "$this$onBackPressed_u24lambda_u248":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;
    const/4 v2, 0x0

    .line 178
    .local v2, "$i$a$-apply-ProfileSettingsActivity$onBackPressed$1":I
    move-object v3, v1

    check-cast v3, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->key$default(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 179
    .end local v1    # "$this$onBackPressed_u24lambda_u248":Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;
    .end local v2    # "$i$a$-apply-ProfileSettingsActivity$onBackPressed$1":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$UnsavedChangesDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onBackPressed()V

    .line 180
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 96
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onCreate_u24lambda_u241":Landroidx/appcompat/app/ActionBar;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-apply-ProfileSettingsActivity$onCreate$1":I
    const v2, 0x7f130227

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    const v2, 0x7f080107

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 100
    nop

    .line 96
    .end local v0    # "$this$onCreate_u24lambda_u241":Landroidx/appcompat/app/ActionBar;
    .end local v1    # "$i$a$-apply-ProfileSettingsActivity$onCreate$1":I
    nop

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 104
    .local v0, "editingId":J
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->setSubscription(Z)V

    .line 105
    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2, v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setEditingId(J)V

    .line 106
    new-instance v2, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$onCreate$2;-><init>(JLio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 131
    .end local v0    # "editingId":J
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 17
    .param p1, "menu"    # Landroid/view/Menu;

    move-object/from16 v0, p1

    const-string v1, "menu"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f000b

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    const v1, 0x7f0a0061

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .local v1, "$this$onCreateOptionsMenu_u24lambda_u246":Landroid/view/MenuItem;
    const/4 v5, 0x0

    .line 158
    .local v5, "$i$a$-apply-ProfileSettingsActivity$onCreateOptionsMenu$1":I
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_4

    .line 159
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v6

    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingGroup()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    .line 160
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v6

    invoke-interface {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 161
    nop

    .local v6, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 398
    .local v8, "$i$f$filter":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v6

    .local v10, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 399
    .local v11, "$i$f$filterTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v14, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v15, 0x0

    .line 161
    .local v15, "$i$a$-filter-ProfileSettingsActivity$onCreateOptionsMenu$1$1":I
    invoke-virtual {v14}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v16

    if-nez v16, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 399
    .end local v14    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v15    # "$i$a$-filter-ProfileSettingsActivity$onCreateOptionsMenu$1$1":I
    :goto_2
    if-eqz v14, :cond_1

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$filterTo":I
    move-object v7, v9

    check-cast v7, Ljava/util/List;

    .line 398
    nop

    .line 161
    .end local v6    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$filter":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 160
    if-le v6, v4, :cond_4

    .line 162
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    :cond_4
    nop

    .line 157
    .end local v1    # "$this$onCreateOptionsMenu_u24lambda_u246":Landroid/view/MenuItem;
    .end local v5    # "$i$a$-apply-ProfileSettingsActivity$onCreateOptionsMenu$1":I
    nop

    .line 164
    :cond_5
    const v1, 0x7f0a004a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_7

    .local v1, "$this$onCreateOptionsMenu_u24lambda_u247":Landroid/view/MenuItem;
    const/4 v5, 0x0

    .line 165
    .local v5, "$i$a$-apply-ProfileSettingsActivity$onCreateOptionsMenu$2":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_6

    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-eqz v8, :cond_6

    .line 166
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 168
    :cond_6
    nop

    .line 164
    .end local v1    # "$this$onCreateOptionsMenu_u24lambda_u247":Landroid/view/MenuItem;
    .end local v5    # "$i$a$-apply-ProfileSettingsActivity$onCreateOptionsMenu$2":I
    nop

    .line 170
    :cond_7
    const v1, 0x7f0a004c

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 171
    :cond_8
    const v1, 0x7f0a004b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 172
    :cond_9
    return v4
.end method

.method protected onDestroy()V
    .locals 2

    .line 188
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->unregisterChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 189
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->getChild()Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity$MyPreferenceFragmentCompat;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    .line 193
    const-string v0, "profileDirty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->setDirty(Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 183
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onSupportNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->finish()V

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public saveAndExit(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->saveAndExit$suspendImpl(Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract serialize(Lio/nekohasekai/sagernet/fmt/AbstractBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected final setSubscription(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 91
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->isSubscription$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lio/nekohasekai/sagernet/ui/profile/ProfileSettingsActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public viewCreated(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "$this$viewCreated"    # Landroidx/preference/PreferenceFragmentCompat;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    return-void
.end method
