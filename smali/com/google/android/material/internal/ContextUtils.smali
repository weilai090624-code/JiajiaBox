.class public Lcom/google/android/material/internal/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 41
    nop

    :goto_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_15

    .line 42
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    .line 43
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 45
    :cond_d
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_1

    .line 47
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method
