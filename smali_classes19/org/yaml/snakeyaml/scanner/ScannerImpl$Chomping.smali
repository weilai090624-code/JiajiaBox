.class Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
.super Ljava/lang/Object;
.source "ScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/scanner/ScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Chomping"
.end annotation


# instance fields
.field private final increment:I

.field private final value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;I)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Boolean;
    .param p2, "increment"    # I

    .line 2399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2400
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    .line 2401
    iput p2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->increment:I

    .line 2402
    return-void
.end method


# virtual methods
.method public chompTailIsNotFalse()Z
    .registers 2

    .line 2405
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public chompTailIsTrue()Z
    .registers 2

    .line 2409
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public getIncrement()I
    .registers 2

    .line 2413
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->increment:I

    return v0
.end method
