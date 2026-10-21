.class public final Lio/nekohasekai/sagernet/ui/GlobeCountries;
.super Ljava/lang/Object;
.source "GlobeCountries.java"


# static fields
.field private static final CENTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v1, "CN,104,35;US,-98,39;JP,138,37;KR,128,36;KP,127,40;HK,114.2,22.3;MO,113.5,22.2;TW,121,24;SG,103.8,1.3;MY,102,4;ID,118,-3;TH,101,15;VN,108,16;PH,123,12;KH,105,13;LA,103,18;MM,96,21;BN,114.7,4.5;TL,126,-9;IN,79,22;PK,69,30;BD,90,24;NP,84,28;BT,90,27;LK,81,7;MV,73,3;AF,66,34;IR,54,32;IQ,44,33;SA,45,24;AE,54,24;QA,51,25;BH,50.6,26;KW,48,29;OM,57,21;YE,48,15;IL,35,31;PS,35.2,31.8;JO,36,31;LB,36,34;SY,38,35;TR,35,39;CY,33,35;GE,44,42;AM,45,40;AZ,48,40;KZ,68,48;UZ,64,41;TM,59,39;TJ,71,39;KG,75,41;MN,103,47;RU,98,60;DE,10,51;GB,-2,54;FR,2,47;NL,5,52;BE,4,51;LU,6,50;CH,8,47;AT,14,48;IT,12,43;ES,-4,40;PT,-8,40;IE,-8,53;IS,-19,65;NO,9,62;SE,15,62;FI,26,64;DK,10,56;PL,19,52;CZ,15,50;SK,20,49;HU,19,47;RO,25,46;BG,25,43;GR,23,39;AL,20,41;MK,22,42;ME,19,43;RS,21,44;BA,18,44;HR,16,45;SI,15,46;UA,32,49;BY,28,54;MD,29,47;LT,24,55;LV,25,57;EE,26,59;AD,1.5,42.5;MC,7.4,43.7;SM,12.5,43.9;VA,12.5,41.9;MT,14.4,35.9;LI,9.5,47.2;XK,21,43;GI,-5.3,36.1;FO,-7,62;GG,-2.6,49.4;JE,-2.1,49.2;IM,-4.5,54.2;AX,20,60;SJ,16,78;CA,-106,57;MX,-102,24;GT,-90,15;BZ,-89,17;HN,-86,15;SV,-89,14;NI,-85,13;CR,-84,10;PA,-80,9;CU,-79,22;JM,-77,18;HT,-73,19;DO,-70,19;BS,-77,25;BB,-59.5,13.2;PR,-66,18;TT,-61,10.5;AG,-61.8,17.1;DM,-61.4,15.4;GD,-61.7,12.1;KN,-62.8,17.3;LC,-61,13.9;VC,-61.2,13.3;GL,-42,72;BM,-64.7,32.3;KY,-81,19.3;TC,-71.8,21.7;AW,-70,12.5;CW,-69,12.2;BQ,-68.3,12.2;SX,-63.1,18;BL,-62.8,17.9;MF,-63.1,18.1;AI,-63,18.2;VG,-64.6,18.4;VI,-64.8,18.3;MS,-62.2,16.7;GP,-61.5,16.2;MQ,-61,14.6;PM,-56.3,46.9;BR,-52,-12;AR,-64,-35;CL,-71,-30;PE,-75,-10;BO,-64,-17;PY,-58,-23;UY,-56,-33;EC,-78,-2;CO,-73,4;VE,-66,8;GY,-59,5;SR,-56,4;GF,-53,4;FK,-59,-52;AU,134,-25;NZ,173,-41;PG,145,-6;FJ,178,-18;SB,160,-9;VU,167,-16;NC,165,-21;WS,-172,-14;TO,-175,-21;TV,179,-8;KI,-157,2;FM,158,7;MH,171,7;PW,134.5,7.5;NR,167,-.5;GU,145,13;MP,146,16;AS,-171,-14;CK,-159,-21;NU,-170,-19;PF,-149,-17;PN,-130,-25;TK,-172,-9;WF,-178,-14;NF,168,-29;CC,97,-12;CX,106,-10;HM,73,-53;UM,-177,28;ZA,25,-29;EG,30,27;MA,-7,32;DZ,3,28;TN,10,34;LY,17,27;SD,30,16;SS,30,7;ET,40,9;ER,39,15;DJ,43,12;SO,46,6;KE,38,1;UG,32,1;TZ,35,-6;RW,30,-2;BI,30,-3;CD,24,-3;CG,15,-1;GA,12,-1;GQ,10,2;CM,12,6;CF,21,7;TD,19,15;NE,9,18;NG,8,9;BJ,2,9;TG,1,8;GH,-2,8;CI,-6,8;LR,-10,6;SL,-12,8;GN,-10,10;GW,-15,12;SN,-14,14;GM,-16,13;ML,-4,17;BF,-2,12;MR,-11,21;EH,-13,25;CV,-24,16;ST,7,0;AO,18,-12;ZM,28,-13;ZW,30,-19;MW,34,-13;MZ,35,-18;BW,24,-22;NA,17,-22;LS,28,-30;SZ,31,-26;MG,47,-19;MU,57.5,-20.2;SC,55.5,-4.6;KM,44,-12;YT,45,-13;RE,55,-21;SH,-6,-16;IO,72,-6;TF,69,-49;AQ,0,-82"

    .line 27
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v2, :cond_36

    aget-object v5, v1, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v3

    const/4 v7, 0x1

    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const/4 v10, 0x2

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    new-array v5, v10, [D

    aput-wide v8, v5, v3

    aput-wide v11, v5, v7

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 28
    :cond_36
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/GlobeCountries;->CENTERS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static center(Ljava/lang/String;)[D
    .registers 2

    .line 31
    sget-object v0, Lio/nekohasekai/sagernet/ui/GlobeCountries;->CENTERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public static name(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_6

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 34
    :cond_6
    const-string v0, "zh"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 35
    const-string v0, "Hant"

    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MO"

    const-string v2, "HK"

    const-string v3, "TW"

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    const/4 v0, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    const/4 v0, 0x1

    .line 36
    :goto_46
    const-string v4, "CN"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    if-eqz v0, :cond_53

    const-string p0, "\u4e2d\u570b\u5927\u9678"

    return-object p0

    :cond_53
    const-string p0, "\u4e2d\u56fd\u5927\u9646"

    return-object p0

    .line 37
    :cond_56
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string p0, "\u9999\u6e2f"

    return-object p0

    .line 38
    :cond_5f
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    if-eqz v0, :cond_6a

    const-string p0, "\u81fa\u7063"

    return-object p0

    :cond_6a
    const-string p0, "\u53f0\u6e7e"

    return-object p0

    .line 39
    :cond_6d
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    if-eqz v0, :cond_78

    const-string p0, "\u6fb3\u9580"

    return-object p0

    :cond_78
    const-string p0, "\u6fb3\u95e8"

    return-object p0

    .line 41
    :cond_7b
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    return-object p0

    :cond_8d
    return-object p1
.end method
