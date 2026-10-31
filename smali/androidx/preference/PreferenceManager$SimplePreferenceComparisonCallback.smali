.class public Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;
.super Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 659
    invoke-direct {p0}, Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public arePreferenceContentsTheSame(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .registers 8
    .param p1, "p1"    # Landroidx/preference/Preference;
    .param p2, "p2"    # Landroidx/preference/Preference;

    .line 685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 686
    return v2

    .line 688
    :cond_c
    if-ne p1, p2, :cond_15

    invoke-virtual {p1}, Landroidx/preference/Preference;->wasDetached()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 691
    return v2

    .line 693
    :cond_15
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 694
    return v2

    .line 696
    :cond_24
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 697
    return v2

    .line 699
    :cond_33
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 700
    .local v0, "p1Icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 701
    .local v1, "p2Icon":Landroid/graphics/drawable/Drawable;
    if-eq v0, v1, :cond_46

    if-eqz v0, :cond_45

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 702
    :cond_45
    return v2

    .line 704
    :cond_46
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_51

    .line 705
    return v2

    .line 707
    :cond_51
    invoke-virtual {p1}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v3

    invoke-virtual {p2}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v4

    if-eq v3, v4, :cond_5c

    .line 708
    return v2

    .line 710
    :cond_5c
    instance-of v3, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v3, :cond_71

    .line 711
    move-object v3, p1

    check-cast v3, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    move-object v4, p2

    check-cast v4, Landroidx/preference/TwoStatePreference;

    .line 712
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eq v3, v4, :cond_71

    .line 713
    return v2

    .line 716
    :cond_71
    instance-of v3, p1, Landroidx/preference/DropDownPreference;

    if-eqz v3, :cond_78

    if-eq p1, p2, :cond_78

    .line 718
    return v2

    .line 721
    :cond_78
    const/4 v2, 0x1

    return v2
.end method

.method public arePreferenceItemsTheSame(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .registers 8
    .param p1, "p1"    # Landroidx/preference/Preference;
    .param p2, "p2"    # Landroidx/preference/Preference;

    .line 670
    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
