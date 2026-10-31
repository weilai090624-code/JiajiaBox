.class public final synthetic Lio/nekohasekai/sagernet/ui/MorphDialog$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Ljava/util/LinkedHashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedHashMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$5;->f$0:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$5;->f$0:Ljava/util/LinkedHashMap;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/MorphDialog;->lambda$preserveParentPositions$5(Ljava/util/LinkedHashMap;Landroid/content/DialogInterface;)V

    return-void
.end method
