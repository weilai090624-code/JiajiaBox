.class public final enum Lorg/yaml/snakeyaml/events/Event$ID;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/events/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/events/Event$ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum Alias:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum Comment:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum DocumentEnd:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum DocumentStart:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum MappingStart:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

.field public static final enum StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 26
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "Alias"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 27
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "Comment"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Comment:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 28
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "DocumentEnd"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->DocumentEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 29
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "DocumentStart"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->DocumentStart:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 30
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "MappingEnd"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 31
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "MappingStart"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->MappingStart:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 32
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "Scalar"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 33
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "SequenceEnd"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 34
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "SequenceStart"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 35
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "StreamEnd"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 36
    new-instance v0, Lorg/yaml/snakeyaml/events/Event$ID;

    const-string v1, "StreamStart"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/yaml/snakeyaml/events/Event$ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;

    .line 25
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/yaml/snakeyaml/events/Event$ID;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Comment:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v3

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->DocumentEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v4

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->DocumentStart:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v5

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v6

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->MappingStart:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v7

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v8

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v9

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v10

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v11

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;

    aput-object v1, v0, v12

    sput-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->$VALUES:[Lorg/yaml/snakeyaml/events/Event$ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/events/Event$ID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event$ID;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/events/Event$ID;
    .locals 1

    .line 25
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->$VALUES:[Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/events/Event$ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/events/Event$ID;

    return-object v0
.end method
