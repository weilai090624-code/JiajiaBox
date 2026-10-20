.class public final Landroidx/work/WorkInfo;
.super Ljava/lang/Object;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkInfo$State;
    }
.end annotation


# instance fields
.field private final mGeneration:I

.field private mId:Ljava/util/UUID;

.field private mOutputData:Landroidx/work/Data;

.field private mProgress:Landroidx/work/Data;

.field private mRunAttemptCount:I

.field private mState:Landroidx/work/WorkInfo$State;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Landroidx/work/Data;Ljava/util/List;Landroidx/work/Data;II)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "state"    # Landroidx/work/WorkInfo$State;
    .param p3, "outputData"    # Landroidx/work/Data;
    .param p5, "progress"    # Landroidx/work/Data;
    .param p6, "runAttemptCount"    # I
    .param p7, "generation"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "state",
            "outputData",
            "tags",
            "progress",
            "runAttemptCount",
            "generation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/WorkInfo$State;",
            "Landroidx/work/Data;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/Data;",
            "II)V"
        }
    .end annotation

    .line 55
    .local p4, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    .line 57
    iput-object p2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    .line 58
    iput-object p3, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    .line 60
    iput-object p5, p0, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    .line 61
    iput p6, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    .line 62
    iput p7, p0, Landroidx/work/WorkInfo;->mGeneration:I

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 142
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/work/WorkInfo;

    .line 147
    .local v1, "workInfo":Landroidx/work/WorkInfo;
    iget v2, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    iget v3, v1, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    if-eq v2, v3, :cond_2

    return v0

    .line 148
    :cond_2
    iget v2, p0, Landroidx/work/WorkInfo;->mGeneration:I

    iget v3, v1, Landroidx/work/WorkInfo;->mGeneration:I

    if-eq v2, v3, :cond_3

    return v0

    .line 149
    :cond_3
    iget-object v2, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    iget-object v3, v1, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 150
    :cond_4
    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    iget-object v3, v1, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_5

    return v0

    .line 151
    :cond_5
    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    iget-object v3, v1, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    .line 152
    :cond_6
    iget-object v2, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    iget-object v3, v1, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v0

    .line 153
    :cond_7
    iget-object v0, p0, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    iget-object v2, v1, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    invoke-virtual {v0, v2}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 143
    .end local v1    # "workInfo":Landroidx/work/WorkInfo;
    :cond_8
    :goto_0
    return v0
.end method

.method public getGeneration()I
    .locals 1

    .line 137
    iget v0, p0, Landroidx/work/WorkInfo;->mGeneration:I

    return v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getOutputData()Landroidx/work/Data;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    return-object v0
.end method

.method public getProgress()Landroidx/work/Data;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    return-object v0
.end method

.method public getRunAttemptCount()I
    .locals 1

    .line 119
    iget v0, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    return v0
.end method

.method public getState()Landroidx/work/WorkInfo$State;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 158
    iget-object v0, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 159
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Landroidx/work/WorkInfo$State;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v2}, Landroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 161
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 162
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    invoke-virtual {v2}, Landroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 163
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/work/WorkInfo;->mRunAttemptCount:I

    add-int/2addr v1, v2

    .line 164
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/work/WorkInfo;->mGeneration:I

    add-int/2addr v0, v2

    .line 165
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/WorkInfo;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/WorkInfo;->mState:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/WorkInfo;->mOutputData:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/WorkInfo;->mTags:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/WorkInfo;->mProgress:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
