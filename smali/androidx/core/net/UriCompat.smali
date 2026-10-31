.class public final Landroidx/core/net/UriCompat;
.super Ljava/lang/Object;
.source "UriCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSafeString(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9
    .param p0, "uri"    # Landroid/net/Uri;

    .line 40
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "scheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "ssp":Ljava/lang/String;
    const/16 v2, 0x3a

    const/16 v3, 0x40

    if-eqz v0, :cond_e1

    .line 43
    const-string/jumbo v4, "tel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    const-string/jumbo v4, "sip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 44
    const-string/jumbo v4, "sms"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    const-string/jumbo v4, "smsto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    .line 45
    const-string v4, "mailto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ad

    const-string v4, "nfc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_ad

    .line 60
    :cond_43
    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 61
    const-string v4, "ftp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "rtsp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 62
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "//"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_7b

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    goto :goto_7c

    :cond_7b
    move-object v5, v6

    :goto_7c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_9e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/net/Uri;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_9e
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e1

    .line 46
    :cond_ad
    :goto_ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    if-eqz v1, :cond_dc

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_bb
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_dc

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 52
    .local v5, "c":C
    const/16 v6, 0x2d

    if-eq v5, v6, :cond_d6

    if-eq v5, v3, :cond_d6

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_d0

    goto :goto_d6

    .line 55
    :cond_d0
    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d9

    .line 53
    :cond_d6
    :goto_d6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .end local v5    # "c":C
    :goto_d9
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 59
    .end local v2    # "i":I
    :cond_dc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 70
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_e1
    :goto_e1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v4

    .line 71
    .local v3, "builder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_ef

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_ef
    if-eqz v1, :cond_f4

    .line 76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_f4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
