.class final Lio/nekohasekai/sagernet/ui/AiChooser$Entry;
.super Ljava/lang/Object;
.source "AiChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AiChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field final id:J

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->id:J

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->text:Ljava/lang/String;

    return-void
.end method
