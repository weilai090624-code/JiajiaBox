.class public final Lio/nekohasekai/sagernet/ui/MainActivity$NavSizeLayoutListener;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final f$0:Lio/nekohasekai/sagernet/ui/MainActivity;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity$NavSizeLayoutListener;->f$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity$NavSizeLayoutListener;->f$0:Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->applyNavDrawerWidth(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    return-void
.end method
