.class public final Lio/nekohasekai/sagernet/widget/QRCodeDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "QRCodeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/widget/QRCodeDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0007J&\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/widget/QRCodeDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "<init>",
        "()V",
        "url",
        "",
        "displayName",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "onCreateView",
        "Landroid/widget/LinearLayout;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lio/nekohasekai/sagernet/widget/QRCodeDialog$Companion;

.field private static final KEY_NAME:Ljava/lang/String; = "io.nekohasekai.sagernet.QRCodeDialog.KEY_NAME"

.field private static final KEY_URL:Ljava/lang/String; = "io.nekohasekai.sagernet.QRCodeDialog.KEY_URL"

.field private static final iso88591:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/widget/QRCodeDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/widget/QRCodeDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->Companion:Lio/nekohasekai/sagernet/widget/QRCodeDialog$Companion;

    .line 31
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->iso88591:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;-><init>()V

    .line 35
    nop

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "io.nekohasekai.sagernet.QRCodeDialog.KEY_URL"

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/Pair;

    const-string v2, "io.nekohasekai.sagernet.QRCodeDialog.KEY_NAME"

    invoke-direct {v1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "p0"    # Landroid/view/LayoutInflater;
    .param p2, "p1"    # Landroid/view/ViewGroup;
    .param p3, "p2"    # Landroid/os/Bundle;

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/widget/LinearLayout;
    .locals 20
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    nop

    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "pixelMin":I
    nop

    .line 54
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v4, "getDisplayMetrics(...)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 56
    .local v4, "height":I
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .local v5, "width":I
    if-le v4, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    move v2, v6

    .line 58
    int-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    goto :goto_1

    .line 97
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v2    # "pixelMin":I
    .end local v4    # "height":I
    .end local v5    # "width":I
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 59
    .restart local v2    # "pixelMin":I
    :catch_1
    move-exception v0

    .line 62
    :goto_1
    if-lez v2, :cond_1

    move v0, v2

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0702cd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    .local v0, "size":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "io.nekohasekai.sagernet.QRCodeDialog.KEY_URL"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v4

    .line 66
    .local v10, "url":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "io.nekohasekai.sagernet.QRCodeDialog.KEY_NAME"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v4

    .line 68
    .local v11, "displayName":Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    move-object v12, v4

    .line 69
    .local v12, "hints":Ljava/util/Map;
    sget-object v4, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->iso88591:Ljava/nio/charset/CharsetEncoder;

    move-object v5, v10

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_4
    new-instance v4, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v5, v10

    move v7, v0

    move v8, v0

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    .line 71
    .local v4, "qrBits":Lcom/google/zxing/common/BitMatrix;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v5

    .local v6, "$this$onCreateView_u24lambda_u243":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    .line 73
    .local v7, "$i$a$-apply-QRCodeDialog$onCreateView$1":I
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    const/16 v8, 0x11

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 77
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    .local v13, "$this$onCreateView_u24lambda_u243_u24lambda_u241":Landroid/widget/ImageView;
    const/4 v14, 0x0

    .line 78
    .local v14, "$i$a$-apply-QRCodeDialog$onCreateView$1$1":I
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    .line 79
    nop

    .line 78
    const/4 v3, -0x2

    invoke-direct {v15, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v16, v15

    .local v16, "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 82
    .local v17, "$i$a$-apply-QRCodeDialog$onCreateView$1$1$1":I
    const/16 v18, 0x0

    move/from16 v3, v18

    .local v3, "x":I
    :goto_5
    if-ge v3, v0, :cond_7

    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "y":I
    :goto_6
    if-ge v8, v0, :cond_6

    .line 83
    invoke-virtual {v4, v3, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    if-eqz v18, :cond_5

    const/high16 v18, -0x1000000

    move/from16 v19, v0

    const/high16 v0, -0x1000000

    goto :goto_7

    :cond_5
    const/16 v18, -0x1

    move/from16 v19, v0

    const/4 v0, -0x1

    .end local v0    # "size":I
    .local v19, "size":I
    :goto_7
    move-object/from16 v1, v16

    .end local v16    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .local v1, "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v3, v8, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 82
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v16, v1

    move/from16 v0, v19

    move-object/from16 v1, p1

    goto :goto_6

    .end local v1    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .end local v19    # "size":I
    .restart local v0    # "size":I
    .restart local v16    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    :cond_6
    move/from16 v19, v0

    move-object/from16 v1, v16

    .end local v0    # "size":I
    .end local v8    # "y":I
    .end local v16    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .restart local v1    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .restart local v19    # "size":I
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0x11

    move-object/from16 v1, p1

    goto :goto_5

    .end local v1    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .end local v19    # "size":I
    .restart local v0    # "size":I
    .restart local v16    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    :cond_7
    move/from16 v19, v0

    move-object/from16 v1, v16

    .line 85
    .end local v0    # "size":I
    .end local v3    # "x":I
    .end local v16    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .restart local v1    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .restart local v19    # "size":I
    nop

    .line 81
    .end local v1    # "$this$onCreateView_u24lambda_u243_u24lambda_u241_u24lambda_u240":Landroid/graphics/Bitmap;
    .end local v17    # "$i$a$-apply-QRCodeDialog$onCreateView$1$1$1":I
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    nop

    .line 77
    .end local v13    # "$this$onCreateView_u24lambda_u243_u24lambda_u241":Landroid/widget/ImageView;
    .end local v14    # "$i$a$-apply-QRCodeDialog$onCreateView$1$1":I
    check-cast v9, Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$onCreateView_u24lambda_u243_u24lambda_u242":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 90
    .local v3, "$i$a$-apply-QRCodeDialog$onCreateView$1$2":I
    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 92
    nop

    .line 91
    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    move-object v8, v11

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    nop

    .line 89
    .end local v1    # "$this$onCreateView_u24lambda_u243_u24lambda_u242":Landroid/widget/TextView;
    .end local v3    # "$i$a$-apply-QRCodeDialog$onCreateView$1$2":I
    check-cast v0, Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    nop

    .line 71
    .end local v6    # "$this$onCreateView_u24lambda_u243":Landroid/widget/LinearLayout;
    .end local v7    # "$i$a$-apply-QRCodeDialog$onCreateView$1":I
    move-object v3, v5

    .end local v2    # "pixelMin":I
    .end local v4    # "qrBits":Lcom/google/zxing/common/BitMatrix;
    .end local v10    # "url":Ljava/lang/String;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "hints":Ljava/util/Map;
    .end local v19    # "size":I
    goto :goto_9

    .line 98
    .local v0, "e":Lcom/google/zxing/WriterException;
    :goto_8
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.MainActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/nekohasekai/sagernet/ui/MainActivity;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getReadableMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<get-readableMessage>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/widget/QRCodeDialog;->dismiss()V

    .line 101
    const/4 v3, 0x0

    .line 102
    .end local v0    # "e":Lcom/google/zxing/WriterException;
    :goto_9
    return-object v3
.end method
