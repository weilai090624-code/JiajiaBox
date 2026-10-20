.class public final Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "RouteSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyPreferenceFragmentCompat"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;",
        "Landroidx/preference/PreferenceFragmentCompat;",
        "<init>",
        "()V",
        "activity",
        "Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;",
        "getActivity",
        "()Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;",
        "setActivity",
        "(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V",
        "onCreatePreferences",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rootKey",
        "",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "onOptionsItemSelected",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "onDisplayPreferenceDialog",
        "preference",
        "Landroidx/preference/Preference;",
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
.field private activity:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivity()Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .locals 1

    .line 321
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->activity:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/DataStore;->getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceDataStore;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V

    .line 325
    nop

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.RouteSettingsActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    move-object v1, v0

    .local v1, "$this$onCreatePreferences_u24lambda_u240":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    const/4 v2, 0x0

    .line 327
    .local v2, "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onCreatePreferences$1":I
    move-object v3, p0

    check-cast v3, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v1, v3, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->createPreferences(Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 328
    nop

    .line 326
    .end local v1    # "$this$onCreatePreferences_u24lambda_u240":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .end local v2    # "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onCreatePreferences$1":I
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->activity:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getApplication()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 332
    const-string v2, "Error on createPreferences, please try again."

    check-cast v2, Ljava/lang/CharSequence;

    .line 333
    nop

    .line 330
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 335
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->e(Ljava/lang/Throwable;)V

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->activity:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    if-eqz v0, :cond_1

    .local v0, "$this$onDisplayPreferenceDialog_u24lambda_u243":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    const/4 v1, 0x0

    .line 374
    .local v1, "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onDisplayPreferenceDialog$1":I
    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->displayPreferenceDialog(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 375
    :cond_0
    nop

    .line 373
    .end local v0    # "$this$onDisplayPreferenceDialog_u24lambda_u243":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .end local v1    # "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onDisplayPreferenceDialog$1":I
    nop

    .line 376
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    .line 377
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 369
    const/4 v1, 0x0

    goto :goto_1

    .line 351
    :sswitch_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 354
    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;-><init>()V

    move-object v3, v0

    .local v3, "$this$onOptionsItemSelected_u24lambda_u242":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;
    const/4 v4, 0x0

    .line 355
    .local v4, "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onOptionsItemSelected$1":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$ProfileIdArg;

    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getEditingId()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$ProfileIdArg;-><init>(J)V

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;->arg(Landroid/os/Parcelable;)V

    .line 356
    move-object v5, v3

    check-cast v5, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;

    invoke-static {v5, v2, v1, v2}, Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;->key$default(Lcom/github/shadowsocks/plugin/fragment/AlertDialogFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 357
    nop

    .line 354
    .end local v3    # "$this$onOptionsItemSelected_u24lambda_u242":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;
    .end local v4    # "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onOptionsItemSelected$1":I
    nop

    .line 357
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$DeleteConfirmationDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 359
    :goto_0
    goto :goto_1

    .line 363
    :sswitch_1
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat$onOptionsItemSelected$2;

    invoke-direct {v0, p0, v2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat$onOptionsItemSelected$2;-><init>(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 366
    nop

    .line 370
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0036 -> :sswitch_1
        0x7f0a004d -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 342
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Lio/nekohasekai/sagernet/widget/ListListener;->INSTANCE:Lio/nekohasekai/sagernet/widget/ListListener;

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 344
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->activity:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    if-eqz v0, :cond_0

    .local v0, "$this$onViewCreated_u24lambda_u241":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    const/4 v1, 0x0

    .line 345
    .local v1, "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onViewCreated$1":I
    move-object v2, p0

    check-cast v2, Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0, v2, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;->viewCreated(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Landroid/os/Bundle;)V

    .line 346
    nop

    .line 344
    .end local v0    # "$this$onViewCreated_u24lambda_u241":Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;
    .end local v1    # "$i$a$-apply-RouteSettingsActivity$MyPreferenceFragmentCompat$onViewCreated$1":I
    nop

    .line 347
    :cond_0
    return-void
.end method

.method public final setActivity(Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    .line 321
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity$MyPreferenceFragmentCompat;->activity:Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    return-void
.end method
