.class public Lmoe/matsuri/nb4a/SingBoxOptions$DebugOptions;
.super Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;
.source "SingBoxOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/SingBoxOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugOptions"
.end annotation


# instance fields
.field public gc_percent:Ljava/lang/Integer;

.field public listen:Ljava/lang/String;

.field public max_stack:Ljava/lang/Integer;

.field public max_threads:Ljava/lang/Integer;

.field public memory_limit:Ljava/lang/Long;

.field public oom_killer:Ljava/lang/Boolean;

.field public panic_on_fault:Ljava/lang/Boolean;

.field public trace_back:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lmoe/matsuri/nb4a/SingBoxOptions$SingBoxOption;-><init>()V

    return-void
.end method
