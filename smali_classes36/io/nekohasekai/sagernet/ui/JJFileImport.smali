.class public final Lio/nekohasekai/sagernet/ui/JJFileImport;
.super Ljava/lang/Object;
.source "JJFileImport.java"


# static fields
.field private static final ID_CANCEL:I = 0x7f0a017d

.field private static final ID_IMPORT_FILE:I = 0x7f0a0058

.field private static final ID_OK:I = 0x7f0a0180

.field private static final MAX_TEXT_CHARS:I = 0x1000000

.field public static final REQUEST_CODE:I = 0x4a46

.field private static final STRING_FILE_MANAGER_MISSING:I = 0x7f1300f7

.field private static final STRING_IMPORT_FILE:I = 0x7f13002f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/JJFileImport;->readUtf8(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJFileImport;->invokeExistingImporter(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    .line 38
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJFileImport;->rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleResult(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 7

    if-nez p1, :cond_3

    goto :goto_43

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_43

    .line 125
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "requireContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "requireActivity"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 127
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 128
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_43

    .line 133
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lio/nekohasekai/sagernet/ui/JJFileImport$2;

    invoke-direct {v3, v0, p1, v1, p0}, Lio/nekohasekai/sagernet/ui/JJFileImport$2;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/app/Activity;Ljava/lang/Object;)V

    const-string p0, "jj-file-import"

    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 155
    invoke-virtual {v2, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 156
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :catchall_43
    :goto_43
    return-void
.end method

.method public static install(Ljava/lang/Object;Landroid/view/View;Landroid/app/Dialog;)V
    .registers 9

    const v0, 0x7f0a017d

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_89

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_14

    goto :goto_89

    .line 55
    :cond_14
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0058

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    const v2, 0x7f13002f

    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 66
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 67
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 65
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    new-instance v2, Lio/nekohasekai/sagernet/ui/JJFileImport$1;

    invoke-direct {v2, p2, p0, v0}, Lio/nekohasekai/sagernet/ui/JJFileImport$1;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 89
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_89
    :goto_89
    return-void
.end method

.method private static invokeExistingImporter(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V
    .registers 9

    const/4 v0, 0x1

    .line 180
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "importNodes"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 182
    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception p0

    .line 184
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJFileImport;->rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static polish(Landroid/view/View;)V
    .registers 8

    const v0, 0x7f0a0058

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a017d

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0180

    .line 99
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v0, :cond_6b

    if-eqz v1, :cond_6b

    if-nez v2, :cond_22

    goto :goto_6b

    .line 101
    :cond_22
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v3, v4, :cond_6b

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v3, v4, :cond_37

    goto :goto_6b

    :cond_37
    const/4 v3, 0x3

    .line 103
    new-array v4, v3, [Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/high16 v0, 0x42400000    # 48.0f

    .line 105
    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    .line 106
    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    :goto_53
    if-ge v5, v3, :cond_6b

    .line 108
    aget-object v1, v4, v5

    .line 109
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->plainAction(Landroid/widget/TextView;)V

    .line 110
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v5, :cond_65

    .line 112
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 113
    :cond_65
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    :cond_6b
    :goto_6b
    return-void
.end method

.method private static readUtf8(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2000

    .line 161
    new-array v1, v1, [C

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 164
    :try_start_13
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_53

    .line 167
    :goto_1f
    :try_start_1f
    invoke-virtual {p1, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3c

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x1000000

    if-gt v3, v4, :cond_34

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 169
    :cond_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Selected file is too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_49

    .line 173
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_53

    if-eqz p0, :cond_44

    .line 174
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_49
    move-exception v0

    .line 164
    :try_start_4a
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception p1

    :try_start_4f
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw v0

    :catchall_53
    move-exception p1

    goto :goto_5d

    .line 163
    :cond_55
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to open selected file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_53

    :goto_5d
    if-eqz p0, :cond_67

    .line 162
    :try_start_5f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    throw p1
.end method

.method private static rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 190
    :goto_0
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    .line 191
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 192
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 194
    :cond_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 195
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    return-object v0

    .line 196
    :cond_24
    :goto_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
