.class public final Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChainSettingsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProfileHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChainSettingsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChainSettingsActivity.kt\nio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,295:1\n256#2,2:296\n256#2,2:298\n*S KotlinDebug\n*F\n+ 1 ChainSettingsActivity.kt\nio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder\n*L\n272#1:296,2\n290#1:298,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;)V",
        "profileName",
        "Landroid/widget/TextView;",
        "getProfileName",
        "()Landroid/widget/TextView;",
        "profileType",
        "getProfileType",
        "trafficText",
        "getTrafficText",
        "editButton",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "getEditButton",
        "()Landroidx/appcompat/widget/AppCompatImageView;",
        "shareLayout",
        "Landroid/widget/LinearLayout;",
        "getShareLayout",
        "()Landroid/widget/LinearLayout;",
        "bind",
        "",
        "proxyEntity",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
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

.field private final profileName:Landroid/widget/TextView;

.field private final profileType:Landroid/widget/TextView;

.field private final shareLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

.field private final trafficText:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ImFQQNkhi94ALS24w0Yh4UJJZao(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->bind$lambda$1(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;)V
    .locals 2
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;
    .param p2, "binding"    # Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    .line 254
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 256
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->profileName:Landroid/widget/TextView;

    const-string v1, "profileName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileName:Landroid/widget/TextView;

    .line 257
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->profileType:Landroid/widget/TextView;

    const-string v1, "profileType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileType:Landroid/widget/TextView;

    .line 258
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->trafficText:Landroid/widget/TextView;

    const-string v1, "trafficText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->trafficText:Landroid/widget/TextView;

    .line 259
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->edit:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "edit"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->editButton:Landroidx/appcompat/widget/AppCompatImageView;

    .line 260
    iget-object v0, p2, Lio/nekohasekai/sagernet/databinding/LayoutProfileBinding;->share:Landroid/widget/LinearLayout;

    const-string v1, "share"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->shareLayout:Landroid/widget/LinearLayout;

    .line 253
    return-void
.end method

.method private static final bind$lambda$1(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;Lio/nekohasekai/sagernet/database/ProxyEntity;Landroid/view/View;)V
    .locals 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;
    .param p1, "this$1"    # Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;
    .param p2, "$proxyEntity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p3, "it"    # Landroid/view/View;

    .line 282
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;->setReplacing(I)V

    .line 283
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;->getSelectProfileForAdd()Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 284
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lio/nekohasekai/sagernet/ui/ProfileSelectActivity;

    .line 283
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    move-object v2, v1

    .local v2, "$this$bind_u24lambda_u241_u24lambda_u240":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 286
    .local v3, "$i$a$-apply-ChainSettingsActivity$ProfileHolder$bind$1$1":I
    const-string v4, "selected"

    move-object v5, p2

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    nop

    .line 285
    .end local v2    # "$this$bind_u24lambda_u241_u24lambda_u240":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-ChainSettingsActivity$ProfileHolder$bind$1$1":I
    nop

    .line 283
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 288
    return-void
.end method


# virtual methods
.method public final bind(Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    .locals 13
    .param p1, "proxyEntity"    # Lio/nekohasekai/sagernet/database/ProxyEntity;

    const-string v0, "proxyEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileType:Landroid/widget/TextView;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayType()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileType:Landroid/widget/TextView;

    sget-object v1, Lmoe/matsuri/nb4a/Protocols;->INSTANCE:Lmoe/matsuri/nb4a/Protocols;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmoe/matsuri/nb4a/Protocols;->getProtocolColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getRx()J

    move-result-wide v0

    .line 269
    .local v0, "rx":J
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getTx()J

    move-result-wide v2

    .line 271
    .local v2, "tx":J
    add-long v4, v0, v2

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 272
    .local v4, "showTraffic":Z
    :goto_0
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->trafficText:Landroid/widget/TextView;

    check-cast v5, Landroid/view/View;

    .local v5, "$this$isVisible$iv":Landroid/view/View;
    const/4 v6, 0x0

    .line 296
    .local v6, "$i$f$setVisible":I
    const/16 v7, 0x8

    if-eqz v4, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/16 v10, 0x8

    :goto_1
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 297
    nop

    .line 273
    .end local v5    # "$this$isVisible$iv":Landroid/view/View;
    .end local v6    # "$i$f$setVisible":I
    if-eqz v4, :cond_2

    .line 274
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->trafficText:Landroid/widget/TextView;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 275
    nop

    .line 276
    iget-object v10, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 277
    iget-object v11, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v10, v12, v9

    aput-object v11, v12, v8

    .line 276
    nop

    .line 274
    const v8, 0x7f1302af

    invoke-virtual {v6, v8, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_2
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->editButton:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->this$0:Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    new-instance v8, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6, p0, p1}, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;Lio/nekohasekai/sagernet/database/ProxyEntity;)V

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->shareLayout:Landroid/widget/LinearLayout;

    check-cast v5, Landroid/view/View;

    .restart local v5    # "$this$isVisible$iv":Landroid/view/View;
    const/4 v6, 0x0

    .local v6, "value$iv":Z
    const/4 v8, 0x0

    .line 298
    .local v8, "$i$f$setVisible":I
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 299
    nop

    .line 291
    .end local v5    # "$this$isVisible$iv":Landroid/view/View;
    .end local v6    # "value$iv":Z
    .end local v8    # "$i$f$setVisible":I
    return-void
.end method

.method public final getEditButton()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 259
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->editButton:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final getProfileName()Landroid/widget/TextView;
    .locals 1

    .line 256
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getProfileType()Landroid/widget/TextView;
    .locals 1

    .line 257
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->profileType:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getShareLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 260
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->shareLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getTrafficText()Landroid/widget/TextView;
    .locals 1

    .line 258
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity$ProfileHolder;->trafficText:Landroid/widget/TextView;

    return-object v0
.end method
