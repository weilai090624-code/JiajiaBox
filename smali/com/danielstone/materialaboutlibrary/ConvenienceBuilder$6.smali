.class final Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;
.super Ljava/lang/Object;
.source "ConvenienceBuilder.java"

# interfaces
.implements Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createMapOnClickAction(Landroid/content/Context;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$mapIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;->val$mapIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;->val$mapIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;->val$c:Landroid/content/Context;

    sget v2, Lcom/danielstone/materialaboutlibrary/R$string;->mal_activity_exception:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
