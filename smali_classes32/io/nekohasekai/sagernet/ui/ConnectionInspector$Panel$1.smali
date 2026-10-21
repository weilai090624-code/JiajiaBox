.class Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;
.super Landroid/widget/ArrayAdapter;
.source "ConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;->val$c:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 133
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;->val$c:Landroid/content/Context;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/ThemePalette;->surface(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_17

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_17
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_e

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    :cond_e
    return-object p1
.end method
