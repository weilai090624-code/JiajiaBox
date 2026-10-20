.class Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;
.super Landroid/os/AsyncTask;
.source "MaterialAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;)V
    .locals 1
    .param p1, "context"    # Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;

    .line 143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    .line 145
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->getMaterialAboutList(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->doInBackground([Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V
    .locals 1
    .param p1, "materialAboutList"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 154
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;

    invoke-static {v0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->access$000(Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->context:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {p0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->onPostExecute(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    return-void
.end method
