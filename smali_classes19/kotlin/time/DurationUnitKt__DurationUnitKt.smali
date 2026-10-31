.class Lkotlin/time/DurationUnitKt__DurationUnitKt;
.super Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;
.source "DurationUnit.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/DurationUnitKt__DurationUnitKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0001\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\u0001\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\u0001H\u0001\u00a8\u0006\t"
    }
    d2 = {
        "durationUnitByIsoChar",
        "Lkotlin/time/DurationUnit;",
        "isoChar",
        "",
        "isTimeComponent",
        "",
        "durationUnitByShortName",
        "shortName",
        "",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x31
    xs = "kotlin/time/DurationUnitKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;-><init>()V

    return-void
.end method

.method public static final durationUnitByIsoChar(CZ)Lkotlin/time/DurationUnit;
    .registers 5
    .param p0, "isoChar"    # C
    .param p1, "isTimeComponent"    # Z

    .line 90
    nop

    .line 91
    if-nez p1, :cond_24

    .line 92
    nop

    .line 93
    const/16 v0, 0x44

    if-ne p0, v0, :cond_b

    sget-object v0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    goto :goto_48

    .line 94
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unsupported duration ISO non-time unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_24
    sparse-switch p0, :sswitch_data_4a

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration ISO time unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :sswitch_40
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    goto :goto_48

    .line 100
    :sswitch_43
    sget-object v0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    goto :goto_48

    .line 99
    :sswitch_46
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    .line 105
    :goto_48
    return-object v0

    nop

    :sswitch_data_4a
    .sparse-switch
        0x48 -> :sswitch_46
        0x4d -> :sswitch_43
        0x53 -> :sswitch_40
    .end sparse-switch
.end method

.method public static final durationUnitByShortName(Ljava/lang/String;)Lkotlin/time/DurationUnit;
    .registers 4
    .param p0, "shortName"    # Ljava/lang/String;

    const-string v0, "shortName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_74

    :cond_c
    goto :goto_5a

    :sswitch_d
    const-string v0, "us"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    sget-object v0, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_59

    .line 77
    :sswitch_18
    const-string v0, "ns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 78
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    goto :goto_59

    .line 77
    :sswitch_23
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 80
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    goto :goto_59

    .line 77
    :sswitch_2e
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    goto :goto_59

    .line 77
    :sswitch_39
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    sget-object v0, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    goto :goto_59

    .line 77
    :sswitch_44
    const-string v0, "h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 83
    sget-object v0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    goto :goto_59

    .line 77
    :sswitch_4f
    const-string v0, "d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 84
    sget-object v0, Lkotlin/time/DurationUnit;->DAYS:Lkotlin/time/DurationUnit;

    .line 86
    :goto_59
    return-object v0

    .line 85
    :goto_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown duration unit short name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_74
    .sparse-switch
        0x64 -> :sswitch_4f
        0x68 -> :sswitch_44
        0x6d -> :sswitch_39
        0x73 -> :sswitch_2e
        0xda6 -> :sswitch_23
        0xdc5 -> :sswitch_18
        0xe9e -> :sswitch_d
    .end sparse-switch
.end method

.method public static final shortName(Lkotlin/time/DurationUnit;)Ljava/lang/String;
    .registers 4
    .param p0, "$this$shortName"    # Lkotlin/time/DurationUnit;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lkotlin/time/DurationUnitKt__DurationUnitKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lkotlin/time/DurationUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown unit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_2d
    const-string v0, "d"

    goto :goto_41

    .line 71
    :pswitch_30
    const-string v0, "h"

    goto :goto_41

    .line 70
    :pswitch_33
    const-string v0, "m"

    goto :goto_41

    .line 69
    :pswitch_36
    const-string v0, "s"

    goto :goto_41

    .line 68
    :pswitch_39
    const-string v0, "ms"

    goto :goto_41

    .line 67
    :pswitch_3c
    const-string v0, "us"

    goto :goto_41

    .line 66
    :pswitch_3f
    const-string v0, "ns"

    .line 74
    :goto_41
    return-object v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
    .end packed-switch
.end method
