.class public Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;
.super Lorg/yaml/snakeyaml/constructor/Constructor;
.source "CustomClassLoaderConstructor.java"


# instance fields
.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "theLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 29
    .local p1, "theRoot":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor;-><init>(Ljava/lang/Class;)V

    .line 22
    const-class v0, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;->loader:Ljava/lang/ClassLoader;

    .line 30
    if-eqz p2, :cond_0

    .line 33
    iput-object p2, p0, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;->loader:Ljava/lang/ClassLoader;

    .line 34
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Loader must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "cLoader"    # Ljava/lang/ClassLoader;

    .line 25
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/CustomClassLoaderConstructor;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
