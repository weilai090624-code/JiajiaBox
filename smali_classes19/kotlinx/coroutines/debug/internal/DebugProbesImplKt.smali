.class public final Lkotlinx/coroutines/debug/internal/DebugProbesImplKt;
.super Ljava/lang/Object;
.source "DebugProbesImpl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u0002\u00a8\u0006\u0002"
    }
    d2 = {
        "repr",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$repr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "$receiver"    # Ljava/lang/String;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImplKt;->repr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final repr(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "$this$repr"    # Ljava/lang/String;

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .local v1, "$this$repr_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 606
    .local v2, "$i$a$-buildString-DebugProbesImplKt$repr$1":I
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_58

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 608
    .local v6, "c":C
    nop

    .line 609
    if-ne v6, v3, :cond_20

    const-string v7, "\\\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 610
    :cond_20
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_2a

    const-string v7, "\\\\"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 611
    :cond_2a
    const/16 v7, 0x8

    if-ne v6, v7, :cond_34

    const-string v7, "\\b"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 612
    :cond_34
    const/16 v7, 0xa

    if-ne v6, v7, :cond_3e

    const-string v7, "\\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 613
    :cond_3e
    const/16 v7, 0xd

    if-ne v6, v7, :cond_48

    const-string v7, "\\r"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 614
    :cond_48
    const/16 v7, 0x9

    if-ne v6, v7, :cond_52

    const-string v7, "\\t"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 615
    :cond_52
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 607
    .end local v6    # "c":C
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 618
    :cond_58
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    nop

    .line 605
    .end local v1    # "$this$repr_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-DebugProbesImplKt$repr$1":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    return-object v0
.end method
