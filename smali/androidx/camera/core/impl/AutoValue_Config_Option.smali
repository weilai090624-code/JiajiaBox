.class final Landroidx/camera/core/impl/AutoValue_Config_Option;
.super Landroidx/camera/core/impl/Config$Option;
.source "AutoValue_Config_Option.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/camera/core/impl/Config$Option<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final token:Ljava/lang/Object;

.field private final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "valueClass",
            "token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 20
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    .local p2, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroidx/camera/core/impl/Config$Option;-><init>()V

    .line 21
    if-eqz p1, :cond_1

    .line 24
    iput-object p1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    .line 25
    if-eqz p2, :cond_0

    .line 28
    iput-object p2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    .line 29
    iput-object p3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    .line 30
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null valueClass"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 62
    return v0

    .line 64
    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/Config$Option;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 65
    move-object v1, p1

    check-cast v1, Landroidx/camera/core/impl/Config$Option;

    .line 66
    .local v1, "that":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    .line 67
    invoke-virtual {v1}, Landroidx/camera/core/impl/Config$Option;->getValueClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 68
    invoke-virtual {v1}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_1
    return v0

    .line 70
    .end local v1    # "that":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    :cond_3
    return v2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 35
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/Object;
    .locals 1

    .line 47
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 41
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 75
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    const/4 v0, 0x1

    .line 76
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 77
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 78
    mul-int v0, v0, v1

    .line 79
    iget-object v2, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 80
    mul-int v0, v0, v1

    .line 81
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    .line 82
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    .local p0, "this":Landroidx/camera/core/impl/AutoValue_Config_Option;, "Landroidx/camera/core/impl/AutoValue_Config_Option<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", valueClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->valueClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/AutoValue_Config_Option;->token:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
