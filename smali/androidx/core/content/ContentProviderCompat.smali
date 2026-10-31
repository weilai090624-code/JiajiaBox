.class public final Landroidx/core/content/ContentProviderCompat;
.super Ljava/lang/Object;
.source "ContentProviderCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static requireContext(Landroid/content/ContentProvider;)Landroid/content/Context;
    .registers 4
    .param p0, "provider"    # Landroid/content/ContentProvider;

    .line 45
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_7

    .line 49
    return-object v0

    .line 47
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find context from the provider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
