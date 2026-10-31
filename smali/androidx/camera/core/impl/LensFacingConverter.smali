.class public Landroidx/camera/core/impl/LensFacingConverter;
.super Ljava/lang/Object;
.source "LensFacingConverter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static nameOf(I)Ljava/lang/String;
    .registers 4
    .param p0, "lensFacing"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lensFacing"
        }
    .end annotation

    .line 71
    packed-switch p0, :pswitch_data_22

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown lens facing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_1c
    const-string v0, "BACK"

    return-object v0

    .line 73
    :pswitch_1f
    const-string v0, "FRONT"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 48
    if-eqz p0, :cond_3f

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_48

    :cond_b
    goto :goto_20

    :sswitch_c
    const-string v0, "FRONT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_21

    :sswitch_16
    const-string v0, "BACK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_21

    :goto_20
    const/4 v0, -0x1

    :goto_21
    packed-switch v0, :pswitch_data_52

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown len facing name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_3d
    return v1

    .line 54
    :pswitch_3e
    return v2

    .line 49
    :cond_3f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_48
    .sparse-switch
        0x1efce7 -> :sswitch_16
        0x400e609 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3d
    .end packed-switch
.end method

.method public static values()[Ljava/lang/Integer;
    .registers 5

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    aput-object v1, v4, v0

    aput-object v3, v4, v2

    return-object v4
.end method
