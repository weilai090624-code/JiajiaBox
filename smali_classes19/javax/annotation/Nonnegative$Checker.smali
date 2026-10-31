.class public Ljavax/annotation/Nonnegative$Checker;
.super Ljava/lang/Object;
.source "Nonnegative.java"

# interfaces
.implements Ljavax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/annotation/Nonnegative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/annotation/meta/TypeQualifierValidator<",
        "Ljavax/annotation/Nonnegative;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 3

    .line 22
    check-cast p1, Ljavax/annotation/Nonnegative;

    invoke-virtual {p0, p1, p2}, Ljavax/annotation/Nonnegative$Checker;->forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;

    move-result-object p1

    return-object p1
.end method

.method public forConstantValue(Ljavax/annotation/Nonnegative;Ljava/lang/Object;)Ljavax/annotation/meta/When;
    .registers 11
    .param p1, "annotation"    # Ljavax/annotation/Nonnegative;
    .param p2, "v"    # Ljava/lang/Object;

    .line 25
    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_7

    .line 26
    sget-object v0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object v0

    .line 28
    :cond_7
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    .line 29
    .local v0, "value":Ljava/lang/Number;
    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    move v1, v2

    .local v1, "isNegative":Z
    goto :goto_4a

    .line 31
    .end local v1    # "isNegative":Z
    :cond_1e
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_30

    .line 32
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    move v1, v2

    .restart local v1    # "isNegative":Z
    goto :goto_4a

    .line 33
    .end local v1    # "isNegative":Z
    :cond_30
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_41

    .line 34
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    move v1, v2

    .restart local v1    # "isNegative":Z
    goto :goto_4a

    .line 36
    .end local v1    # "isNegative":Z
    :cond_41
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gez v1, :cond_48

    goto :goto_49

    :cond_48
    const/4 v2, 0x0

    :goto_49
    move v1, v2

    .line 38
    .restart local v1    # "isNegative":Z
    :goto_4a
    if-eqz v1, :cond_4f

    .line 39
    sget-object v2, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    return-object v2

    .line 41
    :cond_4f
    sget-object v2, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    return-object v2
.end method
