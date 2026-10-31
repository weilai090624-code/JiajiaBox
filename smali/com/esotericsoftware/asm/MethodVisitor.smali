.class public abstract Lcom/esotericsoftware/asm/MethodVisitor;
.super Ljava/lang/Object;


# instance fields
.field protected final api:I

.field protected mv:Lcom/esotericsoftware/asm/MethodVisitor;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/asm/MethodVisitor;-><init>(ILcom/esotericsoftware/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(ILcom/esotericsoftware/asm/MethodVisitor;)V
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
    iput p1, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    iput-object p2, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAnnotationDefault()Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAnnotationDefault()Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitAttribute(Lcom/esotericsoftware/asm/Attribute;)V

    :cond_9
    return-void
.end method

.method public visitCode()V
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitCode()V

    :cond_9
    return-void
.end method

.method public visitEnd()V
    .registers 2

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0}, Lcom/esotericsoftware/asm/MethodVisitor;->visitEnd()V

    :cond_9
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 13

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public visitIincInsn(II)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_9
    return-void
.end method

.method public visitInsn(I)V
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsn(I)V

    :cond_9
    return-void
.end method

.method public visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 7

    iget v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInsnAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

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

.method public visitIntInsn(II)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_9
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Handle;[Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitJumpInsn(ILcom/esotericsoftware/asm/Label;)V

    :cond_9
    return-void
.end method

.method public visitLabel(Lcom/esotericsoftware/asm/Label;)V
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLabel(Lcom/esotericsoftware/asm/Label;)V

    :cond_9
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public visitLineNumber(ILcom/esotericsoftware/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLineNumber(ILcom/esotericsoftware/asm/Label;)V

    :cond_9
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;I)V
    .registers 15

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;I)V

    :cond_f
    return-void
.end method

.method public visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 18

    move-object v0, p0

    iget v1, v0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v2, 0x50000

    if-lt v1, v2, :cond_1d

    iget-object v1, v0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v1, :cond_1b

    iget-object v2, v0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLocalVariableAnnotation(ILcom/esotericsoftware/asm/TypePath;[Lcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;[ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object v1

    return-object v1

    :cond_1b
    const/4 v1, 0x0

    return-object v1

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public visitLookupSwitchInsn(Lcom/esotericsoftware/asm/Label;[I[Lcom/esotericsoftware/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitLookupSwitchInsn(Lcom/esotericsoftware/asm/Label;[I[Lcom/esotericsoftware/asm/Label;)V

    :cond_9
    return-void
.end method

.method public visitMaxs(II)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMaxs(II)V

    :cond_9
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_18

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_f
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_18
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    iget v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1b

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-ne p5, v0, :cond_13

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INVOKESPECIAL/STATIC on interfaces require ASM 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_29
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_9
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    iget v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameter(Ljava/lang/String;I)V

    :cond_f
    return-void

    :cond_10
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 5

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTableSwitchInsn(IILcom/esotericsoftware/asm/Label;[Lcom/esotericsoftware/asm/Label;)V

    :cond_9
    return-void
.end method

.method public visitTryCatchAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 7

    iget v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTryCatchAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

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

.method public visitTryCatchBlock(Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTryCatchBlock(Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Lcom/esotericsoftware/asm/Label;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;
    .registers 7

    iget v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeAnnotation(ILcom/esotericsoftware/asm/TypePath;Ljava/lang/String;Z)Lcom/esotericsoftware/asm/AnnotationVisitor;

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

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/esotericsoftware/asm/MethodVisitor;->mv:Lcom/esotericsoftware/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lcom/esotericsoftware/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_9
    return-void
.end method
