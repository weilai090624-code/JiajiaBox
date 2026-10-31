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
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->a:I

    return-void
.end method

.method constructor <init>(ILcom/esotericsoftware/asm/Item;)V
    .registers 5

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
    .registers 5

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
    .registers 3

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
    .registers 3

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
    .registers 4

    const/16 v0, 0x21

    iput v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->c:I

    iput p2, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->b:I

    iput-object p2, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    const v0, 0x7fffffff

    sparse-switch p1, :sswitch_data_34

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    mul-int p2, p2, p3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    :goto_1c
    mul-int p2, p2, p3

    :goto_1e
    add-int/2addr p1, p2

    and-int/2addr p1, v0

    iput p1, p0, Lcom/esotericsoftware/asm/Item;->j:I

    return-void

    :sswitch_23
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    goto :goto_1c

    :sswitch_2c
    const/4 p3, 0x0

    iput p3, p0, Lcom/esotericsoftware/asm/Item;->c:I

    :sswitch_2f
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    goto :goto_1e

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_2f
        0x7 -> :sswitch_2c
        0x8 -> :sswitch_2f
        0xc -> :sswitch_23
        0x10 -> :sswitch_2f
        0x1e -> :sswitch_2f
    .end sparse-switch
.end method

.method a(J)V
    .registers 4

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
    .registers 7

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
    .registers 9

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_8e

    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    goto :goto_8d

    :sswitch_26
    iget v0, p1, Lcom/esotericsoftware/asm/Item;->c:I

    iget v3, p0, Lcom/esotericsoftware/asm/Item;->c:I

    if-ne v0, v3, :cond_37

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1

    :sswitch_39
    iget-wide v3, p1, Lcom/esotericsoftware/asm/Item;->d:J

    iget-wide v5, p0, Lcom/esotericsoftware/asm/Item;->d:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_56

    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    return v1

    :sswitch_58
    iget-object v0, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    return v1

    :sswitch_6f
    iget-wide v3, p1, Lcom/esotericsoftware/asm/Item;->d:J

    iget-wide v5, p0, Lcom/esotericsoftware/asm/Item;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_78

    goto :goto_79

    :cond_78
    const/4 v1, 0x0

    :goto_79
    return v1

    :sswitch_7a
    iget p1, p1, Lcom/esotericsoftware/asm/Item;->c:I

    iget v0, p0, Lcom/esotericsoftware/asm/Item;->c:I

    if-ne p1, v0, :cond_81

    goto :goto_82

    :cond_81
    const/4 v1, 0x0

    :goto_82
    return v1

    :sswitch_83
    iget-object p1, p1, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/esotericsoftware/asm/Item;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8c
    const/4 v1, 0x0

    :goto_8d
    return v1

    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_83
        0x3 -> :sswitch_7a
        0x4 -> :sswitch_7a
        0x5 -> :sswitch_6f
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_83
        0x8 -> :sswitch_83
        0xc -> :sswitch_58
        0x10 -> :sswitch_83
        0x12 -> :sswitch_39
        0x1e -> :sswitch_83
        0x1f -> :sswitch_26
        0x20 -> :sswitch_6f
    .end sparse-switch
.end method
