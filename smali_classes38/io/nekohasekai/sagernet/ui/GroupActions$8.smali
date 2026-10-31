.class public final synthetic Lio/nekohasekai/sagernet/ui/GroupActions$8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Lio/nekohasekai/sagernet/ui/MorphDialog;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Lio/nekohasekai/sagernet/ui/MorphDialog;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$2:Lio/nekohasekai/sagernet/ui/MorphDialog;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$2:Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/GroupActions$8;->f$4:Ljava/lang/Object;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/GroupActions;->lambda$rename$6(Landroid/widget/EditText;Landroid/widget/TextView;Lio/nekohasekai/sagernet/ui/MorphDialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method
