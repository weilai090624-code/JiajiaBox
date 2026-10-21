.class public final Lmoe/matsuri/nb4a/ui/NodeRegionFlag;
.super Ljava/lang/Object;
.source "NodeRegionFlag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;,
        Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REGIONS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 44

    .line 7
    const-string v0, "CN"

    const-string v1, "\u4e2d\u56fd|\u4e2d\u570b|\u53f0\u6e7e|\u53f0\u7063|\u5927\u9646|\u5927\u9678|\u5317\u4eac|\u4e0a\u6d77|\u5e7f\u5dde|\u6df1\u5733|(?<![A-Za-z])(?:CN|TW|China|Taiwan)(?![A-Za-z])|\ud83c\udde8\ud83c\uddf3|\ud83c\uddf9\ud83c\uddfc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "HK"

    const-string v1, "\u9999\u6e2f|(?<![A-Za-z])(?:HK|Hong\\s*Kong)(?![A-Za-z])|\ud83c\udded\ud83c\uddf0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "MO"

    const-string v1, "\u6fb3\u95e8|\u6fb3\u9580|(?<![A-Za-z])(?:MO|Macau|Macao)(?![A-Za-z])|\ud83c\uddf2\ud83c\uddf4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "JP"

    const-string v1, "\u65e5\u672c|\u4e1c\u4eac|\u6771\u4eac|\u5927\u962a|(?<![A-Za-z])(?:JP|Japan|Tokyo)(?![A-Za-z])|\ud83c\uddef\ud83c\uddf5"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "US"

    const-string v1, "\u7f8e\u56fd|\u7f8e\u570b|\u6d1b\u6749\u77f6|\u6d1b\u6749\u78ef|(?<![A-Za-z])(?:US|USA|United\\s*States)(?![A-Za-z])|\ud83c\uddfa\ud83c\uddf8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "SG"

    const-string v1, "\u65b0\u52a0\u5761|\u72ee\u57ce|\u7345\u57ce|(?<![A-Za-z])(?:SG|Singapore)(?![A-Za-z])|\ud83c\uddf8\ud83c\uddec"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "KR"

    const-string v1, "\u97e9\u56fd|\u97d3\u570b|\u9996\u5c14|\u9996\u723e|(?<![A-Za-z])(?:KR|Korea|Seoul)(?![A-Za-z])|\ud83c\uddf0\ud83c\uddf7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "GB"

    const-string v1, "\u82f1\u56fd|\u82f1\u570b|\u4f26\u6566|\u502b\u6566|(?<![A-Za-z])(?:UK|GB|Britain|London)(?![A-Za-z])|\ud83c\uddec\ud83c\udde7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "DE"

    const-string v1, "\u5fb7\u56fd|\u5fb7\u570b|(?<![A-Za-z])(?:DE|Germany)(?![A-Za-z])|\ud83c\udde9\ud83c\uddea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "FR"

    const-string v1, "\u6cd5\u56fd|\u6cd5\u570b|\u5df4\u9ece|(?<![A-Za-z])(?:FR|France|Paris)(?![A-Za-z])|\ud83c\uddeb\ud83c\uddf7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "CA"

    const-string v1, "\u52a0\u62ff\u5927|(?<![A-Za-z])(?:CA|Canada)(?![A-Za-z])|\ud83c\udde8\ud83c\udde6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    const-string v0, "AU"

    const-string v1, "\u6fb3\u5927\u5229\u4e9a|\u6fb3\u5927\u5229\u4e9e|\u6fb3\u6d32|(?<![A-Za-z])(?:AU|Australia)(?![A-Za-z])|\ud83c\udde6\ud83c\uddfa"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v0, "RU"

    const-string v1, "\u4fc4\u7f57\u65af|\u4fc4\u7f85\u65af|(?<![A-Za-z])(?:RU|Russia)(?![A-Za-z])|\ud83c\uddf7\ud83c\uddfa"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v14

    const-string v0, "IN"

    const-string v1, "\u5370\u5ea6(?!\u5c3c)|(?<![A-Za-z])(?:IN|India)(?![A-Za-z])|\ud83c\uddee\ud83c\uddf3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v0, "NL"

    const-string v1, "\u8377\u5170|\u8377\u862d|\u963f\u59c6\u65af\u7279\u4e39|(?<![A-Za-z])(?:NL|Netherlands|Amsterdam)(?![A-Za-z])|\ud83c\uddf3\ud83c\uddf1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v16

    const-string v0, "TR"

    const-string v1, "\u571f\u8033\u5176|(?<![A-Za-z])(?:TR|Turkey|T\u00fcrkiye)(?![A-Za-z])|\ud83c\uddf9\ud83c\uddf7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v17

    const-string v0, "TH"

    const-string v1, "\u6cf0\u56fd|\u6cf0\u570b|\u66fc\u8c37|(?<![A-Za-z])(?:TH|Thailand|Bangkok)(?![A-Za-z])|\ud83c\uddf9\ud83c\udded"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v18

    const-string v0, "VN"

    const-string v1, "\u8d8a\u5357|(?<![A-Za-z])(?:VN|Vietnam)(?![A-Za-z])|\ud83c\uddfb\ud83c\uddf3"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v19

    const-string v0, "MY"

    const-string v1, "\u9a6c\u6765\u897f\u4e9a|\u99ac\u4f86\u897f\u4e9e|(?<![A-Za-z])(?:MY|Malaysia)(?![A-Za-z])|\ud83c\uddf2\ud83c\uddfe"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v20

    const-string v0, "ID"

    const-string v1, "\u5370\u5ea6\u5c3c\u897f\u4e9a|\u5370\u5ea6\u5c3c\u897f\u4e9e|\u5370\u5c3c|(?<![A-Za-z])(?:ID|Indonesia)(?![A-Za-z])|\ud83c\uddee\ud83c\udde9"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v21

    const-string v0, "PH"

    const-string v1, "\u83f2\u5f8b\u5bbe|\u83f2\u5f8b\u8cd3|(?<![A-Za-z])(?:PH|Philippines)(?![A-Za-z])|\ud83c\uddf5\ud83c\udded"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v22

    const-string v0, "NZ"

    const-string v1, "\u65b0\u897f\u5170|\u65b0\u897f\u862d|\u7d10\u897f\u862d|(?<![A-Za-z])(?:NZ|New\\s*Zealand)(?![A-Za-z])|\ud83c\uddf3\ud83c\uddff"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v23

    const-string v0, "BR"

    const-string v1, "\u5df4\u897f|(?<![A-Za-z])(?:BR|Brazil)(?![A-Za-z])|\ud83c\udde7\ud83c\uddf7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v24

    const-string v0, "AR"

    const-string v1, "\u963f\u6839\u5ef7|(?<![A-Za-z])(?:AR|Argentina)(?![A-Za-z])|\ud83c\udde6\ud83c\uddf7"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v25

    const-string v0, "MX"

    const-string v1, "\u58a8\u897f\u54e5|(?<![A-Za-z])(?:MX|Mexico)(?![A-Za-z])|\ud83c\uddf2\ud83c\uddfd"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v26

    const-string v0, "ZA"

    const-string v1, "\u5357\u975e|(?<![A-Za-z])(?:ZA|South\\s*Africa)(?![A-Za-z])|\ud83c\uddff\ud83c\udde6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v27

    const-string v0, "AE"

    const-string v1, "\u963f\u8054\u914b|\u963f\u806f\u914b|\u8fea\u62dc|(?<![A-Za-z])(?:AE|UAE|Dubai)(?![A-Za-z])|\ud83c\udde6\ud83c\uddea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v28

    const-string v0, "IT"

    const-string v1, "\u610f\u5927\u5229|\u7fa9\u5927\u5229|(?<![A-Za-z])(?:IT|Italy)(?![A-Za-z])|\ud83c\uddee\ud83c\uddf9"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v29

    const-string v0, "ES"

    const-string v1, "\u897f\u73ed\u7259|(?<![A-Za-z])(?:ES|Spain)(?![A-Za-z])|\ud83c\uddea\ud83c\uddf8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v30

    const-string v0, "PT"

    const-string v1, "\u8461\u8404\u7259|(?<![A-Za-z])(?:PT|Portugal)(?![A-Za-z])|\ud83c\uddf5\ud83c\uddf9"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v31

    const-string v0, "CH"

    const-string v1, "\u745e\u58eb|(?<![A-Za-z])(?:CH|Switzerland)(?![A-Za-z])|\ud83c\udde8\ud83c\udded"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v32

    const-string v0, "SE"

    const-string v1, "\u745e\u5178|(?<![A-Za-z])(?:SE|Sweden)(?![A-Za-z])|\ud83c\uddf8\ud83c\uddea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v33

    const-string v0, "NO"

    const-string v1, "\u632a\u5a01|(?<![A-Za-z])(?:NO|Norway)(?![A-Za-z])|\ud83c\uddf3\ud83c\uddf4"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v34

    const-string v0, "FI"

    const-string v1, "\u82ac\u5170|\u82ac\u862d|(?<![A-Za-z])(?:FI|Finland)(?![A-Za-z])|\ud83c\uddeb\ud83c\uddee"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v35

    const-string v0, "DK"

    const-string v1, "\u4e39\u9ea6|\u4e39\u9ea5|(?<![A-Za-z])(?:DK|Denmark)(?![A-Za-z])|\ud83c\udde9\ud83c\uddf0"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v36

    const-string v0, "PL"

    const-string v1, "\u6ce2\u5170|\u6ce2\u862d|(?<![A-Za-z])(?:PL|Poland)(?![A-Za-z])|\ud83c\uddf5\ud83c\uddf1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v37

    const-string v0, "UA"

    const-string v1, "\u4e4c\u514b\u5170|\u70cf\u514b\u862d|(?<![A-Za-z])(?:UA|Ukraine)(?![A-Za-z])|\ud83c\uddfa\ud83c\udde6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v38

    const-string v0, "IE"

    const-string v1, "\u7231\u5c14\u5170|\u611b\u723e\u862d|(?<![A-Za-z])(?:IE|Ireland)(?![A-Za-z])|\ud83c\uddee\ud83c\uddea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v39

    const-string v0, "BE"

    const-string v1, "\u6bd4\u5229\u65f6|\u6bd4\u5229\u6642|(?<![A-Za-z])(?:BE|Belgium)(?![A-Za-z])|\ud83c\udde7\ud83c\uddea"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v40

    const-string v0, "AT"

    const-string v1, "\u5965\u5730\u5229|\u5967\u5730\u5229|(?<![A-Za-z])(?:AT|Austria)(?![A-Za-z])|\ud83c\udde6\ud83c\uddf9"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v41

    const-string v0, "IL"

    const-string v1, "\u4ee5\u8272\u5217|(?<![A-Za-z])(?:IL|Israel)(?![A-Za-z])|\ud83c\uddee\ud83c\uddf1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v42

    const-string v0, "SA"

    const-string v1, "\u6c99\u7279|\u6c99\u70cf\u5730|(?<![A-Za-z])(?:SA|Saudi\\s*Arabia)(?![A-Za-z])|\ud83c\uddf8\ud83c\udde6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v43

    filled-new-array/range {v2 .. v43}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->REGIONS:[[Ljava/lang/String;

    .line 52
    new-instance v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x100

    invoke-direct {v0, v3, v1, v2}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$1;-><init>(IFZ)V

    sput-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;
    .registers 1

    .line 6
    invoke-static {}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->buildRules()[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    move-result-object v0

    return-object v0
.end method

.method private static buildRules()[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;
    .registers 10

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    sget-object v1, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->REGIONS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    new-instance v6, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    aget-object v7, v5, v3

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-direct {v6, v7, v5}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 72
    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_24
    if-ge v4, v2, :cond_91

    aget-object v5, v1, v4

    .line 73
    new-instance v6, Ljava/util/Locale;

    const-string v7, ""

    invoke-direct {v6, v7, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "|(?<![A-Za-z])(?:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")(?![A-Za-z])"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    new-instance v7, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    const-string v8, "TW"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    const-string v5, "CN"

    :cond_88
    invoke-direct {v7, v5, v6}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 77
    :cond_91
    new-array v1, v3, [Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    return-object v0
.end method

.method public static emblem(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 85
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 86
    :goto_9
    sget-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->CACHE:Ljava/util/Map;

    monitor-enter v0

    .line 87
    :try_start_c
    sget-object v1, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->CACHE:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    if-eqz v1, :cond_18

    monitor-exit v0

    return-object v1

    .line 89
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_2a

    .line 90
    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->identify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v1, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->CACHE:Ljava/util/Map;

    monitor-enter v1

    :try_start_20
    sget-object v2, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->CACHE:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    .line 92
    return-object v0

    .line 91
    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw p0

    .line 89
    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private static identify(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 95
    nop

    .line 96
    nop

    .line 97
    sget-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;->ALL:[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    array-length v1, v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_b
    if-ge v5, v1, :cond_2d

    aget-object v6, v0, v5

    .line 98
    iget-object v7, v6, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 99
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    if-ge v8, v2, :cond_2a

    .line 100
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 101
    iget-object v3, v6, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;->region:Ljava/lang/String;

    .line 102
    if-nez v2, :cond_2a

    goto :goto_2d

    .line 97
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 105
    :cond_2d
    :goto_2d
    sget-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;->FLAG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-ge v1, v2, :cond_4e

    .line 107
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string v0, "\ud83c\uddf9\ud83c\uddfc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "\ud83c\udde8\ud83c\uddf3"

    :cond_4d
    return-object p0

    .line 110
    :cond_4e
    if-eqz v3, :cond_86

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0x1f1e6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x41

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x41

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_86
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string p0, "?"

    goto :goto_9d

    :cond_8f
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_9d
    return-object p0
.end method

.method static synthetic lambda$warmUp$0()V
    .registers 1

    .line 80
    sget-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;->ALL:[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    array-length v0, v0

    return-void
.end method

.method public static warmUp()V
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$0;

    invoke-direct {v1}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$0;-><init>()V

    const-string v2, "jj-region-rules"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method
