.class public final synthetic Lmoe/matsuri/nb4a/plugin/Plugins$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroid/content/pm/ProviderInfo;

    invoke-static {p1}, Lmoe/matsuri/nb4a/plugin/Plugins;->$r8$lambda$iXPstkTVwiuXgML8H2DjUkOyQ0w(Landroid/content/pm/ProviderInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
