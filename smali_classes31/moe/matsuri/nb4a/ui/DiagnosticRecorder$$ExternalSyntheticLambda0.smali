.class public final synthetic Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$3:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder$$ExternalSyntheticLambda0;->f$3:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, v3, p1}, Lmoe/matsuri/nb4a/ui/DiagnosticRecorder;->lambda$open$1(Landroid/content/Context;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
