.class Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;
.super Ljava/lang/Object;
.source "AiRoutingCard.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AiRoutingCard;->showNodeDialog(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

.field final synthetic val$labels:Ljava/util/List;

.field final synthetic val$rows:Ljava/util/List;

.field final synthetic val$status:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/AiRoutingCard;Ljava/util/List;Ljava/util/List;Landroid/widget/TextView;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->this$0:Lio/nekohasekai/sagernet/ui/AiRoutingCard;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$rows:Ljava/util/List;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$labels:Ljava/util/List;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$status:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 8

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 255
    :goto_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$rows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4d

    if-eqz p3, :cond_32

    .line 256
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$labels:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    .line 257
    :goto_33
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$rows:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_3f

    const/4 v2, 0x0

    goto :goto_41

    :cond_3f
    const/16 v2, 0x8

    :goto_41
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez p3, :cond_4a

    if-eqz v0, :cond_4a

    add-int/lit8 p4, p4, 0x1

    :cond_4a
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 260
    :cond_4d
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/AiRoutingCard$1;->val$status:Landroid/widget/TextView;

    if-nez p4, :cond_54

    const-string p2, "\u6ca1\u6709\u5339\u914d\u7684\u8282\u70b9"

    goto :goto_67

    :cond_54
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u8282\u70b9 "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " \u4e2a"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
