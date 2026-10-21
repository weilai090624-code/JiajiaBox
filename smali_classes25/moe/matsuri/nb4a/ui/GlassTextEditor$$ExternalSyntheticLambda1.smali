.class public final synthetic Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/preference/EditTextPreference;

.field public final synthetic f$3:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Landroidx/preference/EditTextPreference;Landroid/app/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/EditTextPreference;

    iput-object p4, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$3:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/EditTextPreference;

    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/GlassTextEditor$$ExternalSyntheticLambda1;->f$3:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Lmoe/matsuri/nb4a/ui/GlassTextEditor;->lambda$open$1(Landroid/widget/EditText;Ljava/lang/String;Landroidx/preference/EditTextPreference;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
