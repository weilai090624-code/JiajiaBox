.class public final synthetic Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Landroid/app/Dialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$14;->f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$14;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$14;->f$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$14;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lambda$showLookupReport$11$io-nekohasekai-sagernet-ui-GlobalGlobeCard(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
