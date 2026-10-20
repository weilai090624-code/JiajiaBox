.class public Lmoe/matsuri/nb4a/SingBoxOptions$RouteOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteOptions"
.end annotation


# instance fields
.field public auto_detect_interface:Ljava/lang/Boolean;

.field public default_interface:Ljava/lang/String;

.field public default_mark:Ljava/lang/Integer;

.field public final_:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "final"
    .end annotation
.end field

.field public find_process:Ljava/lang/Boolean;

.field public override_android_vpn:Ljava/lang/Boolean;

.field public rule_set:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$RuleSet;",
            ">;"
        }
    .end annotation
.end field

.field public rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmoe/matsuri/nb4a/SingBoxOptions$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1047
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
