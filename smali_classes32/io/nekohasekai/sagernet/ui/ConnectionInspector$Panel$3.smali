.class Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;
.super Ljava/lang/Object;
.source "ConnectionInspector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 139
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->render()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
