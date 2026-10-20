.class final Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;
.super Ljava/lang/Object;
.source "ConvenienceBuilder.java"

# interfaces
.implements Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createEmailOnClickAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$chooserTitle:Ljava/lang/CharSequence;

.field final synthetic val$emailIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$emailIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$chooserTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$emailIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$chooserTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;->val$c:Landroid/content/Context;

    sget v2, Lcom/danielstone/materialaboutlibrary/R$string;->mal_activity_exception:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
