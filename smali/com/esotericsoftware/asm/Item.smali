.class final Lcom/esotericsoftware/asm/Item;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:Lcom/esotericsoftware/asm/Item;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->a:I

    return-void
.end method

.method constructor <init>(ILcom/esotericsoftware/asm/Item;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->a:I

    iget p1, p2, Lcom/esotericsoftware/asm/Item;->b:I

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iget p1, p2, Lcom/esotericsoftware/asm/Item;->c:I

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->c:I

    iget-wide v0, p2, Lcom/esotericsoftware/asm/Item;->d:J

    iput-wide v0, p0, Lcom/esotericsoftware/asm/Item;->d:J

    iget-object p1, p2, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object p1, p2, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object p1, p2, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    iget p1, p2, Lcom/esotericsoftware/asm/Item;->j:I

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method


# virtual methods
.method a(D)V
    .locals 2

    const/4 v0, 0x6

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/asm/Item;->d:J

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    double-to-int p1, p1

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(F)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->c:I

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    float-to-int p1, p1

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->c:I

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    add-int/2addr v0, p1

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(II)V
    .locals 1

    const/16 v0, 0x21

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->c:I

    iput p2, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iput-object p2, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    const v0, 0x7fffffff

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    :goto_0
    mul-int p2, p2, p3

    :goto_1
    add-int/2addr p1, p2

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void

    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    goto :goto_0

    :sswitch_1
    const/4 p3, 0x0

    iput p3, p0, Lcom/esotericsoftware/asm/Item;->c:I

    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_2
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method a(J)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iput-wide p1, p0, Lcom/esotericsoftware/asm/Item;->d:J

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    long-to-int p2, p1

    add-int/2addr v0, p2

    const p1, 0x7fffffff

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    const/16 v0, 0x12

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    int-to-long v1, p3

    iput-wide v1, p0, Lcom/esotericsoftware/asm/Item;->d:J

    iput-object p1, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int p3, p3, p1

    iget-object p1, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int p3, p3, p1

    add-int/2addr p3, v0

    const p1, 0x7fffffff

    and-int/2addr p1, p3

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(Lcom/esotericsoftware/asm/Item;)Z
    .locals 7

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :sswitch_0
    iget v0, p1, Lcom/esotericsoftware/asm/Item;->c:I

    iget v3, p0, Lcom/esotericsoftware/asm/Item;->c:I

    if-ne v0, v3, :cond_0

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_1
    iget-wide v3, p1, Lcom/esotericsoftware/asm/Item;->d:J

    iget-wide v5, p0, Lcom/esotericsoftware/asm/Item;->d:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :sswitch_2
    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    :sswitch_3
    iget-wide v3, p1, Lcom/esotericsoftware/asm/Item;->d:J

    iget-wide v5, p0, Lcom/esotericsoftware/asm/Item;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    return v1

    :sswitch_4
    iget p1, p1, Lcom/esotericsoftware/asm/Item;->c:I

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->c:I

    if-ne p1, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    return v1

    :sswitch_5
    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    const/4 v1, 0x0

    :goto_5
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0xc -> :sswitch_2
        0x10 -> :sswitch_5
        0x12 -> :sswitch_1
        0x1e -> :sswitch_5
        0x1f -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
