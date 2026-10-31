.class public final Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;
.super Ljava/lang/Object;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Heading"
.end annotation


# instance fields
.field final actions:Landroid/view/ViewGroup;

.field final back:Landroid/view/View;

.field final subtitle:Landroid/widget/TextView;

.field final title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V
    .registers 5

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->back:Landroid/view/View;

    .line 288
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->title:Landroid/widget/TextView;

    .line 289
    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->subtitle:Landroid/widget/TextView;

    .line 290
    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Heading;->actions:Landroid/view/ViewGroup;

    return-void
.end method
