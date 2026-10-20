.class final Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
.super Ljava/lang/Object;
.source "RecordSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/RecordSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RecordComponent"
.end annotation


# instance fields
.field private final index:I

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 160
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type:Ljava/lang/Class;

    .line 163
    iput p3, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->index:I

    .line 164
    return-void
.end method


# virtual methods
.method index()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->index:I

    return v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type:Ljava/lang/Class;

    return-object v0
.end method
