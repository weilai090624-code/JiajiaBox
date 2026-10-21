.class final Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;
.super Ljava/lang/Object;
.source "NodeRegionFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/ui/NodeRegionFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Rule"
.end annotation


# instance fields
.field final pattern:Ljava/util/regex/Pattern;

.field final region:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;->region:Ljava/lang/String;

    .line 62
    const/4 p1, 0x2

    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/NodeRegionFlag$Rule;->pattern:Ljava/util/regex/Pattern;

    .line 63
    return-void
.end method
