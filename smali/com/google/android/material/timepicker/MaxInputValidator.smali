.class Lcom/google/android/material/timepicker/MaxInputValidator;
.super Ljava/lang/Object;
.source "MaxInputValidator.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private max:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "max"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    .line 28
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .line 42
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p5, p6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "newVal":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 46
    .local v2, "input":I
    iget v3, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1a} :catch_1f

    if-gt v2, v3, :cond_1e

    .line 47
    const/4 v3, 0x0

    return-object v3

    .line 51
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "newVal":Ljava/lang/String;
    .end local v2    # "input":I
    :cond_1e
    goto :goto_20

    .line 49
    :catch_1f
    move-exception v0

    .line 52
    :goto_20
    const-string v0, ""

    return-object v0
.end method

.method public getMax()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    return v0
.end method

.method public setMax(I)V
    .registers 2
    .param p1, "max"    # I

    .line 31
    iput p1, p0, Lcom/google/android/material/timepicker/MaxInputValidator;->max:I

    .line 32
    return-void
.end method
