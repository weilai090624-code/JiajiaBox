.class public final Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RouteFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RuleHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0007R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;)V",
        "rule",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "getRule",
        "()Lio/nekohasekai/sagernet/database/RuleEntity;",
        "setRule",
        "(Lio/nekohasekai/sagernet/database/RuleEntity;)V",
        "profileName",
        "Landroid/widget/TextView;",
        "getProfileName",
        "()Landroid/widget/TextView;",
        "profileType",
        "getProfileType",
        "routeOutbound",
        "getRouteOutbound",
        "editButton",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "getEditButton",
        "()Landroidx/appcompat/widget/AppCompatImageView;",
        "shareLayout",
        "Landroid/widget/LinearLayout;",
        "getShareLayout",
        "()Landroid/widget/LinearLayout;",
        "enableSwitch",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "getEnableSwitch",
        "()Landroidx/appcompat/widget/SwitchCompat;",
        "bind",
        "",
        "ruleEntity",
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
.field private final editButton:Landroidx/appcompat/widget/AppCompatImageView;

.field private final enableSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final profileName:Landroid/widget/TextView;

.field private final profileType:Landroid/widget/TextView;

.field private final routeOutbound:Landroid/widget/TextView;

.field public rule:Lio/nekohasekai/sagernet/database/RuleEntity;

.field private final shareLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;


# direct methods
.method public static synthetic $r8$lambda$GfIOgn8P8OVJHiShqoqgpecaJOw(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Lio/nekohasekai/sagernet/ui/RouteFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->bind$lambda$1(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Lio/nekohasekai/sagernet/ui/RouteFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKU1HeTeXEf_l6fwbcxoge9QG0g(Lio/nekohasekai/sagernet/ui/RouteFragment;Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->bind$lambda$3(Lio/nekohasekai/sagernet/ui/RouteFragment;Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a4k_jn4na-yjHx4FddVLLkd_5E0(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->bind$lambda$0(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;)V
    .locals 2
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .param p2, "binding"    # Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 275
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->profileName:Landroid/widget/TextView;

    const-string v1, "profileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->profileName:Landroid/widget/TextView;

    .line 276
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->profileType:Landroid/widget/TextView;

    const-string v1, "profileType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->profileType:Landroid/widget/TextView;

    .line 277
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->routeOutbound:Landroid/widget/TextView;

    const-string v1, "routeOutbound"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->routeOutbound:Landroid/widget/TextView;

    .line 278
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->edit:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "edit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->editButton:Landroidx/appcompat/widget/AppCompatImageView;

    .line 279
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->share:Landroid/widget/LinearLayout;

    const-string v1, "share"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->shareLayout:Landroid/widget/LinearLayout;

    .line 280
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->enable:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "enable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->enableSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 272
    return-void
.end method

.method private static final bind$lambda$0(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;
    .param p1, "it"    # Landroid/view/View;

    .line 288
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->enableSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->performClick()Z

    .line 289
    return-void
.end method

.method private static final bind$lambda$1(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Lio/nekohasekai/sagernet/ui/RouteFragment;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;
    .param p1, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment;
    .param p3, "isChecked"    # Z

    .line 292
    new-instance p2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$bind$2$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, p1, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$bind$2$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;ZLio/nekohasekai/sagernet/ui/RouteFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 299
    return-void
.end method

.method private static final bind$lambda$3(Lio/nekohasekai/sagernet/ui/RouteFragment;Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Landroid/view/View;)V
    .locals 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment;
    .param p1, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;
    .param p2, "it"    # Landroid/view/View;

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/nekohasekai/sagernet/ui/RouteSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .local v1, "$this$bind_u24lambda_u243_u24lambda_u242":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 302
    .local v2, "$i$a$-apply-RouteFragment$RuleAdapter$RuleHolder$bind$3$1":I
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->getRule()Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v3

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/RuleEntity;->getId()J

    move-result-wide v3

    const-string v5, "id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 303
    nop

    .line 301
    .end local v1    # "$this$bind_u24lambda_u243_u24lambda_u242":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-RouteFragment$RuleAdapter$RuleHolder$bind$3$1":I
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method


# virtual methods
.method public final bind(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .locals 3
    .param p1, "ruleEntity"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    const-string v0, "ruleEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->setRule(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    .line 284
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->profileName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->getRule()Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->profileType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->getRule()Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/RuleEntity;->mkSummary()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->routeOutbound:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->getRule()Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayOutbound()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->itemView:Landroid/view/View;

    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->enableSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->getRule()Lio/nekohasekai/sagernet/database/RuleEntity;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 291
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->enableSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    iget-object v1, v1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 300
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->editButton:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    iget-object v1, v1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment;Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method public final getEditButton()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 278
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->editButton:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final getEnableSwitch()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    .line 280
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->enableSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method public final getProfileName()Landroid/widget/TextView;
    .locals 1

    .line 275
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->profileName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getProfileType()Landroid/widget/TextView;
    .locals 1

    .line 276
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->profileType:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRouteOutbound()Landroid/widget/TextView;
    .locals 1

    .line 277
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->routeOutbound:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRule()Lio/nekohasekai/sagernet/database/RuleEntity;
    .locals 1

    .line 274
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->rule:Lio/nekohasekai/sagernet/database/RuleEntity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "rule"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getShareLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 279
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->shareLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final setRule(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->rule:Lio/nekohasekai/sagernet/database/RuleEntity;

    return-void
.end method
