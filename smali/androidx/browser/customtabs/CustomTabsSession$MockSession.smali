.class Landroidx/browser/customtabs/CustomTabsSession$MockSession;
.super Landroid/support/customtabs/ICustomTabsService$Stub;
.source "CustomTabsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/CustomTabsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MockSession"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public mayLaunchUrl(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 6
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/ICustomTabsCallback;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    .local p4, "otherLikelyBundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z
    .registers 3
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public newSessionWithExtras(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public postMessage(Landroid/support/customtabs/ICustomTabsCallback;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 5
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public receiveFile(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .registers 6
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "purpose"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public requestPostMessageChannel(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;)Z
    .registers 4
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "postMessageOrigin"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public requestPostMessageChannelWithExtras(Landroid/support/customtabs/ICustomTabsCallback;Landroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "postMessageOrigin"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public updateVisuals(Landroid/support/customtabs/ICustomTabsCallback;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public validateRelationship(Landroid/support/customtabs/ICustomTabsCallback;ILandroid/net/Uri;Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "callback"    # Landroid/support/customtabs/ICustomTabsCallback;
    .param p2, "relation"    # I
    .param p3, "origin"    # Landroid/net/Uri;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public warmup(J)Z
    .registers 4
    .param p1, "flags"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    return v0
.end method
