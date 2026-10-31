.class public final Lokio/internal/_FileSystemKt;
.super Ljava/lang/Object;
.source "-FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n-FileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -FileSystem.kt\nokio/internal/_FileSystemKt\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,152:1\n52#2,5:153\n52#2,18:158\n57#2,13:176\n*S KotlinDebug\n*F\n+ 1 -FileSystem.kt\nokio/internal/_FileSystemKt\n*L\n62#1:153,5\n63#1:158,18\n62#1:176,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aI\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u001a\u001c\u0010\r\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\nH\u0000\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\nH\u0000\u001a\u0014\u0010\u0016\u001a\u00020\n*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0000\u001a\"\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0018*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0000\u001a\u0014\u0010\u0019\u001a\u00020\u001a*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0000\u001a\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0003*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0003H\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "collectRecursively",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Lokio/Path;",
        "fileSystem",
        "Lokio/FileSystem;",
        "stack",
        "Lkotlin/collections/ArrayDeque;",
        "path",
        "followSymlinks",
        "",
        "postorder",
        "(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "commonCopy",
        "source",
        "target",
        "commonCreateDirectories",
        "dir",
        "mustCreate",
        "commonDeleteRecursively",
        "fileOrDirectory",
        "mustExist",
        "commonExists",
        "commonListRecursively",
        "Lkotlin/sequences/Sequence;",
        "commonMetadata",
        "Lokio/FileMetadata;",
        "symlinkTarget",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final collectRecursively(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lokio/FileSystem;",
            "Lkotlin/collections/ArrayDeque<",
            "Lokio/Path;",
            ">;",
            "Lokio/Path;",
            "ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lokio/internal/_FileSystemKt$collectRecursively$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lokio/internal/_FileSystemKt$collectRecursively$1;

    iget v2, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    iget v0, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    goto :goto_1b

    :cond_16
    new-instance v1, Lokio/internal/_FileSystemKt$collectRecursively$1;

    invoke-direct {v1, v0}, Lokio/internal/_FileSystemKt$collectRecursively$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_1b
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_142

    .line 144
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_30
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_13d

    :pswitch_35
    iget-boolean v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$1:Z

    .local v3, "postorder":Z
    iget-boolean v5, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$0:Z

    .local v5, "followSymlinks":Z
    iget-object v6, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lokio/Path;

    .local v7, "path":Lokio/Path;
    iget-object v8, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlin/collections/ArrayDeque;

    .local v8, "stack":Lkotlin/collections/ArrayDeque;
    iget-object v9, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lokio/FileSystem;

    .local v9, "fileSystem":Lokio/FileSystem;
    iget-object v10, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/sequences/SequenceScope;

    .local v10, "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :try_start_4d
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_52

    goto/16 :goto_116

    .line 136
    .end local v5    # "followSymlinks":Z
    .end local v9    # "fileSystem":Lokio/FileSystem;
    :catchall_52
    move-exception v0

    goto/16 :goto_11d

    .line 104
    .end local v3    # "postorder":Z
    .end local v7    # "path":Lokio/Path;
    .end local v8    # "stack":Lkotlin/collections/ArrayDeque;
    .end local v10    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :pswitch_55
    iget-boolean v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$1:Z

    .restart local v3    # "postorder":Z
    iget-boolean v5, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$0:Z

    .restart local v5    # "followSymlinks":Z
    iget-object v6, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lokio/Path;

    .local v6, "path":Lokio/Path;
    iget-object v7, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/collections/ArrayDeque;

    .local v7, "stack":Lkotlin/collections/ArrayDeque;
    iget-object v8, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lokio/FileSystem;

    .local v8, "fileSystem":Lokio/FileSystem;
    iget-object v9, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlin/sequences/SequenceScope;

    .local v9, "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_92

    .end local v3    # "postorder":Z
    .end local v5    # "followSymlinks":Z
    .end local v6    # "path":Lokio/Path;
    .end local v7    # "stack":Lkotlin/collections/ArrayDeque;
    .end local v8    # "fileSystem":Lokio/FileSystem;
    .end local v9    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :pswitch_6d
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p0

    .restart local v9    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    move-object/from16 v7, p2

    .restart local v7    # "stack":Lkotlin/collections/ArrayDeque;
    move/from16 v5, p4

    .restart local v5    # "followSymlinks":Z
    move-object/from16 v8, p1

    .restart local v8    # "fileSystem":Lokio/FileSystem;
    move-object/from16 v6, p3

    .restart local v6    # "path":Lokio/Path;
    move/from16 v3, p5

    .line 112
    .restart local v3    # "postorder":Z
    if-nez v3, :cond_97

    .line 113
    iput-object v9, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-boolean v5, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$0:Z

    iput-boolean v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$1:Z

    iput v4, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    invoke-virtual {v9, v6, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_92

    .line 104
    .end local v3    # "postorder":Z
    .end local v5    # "followSymlinks":Z
    .end local v6    # "path":Lokio/Path;
    .end local v7    # "stack":Lkotlin/collections/ArrayDeque;
    .end local v8    # "fileSystem":Lokio/FileSystem;
    .end local v9    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :goto_91
    return-object v0

    .line 116
    .restart local v3    # "postorder":Z
    .restart local v5    # "followSymlinks":Z
    .restart local v6    # "path":Lokio/Path;
    .restart local v7    # "stack":Lkotlin/collections/ArrayDeque;
    .restart local v8    # "fileSystem":Lokio/FileSystem;
    .restart local v9    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :cond_92
    :goto_92
    move-object v10, v9

    move-object v14, v7

    move-object v7, v6

    move-object v6, v14

    goto :goto_9b

    .line 112
    :cond_97
    move-object v10, v9

    move-object v14, v7

    move-object v7, v6

    move-object v6, v14

    .line 116
    .end local v9    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    .local v6, "stack":Lkotlin/collections/ArrayDeque;
    .local v7, "path":Lokio/Path;
    .restart local v10    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :goto_9b
    invoke-virtual {v8, v7}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_a5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 117
    .local v9, "children":Ljava/util/List;
    :cond_a5
    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_126

    .line 119
    move-object v11, v7

    .line 120
    .local v11, "symlinkPath":Lokio/Path;
    const/4 v12, 0x0

    .line 121
    .local v12, "symlinkCount":I
    :goto_b0
    nop

    .line 122
    if-eqz v5, :cond_c6

    invoke-virtual {v6, v11}, Lkotlin/collections/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ba

    goto :goto_c6

    :cond_ba
    new-instance v0, Ljava/io/IOException;

    const-string v4, "symlink cycle at "

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_c6
    :goto_c6
    invoke-static {v8, v11}, Lokio/internal/_FileSystemKt;->symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;

    move-result-object v13

    if-nez v13, :cond_121

    .line 128
    if-nez v5, :cond_d0

    if-nez v12, :cond_126

    .line 129
    .end local v12    # "symlinkCount":I
    :cond_d0
    invoke-virtual {v6, v11}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 130
    .end local v11    # "symlinkPath":Lokio/Path;
    nop

    .line 131
    :try_start_d4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11
    :try_end_d8
    .catchall {:try_start_d4 .. :try_end_d8} :catchall_11b

    move-object v9, v8

    move-object v8, v6

    move-object v6, v11

    .end local v6    # "stack":Lkotlin/collections/ArrayDeque;
    .local v8, "stack":Lkotlin/collections/ArrayDeque;
    .local v9, "fileSystem":Lokio/FileSystem;
    :goto_db
    :try_start_db
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_117

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokio/Path;

    move-object/from16 p3, v11

    .line 132
    .local p3, "child":Lokio/Path;
    const/4 v11, 0x0

    if-eqz v5, :cond_ee

    const/4 v12, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v12, 0x0

    .end local p3    # "child":Lokio/Path;
    :goto_ef
    if-eqz v3, :cond_f2

    const/4 v11, 0x1

    :cond_f2
    iput-object v10, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v6, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$4:Ljava/lang/Object;

    iput-boolean v5, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$0:Z

    iput-boolean v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->Z$1:Z

    const/4 v13, 0x2

    iput v13, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    move-object p0, v10

    move-object/from16 p1, v9

    move-object/from16 p2, v8

    move/from16 p4, v12

    move/from16 p5, v11

    move-object/from16 p6, v1

    invoke-static/range {p0 .. p6}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/SequenceScope;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_112
    .catchall {:try_start_db .. :try_end_112} :catchall_52

    if-ne v11, v0, :cond_116

    .end local v3    # "postorder":Z
    .end local v5    # "followSymlinks":Z
    .end local v7    # "path":Lokio/Path;
    .end local v8    # "stack":Lkotlin/collections/ArrayDeque;
    .end local v9    # "fileSystem":Lokio/FileSystem;
    .end local v10    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    goto/16 :goto_91

    .restart local v3    # "postorder":Z
    .restart local v5    # "followSymlinks":Z
    .restart local v7    # "path":Lokio/Path;
    .restart local v8    # "stack":Lkotlin/collections/ArrayDeque;
    .restart local v9    # "fileSystem":Lokio/FileSystem;
    .restart local v10    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    :cond_116
    :goto_116
    goto :goto_db

    .line 135
    .end local v5    # "followSymlinks":Z
    .end local v9    # "fileSystem":Lokio/FileSystem;
    :cond_117
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 136
    goto :goto_126

    .end local v8    # "stack":Lkotlin/collections/ArrayDeque;
    .restart local v6    # "stack":Lkotlin/collections/ArrayDeque;
    :catchall_11b
    move-exception v0

    move-object v8, v6

    .line 135
    .end local v6    # "stack":Lkotlin/collections/ArrayDeque;
    .restart local v8    # "stack":Lkotlin/collections/ArrayDeque;
    :goto_11d
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .end local v8    # "stack":Lkotlin/collections/ArrayDeque;
    throw v0

    .line 123
    .restart local v5    # "followSymlinks":Z
    .restart local v6    # "stack":Lkotlin/collections/ArrayDeque;
    .local v8, "fileSystem":Lokio/FileSystem;
    .local v9, "children":Ljava/util/List;
    .restart local v12    # "symlinkCount":I
    :cond_121
    move-object v11, v13

    .line 124
    .restart local v11    # "symlinkPath":Lokio/Path;
    nop

    .end local v12    # "symlinkCount":I
    add-int/lit8 v12, v12, 0x1

    .restart local v12    # "symlinkCount":I
    goto :goto_b0

    .line 141
    .end local v5    # "followSymlinks":Z
    .end local v6    # "stack":Lkotlin/collections/ArrayDeque;
    .end local v8    # "fileSystem":Lokio/FileSystem;
    .end local v9    # "children":Ljava/util/List;
    .end local v11    # "symlinkPath":Lokio/Path;
    .end local v12    # "symlinkCount":I
    :cond_126
    :goto_126
    if-eqz v3, :cond_140

    .line 142
    .end local v3    # "postorder":Z
    const/4 v3, 0x0

    iput-object v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v1, Lokio/internal/_FileSystemKt$collectRecursively$1;->label:I

    invoke-virtual {v10, v7, v1}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v7    # "path":Lokio/Path;
    .end local v10    # "$this$collectRecursively":Lkotlin/sequences/SequenceScope;
    if-ne v3, v0, :cond_13d

    .line 104
    return-object v0

    .line 144
    :cond_13d
    :goto_13d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 141
    :cond_140
    goto :goto_13d

    nop

    :pswitch_data_142
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_55
        :pswitch_35
        :pswitch_30
    .end packed-switch
.end method

.method public static final commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V
    .registers 20
    .param p0, "$this$commonCopy"    # Lokio/FileSystem;
    .param p1, "source"    # Lokio/Path;
    .param p2, "target"    # Lokio/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    .local v4, "$this$use$iv":Ljava/io/Closeable;
    const/4 v5, 0x0

    .line 153
    .local v5, "$i$f$use":I
    const/4 v6, 0x0

    .line 154
    .local v6, "result$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 156
    .local v7, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 157
    :try_start_20
    move-object v0, v4

    check-cast v0, Lokio/Source;

    move-object v8, v0

    .local v8, "bytesIn":Lokio/Source;
    const/4 v9, 0x0

    .line 63
    .local v9, "$i$a$-use-_FileSystemKt$commonCopy$1":I
    invoke-virtual {v1, v2}, Lokio/FileSystem;->sink(Lokio/Path;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_6a

    move-object v10, v0

    .local v10, "$this$use$iv":Ljava/io/Closeable;
    const/4 v11, 0x0

    .line 158
    .local v11, "$i$f$use":I
    const/4 v12, 0x0

    .line 159
    .local v12, "result$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 161
    .local v13, "thrown$iv":Ljava/lang/Throwable;
    nop

    .line 162
    :try_start_34
    move-object v0, v10

    check-cast v0, Lokio/BufferedSink;

    .local v0, "bytesOut":Lokio/BufferedSink;
    const/4 v14, 0x0

    .line 64
    .local v14, "$i$a$-use-_FileSystemKt$commonCopy$1$1":I
    invoke-interface {v0, v8}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    move-result-wide v15

    .end local v0    # "bytesOut":Lokio/BufferedSink;
    .end local v14    # "$i$a$-use-_FileSystemKt$commonCopy$1$1":I
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_42

    move-object v12, v0

    goto :goto_44

    .line 163
    :catchall_42
    move-exception v0

    .line 164
    .local v0, "t$iv":Ljava/lang/Throwable;
    move-object v13, v0

    .line 167
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_44
    nop

    .line 168
    if-nez v10, :cond_48

    :goto_47
    goto :goto_56

    :cond_48
    :try_start_48
    invoke-interface {v10}, Ljava/io/Closeable;->close()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_47

    .line 169
    :catchall_4c
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 170
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    if-nez v13, :cond_53

    move-object v13, v0

    goto :goto_56

    .line 171
    :cond_53
    :try_start_53
    invoke-static {v13, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 174
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_56
    if-nez v13, :cond_69

    .line 175
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .end local v10    # "$this$use$iv":Ljava/io/Closeable;
    .end local v11    # "$i$f$use":I
    .end local v12    # "result$iv":Ljava/lang/Object;
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    move-object v0, v12

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 63
    nop

    .end local v8    # "bytesIn":Lokio/Source;
    .end local v9    # "$i$a$-use-_FileSystemKt$commonCopy$1":I
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v6, v0

    goto :goto_6c

    .line 174
    .end local v4    # "$this$use$iv":Ljava/io/Closeable;
    .end local v5    # "$i$f$use":I
    .end local v6    # "result$iv":Ljava/lang/Object;
    .end local v7    # "thrown$iv":Ljava/lang/Throwable;
    .end local p0    # "$this$commonCopy":Lokio/FileSystem;
    .end local p1    # "source":Lokio/Path;
    .end local p2    # "target":Lokio/Path;
    .restart local v8    # "bytesIn":Lokio/Source;
    .restart local v9    # "$i$a$-use-_FileSystemKt$commonCopy$1":I
    .restart local v10    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v11    # "$i$f$use":I
    .restart local v12    # "result$iv":Ljava/lang/Object;
    .restart local v13    # "thrown$iv":Ljava/lang/Throwable;
    :cond_69
    throw v13
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_6a

    .line 176
    .end local v8    # "bytesIn":Lokio/Source;
    .end local v9    # "$i$a$-use-_FileSystemKt$commonCopy$1":I
    .end local v10    # "$this$use$iv":Ljava/io/Closeable;
    .end local v11    # "$i$f$use":I
    .end local v12    # "result$iv":Ljava/lang/Object;
    .end local v13    # "thrown$iv":Ljava/lang/Throwable;
    .restart local v4    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v5    # "$i$f$use":I
    .restart local v6    # "result$iv":Ljava/lang/Object;
    .restart local v7    # "thrown$iv":Ljava/lang/Throwable;
    .restart local p0    # "$this$commonCopy":Lokio/FileSystem;
    .restart local p1    # "source":Lokio/Path;
    .restart local p2    # "target":Lokio/Path;
    :catchall_6a
    move-exception v0

    .line 177
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    move-object v7, v0

    .line 180
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_6c
    nop

    .line 181
    if-nez v4, :cond_70

    :goto_6f
    goto :goto_7e

    :cond_70
    :try_start_70
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_6f

    .line 182
    :catchall_74
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 183
    .restart local v0    # "t$iv":Ljava/lang/Throwable;
    if-nez v7, :cond_7b

    move-object v7, v0

    goto :goto_7e

    .line 184
    :cond_7b
    invoke-static {v7, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 187
    .end local v0    # "t$iv":Ljava/lang/Throwable;
    :goto_7e
    if-nez v7, :cond_84

    .line 188
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    .end local v4    # "$this$use$iv":Ljava/io/Closeable;
    .end local v5    # "$i$f$use":I
    .end local v6    # "result$iv":Ljava/lang/Object;
    .end local v7    # "thrown$iv":Ljava/lang/Throwable;
    return-void

    .line 187
    .restart local v4    # "$this$use$iv":Ljava/io/Closeable;
    .restart local v5    # "$i$f$use":I
    .restart local v6    # "result$iv":Ljava/lang/Object;
    .restart local v7    # "thrown$iv":Ljava/lang/Throwable;
    :cond_84
    throw v7
.end method

.method public static final commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V
    .registers 8
    .param p0, "$this$commonCreateDirectories"    # Lokio/FileSystem;
    .param p1, "dir"    # Lokio/Path;
    .param p2, "mustCreate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 45
    .local v0, "directories":Lkotlin/collections/ArrayDeque;
    move-object v1, p1

    .line 46
    .local v1, "path":Lokio/Path;
    :goto_10
    if-eqz v1, :cond_20

    invoke-virtual {p0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 47
    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v1}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v1

    goto :goto_10

    .line 51
    :cond_20
    if-eqz p2, :cond_42

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_42

    :cond_29
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_42
    :goto_42
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    .line 56
    .local v3, "toCreate":Lokio/Path;
    invoke-virtual {p0, v3}, Lokio/FileSystem;->createDirectory(Lokio/Path;)V

    .end local v3    # "toCreate":Lokio/Path;
    goto :goto_46

    .line 58
    :cond_56
    return-void
.end method

.method public static final commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
    .registers 7
    .param p0, "$this$commonDeleteRecursively"    # Lokio/FileSystem;
    .param p1, "fileOrDirectory"    # Lokio/Path;
    .param p2, "mustExist"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lokio/internal/_FileSystemKt$commonDeleteRecursively$sequence$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokio/internal/_FileSystemKt$commonDeleteRecursively$sequence$1;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 80
    .local v0, "sequence":Lkotlin/sequences/Sequence;
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/Path;

    .line 83
    .local v2, "toDelete":Lokio/Path;
    if-eqz p2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    invoke-virtual {p0, v2, v3}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    .end local v2    # "toDelete":Lokio/Path;
    goto :goto_1a

    .line 85
    :cond_35
    return-void
.end method

.method public static final commonExists(Lokio/FileSystem;Lokio/Path;)Z
    .registers 3
    .param p0, "$this$commonExists"    # Lokio/FileSystem;
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static final commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/Sequence;
    .registers 5
    .param p0, "$this$commonListRecursively"    # Lokio/FileSystem;
    .param p1, "dir"    # Lokio/Path;
    .param p2, "followSymlinks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Z)",
            "Lkotlin/sequences/Sequence<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lokio/internal/_FileSystemKt$commonListRecursively$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lokio/internal/_FileSystemKt$commonListRecursively$1;-><init>(Lokio/Path;Lokio/FileSystem;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static final commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;
    .registers 4
    .param p0, "$this$commonMetadata"    # Lokio/FileSystem;
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no such file: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;
    .registers 4
    .param p0, "$this$symlinkTarget"    # Lokio/FileSystem;
    .param p1, "path"    # Lokio/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    return-object v0

    .line 150
    .local v0, "target":Lokio/Path;
    :cond_16
    invoke-virtual {p1}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lokio/Path;->resolve(Lokio/Path;)Lokio/Path;

    move-result-object v1

    return-object v1
.end method
