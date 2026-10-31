.class public final synthetic Landroidx/navigation/NavInflater$$ExternalSyntheticDesugaredLibraryBridge0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Landroidx/navigation/NavType$Companion;Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;
    .registers 6

    .line 0
    if-eqz p1, :cond_3a

    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_3a

    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "j$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/navigation/NavType$Companion;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v1, :cond_39

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavType$Companion;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0

    :cond_39
    throw v0

    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavType$Companion;->fromArgType(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavType;

    move-result-object p0

    return-object p0
.end method
