.class public final synthetic Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppListPermission$$ExternalSyntheticLambda0;->f$1:Landroid/app/Dialog;

    invoke-static {v0, v1, p1}, Lmoe/matsuri/nb4a/ui/AppListPermission;->lambda$showDenied$0(Landroid/app/Activity;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
