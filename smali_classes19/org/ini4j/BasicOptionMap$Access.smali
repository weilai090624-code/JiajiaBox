.class Lorg/ini4j/BasicOptionMap$Access;
.super Ljava/lang/Object;
.source "BasicOptionMap.java"

# interfaces
.implements Lorg/ini4j/spi/BeanAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/BasicOptionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Access"
.end annotation


# instance fields
.field private final _prefix:Ljava/lang/String;

.field final synthetic this$0:Lorg/ini4j/BasicOptionMap;


# direct methods
.method constructor <init>(Lorg/ini4j/BasicOptionMap;)V
    .locals 1

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/ini4j/BasicOptionMap$Access;-><init>(Lorg/ini4j/BasicOptionMap;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method constructor <init>(Lorg/ini4j/BasicOptionMap;Ljava/lang/String;)V
    .locals 0
    .param p2, "prefix"    # Ljava/lang/String;

    .line 296
    iput-object p1, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lorg/ini4j/BasicOptionMap$Access;->_prefix:Ljava/lang/String;

    .line 298
    return-void
.end method

.method private transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "orig"    # Ljava/lang/String;

    .line 337
    move-object v0, p1

    .line 339
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lorg/ini4j/BasicOptionMap$Access;->_prefix:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-virtual {v1}, Lorg/ini4j/BasicOptionMap;->isPropertyFirstUpper()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 343
    .local v1, "buff":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/ini4j/BasicOptionMap$Access;->_prefix:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 345
    iget-object v2, p0, Lorg/ini4j/BasicOptionMap$Access;->_prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_1
    iget-object v2, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-virtual {v2}, Lorg/ini4j/BasicOptionMap;->isPropertyFirstUpper()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 355
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .end local v1    # "buff":Ljava/lang/StringBuilder;
    :cond_3
    return-object v0
.end method


# virtual methods
.method public propAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ini4j/BasicOptionMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    return-void
.end method

.method public propDel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ini4j/BasicOptionMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public propGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public propGet(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 317
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ini4j/BasicOptionMap;->fetch(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public propLength(Ljava/lang/String;)I
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ini4j/BasicOptionMap;->length(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public propSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/ini4j/BasicOptionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public propSet(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 332
    iget-object v0, p0, Lorg/ini4j/BasicOptionMap$Access;->this$0:Lorg/ini4j/BasicOptionMap;

    invoke-direct {p0, p1}, Lorg/ini4j/BasicOptionMap$Access;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/ini4j/BasicOptionMap;->put(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
