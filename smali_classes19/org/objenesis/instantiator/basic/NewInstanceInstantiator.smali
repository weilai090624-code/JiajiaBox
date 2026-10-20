.class public Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;
.super Ljava/lang/Object;
.source "NewInstanceInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/objenesis/instantiator/ObjectInstantiator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->NOT_COMPLIANT:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;, "Lorg/objenesis/instantiator/basic/NewInstanceInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;->type:Ljava/lang/Class;

    .line 37
    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;, "Lorg/objenesis/instantiator/basic/NewInstanceInstantiator<TT;>;"
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/NewInstanceInstantiator;->type:Ljava/lang/Class;

    invoke-static {v0}, Lorg/objenesis/instantiator/util/ClassUtils;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
