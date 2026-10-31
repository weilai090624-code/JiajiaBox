.class public Lcom/google/android/material/resources/TextAppearanceConfig;
.super Ljava/lang/Object;
.source "TextAppearanceConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static shouldLoadFontSynchronously:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setShouldLoadFontSynchronously(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .line 38
    sput-boolean p0, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously:Z

    .line 39
    return-void
.end method

.method public static shouldLoadFontSynchronously()Z
    .registers 1

    .line 43
    sget-boolean v0, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously:Z

    return v0
.end method
