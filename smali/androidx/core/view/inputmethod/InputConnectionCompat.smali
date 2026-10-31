.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;,
        Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final EXTRA_INPUT_CONTENT_INFO:Ljava/lang/String; = "androidx.core.view.extra.INPUT_CONTENT_INFO"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "InputConnectionCompat"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 10
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p3, "flags"    # I
    .param p4, "opts"    # Landroid/os/Bundle;

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_12

    .line 153
    nop

    .line 154
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    .line 153
    invoke-static {p0, v0, p3, p4}, Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;->commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 156
    :cond_12
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v0

    .line 158
    .local v0, "protocol":I
    packed-switch v0, :pswitch_data_6e

    .line 168
    const/4 v1, 0x0

    return v1

    .line 161
    :pswitch_1b
    const/4 v1, 0x0

    .line 162
    .local v1, "interop":Z
    goto :goto_1f

    .line 164
    .end local v1    # "interop":Z
    :pswitch_1d
    const/4 v1, 0x1

    .line 165
    .restart local v1    # "interop":Z
    nop

    .line 171
    :goto_1f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v2, "params":Landroid/os/Bundle;
    if-eqz v1, :cond_29

    .line 173
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2b

    .line 174
    :cond_29
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 175
    :goto_2b
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    if-eqz v1, :cond_37

    .line 177
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_39

    .line 178
    :cond_37
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 179
    :goto_39
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 176
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    if-eqz v1, :cond_45

    .line 181
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_47

    .line 182
    :cond_45
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 183
    :goto_47
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    .line 180
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 184
    if-eqz v1, :cond_53

    .line 185
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_55

    .line 186
    :cond_53
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 184
    :goto_55
    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    if-eqz v1, :cond_5d

    .line 189
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_5f

    .line 190
    :cond_5d
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 188
    :goto_5f
    invoke-virtual {v2, v3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 193
    if-eqz v1, :cond_67

    .line 194
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_69

    .line 195
    :cond_67
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 193
    :goto_69
    invoke-interface {p0, v3, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    return v3

    :pswitch_data_6e
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method private static createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 361
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/view/inputmethod/InputConnectionCompat$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static createWrapper(Landroid/view/View;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 348
    nop

    .line 349
    invoke-static {p0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    move-result-object v0

    .line 350
    .local v0, "onCommitContentListener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    invoke-static {p1, p2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    return-object v1
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .param p0, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    const-string v0, "inputConnection must be non-null"

    invoke-static {p0, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    const-string v0, "editorInfo must be non-null"

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 275
    const-string v0, "onCommitContentListener must be non-null"

    invoke-static {p2, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1d

    .line 279
    move-object v0, p2

    .line 280
    .local v0, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v1, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v1, p0, v2, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v1

    .line 293
    .end local v0    # "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    :cond_1d
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "contentMimeTypes":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_25

    .line 295
    return-object p0

    .line 297
    :cond_25
    move-object v1, p2

    .line 298
    .local v1, "listener":Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    new-instance v3, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v3, p0, v2, v1}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    return-object v3
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 15
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "onCommitContentListener"    # Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    .line 92
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 93
    return v0

    .line 97
    :cond_4
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 98
    const/4 v1, 0x0

    .local v1, "interop":Z
    goto :goto_17

    .line 99
    .end local v1    # "interop":Z
    :cond_e
    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 100
    const/4 v1, 0x1

    .line 104
    .restart local v1    # "interop":Z
    :goto_17
    const/4 v2, 0x0

    .line 105
    .local v2, "resultReceiver":Landroid/os/ResultReceiver;
    const/4 v3, 0x0

    .line 107
    .local v3, "result":Z
    const/4 v4, 0x0

    if-eqz v1, :cond_1f

    .line 108
    :try_start_1c
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_21

    .line 109
    :cond_1f
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 107
    :goto_21
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/ResultReceiver;

    move-object v2, v5

    .line 110
    if-eqz v1, :cond_2d

    .line 111
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_2f

    .line 112
    :cond_2d
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 110
    :goto_2f
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 113
    .local v5, "contentUri":Landroid/net/Uri;
    if-eqz v1, :cond_3a

    .line 114
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_3c

    .line 115
    :cond_3a
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 113
    :goto_3c
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ClipDescription;

    .line 116
    .local v6, "description":Landroid/content/ClipDescription;
    if-eqz v1, :cond_47

    .line 117
    const-string v7, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_49

    .line 118
    :cond_47
    const-string v7, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 116
    :goto_49
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 119
    .local v7, "linkUri":Landroid/net/Uri;
    if-eqz v1, :cond_54

    .line 120
    const-string v8, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_56

    .line 121
    :cond_54
    const-string v8, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 119
    :goto_56
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 122
    .local v8, "flags":I
    if-eqz v1, :cond_5f

    .line 123
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_61

    .line 124
    :cond_5f
    const-string v9, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 122
    :goto_61
    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 125
    .local v9, "opts":Landroid/os/Bundle;
    if-eqz v5, :cond_75

    if-eqz v6, :cond_75

    .line 126
    new-instance v10, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v10, v5, v6, v7}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 128
    .local v10, "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    invoke-interface {p2, v10, v8, v9}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result v11
    :try_end_74
    .catchall {:try_start_1c .. :try_end_74} :catchall_7e

    move v3, v11

    .line 131
    .end local v5    # "contentUri":Landroid/net/Uri;
    .end local v6    # "description":Landroid/content/ClipDescription;
    .end local v7    # "linkUri":Landroid/net/Uri;
    .end local v8    # "flags":I
    .end local v9    # "opts":Landroid/os/Bundle;
    .end local v10    # "inputContentInfo":Landroidx/core/view/inputmethod/InputContentInfoCompat;
    :cond_75
    if-eqz v2, :cond_7d

    .line 132
    if-eqz v3, :cond_7a

    const/4 v0, 0x1

    :cond_7a
    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 135
    :cond_7d
    return v3

    .line 131
    :catchall_7e
    move-exception v0

    if-eqz v2, :cond_84

    .line 132
    invoke-virtual {v2, v3, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 134
    :cond_84
    throw v0

    .line 102
    .end local v1    # "interop":Z
    .end local v2    # "resultReceiver":Landroid/os/ResultReceiver;
    .end local v3    # "result":Z
    :cond_85
    return v0
.end method

.method static synthetic lambda$createOnCommitContentListenerUsingPerformReceiveContent$0(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inputContentInfo"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 363
    move-object v0, p3

    .line 364
    .local v0, "extras":Landroid/os/Bundle;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    const/4 v3, 0x0

    if-lt v1, v2, :cond_32

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_32

    .line 367
    :try_start_c
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_29

    .line 372
    nop

    .line 378
    nop

    .line 379
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 380
    .local v1, "inputContentInfoFmk":Landroid/os/Parcelable;
    new-instance v2, Landroid/os/Bundle;

    if-nez p3, :cond_1f

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_22

    :cond_1f
    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_22
    move-object v0, v2

    .line 381
    const-string v2, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_32

    .line 368
    .end local v1    # "inputContentInfoFmk":Landroid/os/Parcelable;
    :catch_29
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "InputConnectionCompat"

    const-string v4, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    return v3

    .line 383
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    .line 384
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v2, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 385
    .local v1, "clip":Landroid/content/ClipData;
    new-instance v2, Landroidx/core/view/ContentInfoCompat$Builder;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v4}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 386
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/view/ContentInfoCompat$Builder;->setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2, v0}, Landroidx/core/view/ContentInfoCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v2

    .line 388
    invoke-virtual {v2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v2

    .line 389
    .local v2, "payload":Landroidx/core/view/ContentInfoCompat;
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v4

    if-nez v4, :cond_61

    const/4 v3, 0x1

    :cond_61
    return v3
.end method
