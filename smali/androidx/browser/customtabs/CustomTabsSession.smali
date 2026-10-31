.class public final Landroidx/browser/customtabs/CustomTabsSession;
.super Ljava/lang/Object;
.source "CustomTabsSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/browser/customtabs/CustomTabsSession$MockSession;,
        Landroidx/browser/customtabs/CustomTabsSession$PendingSession;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomTabsSession"


# instance fields
.field private final mCallback:Landroid/support/customtabs/ICustomTabsCallback;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mId:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/support/customtabs/ICustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "service"    # Landroid/support/customtabs/ICustomTabsService;
    .param p2, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "sessionId"    # Landroid/app/PendingIntent;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    .line 80
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    .line 81
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    .line 82
    iput-object p4, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    .line 83
    return-void
.end method

.method private addIdToBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 307
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    const-string v0, "android.support.customtabs.extra.SESSION_ID"

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    :cond_b
    return-void
.end method

.method private createBundleWithId(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    .local v0, "bundleWithId":Landroid/os/Bundle;
    if-eqz p1, :cond_a

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 302
    :cond_a
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/CustomTabsSession;->addIdToBundle(Landroid/os/Bundle;)V

    .line 303
    return-object v0
.end method

.method public static createMockSessionForTesting(Landroid/content/ComponentName;)Landroidx/browser/customtabs/CustomTabsSession;
    .registers 5
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 72
    new-instance v0, Landroidx/browser/customtabs/CustomTabsSession;

    new-instance v1, Landroidx/browser/customtabs/CustomTabsSession$MockSession;

    invoke-direct {v1}, Landroidx/browser/customtabs/CustomTabsSession$MockSession;-><init>()V

    new-instance v2, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsSessionToken$MockCallback;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Landroidx/browser/customtabs/CustomTabsSession;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/support/customtabs/ICustomTabsCallback;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    return-object v0
.end method


# virtual methods
.method getBinder()Landroid/os/IBinder;
    .registers 2

    .line 311
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 315
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method getId()Landroid/app/PendingIntent;
    .registers 2

    .line 320
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .line 105
    .local p3, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsSession;->createBundleWithId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 107
    :try_start_4
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/customtabs/ICustomTabsService;->mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 108
    :catch_d
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public postMessage(Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 229
    invoke-direct {p0, p2}, Landroidx/browser/customtabs/CustomTabsSession;->createBundleWithId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 230
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_7
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, p1, p2}, Landroid/support/customtabs/ICustomTabsService;->postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_13
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return v1

    .line 236
    :catchall_11
    move-exception v1

    goto :goto_17

    .line 233
    :catch_13
    move-exception v1

    .line 234
    .local v1, "e":Landroid/os/RemoteException;
    monitor-exit v0

    const/4 v0, -0x2

    return v0

    .line 236
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_11

    throw v1
.end method

.method public receiveFile(Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "purpose"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 291
    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsSession;->createBundleWithId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 293
    :try_start_4
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/customtabs/ICustomTabsService;->receiveFile(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return v0

    .line 294
    :catch_d
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public requestPostMessageChannel(Landroid/net/Uri;)Z
    .registers 5
    .param p1, "postMessageOrigin"    # Landroid/net/Uri;

    .line 203
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mId:Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    .line 204
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    .line 205
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroidx/browser/customtabs/CustomTabsSession;->createBundleWithId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 204
    invoke-interface {v0, v1, p1, v2}, Landroid/support/customtabs/ICustomTabsService;->requestPostMessageChannelWithExtras(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 207
    :cond_12
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v1, p1}, Landroid/support/customtabs/ICustomTabsService;->requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    return v0

    .line 210
    :catch_1b
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setActionButton(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 7
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "description"    # Ljava/lang/String;

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 125
    const-string v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v1, "metaBundle":Landroid/os/Bundle;
    const-string v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/CustomTabsSession;->addIdToBundle(Landroid/os/Bundle;)V

    .line 131
    :try_start_1c
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, v1}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_24} :catch_25

    return v2

    .line 132
    :catch_25
    move-exception v2

    .line 133
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    return v3
.end method

.method public setSecondaryToolbarViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .registers 7
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "clickableIDs"    # [I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 151
    const-string v1, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/CustomTabsSession;->addIdToBundle(Landroid/os/Bundle;)V

    .line 154
    :try_start_17
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v1, v2, v0}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    return v1

    .line 155
    :catch_20
    move-exception v1

    .line 156
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method public setToolbarItem(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 8
    .param p1, "id"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 173
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android.support.customtabs.customaction.ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    const-string v1, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    const-string v1, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 178
    .local v1, "metaBundle":Landroid/os/Bundle;
    const-string v2, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    invoke-direct {p0, v1}, Landroidx/browser/customtabs/CustomTabsSession;->addIdToBundle(Landroid/os/Bundle;)V

    .line 181
    :try_start_21
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v3, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v2, v3, v1}, Landroid/support/customtabs/ICustomTabsService;->updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z

    move-result v2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_2a

    return v2

    .line 182
    :catch_2a
    move-exception v2

    .line 183
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    return v3
.end method

.method public validateRelationship(ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "relation"    # I
    .param p2, "origin"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 261
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_17

    const/4 v0, 0x2

    if-le p1, v0, :cond_8

    goto :goto_17

    .line 265
    :cond_8
    invoke-direct {p0, p3}, Landroidx/browser/customtabs/CustomTabsSession;->createBundleWithId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 267
    :try_start_c
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsSession;->mService:Landroid/support/customtabs/ICustomTabsService;

    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsSession;->mCallback:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0, v2, p1, p2, p3}, Landroid/support/customtabs/ICustomTabsService;->validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    return v0

    .line 268
    :catch_15
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    return v1

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_17
    :goto_17
    return v1
.end method
