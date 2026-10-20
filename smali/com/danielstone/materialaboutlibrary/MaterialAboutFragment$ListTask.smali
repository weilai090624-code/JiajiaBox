.class Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;
.super Landroid/os/AsyncTask;
.source "MaterialAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;
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
.field private final fragmentContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;)V
    .locals 1
    .param p1, "materialAboutFragment"    # Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;

    .line 107
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->fragmentContextReference:Ljava/lang/ref/WeakReference;

    .line 109
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->fragmentContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;

    .line 114
    .local v0, "fragment":Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->getMaterialAboutList(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 103
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->doInBackground([Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V
    .locals 2
    .param p1, "materialAboutList"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 119
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->fragmentContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;

    .line 120
    .local v0, "fragment":Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->setMaterialAboutList(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    .line 122
    invoke-static {v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->access$000(Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;)V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->fragmentContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 125
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 103
    check-cast p1, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {p0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->onPostExecute(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    return-void
.end method
