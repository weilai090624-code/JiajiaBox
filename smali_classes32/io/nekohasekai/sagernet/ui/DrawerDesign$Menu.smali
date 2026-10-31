.class public final Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;
.super Ljava/lang/Object;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Menu"
.end annotation


# instance fields
.field brand:Landroid/widget/TextView;

.field brandApplied:Z

.field brandLight:Z

.field final column:Landroid/widget/LinearLayout;

.field footer:Landroid/widget/TextView;

.field header:Landroid/widget/LinearLayout;

.field list:Landroid/widget/LinearLayout;

.field final panel:Landroid/view/View;

.field final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field final sections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field tagline:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .registers 4

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->sections:Ljava/util/List;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->rows:Ljava/util/List;

    .line 411
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->panel:Landroid/view/View;

    .line 412
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Menu;->column:Landroid/widget/LinearLayout;

    return-void
.end method
