.class public final La/a/c$Cancelled;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "\u4e51\u8f04\u5d6a\u6635\u508a"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
