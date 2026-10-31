.class final Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;
.super Ljava/lang/Object;
.source "ConvenienceBuilder.java"

# interfaces
.implements Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createWebsiteOnClickAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$websiteUrl:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;->val$websiteUrl:Landroid/net/Uri;

    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;->val$websiteUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    :try_start_c
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;->val$c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    .line 131
    goto :goto_1f

    .line 128
    :catch_12
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;->val$c:Landroid/content/Context;

    sget v3, Lcom/danielstone/materialaboutlibrary/R$string;->mal_activity_exception:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method
