.class public Landroidx/core/app/AppLocalesStorageHelper;
.super Ljava/lang/Object;
.source "AppLocalesStorageHelper.java"


# static fields
.field static final APPLICATION_LOCALES_RECORD_FILE:Ljava/lang/String; = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

.field static final DEBUG:Z = false

.field static final LOCALE_RECORD_ATTRIBUTE_TAG:Ljava/lang/String; = "application_locales"

.field static final LOCALE_RECORD_FILE_TAG:Ljava/lang/String; = "locales"

.field static final TAG:Ljava/lang/String; = "AppLocalesStorageHelper"

.field private static final sAppLocaleStorageSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/AppLocalesStorageHelper;->sAppLocaleStorageSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static persistLocales(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "locales"    # Ljava/lang/String;

    .line 122
    sget-object v0, Landroidx/core/app/AppLocalesStorageHelper;->sAppLocaleStorageSync:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_3
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 124
    const-string v1, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 125
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_76

    return-void

    .line 130
    :cond_12
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_14
    const-string v3, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1a} :catch_62
    .catchall {:try_start_14 .. :try_end_1a} :catchall_76

    .line 135
    .local v2, "fos":Ljava/io/FileOutputStream;
    nop

    .line 136
    :try_start_1b
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_76

    .line 138
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v4, 0x0

    :try_start_20
    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 139
    const-string v5, "UTF-8"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    const-string v1, "locales"

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    const-string v1, "application_locales"

    invoke-interface {v3, v4, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string v1, "locales"

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3e} :catch_46
    .catchall {:try_start_20 .. :try_end_3e} :catchall_44

    .line 152
    if-eqz v2, :cond_57

    .line 154
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_55
    .catchall {:try_start_40 .. :try_end_43} :catchall_76

    goto :goto_54

    .line 152
    :catchall_44
    move-exception v1

    goto :goto_59

    .line 148
    :catch_46
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    :try_start_47
    const-string v4, "AppLocalesStorageHelper"

    const-string v5, "Storing App Locales : Failed to persist app-locales in storage "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_44

    .line 152
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_57

    .line 154
    :try_start_51
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_76

    .line 157
    :goto_54
    goto :goto_57

    .line 155
    :catch_55
    move-exception v1

    goto :goto_54

    .line 160
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_57
    :goto_57
    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_76

    .line 161
    return-void

    .line 152
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_59
    if-eqz v2, :cond_60

    .line 154
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_76

    .line 157
    goto :goto_60

    .line 155
    :catch_5f
    move-exception v4

    .line 159
    :cond_60
    :goto_60
    nop

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "locales":Ljava/lang/String;
    :try_start_61
    throw v1

    .line 131
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "locales":Ljava/lang/String;
    :catch_62
    move-exception v3

    .line 132
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    const-string v4, "AppLocalesStorageHelper"

    const-string v5, "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    monitor-exit v0

    return-void

    .line 160
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_61 .. :try_end_78} :catchall_76

    throw v1
.end method

.method public static readLocales(Landroid/content/Context;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 59
    sget-object v0, Landroidx/core/app/AppLocalesStorageHelper;->sAppLocaleStorageSync:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    const-string v1, ""
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7b

    .line 64
    .local v1, "appLocales":Ljava/lang/String;
    :try_start_5
    const-string v2, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_b} :catch_78
    .catchall {:try_start_5 .. :try_end_b} :catchall_7b

    .line 71
    .local v2, "fis":Ljava/io/FileInputStream;
    nop

    .line 73
    :try_start_c
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 74
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "UTF-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 77
    .local v4, "outerDepth":I
    :cond_19
    :goto_19
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_46

    const/4 v5, 0x3

    if-ne v6, v5, :cond_2a

    .line 78
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v4, :cond_46

    .line 79
    :cond_2a
    if-eq v6, v5, :cond_19

    const/4 v5, 0x4

    if-ne v6, v5, :cond_30

    .line 80
    goto :goto_19

    .line 83
    :cond_30
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, "tagName":Ljava/lang/String;
    const-string v7, "locales"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 85
    const-string v7, "application_locales"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_43} :catch_52
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_43} :catch_50
    .catchall {:try_start_c .. :try_end_43} :catchall_4e

    move-object v1, v7

    .line 87
    goto :goto_46

    .line 89
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_45
    goto :goto_19

    .line 95
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "outerDepth":I
    .end local v6    # "type":I
    :cond_46
    :goto_46
    if-eqz v2, :cond_61

    .line 97
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_7b

    .line 100
    :goto_4b
    goto :goto_61

    .line 98
    :catch_4c
    move-exception v3

    goto :goto_4b

    .line 95
    :catchall_4e
    move-exception v3

    goto :goto_6f

    .line 90
    :catch_50
    move-exception v3

    goto :goto_53

    :catch_52
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    :goto_53
    :try_start_53
    const-string v4, "AppLocalesStorageHelper"

    const-string v5, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_4e

    .line 95
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_61

    .line 97
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_4c
    .catchall {:try_start_5d .. :try_end_60} :catchall_7b

    goto :goto_4b

    .line 104
    :cond_61
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_68

    goto :goto_6d

    .line 112
    :cond_68
    const-string v3, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 114
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_7b

    return-object v1

    .line 95
    :goto_6f
    if-eqz v2, :cond_76

    .line 97
    :try_start_71
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75
    .catchall {:try_start_71 .. :try_end_74} :catchall_7b

    .line 100
    goto :goto_76

    .line 98
    :catch_75
    move-exception v4

    .line 102
    :cond_76
    :goto_76
    nop

    .end local p0    # "context":Landroid/content/Context;
    :try_start_77
    throw v3

    .line 65
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_78
    move-exception v2

    .line 70
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v1

    .line 115
    .end local v1    # "appLocales":Ljava/lang/String;
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_7b

    throw v1
.end method
