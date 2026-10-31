.class public abstract Lcom/esotericsoftware/asm/FieldVisitor;
.super Ljava/lang/Object;


# instance fields
.field protected final api:I

.field protected fv:Lcom/esotericsoftware/asm/FieldVisitor;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/asm/FieldVisitor;-><init>(ILcom/esotericsoftware/asm/FieldVisitor;)V

    return-void
.end method

.method public constructor <init>(ILcom/esotericsoftware/asm/FieldVisitor;)V
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
    iput p1, p0, Lcom/esotericsoftware/asm/FieldVisitor;->api:I

    iput-object p2, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/FieldVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    :cond_9
    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/FieldVisitor;->visitEnd()V

    :cond_9
    return-void
.end method

.method public visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 7

    iget v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/esotericsoftware/asm/FieldVisitor;->fv:Lcom/esotericsoftware/asm/FieldVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/FieldVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_11
    const/4 p1, 0x0

    return-object p1

    :cond_13
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
