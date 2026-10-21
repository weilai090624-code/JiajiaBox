.class public final Lokio/internal/_ByteStringKt;
.super Ljava/lang/Object;
.source "-ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-ByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n+ 2 -Util.kt\nokio/_UtilKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,360:1\n129#1,2:366\n131#1,9:369\n66#2:361\n72#2:362\n72#2:364\n72#2:365\n66#2:393\n72#2:405\n1#3:363\n1#3:368\n212#4,7:378\n122#4:385\n219#4,5:386\n122#4:391\n226#4:392\n228#4:394\n396#4,2:395\n122#4:397\n399#4,6:398\n127#4:404\n405#4:406\n122#4:407\n406#4,13:408\n122#4:421\n421#4:422\n122#4:423\n424#4:424\n230#4,3:425\n439#4,3:428\n122#4:431\n442#4:432\n127#4:433\n445#4,10:434\n127#4:444\n455#4:445\n122#4:446\n456#4,4:447\n127#4:451\n460#4:452\n122#4:453\n461#4,14:454\n122#4:468\n476#4,2:469\n122#4:471\n480#4:472\n122#4:473\n483#4:474\n234#4,3:475\n499#4,3:478\n122#4:481\n502#4:482\n127#4:483\n505#4,2:484\n127#4:486\n509#4,10:487\n127#4:497\n519#4:498\n122#4:499\n520#4,4:500\n127#4:504\n524#4:505\n122#4:506\n525#4,4:507\n127#4:511\n529#4:512\n122#4:513\n530#4,15:514\n122#4:529\n546#4,2:530\n122#4:532\n549#4,2:533\n122#4:535\n553#4:536\n122#4:537\n556#4:538\n241#4:539\n122#4:540\n242#4,5:541\n*S KotlinDebug\n*F\n+ 1 -ByteString.kt\nokio/internal/_ByteStringKt\n*L\n326#1:366,2\n326#1:369,9\n65#1:361\n66#1:362\n256#1:364\n257#1:365\n345#1:393\n345#1:405\n326#1:368\n345#1:378,7\n350#1:385\n345#1:386,5\n350#1:391\n345#1:392\n345#1:394\n345#1:395,2\n350#1:397\n345#1:398,6\n345#1:404\n345#1:406\n350#1:407\n345#1:408,13\n350#1:421\n345#1:422\n350#1:423\n345#1:424\n345#1:425,3\n345#1:428,3\n350#1:431\n345#1:432\n345#1:433\n345#1:434,10\n345#1:444\n345#1:445\n350#1:446\n345#1:447,4\n345#1:451\n345#1:452\n350#1:453\n345#1:454,14\n350#1:468\n345#1:469,2\n350#1:471\n345#1:472\n350#1:473\n345#1:474\n345#1:475,3\n345#1:478,3\n350#1:481\n345#1:482\n345#1:483\n345#1:484,2\n345#1:486\n345#1:487,10\n345#1:497\n345#1:498\n350#1:499\n345#1:500,4\n345#1:504\n345#1:505\n350#1:506\n345#1:507,4\n345#1:511\n345#1:512\n350#1:513\n345#1:514,15\n350#1:529\n345#1:530,2\n350#1:532\n345#1:533,2\n350#1:535\n345#1:536\n350#1:537\n345#1:538\n345#1:539\n350#1:540\n345#1:541,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0007H\u0002\u001a\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0080\u0008\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\r\u0010\u0013\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\u0015\u0010\u0014\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cH\u0080\u0008\u001a-\u0010\u0016\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000c*\u00020\u0012H\u0080\u0008\u001a\r\u0010\u001d\u001a\u00020\u000c*\u00020\u0012H\u0080\u0008\u001a\r\u0010\u001e\u001a\u00020\u000c*\u00020\u0012H\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u000c2\u0006\u0010!\u001a\u00020\tH\u0080\u0008\u001a\u0015\u0010\u001f\u001a\u00020 *\u00020\u000c2\u0006\u0010!\u001a\u00020\u000cH\u0080\u0008\u001a\u0017\u0010\"\u001a\u00020 *\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010#H\u0080\u0008\u001a\u0015\u0010$\u001a\u00020%*\u00020\u000c2\u0006\u0010&\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010\'\u001a\u00020\u0007*\u00020\u000cH\u0080\u0008\u001a\r\u0010(\u001a\u00020\u0007*\u00020\u000cH\u0080\u0008\u001a\r\u0010)\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\u001d\u0010*\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a\r\u0010,\u001a\u00020\t*\u00020\u000cH\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a\u001d\u0010-\u001a\u00020\u0007*\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u0007H\u0080\u0008\u001a-\u0010.\u001a\u00020 *\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a-\u0010.\u001a\u00020 *\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\u0015\u00100\u001a\u00020 *\u00020\u000c2\u0006\u00101\u001a\u00020\tH\u0080\u0008\u001a\u0015\u00100\u001a\u00020 *\u00020\u000c2\u0006\u00101\u001a\u00020\u000cH\u0080\u0008\u001a\u001d\u00102\u001a\u00020\u000c*\u00020\u000c2\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00105\u001a\u00020\u000c*\u00020\u000cH\u0080\u0008\u001a\r\u00106\u001a\u00020\u000c*\u00020\u000cH\u0080\u0008\u001a\r\u00107\u001a\u00020\t*\u00020\u000cH\u0080\u0008\u001a\u001d\u00108\u001a\u00020\u000c*\u00020\t2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0080\u0008\u001a\r\u00109\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a\r\u0010:\u001a\u00020\u0012*\u00020\u000cH\u0080\u0008\u001a$\u0010;\u001a\u00020\u0017*\u00020\u000c2\u0006\u0010<\u001a\u00020=2\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u0007H\u0000\"\u001c\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006>"
    }
    d2 = {
        "HEX_DIGIT_CHARS",
        "",
        "getHEX_DIGIT_CHARS$annotations",
        "()V",
        "getHEX_DIGIT_CHARS",
        "()[C",
        "codePointIndexToCharIndex",
        "",
        "s",
        "",
        "codePointCount",
        "commonOf",
        "Lokio/ByteString;",
        "data",
        "decodeHexDigit",
        "c",
        "",
        "commonBase64",
        "",
        "commonBase64Url",
        "commonCompareTo",
        "other",
        "commonCopyInto",
        "",
        "offset",
        "target",
        "targetOffset",
        "byteCount",
        "commonDecodeBase64",
        "commonDecodeHex",
        "commonEncodeUtf8",
        "commonEndsWith",
        "",
        "suffix",
        "commonEquals",
        "",
        "commonGetByte",
        "",
        "pos",
        "commonGetSize",
        "commonHashCode",
        "commonHex",
        "commonIndexOf",
        "fromIndex",
        "commonInternalArray",
        "commonLastIndexOf",
        "commonRangeEquals",
        "otherOffset",
        "commonStartsWith",
        "prefix",
        "commonSubstring",
        "beginIndex",
        "endIndex",
        "commonToAsciiLowercase",
        "commonToAsciiUppercase",
        "commonToByteArray",
        "commonToByteString",
        "commonToString",
        "commonUtf8",
        "commonWrite",
        "buffer",
        "Lokio/Buffer;",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .registers 3
    .param p0, "s"    # [B
    .param p1, "codePointCount"    # I

    .line 1
    invoke-static {p0, p1}, Lokio/internal/_ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .registers 2
    .param p0, "c"    # C

    .line 1
    invoke-static {p0}, Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I

    move-result v0

    return v0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .registers 32
    .param p0, "s"    # [B
    .param p1, "codePointCount"    # I

    .line 343
    move/from16 v0, p1

    const/4 v1, 0x0

    .line 344
    .local v1, "charCount":I
    const/4 v2, 0x0

    .line 345
    .local v2, "j":I
    const/4 v3, 0x0

    move-object/from16 v4, p0

    .local v3, "beginIndex$iv":I
    array-length v5, v4

    .local v5, "endIndex$iv":I
    move-object/from16 v6, p0

    .local v6, "$this$processUtf8CodePoints$iv":[B
    const/4 v7, 0x0

    .line 378
    .local v7, "$i$f$processUtf8CodePoints":I
    move v8, v3

    .line 379
    .local v8, "index$iv":I
    :cond_c
    :goto_c
    if-ge v8, v5, :cond_797

    .line 380
    aget-byte v9, v6, v8

    .line 381
    .local v9, "b0$iv":B
    nop

    .line 382
    const/16 v10, 0x9f

    const/16 v11, 0x7f

    const/16 v12, 0x1f

    const/16 v14, 0xd

    const/16 v13, 0xa

    const/high16 v15, 0x10000

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-ltz v9, :cond_ab

    .line 384
    move/from16 v19, v9

    .local v19, "c":I
    const/16 v20, 0x0

    .line 346
    .local v20, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .local v21, "j":I
    if-ne v2, v0, :cond_2e

    .line 347
    return v1

    .line 350
    :cond_2e
    move/from16 v2, v19

    .end local v19    # "c":I
    .local v2, "c":I
    if-eq v2, v13, :cond_54

    if-eq v2, v14, :cond_54

    const/16 v19, 0x0

    .line 385
    .local v19, "$i$f$isIsoControl":I
    if-ltz v2, :cond_3d

    if-gt v2, v12, :cond_3d

    const/16 v22, 0x1

    goto :goto_3f

    :cond_3d
    const/16 v22, 0x0

    :goto_3f
    if-nez v22, :cond_50

    if-gt v11, v2, :cond_48

    if-gt v2, v10, :cond_48

    const/16 v22, 0x1

    goto :goto_4a

    :cond_48
    const/16 v22, 0x0

    :goto_4a
    if-eqz v22, :cond_4d

    goto :goto_50

    :cond_4d
    const/16 v19, 0x0

    goto :goto_52

    :cond_50
    :goto_50
    const/16 v19, 0x1

    .line 350
    .end local v19    # "$i$f$isIsoControl":I
    :goto_52
    if-nez v19, :cond_59

    .line 351
    :cond_54
    const v10, 0xfffd

    if-ne v2, v10, :cond_5b

    .line 353
    :cond_59
    const/4 v10, -0x1

    return v10

    .line 356
    :cond_5b
    if-ge v2, v15, :cond_5f

    const/4 v10, 0x1

    goto :goto_60

    :cond_5f
    const/4 v10, 0x2

    :goto_60
    add-int/2addr v1, v10

    .line 357
    nop

    .line 386
    .end local v2    # "c":I
    .end local v20    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v21

    .line 389
    .end local v21    # "j":I
    .local v2, "j":I
    :goto_66
    if-ge v8, v5, :cond_c

    aget-byte v10, v6, v8

    if-ltz v10, :cond_c

    .line 390
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index$iv":I
    .local v10, "index$iv":I
    aget-byte v8, v6, v8

    .local v8, "c":I
    const/16 v20, 0x0

    .line 346
    .restart local v20    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .restart local v21    # "j":I
    if-ne v2, v0, :cond_77

    .line 347
    return v1

    .line 350
    :cond_77
    if-eq v8, v13, :cond_98

    if-eq v8, v14, :cond_98

    const/4 v2, 0x0

    .line 391
    .local v2, "$i$f$isIsoControl":I
    if-ltz v8, :cond_83

    if-gt v8, v12, :cond_83

    const/16 v22, 0x1

    goto :goto_85

    :cond_83
    const/16 v22, 0x0

    :goto_85
    if-nez v22, :cond_95

    if-gt v11, v8, :cond_8f

    const/16 v11, 0x9f

    if-gt v8, v11, :cond_8f

    const/4 v11, 0x1

    goto :goto_90

    :cond_8f
    const/4 v11, 0x0

    :goto_90
    if-eqz v11, :cond_93

    goto :goto_95

    :cond_93
    const/4 v2, 0x0

    goto :goto_96

    :cond_95
    :goto_95
    const/4 v2, 0x1

    .line 350
    .end local v2    # "$i$f$isIsoControl":I
    :goto_96
    if-nez v2, :cond_9d

    .line 351
    :cond_98
    const v2, 0xfffd

    if-ne v8, v2, :cond_9f

    .line 353
    :cond_9d
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_9f
    if-ge v8, v15, :cond_a3

    const/4 v2, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v2, 0x2

    :goto_a4
    add-int/2addr v1, v2

    .line 357
    move v8, v10

    move/from16 v2, v21

    const/16 v11, 0x7f

    .end local v8    # "c":I
    .end local v20    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    goto :goto_66

    .line 392
    .end local v10    # "index$iv":I
    .end local v21    # "j":I
    .local v2, "j":I
    .local v8, "index$iv":I
    :cond_ab
    const/4 v10, 0x5

    .local v10, "other$iv$iv":I
    move v11, v9

    .local v11, "$this$shr$iv$iv":B
    const/16 v20, 0x0

    .line 393
    .local v20, "$i$f$shr":I
    shr-int v10, v11, v10

    .line 392
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$shr$iv$iv":B
    .end local v20    # "$i$f$shr":I
    const/4 v11, -0x2

    if-ne v10, v11, :cond_216

    .line 394
    move-object v10, v6

    .local v10, "$this$process2Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 395
    .local v11, "$i$f$process2Utf8Bytes":I
    add-int/lit8 v15, v8, 0x1

    if-gt v5, v15, :cond_103

    .line 396
    const v15, 0xfffd

    .local v15, "it$iv":I
    const/16 v21, 0x0

    .line 394
    .local v21, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v23, v15

    .local v23, "c":I
    const/16 v24, 0x0

    .line 346
    .local v24, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v25, v2, 0x1

    .end local v2    # "j":I
    .local v25, "j":I
    if-ne v2, v0, :cond_c8

    .line 347
    return v1

    .line 350
    :cond_c8
    move/from16 v2, v23

    .end local v23    # "c":I
    .local v2, "c":I
    if-eq v2, v13, :cond_e9

    if-eq v2, v14, :cond_e9

    const/4 v13, 0x0

    .line 397
    .local v13, "$i$f$isIsoControl":I
    if-ltz v2, :cond_d5

    if-gt v2, v12, :cond_d5

    const/4 v12, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v12, 0x0

    :goto_d6
    if-nez v12, :cond_e5

    const/16 v12, 0x7f

    if-gt v12, v2, :cond_e2

    const/16 v12, 0x9f

    if-gt v2, v12, :cond_e2

    const/4 v12, 0x1

    goto :goto_e3

    :cond_e2
    const/4 v12, 0x0

    :goto_e3
    if-eqz v12, :cond_e7

    :cond_e5
    const/16 v17, 0x1

    .line 350
    .end local v13    # "$i$f$isIsoControl":I
    :cond_e7
    if-nez v17, :cond_ee

    .line 351
    :cond_e9
    const v12, 0xfffd

    if-ne v2, v12, :cond_f0

    .line 353
    :cond_ee
    const/4 v12, -0x1

    return v12

    .line 356
    :cond_f0
    const/high16 v12, 0x10000

    if-ge v2, v12, :cond_f6

    const/16 v16, 0x1

    :cond_f6
    add-int v1, v1, v16

    .line 357
    nop

    .end local v2    # "c":I
    .end local v15    # "it$iv":I
    .end local v21    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    .end local v24    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 398
    move/from16 v27, v3

    move/from16 v2, v25

    const/16 v16, 0x1

    goto/16 :goto_20e

    .line 401
    .end local v25    # "j":I
    .local v2, "j":I
    :cond_103
    aget-byte v15, v10, v8

    .line 402
    .local v15, "b0$iv$iv":B
    add-int/lit8 v23, v8, 0x1

    aget-byte v12, v10, v23

    .line 403
    .local v12, "b1$iv$iv":B
    const/16 v23, 0x0

    .line 404
    .local v23, "$i$f$isUtf8Continuation":I
    const/16 v25, 0xc0

    .local v25, "other$iv$iv$iv$iv":I
    move/from16 v26, v12

    .local v26, "$this$and$iv$iv$iv$iv":B
    const/16 v27, 0x0

    .line 405
    .local v27, "$i$f$and":I
    and-int v14, v26, v25

    .line 404
    .end local v25    # "other$iv$iv$iv$iv":I
    .end local v26    # "$this$and$iv$iv$iv$iv":B
    .end local v27    # "$i$f$and":I
    const/16 v13, 0x80

    if-ne v14, v13, :cond_119

    const/4 v13, 0x1

    goto :goto_11a

    :cond_119
    const/4 v13, 0x0

    .line 403
    .end local v23    # "$i$f$isUtf8Continuation":I
    :goto_11a
    if-nez v13, :cond_16e

    .line 406
    const v13, 0xfffd

    .local v13, "it$iv":I
    const/4 v14, 0x0

    .line 394
    .local v14, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v21, v13

    .local v21, "c":I
    const/16 v23, 0x0

    .line 346
    .local v23, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .local v26, "j":I
    if-ne v2, v0, :cond_129

    .line 347
    return v1

    .line 350
    :cond_129
    move/from16 v27, v3

    move/from16 v2, v21

    const/16 v3, 0xa

    .end local v3    # "beginIndex$iv":I
    .end local v21    # "c":I
    .local v2, "c":I
    .local v27, "beginIndex$iv":I
    if-eq v2, v3, :cond_156

    const/16 v3, 0xd

    if-eq v2, v3, :cond_156

    const/4 v3, 0x0

    .line 407
    .local v3, "$i$f$isIsoControl":I
    if-ltz v2, :cond_140

    move/from16 v21, v3

    const/16 v3, 0x1f

    .end local v3    # "$i$f$isIsoControl":I
    .local v21, "$i$f$isIsoControl":I
    if-gt v2, v3, :cond_142

    const/4 v3, 0x1

    goto :goto_143

    .end local v21    # "$i$f$isIsoControl":I
    .restart local v3    # "$i$f$isIsoControl":I
    :cond_140
    move/from16 v21, v3

    .end local v3    # "$i$f$isIsoControl":I
    .restart local v21    # "$i$f$isIsoControl":I
    :cond_142
    const/4 v3, 0x0

    :goto_143
    if-nez v3, :cond_152

    const/16 v3, 0x7f

    if-gt v3, v2, :cond_14f

    const/16 v3, 0x9f

    if-gt v2, v3, :cond_14f

    const/4 v3, 0x1

    goto :goto_150

    :cond_14f
    const/4 v3, 0x0

    :goto_150
    if-eqz v3, :cond_154

    :cond_152
    const/16 v17, 0x1

    .line 350
    .end local v21    # "$i$f$isIsoControl":I
    :cond_154
    if-nez v17, :cond_15b

    .line 351
    :cond_156
    const v3, 0xfffd

    if-ne v2, v3, :cond_15d

    .line 353
    :cond_15b
    const/4 v3, -0x1

    return v3

    .line 356
    :cond_15d
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_163

    const/16 v16, 0x1

    :cond_163
    add-int v1, v1, v16

    .line 357
    nop

    .end local v2    # "c":I
    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 408
    move/from16 v2, v26

    const/16 v16, 0x1

    goto/16 :goto_20e

    .line 413
    .end local v26    # "j":I
    .end local v27    # "beginIndex$iv":I
    .local v2, "j":I
    .local v3, "beginIndex$iv":I
    :cond_16e
    move/from16 v27, v3

    .line 414
    .end local v3    # "beginIndex$iv":I
    .restart local v27    # "beginIndex$iv":I
    nop

    .line 413
    xor-int/lit16 v3, v12, 0xf80

    .line 415
    shl-int/lit8 v13, v15, 0x6

    .line 413
    xor-int/2addr v3, v13

    .line 411
    nop

    .line 418
    .local v3, "codePoint$iv$iv":I
    nop

    .line 419
    const/16 v13, 0x80

    if-ge v3, v13, :cond_1c6

    .line 420
    const v13, 0xfffd

    .restart local v13    # "it$iv":I
    const/4 v14, 0x0

    .line 394
    .restart local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v21, v13

    .local v21, "c":I
    const/16 v23, 0x0

    .line 346
    .restart local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_189

    .line 347
    return v1

    .line 350
    :cond_189
    move/from16 v2, v21

    const/16 v4, 0xa

    .end local v21    # "c":I
    .local v2, "c":I
    if-eq v2, v4, :cond_1b4

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1b4

    const/4 v4, 0x0

    .line 421
    .local v4, "$i$f$isIsoControl":I
    if-ltz v2, :cond_19e

    move/from16 v21, v4

    const/16 v4, 0x1f

    .end local v4    # "$i$f$isIsoControl":I
    .local v21, "$i$f$isIsoControl":I
    if-gt v2, v4, :cond_1a0

    const/4 v4, 0x1

    goto :goto_1a1

    .end local v21    # "$i$f$isIsoControl":I
    .restart local v4    # "$i$f$isIsoControl":I
    :cond_19e
    move/from16 v21, v4

    .end local v4    # "$i$f$isIsoControl":I
    .restart local v21    # "$i$f$isIsoControl":I
    :cond_1a0
    const/4 v4, 0x0

    :goto_1a1
    if-nez v4, :cond_1b0

    const/16 v4, 0x7f

    if-gt v4, v2, :cond_1ad

    const/16 v4, 0x9f

    if-gt v2, v4, :cond_1ad

    const/4 v4, 0x1

    goto :goto_1ae

    :cond_1ad
    const/4 v4, 0x0

    :goto_1ae
    if-eqz v4, :cond_1b2

    :cond_1b0
    const/16 v17, 0x1

    .line 350
    .end local v21    # "$i$f$isIsoControl":I
    :cond_1b2
    if-nez v17, :cond_1b9

    .line 351
    :cond_1b4
    const v4, 0xfffd

    if-ne v2, v4, :cond_1bb

    .line 353
    :cond_1b9
    const/4 v4, -0x1

    return v4

    .line 356
    :cond_1bb
    const/high16 v4, 0x10000

    if-ge v2, v4, :cond_1c0

    goto :goto_1c2

    :cond_1c0
    const/16 v18, 0x2

    :goto_1c2
    add-int v1, v1, v18

    .line 357
    nop

    .end local v2    # "c":I
    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    goto :goto_20a

    .line 422
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_1c6
    move v4, v3

    .local v4, "it$iv":I
    const/4 v13, 0x0

    .line 394
    .local v13, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move v14, v4

    .local v14, "c":I
    const/16 v21, 0x0

    .line 346
    .local v21, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_1d0

    .line 347
    return v1

    .line 350
    :cond_1d0
    const/16 v2, 0xa

    if-eq v14, v2, :cond_1f9

    const/16 v2, 0xd

    if-eq v14, v2, :cond_1f9

    const/4 v2, 0x0

    .line 423
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_1e3

    move/from16 v23, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .local v23, "$i$f$isIsoControl":I
    if-gt v14, v2, :cond_1e5

    const/4 v2, 0x1

    goto :goto_1e6

    .end local v23    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_1e3
    move/from16 v23, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v23    # "$i$f$isIsoControl":I
    :cond_1e5
    const/4 v2, 0x0

    :goto_1e6
    if-nez v2, :cond_1f5

    const/16 v2, 0x7f

    if-gt v2, v14, :cond_1f2

    const/16 v2, 0x9f

    if-gt v14, v2, :cond_1f2

    const/4 v2, 0x1

    goto :goto_1f3

    :cond_1f2
    const/4 v2, 0x0

    :goto_1f3
    if-eqz v2, :cond_1f7

    :cond_1f5
    const/16 v17, 0x1

    .line 350
    .end local v23    # "$i$f$isIsoControl":I
    :cond_1f7
    if-nez v17, :cond_1fe

    .line 351
    :cond_1f9
    const v2, 0xfffd

    if-ne v14, v2, :cond_200

    .line 353
    :cond_1fe
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_200
    const/high16 v2, 0x10000

    if-ge v14, v2, :cond_205

    goto :goto_207

    :cond_205
    const/16 v18, 0x2

    :goto_207
    add-int v1, v1, v18

    .line 357
    nop

    .end local v4    # "it$iv":I
    .end local v13    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    .end local v14    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    :goto_20a
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 424
    move/from16 v2, v26

    .line 394
    .end local v3    # "codePoint$iv$iv":I
    .end local v10    # "$this$process2Utf8Bytes$iv$iv":[B
    .end local v11    # "$i$f$process2Utf8Bytes":I
    .end local v12    # "b1$iv$iv":B
    .end local v15    # "b0$iv$iv":B
    .end local v26    # "j":I
    .local v2, "j":I
    :goto_20e
    add-int v8, v8, v16

    move-object/from16 v4, p0

    move/from16 v3, v27

    goto/16 :goto_c

    .line 425
    .end local v27    # "beginIndex$iv":I
    .local v3, "beginIndex$iv":I
    :cond_216
    move/from16 v27, v3

    .end local v3    # "beginIndex$iv":I
    .restart local v27    # "beginIndex$iv":I
    const/4 v3, 0x4

    .local v3, "other$iv$iv":I
    move v4, v9

    .local v4, "$this$shr$iv$iv":B
    const/4 v10, 0x0

    .line 393
    .local v10, "$i$f$shr":I
    shr-int v3, v4, v3

    .line 425
    .end local v3    # "other$iv$iv":I
    .end local v4    # "$this$shr$iv$iv":B
    .end local v10    # "$i$f$shr":I
    if-ne v3, v11, :cond_451

    .line 427
    move-object v3, v6

    .local v3, "$this$process3Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 428
    .local v11, "$i$f$process3Utf8Bytes":I
    add-int/lit8 v13, v8, 0x2

    if-gt v5, v13, :cond_288

    .line 430
    const v4, 0xfffd

    .local v4, "it$iv":I
    const/4 v10, 0x0

    .line 427
    .local v10, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v12, v4

    .local v12, "c":I
    const/4 v13, 0x0

    .line 346
    .local v13, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "j":I
    .local v14, "j":I
    if-ne v2, v0, :cond_230

    .line 347
    return v1

    .line 350
    :cond_230
    const/16 v2, 0xa

    if-eq v12, v2, :cond_257

    const/16 v2, 0xd

    if-eq v12, v2, :cond_257

    const/4 v2, 0x0

    .line 431
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_241

    const/16 v15, 0x1f

    if-gt v12, v15, :cond_241

    const/4 v15, 0x1

    goto :goto_242

    :cond_241
    const/4 v15, 0x0

    :goto_242
    if-nez v15, :cond_254

    const/16 v15, 0x7f

    if-gt v15, v12, :cond_24e

    const/16 v15, 0x9f

    if-gt v12, v15, :cond_24e

    const/4 v15, 0x1

    goto :goto_24f

    :cond_24e
    const/4 v15, 0x0

    :goto_24f
    if-eqz v15, :cond_252

    goto :goto_254

    :cond_252
    const/4 v2, 0x0

    goto :goto_255

    :cond_254
    :goto_254
    const/4 v2, 0x1

    .line 350
    .end local v2    # "$i$f$isIsoControl":I
    :goto_255
    if-nez v2, :cond_25c

    .line 351
    :cond_257
    const v2, 0xfffd

    if-ne v12, v2, :cond_25e

    .line 353
    :cond_25c
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_25e
    const/high16 v2, 0x10000

    if-ge v12, v2, :cond_264

    const/4 v2, 0x1

    goto :goto_265

    :cond_264
    const/4 v2, 0x2

    :goto_265
    add-int/2addr v1, v2

    .line 357
    nop

    .end local v4    # "it$iv":I
    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v12    # "c":I
    .end local v13    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 432
    add-int/lit8 v2, v8, 0x1

    if-le v5, v2, :cond_283

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v3, v2

    .local v2, "byte$iv$iv$iv":B
    const/4 v4, 0x0

    .line 433
    .local v4, "$i$f$isUtf8Continuation":I
    const/16 v10, 0xc0

    .local v10, "other$iv$iv$iv$iv":I
    move v12, v2

    .local v12, "$this$and$iv$iv$iv$iv":B
    const/4 v13, 0x0

    .line 405
    .local v13, "$i$f$and":I
    and-int/2addr v10, v12

    .line 433
    .end local v10    # "other$iv$iv$iv$iv":I
    .end local v12    # "$this$and$iv$iv$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v10, v12, :cond_27d

    const/16 v17, 0x1

    .line 432
    .end local v2    # "byte$iv$iv$iv":B
    .end local v4    # "$i$f$isUtf8Continuation":I
    :cond_27d
    if-nez v17, :cond_280

    goto :goto_283

    .line 437
    :cond_280
    move v2, v14

    goto/16 :goto_449

    .line 434
    :cond_283
    :goto_283
    move v2, v14

    const/16 v16, 0x1

    goto/16 :goto_449

    .line 441
    .end local v14    # "j":I
    .local v2, "j":I
    :cond_288
    aget-byte v13, v3, v8

    .line 442
    .local v13, "b0$iv$iv":B
    add-int/lit8 v14, v8, 0x1

    aget-byte v14, v3, v14

    .line 443
    .local v14, "b1$iv$iv":B
    const/4 v15, 0x0

    .line 444
    .local v15, "$i$f$isUtf8Continuation":I
    const/16 v23, 0xc0

    .local v23, "other$iv$iv$iv$iv":I
    move/from16 v26, v14

    .local v26, "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 405
    .local v28, "$i$f$and":I
    and-int v12, v26, v23

    .line 444
    .end local v23    # "other$iv$iv$iv$iv":I
    .end local v26    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v4, 0x80

    if-ne v12, v4, :cond_29d

    const/4 v4, 0x1

    goto :goto_29e

    :cond_29d
    const/4 v4, 0x0

    .line 443
    .end local v15    # "$i$f$isUtf8Continuation":I
    :goto_29e
    if-nez v4, :cond_2ec

    .line 445
    const v4, 0xfffd

    .local v4, "it$iv":I
    const/4 v10, 0x0

    .line 427
    .local v10, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v12, v4

    .local v12, "c":I
    const/4 v15, 0x0

    .line 346
    .local v15, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .local v21, "j":I
    if-ne v2, v0, :cond_2ab

    .line 347
    return v1

    .line 350
    :cond_2ab
    const/16 v2, 0xa

    if-eq v12, v2, :cond_2d4

    const/16 v2, 0xd

    if-eq v12, v2, :cond_2d4

    const/4 v2, 0x0

    .line 446
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_2be

    move/from16 v23, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .local v23, "$i$f$isIsoControl":I
    if-gt v12, v2, :cond_2c0

    const/4 v2, 0x1

    goto :goto_2c1

    .end local v23    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_2be
    move/from16 v23, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v23    # "$i$f$isIsoControl":I
    :cond_2c0
    const/4 v2, 0x0

    :goto_2c1
    if-nez v2, :cond_2d0

    const/16 v2, 0x7f

    if-gt v2, v12, :cond_2cd

    const/16 v2, 0x9f

    if-gt v12, v2, :cond_2cd

    const/4 v2, 0x1

    goto :goto_2ce

    :cond_2cd
    const/4 v2, 0x0

    :goto_2ce
    if-eqz v2, :cond_2d2

    :cond_2d0
    const/16 v17, 0x1

    .line 350
    .end local v23    # "$i$f$isIsoControl":I
    :cond_2d2
    if-nez v17, :cond_2d9

    .line 351
    :cond_2d4
    const v2, 0xfffd

    if-ne v12, v2, :cond_2db

    .line 353
    :cond_2d9
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_2db
    const/high16 v2, 0x10000

    if-ge v12, v2, :cond_2e1

    const/16 v16, 0x1

    :cond_2e1
    add-int v1, v1, v16

    .line 357
    nop

    .end local v4    # "it$iv":I
    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v12    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 447
    move/from16 v2, v21

    const/16 v16, 0x1

    goto/16 :goto_449

    .line 449
    .end local v21    # "j":I
    .local v2, "j":I
    :cond_2ec
    add-int/lit8 v4, v8, 0x2

    aget-byte v4, v3, v4

    .line 450
    .local v4, "b2$iv$iv":B
    const/4 v12, 0x0

    .line 451
    .local v12, "$i$f$isUtf8Continuation":I
    const/16 v15, 0xc0

    .local v15, "other$iv$iv$iv$iv":I
    move/from16 v26, v4

    .restart local v26    # "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 405
    .restart local v28    # "$i$f$and":I
    and-int v15, v26, v15

    .line 451
    .end local v15    # "other$iv$iv$iv$iv":I
    .end local v26    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v10, 0x80

    if-ne v15, v10, :cond_2ff

    const/4 v10, 0x1

    goto :goto_300

    :cond_2ff
    const/4 v10, 0x0

    .line 450
    .end local v12    # "$i$f$isUtf8Continuation":I
    :goto_300
    if-nez v10, :cond_34e

    .line 452
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v12, 0x0

    .line 427
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v15, v10

    .local v15, "c":I
    const/16 v21, 0x0

    .line 346
    .local v21, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v23, v2, 0x1

    .end local v2    # "j":I
    .local v23, "j":I
    if-ne v2, v0, :cond_30e

    .line 347
    return v1

    .line 350
    :cond_30e
    const/16 v2, 0xa

    if-eq v15, v2, :cond_337

    const/16 v2, 0xd

    if-eq v15, v2, :cond_337

    const/4 v2, 0x0

    .line 453
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_321

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .local v25, "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_323

    const/4 v2, 0x1

    goto :goto_324

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_321
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_323
    const/4 v2, 0x0

    :goto_324
    if-nez v2, :cond_333

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_330

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_330

    const/4 v2, 0x1

    goto :goto_331

    :cond_330
    const/4 v2, 0x0

    :goto_331
    if-eqz v2, :cond_335

    :cond_333
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_335
    if-nez v17, :cond_33c

    .line 351
    :cond_337
    const v2, 0xfffd

    if-ne v15, v2, :cond_33e

    .line 353
    :cond_33c
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_33e
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_343

    goto :goto_345

    :cond_343
    const/16 v18, 0x2

    :goto_345
    add-int v1, v1, v18

    .line 357
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v15    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 454
    move/from16 v2, v23

    goto/16 :goto_449

    .line 459
    .end local v23    # "j":I
    .local v2, "j":I
    :cond_34e
    nop

    .line 460
    nop

    .line 459
    const v10, -0x1e080

    xor-int/2addr v10, v4

    .line 461
    shl-int/lit8 v12, v14, 0x6

    .line 459
    xor-int/2addr v10, v12

    .line 462
    shl-int/lit8 v12, v13, 0xc

    .line 459
    xor-int/2addr v10, v12

    .line 457
    nop

    .line 465
    .local v10, "codePoint$iv$iv":I
    nop

    .line 466
    const/16 v12, 0x800

    if-ge v10, v12, :cond_3ae

    .line 467
    const v12, 0xfffd

    .local v12, "it$iv":I
    const/4 v15, 0x0

    .line 427
    .local v15, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move/from16 v21, v12

    .local v21, "c":I
    const/16 v23, 0x0

    .line 346
    .local v23, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .local v26, "j":I
    if-ne v2, v0, :cond_36d

    .line 347
    return v1

    .line 350
    :cond_36d
    move/from16 v2, v21

    move-object/from16 v21, v3

    const/16 v3, 0xa

    .end local v3    # "$this$process3Utf8Bytes$iv$iv":[B
    .local v2, "c":I
    .local v21, "$this$process3Utf8Bytes$iv$iv":[B
    if-eq v2, v3, :cond_39a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_39a

    const/4 v3, 0x0

    .line 468
    .local v3, "$i$f$isIsoControl":I
    if-ltz v2, :cond_384

    move/from16 v25, v3

    const/16 v3, 0x1f

    .end local v3    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v2, v3, :cond_386

    const/4 v3, 0x1

    goto :goto_387

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v3    # "$i$f$isIsoControl":I
    :cond_384
    move/from16 v25, v3

    .end local v3    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_386
    const/4 v3, 0x0

    :goto_387
    if-nez v3, :cond_396

    const/16 v3, 0x7f

    if-gt v3, v2, :cond_393

    const/16 v3, 0x9f

    if-gt v2, v3, :cond_393

    const/4 v3, 0x1

    goto :goto_394

    :cond_393
    const/4 v3, 0x0

    :goto_394
    if-eqz v3, :cond_398

    :cond_396
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_398
    if-nez v17, :cond_39f

    .line 351
    :cond_39a
    const v3, 0xfffd

    if-ne v2, v3, :cond_3a1

    .line 353
    :cond_39f
    const/4 v3, -0x1

    return v3

    .line 356
    :cond_3a1
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_3a7

    const/16 v16, 0x1

    :cond_3a7
    add-int v1, v1, v16

    .line 357
    nop

    .end local v2    # "c":I
    .end local v12    # "it$iv":I
    .end local v15    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    :goto_3aa
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_445

    .line 469
    .end local v21    # "$this$process3Utf8Bytes$iv$iv":[B
    .end local v26    # "j":I
    .local v2, "j":I
    .local v3, "$this$process3Utf8Bytes$iv$iv":[B
    :cond_3ae
    move-object/from16 v21, v3

    .end local v3    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v21    # "$this$process3Utf8Bytes$iv$iv":[B
    const v3, 0xd800

    if-gt v3, v10, :cond_3bc

    const v3, 0xdfff

    if-gt v10, v3, :cond_3bc

    const/4 v3, 0x1

    goto :goto_3bd

    :cond_3bc
    const/4 v3, 0x0

    :goto_3bd
    if-eqz v3, :cond_400

    .line 470
    const v3, 0xfffd

    .local v3, "it$iv":I
    const/4 v12, 0x0

    .line 427
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v15, v3

    .local v15, "c":I
    const/16 v23, 0x0

    .line 346
    .restart local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_3cb

    .line 347
    return v1

    .line 350
    :cond_3cb
    const/16 v2, 0xa

    if-eq v15, v2, :cond_3f4

    const/16 v2, 0xd

    if-eq v15, v2, :cond_3f4

    const/4 v2, 0x0

    .line 471
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_3de

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_3e0

    const/4 v2, 0x1

    goto :goto_3e1

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_3de
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_3e0
    const/4 v2, 0x0

    :goto_3e1
    if-nez v2, :cond_3f0

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_3ed

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_3ed

    const/4 v2, 0x1

    goto :goto_3ee

    :cond_3ed
    const/4 v2, 0x0

    :goto_3ee
    if-eqz v2, :cond_3f2

    :cond_3f0
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_3f2
    if-nez v17, :cond_3f9

    .line 351
    :cond_3f4
    const v2, 0xfffd

    if-ne v15, v2, :cond_3fb

    .line 353
    :cond_3f9
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_3fb
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_440

    goto :goto_43e

    .line 472
    .end local v3    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_400
    move v3, v10

    .restart local v3    # "it$iv":I
    const/4 v12, 0x0

    .line 427
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v15, v3

    .restart local v15    # "c":I
    const/16 v23, 0x0

    .line 346
    .restart local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_40a

    .line 347
    return v1

    .line 350
    :cond_40a
    const/16 v2, 0xa

    if-eq v15, v2, :cond_433

    const/16 v2, 0xd

    if-eq v15, v2, :cond_433

    const/4 v2, 0x0

    .line 473
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_41d

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_41f

    const/4 v2, 0x1

    goto :goto_420

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_41d
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_41f
    const/4 v2, 0x0

    :goto_420
    if-nez v2, :cond_42f

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_42c

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_42c

    const/4 v2, 0x1

    goto :goto_42d

    :cond_42c
    const/4 v2, 0x0

    :goto_42d
    if-eqz v2, :cond_431

    :cond_42f
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_431
    if-nez v17, :cond_438

    .line 351
    :cond_433
    const v2, 0xfffd

    if-ne v15, v2, :cond_43a

    .line 353
    :cond_438
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_43a
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_440

    :goto_43e
    const/16 v16, 0x1

    :cond_440
    add-int v1, v1, v16

    .line 357
    nop

    .end local v3    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    goto/16 :goto_3aa

    .line 474
    :goto_445
    move/from16 v2, v26

    const/16 v16, 0x3

    .line 427
    .end local v4    # "b2$iv$iv":B
    .end local v10    # "codePoint$iv$iv":I
    .end local v11    # "$i$f$process3Utf8Bytes":I
    .end local v13    # "b0$iv$iv":B
    .end local v14    # "b1$iv$iv":B
    .end local v21    # "$this$process3Utf8Bytes$iv$iv":[B
    .end local v26    # "j":I
    .local v2, "j":I
    :goto_449
    add-int v8, v8, v16

    move-object/from16 v4, p0

    move/from16 v3, v27

    goto/16 :goto_c

    .line 475
    :cond_451
    const/4 v3, 0x3

    .local v3, "other$iv$iv":I
    move v4, v9

    .local v4, "$this$shr$iv$iv":B
    const/4 v10, 0x0

    .line 393
    .local v10, "$i$f$shr":I
    shr-int v3, v4, v3

    .line 475
    .end local v3    # "other$iv$iv":I
    .end local v4    # "$this$shr$iv$iv":B
    .end local v10    # "$i$f$shr":I
    if-ne v3, v11, :cond_750

    .line 477
    move-object v3, v6

    .local v3, "$this$process4Utf8Bytes$iv$iv":[B
    const/4 v4, 0x0

    .line 478
    .local v4, "$i$f$process4Utf8Bytes":I
    add-int/lit8 v10, v8, 0x3

    if-gt v5, v10, :cond_4de

    .line 480
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v11, 0x0

    .line 477
    .local v11, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v12, v10

    .local v12, "c":I
    const/4 v13, 0x0

    .line 346
    .local v13, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "j":I
    .local v14, "j":I
    if-ne v2, v0, :cond_469

    .line 347
    return v1

    .line 350
    :cond_469
    const/16 v2, 0xa

    if-eq v12, v2, :cond_490

    const/16 v2, 0xd

    if-eq v12, v2, :cond_490

    const/4 v2, 0x0

    .line 481
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_47a

    const/16 v15, 0x1f

    if-gt v12, v15, :cond_47a

    const/4 v15, 0x1

    goto :goto_47b

    :cond_47a
    const/4 v15, 0x0

    :goto_47b
    if-nez v15, :cond_48d

    const/16 v15, 0x7f

    if-gt v15, v12, :cond_487

    const/16 v15, 0x9f

    if-gt v12, v15, :cond_487

    const/4 v15, 0x1

    goto :goto_488

    :cond_487
    const/4 v15, 0x0

    :goto_488
    if-eqz v15, :cond_48b

    goto :goto_48d

    :cond_48b
    const/4 v2, 0x0

    goto :goto_48e

    :cond_48d
    :goto_48d
    const/4 v2, 0x1

    .line 350
    .end local v2    # "$i$f$isIsoControl":I
    :goto_48e
    if-nez v2, :cond_495

    .line 351
    :cond_490
    const v2, 0xfffd

    if-ne v12, v2, :cond_497

    .line 353
    :cond_495
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_497
    const/high16 v2, 0x10000

    if-ge v12, v2, :cond_49d

    const/4 v2, 0x1

    goto :goto_49e

    :cond_49d
    const/4 v2, 0x2

    :goto_49e
    add-int/2addr v1, v2

    .line 357
    nop

    .end local v10    # "it$iv":I
    .end local v11    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v12    # "c":I
    .end local v13    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 482
    add-int/lit8 v2, v8, 0x1

    if-le v5, v2, :cond_4d9

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v3, v2

    .local v2, "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 483
    .local v10, "$i$f$isUtf8Continuation":I
    const/16 v11, 0xc0

    .local v11, "other$iv$iv$iv$iv":I
    move v12, v2

    .local v12, "$this$and$iv$iv$iv$iv":B
    const/4 v13, 0x0

    .line 405
    .local v13, "$i$f$and":I
    and-int/2addr v11, v12

    .line 483
    .end local v11    # "other$iv$iv$iv$iv":I
    .end local v12    # "$this$and$iv$iv$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v11, v12, :cond_4b6

    const/4 v2, 0x1

    goto :goto_4b7

    :cond_4b6
    const/4 v2, 0x0

    .line 482
    .end local v2    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :goto_4b7
    if-nez v2, :cond_4ba

    goto :goto_4d9

    .line 485
    :cond_4ba
    add-int/lit8 v2, v8, 0x2

    if-le v5, v2, :cond_4d6

    add-int/lit8 v2, v8, 0x2

    aget-byte v2, v3, v2

    .restart local v2    # "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 486
    .restart local v10    # "$i$f$isUtf8Continuation":I
    const/16 v11, 0xc0

    .restart local v11    # "other$iv$iv$iv$iv":I
    move v12, v2

    .restart local v12    # "$this$and$iv$iv$iv$iv":B
    const/4 v13, 0x0

    .line 405
    .restart local v13    # "$i$f$and":I
    and-int/2addr v11, v12

    .line 486
    .end local v11    # "other$iv$iv$iv$iv":I
    .end local v12    # "$this$and$iv$iv$iv$iv":B
    .end local v13    # "$i$f$and":I
    const/16 v12, 0x80

    if-ne v11, v12, :cond_4ce

    const/16 v17, 0x1

    .line 485
    .end local v2    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :cond_4ce
    if-nez v17, :cond_4d1

    goto :goto_4d6

    .line 490
    :cond_4d1
    move v2, v14

    const/16 v16, 0x3

    goto/16 :goto_748

    .line 487
    :cond_4d6
    :goto_4d6
    move v2, v14

    goto/16 :goto_748

    .line 484
    :cond_4d9
    :goto_4d9
    move v2, v14

    const/16 v16, 0x1

    goto/16 :goto_748

    .line 494
    .end local v14    # "j":I
    .local v2, "j":I
    :cond_4de
    aget-byte v10, v3, v8

    .line 495
    .local v10, "b0$iv$iv":B
    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v3, v11

    .line 496
    .local v11, "b1$iv$iv":B
    const/4 v12, 0x0

    .line 497
    .local v12, "$i$f$isUtf8Continuation":I
    const/16 v13, 0xc0

    .local v13, "other$iv$iv$iv$iv":I
    move v14, v11

    .local v14, "$this$and$iv$iv$iv$iv":B
    const/4 v15, 0x0

    .line 405
    .local v15, "$i$f$and":I
    and-int/2addr v13, v14

    .line 497
    .end local v13    # "other$iv$iv$iv$iv":I
    .end local v14    # "$this$and$iv$iv$iv$iv":B
    .end local v15    # "$i$f$and":I
    const/16 v14, 0x80

    if-ne v13, v14, :cond_4f0

    const/4 v12, 0x1

    goto :goto_4f1

    :cond_4f0
    const/4 v12, 0x0

    .line 496
    .end local v12    # "$i$f$isUtf8Continuation":I
    :goto_4f1
    if-nez v12, :cond_53f

    .line 498
    const v12, 0xfffd

    .local v12, "it$iv":I
    const/4 v13, 0x0

    .line 477
    .local v13, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .local v14, "c":I
    const/4 v15, 0x0

    .line 346
    .local v15, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v21, v2, 0x1

    .end local v2    # "j":I
    .local v21, "j":I
    if-ne v2, v0, :cond_4fe

    .line 347
    return v1

    .line 350
    :cond_4fe
    const/16 v2, 0xa

    if-eq v14, v2, :cond_527

    const/16 v2, 0xd

    if-eq v14, v2, :cond_527

    const/4 v2, 0x0

    .line 499
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_511

    move/from16 v23, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .local v23, "$i$f$isIsoControl":I
    if-gt v14, v2, :cond_513

    const/4 v2, 0x1

    goto :goto_514

    .end local v23    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_511
    move/from16 v23, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v23    # "$i$f$isIsoControl":I
    :cond_513
    const/4 v2, 0x0

    :goto_514
    if-nez v2, :cond_523

    const/16 v2, 0x7f

    if-gt v2, v14, :cond_520

    const/16 v2, 0x9f

    if-gt v14, v2, :cond_520

    const/4 v2, 0x1

    goto :goto_521

    :cond_520
    const/4 v2, 0x0

    :goto_521
    if-eqz v2, :cond_525

    :cond_523
    const/16 v17, 0x1

    .line 350
    .end local v23    # "$i$f$isIsoControl":I
    :cond_525
    if-nez v17, :cond_52c

    .line 351
    :cond_527
    const v2, 0xfffd

    if-ne v14, v2, :cond_52e

    .line 353
    :cond_52c
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_52e
    const/high16 v2, 0x10000

    if-ge v14, v2, :cond_534

    const/16 v16, 0x1

    :cond_534
    add-int v1, v1, v16

    .line 357
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 500
    move/from16 v2, v21

    const/16 v16, 0x1

    goto/16 :goto_748

    .line 502
    .end local v21    # "j":I
    .local v2, "j":I
    :cond_53f
    add-int/lit8 v12, v8, 0x2

    aget-byte v12, v3, v12

    .line 503
    .local v12, "b2$iv$iv":B
    const/4 v13, 0x0

    .line 504
    .local v13, "$i$f$isUtf8Continuation":I
    const/16 v14, 0xc0

    .local v14, "other$iv$iv$iv$iv":I
    move v15, v12

    .local v15, "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 405
    .restart local v28    # "$i$f$and":I
    and-int/2addr v14, v15

    .line 504
    .end local v14    # "other$iv$iv$iv$iv":I
    .end local v15    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_550

    const/4 v13, 0x1

    goto :goto_551

    :cond_550
    const/4 v13, 0x0

    .line 503
    .end local v13    # "$i$f$isUtf8Continuation":I
    :goto_551
    if-nez v13, :cond_59f

    .line 505
    const v13, 0xfffd

    .local v13, "it$iv":I
    const/4 v14, 0x0

    .line 477
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v13

    .local v15, "c":I
    const/16 v21, 0x0

    .line 346
    .local v21, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v23, v2, 0x1

    .end local v2    # "j":I
    .local v23, "j":I
    if-ne v2, v0, :cond_55f

    .line 347
    return v1

    .line 350
    :cond_55f
    const/16 v2, 0xa

    if-eq v15, v2, :cond_588

    const/16 v2, 0xd

    if-eq v15, v2, :cond_588

    const/4 v2, 0x0

    .line 506
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_572

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_574

    const/4 v2, 0x1

    goto :goto_575

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_572
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_574
    const/4 v2, 0x0

    :goto_575
    if-nez v2, :cond_584

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_581

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_581

    const/4 v2, 0x1

    goto :goto_582

    :cond_581
    const/4 v2, 0x0

    :goto_582
    if-eqz v2, :cond_586

    :cond_584
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_586
    if-nez v17, :cond_58d

    .line 351
    :cond_588
    const v2, 0xfffd

    if-ne v15, v2, :cond_58f

    .line 353
    :cond_58d
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_58f
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_594

    goto :goto_596

    :cond_594
    const/16 v18, 0x2

    :goto_596
    add-int v1, v1, v18

    .line 357
    nop

    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v15    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 507
    move/from16 v2, v23

    goto/16 :goto_748

    .line 509
    .end local v23    # "j":I
    .local v2, "j":I
    :cond_59f
    add-int/lit8 v13, v8, 0x3

    aget-byte v13, v3, v13

    .line 510
    .local v13, "b3$iv$iv":B
    const/4 v14, 0x0

    .line 511
    .local v14, "$i$f$isUtf8Continuation":I
    const/16 v15, 0xc0

    .local v15, "other$iv$iv$iv$iv":I
    move/from16 v28, v13

    .local v28, "$this$and$iv$iv$iv$iv":B
    const/16 v29, 0x0

    .line 405
    .local v29, "$i$f$and":I
    and-int v15, v28, v15

    .line 511
    .end local v15    # "other$iv$iv$iv$iv":I
    .end local v28    # "$this$and$iv$iv$iv$iv":B
    .end local v29    # "$i$f$and":I
    move-object/from16 v28, v3

    const/16 v3, 0x80

    .end local v3    # "$this$process4Utf8Bytes$iv$iv":[B
    .local v28, "$this$process4Utf8Bytes$iv$iv":[B
    if-ne v15, v3, :cond_5b4

    const/4 v3, 0x1

    goto :goto_5b5

    :cond_5b4
    const/4 v3, 0x0

    .line 510
    .end local v14    # "$i$f$isUtf8Continuation":I
    :goto_5b5
    if-nez v3, :cond_604

    .line 512
    const v3, 0xfffd

    .local v3, "it$iv":I
    const/4 v14, 0x0

    .line 477
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v3

    .local v15, "c":I
    const/16 v21, 0x0

    .line 346
    .restart local v21    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v23, v2, 0x1

    .end local v2    # "j":I
    .restart local v23    # "j":I
    if-ne v2, v0, :cond_5c3

    .line 347
    return v1

    .line 350
    :cond_5c3
    const/16 v2, 0xa

    if-eq v15, v2, :cond_5ec

    const/16 v2, 0xd

    if-eq v15, v2, :cond_5ec

    const/4 v2, 0x0

    .line 513
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_5d6

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_5d8

    const/4 v2, 0x1

    goto :goto_5d9

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_5d6
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_5d8
    const/4 v2, 0x0

    :goto_5d9
    if-nez v2, :cond_5e8

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_5e5

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_5e5

    const/4 v2, 0x1

    goto :goto_5e6

    :cond_5e5
    const/4 v2, 0x0

    :goto_5e6
    if-eqz v2, :cond_5ea

    :cond_5e8
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_5ea
    if-nez v17, :cond_5f1

    .line 351
    :cond_5ec
    const v2, 0xfffd

    if-ne v15, v2, :cond_5f3

    .line 353
    :cond_5f1
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_5f3
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_5f9

    const/16 v16, 0x1

    :cond_5f9
    add-int v1, v1, v16

    .line 357
    nop

    .end local v3    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v15    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 514
    move/from16 v2, v23

    const/16 v16, 0x3

    goto/16 :goto_748

    .line 519
    .end local v23    # "j":I
    .local v2, "j":I
    :cond_604
    nop

    .line 520
    nop

    .line 519
    const v3, 0x381f80

    xor-int/2addr v3, v13

    .line 521
    shl-int/lit8 v14, v12, 0x6

    .line 519
    xor-int/2addr v3, v14

    .line 522
    shl-int/lit8 v14, v11, 0xc

    .line 519
    xor-int/2addr v3, v14

    .line 523
    shl-int/lit8 v14, v10, 0x12

    .line 519
    xor-int/2addr v3, v14

    .line 517
    nop

    .line 526
    .local v3, "codePoint$iv$iv":I
    nop

    .line 527
    const v14, 0x10ffff

    if-le v3, v14, :cond_668

    .line 528
    const v14, 0xfffd

    .local v14, "it$iv":I
    const/4 v15, 0x0

    .line 477
    .local v15, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move/from16 v21, v14

    .local v21, "c":I
    const/16 v23, 0x0

    .line 346
    .local v23, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_627

    .line 347
    return v1

    .line 350
    :cond_627
    move/from16 v2, v21

    move/from16 v21, v4

    const/16 v4, 0xa

    .end local v4    # "$i$f$process4Utf8Bytes":I
    .local v2, "c":I
    .local v21, "$i$f$process4Utf8Bytes":I
    if-eq v2, v4, :cond_654

    const/16 v4, 0xd

    if-eq v2, v4, :cond_654

    const/4 v4, 0x0

    .line 529
    .local v4, "$i$f$isIsoControl":I
    if-ltz v2, :cond_63e

    move/from16 v25, v4

    const/16 v4, 0x1f

    .end local v4    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v2, v4, :cond_640

    const/4 v4, 0x1

    goto :goto_641

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v4    # "$i$f$isIsoControl":I
    :cond_63e
    move/from16 v25, v4

    .end local v4    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_640
    const/4 v4, 0x0

    :goto_641
    if-nez v4, :cond_650

    const/16 v4, 0x7f

    if-gt v4, v2, :cond_64d

    const/16 v4, 0x9f

    if-gt v2, v4, :cond_64d

    const/4 v4, 0x1

    goto :goto_64e

    :cond_64d
    const/4 v4, 0x0

    :goto_64e
    if-eqz v4, :cond_652

    :cond_650
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_652
    if-nez v17, :cond_659

    .line 351
    :cond_654
    const v4, 0xfffd

    if-ne v2, v4, :cond_65b

    .line 353
    :cond_659
    const/4 v4, -0x1

    return v4

    .line 356
    :cond_65b
    const/high16 v4, 0x10000

    if-ge v2, v4, :cond_661

    const/16 v16, 0x1

    :cond_661
    add-int v1, v1, v16

    .line 357
    nop

    .end local v2    # "c":I
    .end local v14    # "it$iv":I
    .end local v15    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    :goto_664
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_744

    .line 530
    .end local v21    # "$i$f$process4Utf8Bytes":I
    .end local v26    # "j":I
    .local v2, "j":I
    .local v4, "$i$f$process4Utf8Bytes":I
    :cond_668
    move/from16 v21, v4

    .end local v4    # "$i$f$process4Utf8Bytes":I
    .restart local v21    # "$i$f$process4Utf8Bytes":I
    const v4, 0xd800

    if-gt v4, v3, :cond_676

    const v4, 0xdfff

    if-gt v3, v4, :cond_676

    const/4 v4, 0x1

    goto :goto_677

    :cond_676
    const/4 v4, 0x0

    :goto_677
    if-eqz v4, :cond_6bf

    .line 531
    const v4, 0xfffd

    .local v4, "it$iv":I
    const/4 v14, 0x0

    .line 477
    .local v14, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v4

    .local v15, "c":I
    const/16 v23, 0x0

    .line 346
    .restart local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_685

    .line 347
    return v1

    .line 350
    :cond_685
    const/16 v2, 0xa

    if-eq v15, v2, :cond_6ae

    const/16 v2, 0xd

    if-eq v15, v2, :cond_6ae

    const/4 v2, 0x0

    .line 532
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_698

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_69a

    const/4 v2, 0x1

    goto :goto_69b

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_698
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_69a
    const/4 v2, 0x0

    :goto_69b
    if-nez v2, :cond_6aa

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_6a7

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_6a7

    const/4 v2, 0x1

    goto :goto_6a8

    :cond_6a7
    const/4 v2, 0x0

    :goto_6a8
    if-eqz v2, :cond_6ac

    :cond_6aa
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_6ac
    if-nez v17, :cond_6b3

    .line 351
    :cond_6ae
    const v2, 0xfffd

    if-ne v15, v2, :cond_6b5

    .line 353
    :cond_6b3
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_6b5
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_6bb

    :goto_6b9
    const/16 v16, 0x1

    :cond_6bb
    add-int v1, v1, v16

    .line 357
    nop

    .end local v4    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    goto :goto_664

    .line 533
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_6bf
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_704

    .line 534
    const v4, 0xfffd

    .restart local v4    # "it$iv":I
    const/4 v14, 0x0

    .line 477
    .restart local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v4

    .restart local v15    # "c":I
    const/16 v23, 0x0

    .line 346
    .restart local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_6cf

    .line 347
    return v1

    .line 350
    :cond_6cf
    const/16 v2, 0xa

    if-eq v15, v2, :cond_6f8

    const/16 v2, 0xd

    if-eq v15, v2, :cond_6f8

    const/4 v2, 0x0

    .line 535
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_6e2

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_6e4

    const/4 v2, 0x1

    goto :goto_6e5

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_6e2
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_6e4
    const/4 v2, 0x0

    :goto_6e5
    if-nez v2, :cond_6f4

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_6f1

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_6f1

    const/4 v2, 0x1

    goto :goto_6f2

    :cond_6f1
    const/4 v2, 0x0

    :goto_6f2
    if-eqz v2, :cond_6f6

    :cond_6f4
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_6f6
    if-nez v17, :cond_6fd

    .line 351
    :cond_6f8
    const v2, 0xfffd

    if-ne v15, v2, :cond_6ff

    .line 353
    :cond_6fd
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_6ff
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_6bb

    goto :goto_6b9

    .line 536
    .end local v4    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_704
    move v4, v3

    .restart local v4    # "it$iv":I
    const/4 v14, 0x0

    .line 477
    .restart local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v15, v4

    .restart local v15    # "c":I
    const/16 v23, 0x0

    .line 346
    .restart local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .restart local v26    # "j":I
    if-ne v2, v0, :cond_70e

    .line 347
    return v1

    .line 350
    :cond_70e
    const/16 v2, 0xa

    if-eq v15, v2, :cond_737

    const/16 v2, 0xd

    if-eq v15, v2, :cond_737

    const/4 v2, 0x0

    .line 537
    .local v2, "$i$f$isIsoControl":I
    if-ltz v15, :cond_721

    move/from16 v25, v2

    const/16 v2, 0x1f

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    if-gt v15, v2, :cond_723

    const/4 v2, 0x1

    goto :goto_724

    .end local v25    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_721
    move/from16 v25, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v25    # "$i$f$isIsoControl":I
    :cond_723
    const/4 v2, 0x0

    :goto_724
    if-nez v2, :cond_733

    const/16 v2, 0x7f

    if-gt v2, v15, :cond_730

    const/16 v2, 0x9f

    if-gt v15, v2, :cond_730

    const/4 v2, 0x1

    goto :goto_731

    :cond_730
    const/4 v2, 0x0

    :goto_731
    if-eqz v2, :cond_735

    :cond_733
    const/16 v17, 0x1

    .line 350
    .end local v25    # "$i$f$isIsoControl":I
    :cond_735
    if-nez v17, :cond_73c

    .line 351
    :cond_737
    const v2, 0xfffd

    if-ne v15, v2, :cond_73e

    .line 353
    :cond_73c
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_73e
    const/high16 v2, 0x10000

    if-ge v15, v2, :cond_6bb

    goto/16 :goto_6b9

    .line 538
    .end local v4    # "it$iv":I
    .end local v14    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v15    # "c":I
    .end local v23    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    :goto_744
    const/16 v16, 0x4

    move/from16 v2, v26

    .line 477
    .end local v3    # "codePoint$iv$iv":I
    .end local v10    # "b0$iv$iv":B
    .end local v11    # "b1$iv$iv":B
    .end local v12    # "b2$iv$iv":B
    .end local v13    # "b3$iv$iv":B
    .end local v21    # "$i$f$process4Utf8Bytes":I
    .end local v26    # "j":I
    .end local v28    # "$this$process4Utf8Bytes$iv$iv":[B
    .local v2, "j":I
    :goto_748
    add-int v8, v8, v16

    move-object/from16 v4, p0

    move/from16 v3, v27

    goto/16 :goto_c

    .line 539
    :cond_750
    const v3, 0xfffd

    .local v3, "c":I
    const/4 v4, 0x0

    .line 346
    .local v4, "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "j":I
    .local v10, "j":I
    if-ne v2, v0, :cond_759

    .line 347
    return v1

    .line 350
    :cond_759
    const/16 v2, 0xa

    if-eq v3, v2, :cond_77e

    const/16 v2, 0xd

    if-eq v3, v2, :cond_77e

    const/4 v2, 0x0

    .line 540
    .local v2, "$i$f$isIsoControl":I
    if-ltz v3, :cond_76a

    const/16 v11, 0x1f

    if-gt v3, v11, :cond_76a

    const/4 v11, 0x1

    goto :goto_76b

    :cond_76a
    const/4 v11, 0x0

    :goto_76b
    if-nez v11, :cond_77a

    const/16 v11, 0x7f

    if-gt v11, v3, :cond_777

    const/16 v11, 0x9f

    if-gt v3, v11, :cond_777

    const/4 v11, 0x1

    goto :goto_778

    :cond_777
    const/4 v11, 0x0

    :goto_778
    if-eqz v11, :cond_77c

    :cond_77a
    const/16 v17, 0x1

    .line 350
    .end local v2    # "$i$f$isIsoControl":I
    :cond_77c
    if-nez v17, :cond_783

    .line 351
    :cond_77e
    const v2, 0xfffd

    if-ne v3, v2, :cond_785

    .line 353
    :cond_783
    const/4 v2, -0x1

    return v2

    .line 356
    :cond_785
    const/high16 v2, 0x10000

    if-ge v3, v2, :cond_78b

    const/16 v16, 0x1

    :cond_78b
    add-int v1, v1, v16

    .line 357
    nop

    .line 541
    .end local v3    # "c":I
    .end local v4    # "$i$a$-processUtf8CodePoints-_ByteStringKt$codePointIndexToCharIndex$1":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, p0

    move v2, v10

    move/from16 v3, v27

    goto/16 :goto_c

    .line 545
    .end local v9    # "b0$iv":B
    .end local v10    # "j":I
    .end local v27    # "beginIndex$iv":I
    .local v2, "j":I
    .local v3, "beginIndex$iv":I
    :cond_797
    nop

    .line 358
    .end local v3    # "beginIndex$iv":I
    .end local v5    # "endIndex$iv":I
    .end local v6    # "$this$processUtf8CodePoints$iv":[B
    .end local v7    # "$i$f$processUtf8CodePoints":I
    .end local v8    # "index$iv":I
    return v1
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .registers 5
    .param p0, "$this$commonBase64"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$commonBase64":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lokio/_Base64Kt;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .registers 4
    .param p0, "$this$commonBase64Url"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 54
    .local v0, "$i$f$commonBase64Url":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-static {}, Lokio/_Base64Kt;->getBASE64_URL_SAFE()[B

    move-result-object v2

    invoke-static {v1, v2}, Lokio/_Base64Kt;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .registers 13
    .param p0, "$this$commonCompareTo"    # Lokio/ByteString;
    .param p1, "other"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 251
    .local v0, "$i$f$commonCompareTo":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    .line 252
    .local v1, "sizeA":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    .line 253
    .local v2, "sizeB":I
    const/4 v3, 0x0

    .line 254
    .local v3, "i":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 255
    .local v4, "size":I
    :goto_18
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_38

    .line 256
    invoke-virtual {p0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v7

    .local v7, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 364
    .local v9, "$i$f$and":I
    and-int/2addr v7, v8

    .line 256
    .end local v7    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    nop

    .line 257
    .local v7, "byteA":I
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .local v8, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 365
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 257
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    nop

    .line 258
    .local v8, "byteB":I
    if-ne v7, v8, :cond_33

    .line 259
    add-int/lit8 v3, v3, 0x1

    .line 260
    goto :goto_18

    .line 262
    :cond_33
    if-ge v7, v8, :cond_36

    goto :goto_37

    :cond_36
    const/4 v5, 0x1

    :goto_37
    return v5

    .line 264
    .end local v7    # "byteA":I
    .end local v8    # "byteB":I
    :cond_38
    if-ne v1, v2, :cond_3c

    const/4 v5, 0x0

    return v5

    .line 265
    :cond_3c
    if-ge v1, v2, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v5, 0x1

    :goto_40
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .registers 8
    .param p0, "$this$commonCopyInto"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "target"    # [B
    .param p3, "targetOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 183
    .local v0, "$i$f$commonCopyInto":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    add-int v2, p1, p4

    invoke-static {v1, p2, p3, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 184
    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 4
    .param p0, "$this$commonDecodeBase64"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    .local v0, "$i$f$commonDecodeBase64":I
    invoke-static {p0}, Lokio/_Base64Kt;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 287
    .local v1, "decoded":[B
    if-eqz v1, :cond_12

    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v1}, Lokio/ByteString;-><init>([B)V

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return-object v2
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 10
    .param p0, "$this$commonDecodeHex"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 292
    .local v0, "$i$f$commonDecodeHex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_48

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 295
    .local v1, "result":[B
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_42

    :cond_22
    move v5, v2

    .local v5, "i":I
    add-int/2addr v2, v3

    .line 296
    mul-int/lit8 v6, v5, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    # invokes: Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I
    invoke-static {v6}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 297
    .local v6, "d1":I
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    # invokes: Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I
    invoke-static {v7}, Lokio/internal/_ByteStringKt;->access$decodeHexDigit(C)I

    move-result v7

    .line 298
    .local v7, "d2":I
    add-int v8, v6, v7

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    .line 295
    .end local v6    # "d1":I
    .end local v7    # "d2":I
    if-le v2, v4, :cond_22

    .line 300
    .end local v5    # "i":I
    :cond_42
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v1}, Lokio/ByteString;-><init>([B)V

    return-object v2

    .line 363
    .end local v1    # "result":[B
    :cond_48
    const/4 v1, 0x0

    .line 292
    .local v1, "$i$a$-require-_ByteStringKt$commonDecodeHex$1":I
    const-string v2, "Unexpected hex string: "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require-_ByteStringKt$commonDecodeHex$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 4
    .param p0, "$this$commonEncodeUtf8"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 279
    .local v0, "$i$f$commonEncodeUtf8":I
    new-instance v1, Lokio/ByteString;

    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    .line 280
    .local v1, "byteString":Lokio/ByteString;
    invoke-virtual {v1, p0}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 281
    return-object v1
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 6
    .param p0, "$this$commonEndsWith"    # Lokio/ByteString;
    .param p1, "suffix"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 196
    .local v0, "$i$f$commonEndsWith":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {p0, v1, p1, v2, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    return v1
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .registers 6
    .param p0, "$this$commonEndsWith"    # Lokio/ByteString;
    .param p1, "suffix"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$commonEndsWith":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    array-length v2, p1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v1, p1, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .registers 8
    .param p0, "$this$commonEquals"    # Lokio/ByteString;
    .param p1, "other"    # Ljava/lang/Object;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 233
    .local v0, "$i$f$commonEquals":I
    nop

    .line 234
    const/4 v1, 0x1

    if-ne p1, p0, :cond_b

    goto :goto_34

    .line 235
    :cond_b
    instance-of v2, p1, Lokio/ByteString;

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    move-object v2, p1

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    if-ne v2, v4, :cond_31

    move-object v2, p1

    check-cast v2, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v3, v5}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_34

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    .line 236
    :cond_33
    const/4 v1, 0x0

    .line 233
    :goto_34
    return v1
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .registers 4
    .param p0, "$this$commonGetByte"    # Lokio/ByteString;
    .param p1, "pos"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 143
    .local v0, "$i$f$commonGetByte":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    aget-byte v1, v1, p1

    return v1
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .registers 3
    .param p0, "$this$commonGetSize"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    .local v0, "$i$f$commonGetSize":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .registers 6
    .param p0, "$this$commonHashCode"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    .local v0, "$i$f$commonHashCode":I
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$okio()I

    move-result v1

    .line 243
    .local v1, "result":I
    if-eqz v1, :cond_d

    return v1

    .line 244
    :cond_d
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .line 245
    .local v4, "$i$a$-also-_ByteStringKt$commonHashCode$1":I
    invoke-virtual {p0, v3}, Lokio/ByteString;->setHashCode$okio(I)V

    .line 246
    nop

    .line 244
    .end local v3    # "it":I
    .end local v4    # "$i$a$-also-_ByteStringKt$commonHashCode$1":I
    return v2
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .registers 13
    .param p0, "$this$commonHex"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    .local v0, "$i$f$commonHex":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 63
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 64
    .local v2, "c":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_3c

    aget-byte v6, v3, v5

    .local v6, "b":B
    add-int/lit8 v5, v5, 0x1

    .line 65
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "c":I
    .local v7, "c":I
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    const/4 v9, 0x4

    .local v9, "other$iv":I
    move v10, v6

    .local v10, "$this$shr$iv":B
    const/4 v11, 0x0

    .line 361
    .local v11, "$i$f$shr":I
    shr-int v9, v10, v9

    .line 65
    .end local v9    # "other$iv":I
    .end local v10    # "$this$shr$iv":B
    .end local v11    # "$i$f$shr":I
    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v2

    .line 66
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "c":I
    .restart local v2    # "c":I
    invoke-static {}, Lokio/internal/_ByteStringKt;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    const/16 v9, 0xf

    .restart local v9    # "other$iv":I
    .local v10, "$this$and$iv":B
    const/4 v11, 0x0

    .line 362
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .end local v9    # "other$iv":I
    .end local v10    # "$this$and$iv":B
    .end local v11    # "$i$f$and":I
    aget-char v8, v8, v9

    aput-char v8, v1, v7

    goto :goto_16

    .line 68
    .end local v6    # "b":B
    :cond_3c
    invoke-static {v1}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .registers 10
    .param p0, "$this$commonIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 204
    .local v0, "$i$f$commonIndexOf":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    .line 205
    .local v1, "limit":I
    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt v3, v1, :cond_2a

    :cond_19
    move v4, v3

    .local v4, "i":I
    add-int/lit8 v3, v3, 0x1

    .line 206
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v6, p1

    invoke-static {v5, v4, p1, v2, v6}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 207
    return v4

    .line 205
    :cond_28
    if-ne v4, v1, :cond_19

    .line 210
    .end local v4    # "i":I
    :cond_2a
    const/4 v2, -0x1

    return v2
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .registers 3
    .param p0, "$this$commonInternalArray"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$commonInternalArray":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .registers 5
    .param p0, "$this$commonLastIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    .local v0, "$i$f$commonLastIndexOf":I
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v1

    return v1
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .registers 12
    .param p0, "$this$commonLastIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    .local v0, "$i$f$commonLastIndexOf":I
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 222
    .local v1, "fromIndex":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 223
    .local v2, "limit":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, -0x1

    if-ltz v3, :cond_2e

    :cond_1d
    move v5, v3

    .local v5, "i":I
    add-int/2addr v3, v4

    .line 224
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, p1

    invoke-static {v6, v5, p1, v7, v8}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 225
    return v5

    .line 223
    :cond_2c
    if-gez v3, :cond_1d

    .line 228
    .end local v5    # "i":I
    :cond_2e
    return v4
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .registers 5
    .param p0, "data"    # [B

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 269
    .local v0, "$i$f$commonOf":I
    new-instance v1, Lokio/ByteString;

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .registers 7
    .param p0, "$this$commonRangeEquals"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    .local v0, "$i$f$commonRangeEquals":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-virtual {p2, p3, v1, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .registers 7
    .param p0, "$this$commonRangeEquals"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 170
    .local v0, "$i$f$commonRangeEquals":I
    if-ltz p1, :cond_27

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_27

    .line 171
    if-ltz p3, :cond_27

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_27

    .line 172
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lokio/_UtilKt;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 169
    :goto_28
    return v1
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .registers 5
    .param p0, "$this$commonStartsWith"    # Lokio/ByteString;
    .param p1, "prefix"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 188
    .local v0, "$i$f$commonStartsWith":I
    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    return v1
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .registers 5
    .param p0, "$this$commonStartsWith"    # Lokio/ByteString;
    .param p1, "prefix"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$f$commonStartsWith":I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .registers 8
    .param p0, "$this$commonSubstring"    # Lokio/ByteString;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    .local v0, "$i$f$commonSubstring":I
    invoke-static {p0, p2}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 130
    .local v1, "endIndex":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_7a

    .line 131
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    if-gt v1, v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    if-eqz v4, :cond_4f

    .line 133
    sub-int v4, v1, p1

    .line 134
    .local v4, "subLen":I
    if-ltz v4, :cond_24

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_3f

    .line 136
    if-nez p1, :cond_31

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_31

    .line 137
    return-object p0

    .line 139
    :cond_31
    new-instance v2, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    invoke-static {v3, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    return-object v2

    .line 363
    :cond_3f
    const/4 v2, 0x0

    .line 134
    .local v2, "$i$a$-require-_ByteStringKt$commonSubstring$3":I
    nop

    .end local v2    # "$i$a$-require-_ByteStringKt$commonSubstring$3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endIndex < beginIndex"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 363
    .end local v4    # "subLen":I
    :cond_4f
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-require-_ByteStringKt$commonSubstring$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex > length("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require-_ByteStringKt$commonSubstring$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 363
    :cond_7a
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-require-_ByteStringKt$commonSubstring$1":I
    nop

    .end local v2    # "$i$a$-require-_ByteStringKt$commonSubstring$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "beginIndex < 0"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 9
    .param p0, "$this$commonToAsciiLowercase"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    .local v0, "$i$f$commonToAsciiLowercase":I
    const/4 v1, 0x0

    .line 75
    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_52

    .line 76
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 77
    .local v2, "c":B
    const/16 v3, 0x41

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4f

    const/16 v4, 0x5a

    int-to-byte v4, v4

    if-le v2, v4, :cond_1f

    goto :goto_4f

    .line 83
    :cond_1f
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .local v5, "lowercase":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v2, 0x20

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 85
    :goto_34
    array-length v1, v5

    if-ge v6, v1, :cond_49

    .line 86
    aget-byte v2, v5, v6

    .line 87
    if-lt v2, v3, :cond_46

    if-le v2, v4, :cond_3e

    goto :goto_46

    .line 91
    :cond_3e
    add-int/lit8 v1, v2, 0x20

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 88
    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    .line 89
    goto :goto_34

    .line 94
    :cond_49
    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v5}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 78
    .end local v5    # "lowercase":[B
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_7

    .line 96
    .end local v2    # "c":B
    :cond_52
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .registers 9
    .param p0, "$this$commonToAsciiUppercase"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    .local v0, "$i$f$commonToAsciiUppercase":I
    const/4 v1, 0x0

    .line 103
    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_52

    .line 104
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 105
    .local v2, "c":B
    const/16 v3, 0x61

    int-to-byte v3, v3

    if-lt v2, v3, :cond_4f

    const/16 v4, 0x7a

    int-to-byte v4, v4

    if-le v2, v4, :cond_1f

    goto :goto_4f

    .line 111
    :cond_1f
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .local v5, "lowercase":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v2, -0x20

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 113
    :goto_34
    array-length v1, v5

    if-ge v6, v1, :cond_49

    .line 114
    aget-byte v2, v5, v6

    .line 115
    if-lt v2, v3, :cond_46

    if-le v2, v4, :cond_3e

    goto :goto_46

    .line 119
    :cond_3e
    add-int/lit8 v1, v2, -0x20

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 116
    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    .line 117
    goto :goto_34

    .line 122
    :cond_49
    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v5}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 106
    .end local v5    # "lowercase":[B
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    .line 107
    goto :goto_7

    .line 124
    .end local v2    # "c":B
    :cond_52
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .registers 4
    .param p0, "$this$commonToByteArray"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    .local v0, "$i$f$commonToByteArray":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .registers 11
    .param p0, "$this$commonToByteString"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 273
    .local v0, "$i$f$commonToByteString":I
    array-length v1, p0

    int-to-long v2, v1

    int-to-long v4, p1

    int-to-long v6, p2

    invoke-static/range {v2 .. v7}, Lokio/_UtilKt;->checkOffsetAndCount(JJJ)V

    .line 274
    new-instance v1, Lokio/ByteString;

    add-int v2, p1, p2

    invoke-static {p0, p1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .registers 23
    .param p0, "$this$commonToString"    # Lokio/ByteString;

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 319
    .local v0, "$i$f$commonToString":I
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_19

    const-string v2, "[size=0]"

    return-object v2

    .line 321
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v2

    const/16 v5, 0x40

    # invokes: Lokio/internal/_ByteStringKt;->codePointIndexToCharIndex([BI)I
    invoke-static {v2, v5}, Lokio/internal/_ByteStringKt;->access$codePointIndexToCharIndex([BI)I

    move-result v2

    .line 322
    .local v2, "i":I
    const/4 v6, -0x1

    const-string v7, "\u2026]"

    const/16 v8, 0x5d

    const-string v9, "[size="

    if-ne v2, v6, :cond_e8

    .line 323
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    if-gt v6, v5, :cond_4f

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ac

    .line 326
    :cond_4f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .local v6, "beginIndex$iv":I
    const/16 v8, 0x40

    .local v8, "endIndex$iv":I
    move-object/from16 v9, p0

    .local v9, "$this$commonSubstring$iv":Lokio/ByteString;
    const/4 v10, 0x0

    .line 366
    .local v10, "$i$f$commonSubstring":I
    invoke-static {v9, v8}, Lokio/_UtilKt;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v11

    .line 367
    .local v11, "endIndex$iv":I
    nop

    .line 369
    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v12

    array-length v12, v12

    if-gt v11, v12, :cond_7b

    const/4 v12, 0x1

    goto :goto_7c

    :cond_7b
    const/4 v12, 0x0

    :goto_7c
    if-eqz v12, :cond_bd

    .line 371
    sub-int v12, v11, v6

    .line 372
    .local v12, "subLen$iv":I
    if-ltz v12, :cond_83

    goto :goto_84

    :cond_83
    const/4 v3, 0x0

    :goto_84
    if-eqz v3, :cond_ad

    .line 374
    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v3

    array-length v3, v3

    if-ne v11, v3, :cond_8e

    .line 375
    goto :goto_9c

    .line 377
    :cond_8e
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v4

    invoke-static {v4, v6, v11}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v9, v3

    .line 326
    .end local v6    # "beginIndex$iv":I
    .end local v8    # "endIndex$iv":I
    .end local v9    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "endIndex$iv":I
    .end local v12    # "subLen$iv":I
    :goto_9c
    invoke-virtual {v9}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    :goto_ac
    return-object v3

    .line 368
    .restart local v6    # "beginIndex$iv":I
    .restart local v8    # "endIndex$iv":I
    .restart local v9    # "$this$commonSubstring$iv":Lokio/ByteString;
    .restart local v10    # "$i$f$commonSubstring":I
    .restart local v11    # "endIndex$iv":I
    .restart local v12    # "subLen$iv":I
    :cond_ad
    const/4 v3, 0x0

    .line 372
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$3$iv":I
    nop

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$3$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endIndex < beginIndex"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 368
    .end local v12    # "subLen$iv":I
    :cond_bd
    const/4 v3, 0x0

    .line 369
    .local v3, "$i$a$-require-_ByteStringKt$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex > length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Lokio/ByteString;->getData$okio()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require-_ByteStringKt$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 330
    .end local v6    # "beginIndex$iv":I
    .end local v8    # "endIndex$iv":I
    .end local v9    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v10    # "$i$f$commonSubstring":I
    .end local v11    # "endIndex$iv":I
    :cond_e8
    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_15c

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "\\"

    const-string v12, "\\\\"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 333
    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "\n"

    const-string v18, "\\n"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 334
    const-string v11, "\r"

    const-string v12, "\\r"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 331
    nop

    .line 335
    .local v4, "safeText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_144

    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_15b

    .line 338
    :cond_144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    :goto_15b
    return-object v5

    .line 331
    .end local v4    # "safeText":Ljava/lang/String;
    :cond_15c
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .registers 4
    .param p0, "$this$commonUtf8"    # Lokio/ByteString;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    .local v0, "$i$f$commonUtf8":I
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$okio()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_17

    .line 44
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$okio()[B

    move-result-object v2

    invoke-static {v2}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lokio/ByteString;->setUtf8$okio(Ljava/lang/String;)V

    .line 47
    :cond_17
    return-object v1
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .registers 5
    .param p0, "$this$commonWrite"    # Lokio/ByteString;
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 306
    return-void
.end method

.method private static final decodeHexDigit(C)I
    .registers 4
    .param p0, "c"    # C

    .line 309
    nop

    .line 310
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_d

    const/16 v0, 0x39

    if-gt p0, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_13

    add-int/lit8 v0, p0, -0x30

    goto :goto_35

    .line 311
    :cond_13
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1d

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_35

    .line 312
    :cond_25
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2e

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_36

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 309
    :goto_35
    return v0

    .line 313
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected hex digit: "

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .registers 1

    .line 57
    sget-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method

.method public static synthetic getHEX_DIGIT_CHARS$annotations()V
    .registers 0

    return-void
.end method
