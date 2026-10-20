.class Landroidx/browser/trusted/PackageIdentityUtils$Api28Implementation;
.super Ljava/lang/Object;
.source "PackageIdentityUtils.java"

# interfaces
.implements Landroidx/browser/trusted/PackageIdentityUtils$SignaturesCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/trusted/PackageIdentityUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Implementation"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFingerprintsForPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 86
    const/high16 v0, 0x8000000

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 89
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "fingerprints":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 92
    .local v2, "signingInfo":Landroid/content/pm/SigningInfo;
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v3, v4

    .line 97
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-static {v6}, Landroidx/browser/trusted/PackageIdentityUtils;->getCertificateSHA256Fingerprint(Landroid/content/pm/Signature;)[B

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v6    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :cond_0
    nop

    .line 101
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v3, v3, v4

    .line 100
    invoke-static {v3}, Landroidx/browser/trusted/PackageIdentityUtils;->getCertificateSHA256Fingerprint(Landroid/content/pm/Signature;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    return-object v1
.end method

.method public packageMatchesToken(Ljava/lang/String;Landroid/content/pm/PackageManager;Landroidx/browser/trusted/TokenContents;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "token"    # Landroidx/browser/trusted/TokenContents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-virtual {p3}, Landroidx/browser/trusted/TokenContents;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/browser/trusted/PackageIdentityUtils$Api28Implementation;->getFingerprintsForPackage(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-nez v0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 116
    invoke-virtual {p3, v1}, Landroidx/browser/trusted/TokenContents;->getFingerprint(I)[B

    move-result-object v1

    invoke-virtual {p2, p1, v1, v3}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v1

    return v1

    .line 119
    :cond_2
    invoke-static {p1, v0}, Landroidx/browser/trusted/TokenContents;->create(Ljava/lang/String;Ljava/util/List;)Landroidx/browser/trusted/TokenContents;

    move-result-object v1

    .line 120
    .local v1, "contents":Landroidx/browser/trusted/TokenContents;
    invoke-virtual {p3, v1}, Landroidx/browser/trusted/TokenContents;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
