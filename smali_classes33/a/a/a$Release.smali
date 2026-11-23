.class La/a/a$Release;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Release"
.end annotation


# instance fields
.field code:J

.field name:Ljava/lang/String;

.field notes:Ljava/lang/String;

.field sha:Ljava/lang/String;

.field size:J

.field url:Ljava/net/URL;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a$1;)V
    .registers 2

    invoke-direct {p0}, La/a/a$Release;-><init>()V

    return-void
.end method
