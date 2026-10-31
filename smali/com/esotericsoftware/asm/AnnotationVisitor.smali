.class public abstract Lcom/esotericsoftware/asm/AnnotationVisitor;
.super Ljava/lang/Object;


# instance fields
.field protected final api:I

.field protected av:Lcom/esotericsoftware/asm/AnnotationVisitor;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/asm/AnnotationVisitor;-><init>(ILcom/esotericsoftware/asm/AnnotationVisitor;)V

    return-void
.end method

.method public constructor <init>(ILcom/esotericsoftware/asm/AnnotationVisitor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_12

    const/high16 v0, 0x50000

    if-ne p1, v0, :cond_c

    goto :goto_12

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_12
    :goto_12
    iput p1, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->api:I

    iput-object p2, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnd()V

    :cond_9
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/AnnotationVisitor;->av:Lcom/esotericsoftware/asm/AnnotationVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
