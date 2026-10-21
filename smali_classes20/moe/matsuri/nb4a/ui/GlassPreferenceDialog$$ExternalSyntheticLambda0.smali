.class public final synthetic Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroidx/preference/ListPreference;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/ListPreference;Ljava/lang/String;Landroid/app/Dialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/ListPreference;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/ListPreference;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog$$ExternalSyntheticLambda0;->f$2:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lmoe/matsuri/nb4a/ui/GlassPreferenceDialog;->lambda$show$0(Landroidx/preference/ListPreference;Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
