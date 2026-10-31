.class Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontProvider$ContentQueryWrapper;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi24Impl;,
        Landroidx/core/provider/FontProvider$ContentQueryWrapperApi16Impl;
    }
.end annotation


# static fields
.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 194
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 6
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "shaList":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p0, v2

    .line 222
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v3    # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 224
    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 208
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 209
    return v2

    .line 211
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 212
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 213
    return v2

    .line 211
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 216
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 4
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 188
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 190
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 191
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/CancellationSignal;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 57
    nop

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    invoke-static {v0, p1, v1}, Landroidx/core/provider/FontProvider;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 59
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_16

    .line 60
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1

    return-object v1

    .line 63
    :cond_16
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p1, v1, p2}, Landroidx/core/provider/FontProvider;->query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 65
    .local v1, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->create(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v2

    return-object v2
.end method

.method static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 81
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_78

    .line 86
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 95
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 97
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroidx/core/provider/FontProvider;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    invoke-static {p1, p2}, Landroidx/core/provider/FontProvider;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    invoke-static {v3, v6}, Landroidx/core/provider/FontProvider;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 105
    return-object v1

    .line 100
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 108
    .end local v5    # "i":I
    :cond_4f
    const/4 v5, 0x0

    return-object v5

    .line 87
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_51
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_78
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$static$0([B[B)I
    .registers 5
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .line 195
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 196
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 198
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 199
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_18

    .line 200
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    .line 198
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 203
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method static query(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 122
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 123
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 126
    .local v11, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 128
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 130
    .local v3, "fileBaseUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 131
    .local v12, "cursor":Landroid/database/Cursor;
    move-object/from16 v13, p0

    invoke-static {v13, v11}, Landroidx/core/provider/FontProvider$ContentQueryWrapper$-CC;->make(Landroid/content/Context;Landroid/net/Uri;)Landroidx/core/provider/FontProvider$ContentQueryWrapper;

    move-result-object v14

    .line 133
    .local v14, "queryWrapper":Landroidx/core/provider/FontProvider$ContentQueryWrapper;
    :try_start_39
    const-string v4, "_id"

    const-string v5, "file_id"

    const-string v6, "font_ttc_index"

    const-string v7, "font_variation_settings"

    const-string v8, "font_weight"

    const-string v9, "font_italic"

    const-string v10, "result_code"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, "projection":[Ljava/lang/String;
    const-string v7, "query = ?"

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 140
    const/4 v9, 0x0

    move-object v4, v14

    move-object v5, v11

    move-object/from16 v10, p3

    invoke-interface/range {v4 .. v10}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 143
    if-eqz v12, :cond_107

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_107

    .line 144
    const-string v4, "result_code"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 146
    .local v4, "resultCodeColumnIndex":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 147
    const-string v5, "_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 148
    .local v5, "idColumnIndex":I
    const-string v7, "file_id"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 150
    .local v7, "fileIdColumnIndex":I
    const-string v8, "font_ttc_index"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 152
    .local v8, "ttcIndexColumnIndex":I
    const-string v9, "font_weight"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 154
    .local v9, "weightColumnIndex":I
    const-string v10, "font_italic"

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 156
    .local v10, "italicColumnIndex":I
    :goto_91
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15
    :try_end_95
    .catchall {:try_start_39 .. :try_end_95} :catchall_11c

    if-eqz v15, :cond_100

    .line 157
    const/4 v15, -0x1

    if-eq v4, v15, :cond_a4

    .line 158
    :try_start_9a
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_a6

    .line 178
    .end local v4    # "resultCodeColumnIndex":I
    .end local v5    # "idColumnIndex":I
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "fileIdColumnIndex":I
    .end local v8    # "ttcIndexColumnIndex":I
    .end local v9    # "weightColumnIndex":I
    .end local v10    # "italicColumnIndex":I
    :catchall_9f
    move-exception v0

    move-object/from16 v19, v3

    goto/16 :goto_11f

    .line 159
    .restart local v4    # "resultCodeColumnIndex":I
    .restart local v5    # "idColumnIndex":I
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "fileIdColumnIndex":I
    .restart local v8    # "ttcIndexColumnIndex":I
    .restart local v9    # "weightColumnIndex":I
    .restart local v10    # "italicColumnIndex":I
    :cond_a4
    const/16 v16, 0x0

    :goto_a6
    move/from16 v17, v16

    .line 160
    .local v17, "resultCode":I
    if-eq v8, v15, :cond_af

    .line 161
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    goto :goto_b1

    :cond_af
    const/16 v16, 0x0

    :goto_b1
    move/from16 v18, v16

    .line 163
    .local v18, "ttcIndex":I
    if-ne v7, v15, :cond_c4

    .line 164
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 165
    .local v21, "id":J
    move-wide/from16 v0, v21

    .end local v21    # "id":J
    .local v0, "id":J
    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19
    :try_end_c1
    .catchall {:try_start_9a .. :try_end_c1} :catchall_9f

    move-object/from16 v0, v19

    .line 166
    .local v0, "fileUri":Landroid/net/Uri;
    goto :goto_ce

    .line 167
    .end local v0    # "fileUri":Landroid/net/Uri;
    :cond_c4
    :try_start_c4
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 168
    .local v0, "id":J
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_11c

    move-object/from16 v0, v19

    .line 171
    .local v0, "fileUri":Landroid/net/Uri;
    :goto_ce
    if-eq v9, v15, :cond_d5

    :try_start_d0
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_d4
    .catchall {:try_start_d0 .. :try_end_d4} :catchall_9f

    goto :goto_d7

    :cond_d5
    const/16 v1, 0x190

    .line 172
    .local v1, "weight":I
    :goto_d7
    if-eq v10, v15, :cond_e3

    :try_start_d9
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_dd
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_11c

    move-object/from16 v19, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .local v19, "fileBaseUri":Landroid/net/Uri;
    const/4 v3, 0x1

    if-ne v15, v3, :cond_e5

    goto :goto_e6

    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :cond_e3
    move-object/from16 v19, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :cond_e5
    const/4 v3, 0x0

    .line 174
    .local v3, "italic":Z
    :goto_e6
    move/from16 v15, v17

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "idColumnIndex":I
    .local v4, "ttcIndex":I
    .local v15, "resultCode":I
    .local v17, "resultCodeColumnIndex":I
    .local v18, "idColumnIndex":I
    :try_start_ee
    invoke-static {v0, v4, v1, v3, v15}, Landroidx/core/provider/FontsContractCompat$FontInfo;->create(Landroid/net/Uri;IIZI)Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_fe

    .line 175
    move-object/from16 v1, p2

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v3, v19

    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "weight":I
    .end local v3    # "italic":Z
    .end local v4    # "ttcIndex":I
    .end local v15    # "resultCode":I
    goto :goto_91

    .line 178
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "fileIdColumnIndex":I
    .end local v8    # "ttcIndexColumnIndex":I
    .end local v9    # "weightColumnIndex":I
    .end local v10    # "italicColumnIndex":I
    .end local v17    # "resultCodeColumnIndex":I
    .end local v18    # "idColumnIndex":I
    :catchall_fe
    move-exception v0

    goto :goto_11f

    .line 156
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .local v3, "fileBaseUri":Landroid/net/Uri;
    .local v4, "resultCodeColumnIndex":I
    .restart local v5    # "idColumnIndex":I
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "fileIdColumnIndex":I
    .restart local v8    # "ttcIndexColumnIndex":I
    .restart local v9    # "weightColumnIndex":I
    .restart local v10    # "italicColumnIndex":I
    :cond_100
    move-object/from16 v19, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v4    # "resultCodeColumnIndex":I
    .end local v5    # "idColumnIndex":I
    .restart local v17    # "resultCodeColumnIndex":I
    .restart local v18    # "idColumnIndex":I
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    goto :goto_109

    .line 143
    .end local v7    # "fileIdColumnIndex":I
    .end local v8    # "ttcIndexColumnIndex":I
    .end local v9    # "weightColumnIndex":I
    .end local v10    # "italicColumnIndex":I
    .end local v17    # "resultCodeColumnIndex":I
    .end local v18    # "idColumnIndex":I
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :cond_107
    move-object/from16 v19, v3

    .line 178
    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .end local v6    # "projection":[Ljava/lang/String;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :goto_109
    if-eqz v12, :cond_10e

    .line 179
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_10e
    invoke-interface {v14}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    .line 182
    nop

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0

    .line 178
    .end local v19    # "fileBaseUri":Landroid/net/Uri;
    .restart local v3    # "fileBaseUri":Landroid/net/Uri;
    :catchall_11c
    move-exception v0

    move-object/from16 v19, v3

    .end local v3    # "fileBaseUri":Landroid/net/Uri;
    .restart local v19    # "fileBaseUri":Landroid/net/Uri;
    :goto_11f
    if-eqz v12, :cond_124

    .line 179
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_124
    invoke-interface {v14}, Landroidx/core/provider/FontProvider$ContentQueryWrapper;->close()V

    .line 182
    throw v0
.end method
