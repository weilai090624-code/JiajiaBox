.class Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase$DummyStream;
.super Ljava/io/ObjectInputStream;
.source "GCJInstantiatorBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    .line 38
    return-void
.end method
