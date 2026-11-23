.class public final Lio/nekohasekai/sagernet/ui/SortRowClick;
.super Ljava/lang/Object;
.source "SortRowClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SortRowClick;->activity:Landroid/app/Activity;

    .line 14
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SortRowClick;->label:Landroid/widget/TextView;

    .line 15
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 19
    const-string p1, "clicked"

    const-string v0, "JJSort"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SortRowClick;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->toggleFromActivity(Landroid/app/Activity;)Z

    move-result p1

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowClick;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SortRowClick;->label:Landroid/widget/TextView;

    if-eqz p1, :cond_51

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8282\u70b9\u6392\u5e8f \u00b7 "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->label()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_53

    :cond_51
    const-string p1, "\u8282\u70b9\u6392\u5e8f \u00b7 \u5217\u8868\u672a\u5c31\u7eea"

    :goto_53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_56
    return-void
.end method
