.class final Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;
.super Ljava/lang/Object;
.source "NodeRegionFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/ui/NodeRegionFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rules"
.end annotation


# static fields
.field static final ALL:[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

.field static final FLAG:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    # invokes: Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->buildRules()[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;
    invoke-static {}, Lmoe/matsuri/nb4a/ui/NodeRegionFlag;->access$000()[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;->ALL:[Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;

    .line 67
    const-string v0, "[\\x{1F1E6}-\\x{1F1FF}]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rules;->FLAG:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
