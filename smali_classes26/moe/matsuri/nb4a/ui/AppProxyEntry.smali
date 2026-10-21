.class public final Lmoe/matsuri/nb4a/ui/AppProxyEntry;
.super Landroidx/preference/SwitchPreference;
.source "AppProxyEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    .line 15
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 16
    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 17
    if-eqz p1, :cond_13

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_13
    return-void
.end method

.method protected onClick()V
    .registers 2

    .line 12
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/AppProxyEntry;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->open(Landroid/content/Context;)V

    return-void
.end method
