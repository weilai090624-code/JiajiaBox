.class public Landroidx/browser/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSessionToken"


# instance fields
.field private final mCallback:Landroidx/browser/customtabs/CustomTabsCallback;

.field final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

.field private final mSessionId:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "callbackBinder"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "sessionId"    # Landroid/app/PendingIntent;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-nez p1, :cond_10

    if-eqz p2, :cond_8

    goto :goto_10

    .line 119
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomTabsSessionToken must have either a session id or a callback (or both)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_10
    :goto_10
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 124
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    .line 126
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1a
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSessionToken$1;

    invoke-direct {v0, p0}, Landroidx/browser/customtabs/CustomTabsSessionToken$1;-><init>(Landroidx/browser/customtabs/CustomTabsSessionToken;)V

    :goto_1f
    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 202
    return-void
.end method

.method public static createMockSessionTokenForTesting()Landroidx/browser/customtabs/CustomTabsSessionToken;
    .registers 3

    .line 113
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSessionToken;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method private getCallbackBinderAssertNotNull()Landroid/os/IBinder;
    .registers 3

    .line 210
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    if-eqz v0, :cond_b

    .line 214
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 211
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CustomTabSessionToken must have valid binder or pending session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSessionTokenFromIntent(Landroid/content/Intent;)Landroidx/browser/customtabs/CustomTabsSessionToken;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 97
    :cond_8
    const-string v2, "android.support.customtabs.extra.SESSION"

    invoke-static {v0, v2}, Landroidx/core/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 98
    .local v2, "binder":Landroid/os/IBinder;
    const-string v3, "android.support.customtabs.extra.SESSION_ID"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 99
    .local v3, "sessionId":Landroid/app/PendingIntent;
    if-nez v2, :cond_1b

    if-nez v3, :cond_1b

    return-object v1

    .line 100
    :cond_1b
    if-nez v2, :cond_1e

    goto :goto_22

    .line 101
    :cond_1e
    invoke-static {v2}, Landroid/support/customtabs/ICustomTabsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;

    move-result-object v1

    :goto_22
    nop

    .line 102
    .local v1, "callback":Landroid/support/customtabs/ICustomTabsCallback;
    new-instance v4, Landroidx/browser/customtabs/CustomTabsSessionToken;

    invoke-direct {v4, v1, v3}, Landroidx/browser/customtabs/CustomTabsSessionToken;-><init>(Landroid/support/customtabs/ICustomTabsCallback;Landroid/app/PendingIntent;)V

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 246
    instance-of v0, p1, Landroidx/browser/customtabs/CustomTabsSessionToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 247
    :cond_6
    move-object v0, p1

    check-cast v0, Landroidx/browser/customtabs/CustomTabsSessionToken;

    .line 249
    .local v0, "other":Landroidx/browser/customtabs/CustomTabsSessionToken;
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getId()Landroid/app/PendingIntent;

    move-result-object v2

    .line 251
    .local v2, "otherSessionId":Landroid/app/PendingIntent;
    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    const/4 v4, 0x1

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-nez v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v4, 0x0

    :goto_19
    if-eq v3, v4, :cond_1c

    return v1

    .line 254
    :cond_1c
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 257
    :cond_27
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCallback()Landroidx/browser/customtabs/CustomTabsCallback;
    .registers 2

    .line 265
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallback:Landroidx/browser/customtabs/CustomTabsCallback;

    return-object v0
.end method

.method getCallbackBinder()Landroid/os/IBinder;
    .registers 2

    .line 205
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_6
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getId()Landroid/app/PendingIntent;
    .registers 2

    .line 218
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public hasCallback()Z
    .registers 2

    .line 226
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasId()Z
    .registers 2

    .line 234
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 239
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mSessionId:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    return v0

    .line 241
    :cond_b
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsSessionToken;->getCallbackBinderAssertNotNull()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssociatedWith(Landroidx/browser/customtabs/CustomTabsSession;)Z
    .registers 4
    .param p1, "session"    # Landroidx/browser/customtabs/CustomTabsSession;

    .line 272
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsSession;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
