.class public final Lio/nekohasekai/sagernet/database/StringCollectionConverter;
.super Ljava/lang/Object;
.source "StringCollectionConverter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/StringCollectionConverter;",
        "",
        "<init>",
        "()V",
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
.field public static final Companion:Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;

.field public static final SPLIT_FLAG:Ljava/lang/String; = ","


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->Companion:Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromSet(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->Companion:Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;->fromSet(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public static final toSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/nekohasekai/sagernet/database/StringCollectionConverter;->Companion:Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/database/StringCollectionConverter$Companion;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 42
    return-object v0
.end method
