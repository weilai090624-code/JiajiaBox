.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$Snapshot;,
        Lokhttp3/internal/cache/DiskLruCache$Editor;,
        Lokhttp3/internal/cache/DiskLruCache$Entry;,
        Lokhttp3/internal/cache/DiskLruCache$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiskLruCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokhttp3/internal/Util\n+ 4 FileSystem.kt\nokio/FileSystem\n+ 5 Okio.kt\nokio/Okio__OkioKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,1077:1\n1#2:1078\n646#3,4:1079\n66#4:1083\n67#4:1089\n79#4:1103\n160#4:1104\n80#4:1105\n81#4:1111\n52#5,5:1084\n57#5,13:1090\n52#5,5:1106\n57#5,13:1112\n37#6,2:1125\n37#6,2:1127\n*S KotlinDebug\n*F\n+ 1 DiskLruCache.kt\nokhttp3/internal/cache/DiskLruCache\n*L\n224#1:1079,4\n272#1:1083\n272#1:1089\n397#1:1103\n397#1:1104\n397#1:1105\n397#1:1111\n272#1:1084,5\n272#1:1090,13\n397#1:1106,5\n397#1:1112,13\n684#1:1125,2\n733#1:1127,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000}\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010)\n\u0002\u0008\u0007*\u0001\u0014\u0018\u0000 \\2\u00020\u00012\u00020\u0002:\u0004\\]^_B5\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u00109\u001a\u00020:H\u0002J\u0008\u0010;\u001a\u00020:H\u0016J!\u0010<\u001a\u00020:2\n\u0010=\u001a\u00060>R\u00020\u00002\u0006\u0010?\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008@J\u0006\u0010A\u001a\u00020:J \u0010B\u001a\u0008\u0018\u00010>R\u00020\u00002\u0006\u0010C\u001a\u00020(2\u0008\u0008\u0002\u0010D\u001a\u00020\u000bH\u0007J\u0006\u0010E\u001a\u00020:J\u0008\u0010F\u001a\u00020:H\u0016J\u0017\u0010G\u001a\u0008\u0018\u00010HR\u00020\u00002\u0006\u0010C\u001a\u00020(H\u0086\u0002J\u0006\u0010I\u001a\u00020:J\u0006\u0010J\u001a\u00020\u0010J\u0008\u0010K\u001a\u00020\u0010H\u0002J\u0008\u0010L\u001a\u00020%H\u0002J\u0008\u0010M\u001a\u00020:H\u0002J\u0008\u0010N\u001a\u00020:H\u0002J\u0010\u0010O\u001a\u00020:2\u0006\u0010P\u001a\u00020(H\u0002J\r\u0010Q\u001a\u00020:H\u0000\u00a2\u0006\u0002\u0008RJ\u000e\u0010S\u001a\u00020\u00102\u0006\u0010C\u001a\u00020(J\u0019\u0010T\u001a\u00020\u00102\n\u0010U\u001a\u00060)R\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008VJ\u0008\u0010W\u001a\u00020\u0010H\u0002J\u0006\u00106\u001a\u00020\u000bJ\u0010\u0010X\u001a\u000c\u0012\u0008\u0012\u00060HR\u00020\u00000YJ\u0006\u0010Z\u001a\u00020:J\u0010\u0010[\u001a\u00020:2\u0006\u0010C\u001a\u00020(H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R8\u0010&\u001a&\u0012\u0004\u0012\u00020(\u0012\u0008\u0012\u00060)R\u00020\u00000\'j\u0012\u0012\u0004\u0012\u00020(\u0012\u0008\u0012\u00060)R\u00020\u0000`*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R&\u0010\n\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u000e\u00102\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108\u00a8\u0006`"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;",
        "fileSystem",
        "Lokio/FileSystem;",
        "directory",
        "Lokio/Path;",
        "appVersion",
        "",
        "valueCount",
        "maxSize",
        "",
        "taskRunner",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V",
        "civilizedFileSystem",
        "",
        "cleanupQueue",
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "cleanupTask",
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getDirectory",
        "()Lokio/Path;",
        "getFileSystem$okhttp",
        "()Lokio/FileSystem;",
        "hasJournalErrors",
        "initialized",
        "journalFile",
        "journalFileBackup",
        "journalFileTmp",
        "journalWriter",
        "Lokio/BufferedSink;",
        "lruEntries",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "Lkotlin/collections/LinkedHashMap;",
        "getLruEntries$okhttp",
        "()Ljava/util/LinkedHashMap;",
        "value",
        "getMaxSize",
        "()J",
        "setMaxSize",
        "(J)V",
        "mostRecentRebuildFailed",
        "mostRecentTrimFailed",
        "nextSequenceNumber",
        "redundantOpCount",
        "size",
        "getValueCount$okhttp",
        "()I",
        "checkNotClosed",
        "",
        "close",
        "completeEdit",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "success",
        "completeEdit$okhttp",
        "delete",
        "edit",
        "key",
        "expectedSequenceNumber",
        "evictAll",
        "flush",
        "get",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "initialize",
        "isClosed",
        "journalRebuildRequired",
        "newJournalWriter",
        "processJournal",
        "readJournal",
        "readJournalLine",
        "line",
        "rebuildJournal",
        "rebuildJournal$okhttp",
        "remove",
        "removeEntry",
        "entry",
        "removeEntry$okhttp",
        "removeOldestEntry",
        "snapshots",
        "",
        "trimToSize",
        "validateKey",
        "Companion",
        "Editor",
        "Entry",
        "Snapshot",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ANY_SEQUENCE_NUMBER:J

.field public static final CLEAN:Ljava/lang/String;

.field public static final Companion:Lokhttp3/internal/cache/DiskLruCache$Companion;

.field public static final DIRTY:Ljava/lang/String;

.field public static final JOURNAL_FILE:Ljava/lang/String;

.field public static final JOURNAL_FILE_BACKUP:Ljava/lang/String;

.field public static final JOURNAL_FILE_TEMP:Ljava/lang/String;

.field public static final LEGAL_KEY_PATTERN:Lkotlin/text/Regex;

.field public static final MAGIC:Ljava/lang/String;

.field public static final READ:Ljava/lang/String;

.field public static final REMOVE:Ljava/lang/String;

.field public static final VERSION_1:Ljava/lang/String;


# instance fields
.field private final appVersion:I

.field private civilizedFileSystem:Z

.field private final cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

.field private final cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

.field private closed:Z

.field private final directory:Lokio/Path;

.field private final fileSystem:Lokio/FileSystem;

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Lokio/Path;

.field private final journalFileBackup:Lokio/Path;

.field private final journalFileTmp:Lokio/Path;

.field private journalWriter:Lokio/BufferedSink;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private mostRecentRebuildFailed:Z

.field private mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->Companion:Lokhttp3/internal/cache/DiskLruCache$Companion;

    .line 1064
    const-string v0, "journal"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->JOURNAL_FILE:Ljava/lang/String;

    .line 1065
    const-string v0, "journal.tmp"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->JOURNAL_FILE_TEMP:Ljava/lang/String;

    .line 1066
    const-string v0, "journal.bkp"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->JOURNAL_FILE_BACKUP:Ljava/lang/String;

    .line 1067
    const-string v0, "libcore.io.DiskLruCache"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->MAGIC:Ljava/lang/String;

    .line 1068
    const-string v0, "1"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->VERSION_1:Ljava/lang/String;

    .line 1069
    const-wide/16 v0, -0x1

    sput-wide v0, Lokhttp3/internal/cache/DiskLruCache;->ANY_SEQUENCE_NUMBER:J

    .line 1070
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Lkotlin/text/Regex;

    .line 1071
    const-string v0, "CLEAN"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->CLEAN:Ljava/lang/String;

    .line 1072
    const-string v0, "DIRTY"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->DIRTY:Ljava/lang/String;

    .line 1073
    const-string v0, "REMOVE"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->REMOVE:Ljava/lang/String;

    .line 1074
    const-string v0, "READ"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->READ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V
    .locals 6
    .param p1, "fileSystem"    # Lokio/FileSystem;
    .param p2, "directory"    # Lokio/Path;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "taskRunner"    # Lokhttp3/internal/concurrent/TaskRunner;

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskRunner"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    .line 93
    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 95
    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 103
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;

    invoke-direct {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;-><init>(Lokio/FileSystem;)V

    check-cast v0, Lokio/FileSystem;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    .line 113
    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 166
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 184
    invoke-virtual {p7}, Lokhttp3/internal/concurrent/TaskRunner;->newQueue()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 185
    sget-object v0, Lokhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    const-string v2, " Cache"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    invoke-direct {v2, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    .line 213
    nop

    .line 214
    const-wide/16 v4, 0x0

    cmp-long v0, p5, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 215
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 217
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->JOURNAL_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    .line 218
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->JOURNAL_FILE_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Lokio/Path;

    .line 219
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->JOURNAL_FILE_BACKUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    .line 220
    nop

    .line 87
    return-void

    .line 1078
    :cond_2
    const/4 v0, 0x0

    .line 215
    .local v0, "$i$a$-require-DiskLruCache$2":I
    nop

    .end local v0    # "$i$a$-require-DiskLruCache$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 1078
    :cond_3
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-require-DiskLruCache$1":I
    nop

    .end local v0    # "$i$a$-require-DiskLruCache$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static final synthetic access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 87
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->civilizedFileSystem:Z

    return v0
.end method

.method public static final synthetic access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 87
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    return v0
.end method

.method public static final synthetic access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z
    .locals 1
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 87
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method public static final synthetic access$setHasJournalErrors$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "<set-?>"    # Z

    .line 87
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return-void
.end method

.method public static final synthetic access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "<set-?>"    # Lokio/BufferedSink;

    .line 87
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    return-void
.end method

.method public static final synthetic access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "<set-?>"    # Z

    .line 87
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    return-void
.end method

.method public static final synthetic access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "<set-?>"    # Z

    .line 87
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    return-void
.end method

.method public static final synthetic access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    .locals 0
    .param p0, "$this"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "<set-?>"    # I

    .line 87
    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    return-void
.end method

.method private final declared-synchronized checkNotClosed()V
    .locals 2

    monitor-enter p0

    .line 660
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 661
    monitor-exit p0

    return-void

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 660
    .local v0, "$i$a$-check-DiskLruCache$checkNotClosed$1":I
    :try_start_1
    const-string v1, "cache is closed"

    .end local v0    # "$i$a$-check-DiskLruCache$checkNotClosed$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 659
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic edit$default(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JILjava/lang/Object;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-wide p2, Lokhttp3/internal/cache/DiskLruCache;->ANY_SEQUENCE_NUMBER:J

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method private final journalRebuildRequired()Z
    .locals 3

    .line 591
    const/16 v0, 0x7d0

    .line 592
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    if-lt v1, v0, :cond_0

    .line 593
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 592
    :goto_0
    return v1
.end method

.method private final newJournalWriter()Lokio/BufferedSink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->appendingSink(Lokio/Path;)Lokio/Sink;

    move-result-object v0

    .line 312
    .local v0, "fileSink":Lokio/Sink;
    new-instance v1, Lokhttp3/internal/cache/FaultHidingSink;

    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$newJournalWriter$faultHidingSink$1;

    invoke-direct {v2, p0}, Lokhttp3/internal/cache/DiskLruCache$newJournalWriter$faultHidingSink$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v0, v2}, Lokhttp3/internal/cache/FaultHidingSink;-><init>(Lokio/Sink;Lkotlin/jvm/functions/Function1;)V

    .line 316
    .local v1, "faultHidingSink":Lokhttp3/internal/cache/FaultHidingSink;
    move-object v2, v1

    check-cast v2, Lokio/Sink;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    return-object v2
.end method

.method private final processJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Lokio/Path;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->deleteIfExists(Lokio/FileSystem;Lokio/Path;)V

    .line 371
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "i.next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 374
    .local v1, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 375
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-lez v2, :cond_0

    :cond_1
    move v4, v3

    .local v4, "t":I
    add-int/lit8 v3, v3, 0x1

    .line 376
    iget-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLengths$okhttp()[J

    move-result-object v7

    aget-wide v8, v7, v4

    add-long/2addr v5, v8

    iput-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 375
    if-lt v3, v2, :cond_1

    .end local v4    # "t":I
    goto :goto_0

    .line 379
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setCurrentEditor$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 380
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-lez v2, :cond_4

    :cond_3
    move v4, v3

    .restart local v4    # "t":I
    add-int/lit8 v3, v3, 0x1

    .line 381
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCleanFiles$okhttp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/Path;

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->deleteIfExists(Lokio/FileSystem;Lokio/Path;)V

    .line 382
    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getDirtyFiles$okhttp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/Path;

    invoke-static {v5, v6}, Lokhttp3/internal/Util;->deleteIfExists(Lokio/FileSystem;Lokio/Path;)V

    .line 380
    if-lt v3, v2, :cond_3

    .line 384
    .end local v4    # "t":I
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .end local v1    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    goto :goto_0

    .line 387
    :cond_5
    return-void
.end method

.method private final readJournal()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    move-object/from16 v1, p0

    const-string v0, ", "

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    .local v2, "this_$iv":Lokio/FileSystem;
    iget-object v3, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    .local v3, "file$iv":Lokio/Path;
    const/4 v4, 0x0

    .line 1083
    .local v4, "$i$f$-read":I
    invoke-virtual {v2, v3}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v5

    invoke-static {v5}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    check-cast v5, Ljava/io/Closeable;

    .local v5, "$this$use$iv$iv":Ljava/io/Closeable;
    const/4 v6, 0x0

    .line 1084
    .local v6, "$i$f$use":I
    const/4 v7, 0x0

    .line 1085
    .local v7, "result$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 1087
    .local v8, "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 1088
    :try_start_0
    move-object v9, v5

    check-cast v9, Lokio/BufferedSource;

    .local v9, "it$iv":Lokio/BufferedSource;
    const/4 v10, 0x0

    .line 1089
    .local v10, "$i$a$-use-FileSystem$read$1$iv":I
    move-object v11, v9

    .local v11, "$this$readJournal_u24lambda_u2d2":Lokio/BufferedSource;
    const/4 v12, 0x0

    .line 273
    .local v12, "$i$a$--read-DiskLruCache$readJournal$1":I
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "magic":Ljava/lang/String;
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v14

    .line 275
    .local v14, "version":Ljava/lang/String;
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v15

    .line 276
    .local v15, "appVersionString":Ljava/lang/String;
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 277
    .local v17, "valueCountString":Ljava/lang/String;
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v18, v16

    .line 279
    .local v18, "blank":Ljava/lang/String;
    move-object/from16 v16, v2

    .end local v2    # "this_$iv":Lokio/FileSystem;
    .local v16, "this_$iv":Lokio/FileSystem;
    :try_start_1
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->MAGIC:Ljava/lang/String;

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v2, :cond_4

    .line 280
    :try_start_2
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->VERSION_1:Ljava/lang/String;

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    iget v2, v1, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->getValueCount$okhttp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "valueCountString":Ljava/lang/String;
    .local v3, "valueCountString":Ljava/lang/String;
    .local v19, "file$iv":Lokio/Path;
    :try_start_3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 283
    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 288
    const/4 v0, 0x0

    move v2, v0

    .line 289
    .local v2, "lineCount":I
    :goto_1
    nop

    .line 290
    nop

    .line 291
    :try_start_4
    invoke-interface {v11}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lokhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "_":Ljava/io/EOFException;
    nop

    .line 298
    .end local v0    # "_":Ljava/io/EOFException;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->getLruEntries$okhttp()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int v0, v2, v0

    iput v0, v1, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 301
    invoke-interface {v11}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    goto :goto_2

    .line 304
    :cond_1
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 306
    :goto_2
    nop

    .end local v2    # "lineCount":I
    .end local v3    # "valueCountString":Ljava/lang/String;
    .end local v11    # "$this$readJournal_u24lambda_u2d2":Lokio/BufferedSource;
    .end local v12    # "$i$a$--read-DiskLruCache$readJournal$1":I
    .end local v13    # "magic":Ljava/lang/String;
    .end local v14    # "version":Ljava/lang/String;
    .end local v15    # "appVersionString":Ljava/lang/String;
    .end local v18    # "blank":Ljava/lang/String;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "it$iv":Lokio/BufferedSource;
    .end local v10    # "$i$a$-use-FileSystem$read$1$iv":I
    move-object v7, v0

    move/from16 v17, v4

    goto/16 :goto_5

    .line 1090
    :catchall_0
    move-exception v0

    move/from16 v17, v4

    goto/16 :goto_4

    .line 281
    .end local v19    # "file$iv":Lokio/Path;
    .local v3, "file$iv":Lokio/Path;
    .restart local v9    # "it$iv":Lokio/BufferedSource;
    .restart local v10    # "$i$a$-use-FileSystem$read$1$iv":I
    .restart local v11    # "$this$readJournal_u24lambda_u2d2":Lokio/BufferedSource;
    .restart local v12    # "$i$a$--read-DiskLruCache$readJournal$1":I
    .restart local v13    # "magic":Ljava/lang/String;
    .restart local v14    # "version":Ljava/lang/String;
    .restart local v15    # "appVersionString":Ljava/lang/String;
    .restart local v17    # "valueCountString":Ljava/lang/String;
    .restart local v18    # "blank":Ljava/lang/String;
    :cond_2
    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "valueCountString":Ljava/lang/String;
    .local v3, "valueCountString":Ljava/lang/String;
    .restart local v19    # "file$iv":Lokio/Path;
    goto :goto_3

    .line 280
    .end local v19    # "file$iv":Lokio/Path;
    .local v3, "file$iv":Lokio/Path;
    .restart local v17    # "valueCountString":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .end local v17    # "valueCountString":Ljava/lang/String;
    .local v3, "valueCountString":Ljava/lang/String;
    .restart local v19    # "file$iv":Lokio/Path;
    goto :goto_3

    .line 1090
    .end local v9    # "it$iv":Lokio/BufferedSource;
    .end local v10    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v11    # "$this$readJournal_u24lambda_u2d2":Lokio/BufferedSource;
    .end local v12    # "$i$a$--read-DiskLruCache$readJournal$1":I
    .end local v13    # "magic":Ljava/lang/String;
    .end local v14    # "version":Ljava/lang/String;
    .end local v15    # "appVersionString":Ljava/lang/String;
    .end local v18    # "blank":Ljava/lang/String;
    .end local v19    # "file$iv":Lokio/Path;
    .local v3, "file$iv":Lokio/Path;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    .end local v3    # "file$iv":Lokio/Path;
    .restart local v19    # "file$iv":Lokio/Path;
    goto :goto_4

    .line 279
    .end local v19    # "file$iv":Lokio/Path;
    .restart local v3    # "file$iv":Lokio/Path;
    .restart local v9    # "it$iv":Lokio/BufferedSource;
    .restart local v10    # "$i$a$-use-FileSystem$read$1$iv":I
    .restart local v11    # "$this$readJournal_u24lambda_u2d2":Lokio/BufferedSource;
    .restart local v12    # "$i$a$--read-DiskLruCache$readJournal$1":I
    .restart local v13    # "magic":Ljava/lang/String;
    .restart local v14    # "version":Ljava/lang/String;
    .restart local v15    # "appVersionString":Ljava/lang/String;
    .restart local v17    # "valueCountString":Ljava/lang/String;
    .restart local v18    # "blank":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v3, v17

    .line 284
    .end local v17    # "valueCountString":Ljava/lang/String;
    .local v3, "valueCountString":Ljava/lang/String;
    .restart local v19    # "file$iv":Lokio/Path;
    :cond_5
    :goto_3
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v17, v4

    .end local v4    # "$i$f$-read":I
    .local v17, "$i$f$-read":I
    :try_start_7
    const-string v4, "unexpected journal header: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v18

    .end local v18    # "blank":Ljava/lang/String;
    .local v1, "blank":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v6    # "$i$f$use":I
    .end local v7    # "result$iv$iv":Ljava/lang/Object;
    .end local v8    # "thrown$iv$iv":Ljava/lang/Throwable;
    .end local v16    # "this_$iv":Lokio/FileSystem;
    .end local v17    # "$i$f$-read":I
    .end local v19    # "file$iv":Lokio/Path;
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1090
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "valueCountString":Ljava/lang/String;
    .end local v9    # "it$iv":Lokio/BufferedSource;
    .end local v10    # "$i$a$-use-FileSystem$read$1$iv":I
    .end local v11    # "$this$readJournal_u24lambda_u2d2":Lokio/BufferedSource;
    .end local v12    # "$i$a$--read-DiskLruCache$readJournal$1":I
    .end local v13    # "magic":Ljava/lang/String;
    .end local v14    # "version":Ljava/lang/String;
    .end local v15    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "$this$use$iv$iv":Ljava/io/Closeable;
    .restart local v6    # "$i$f$use":I
    .restart local v7    # "result$iv$iv":Ljava/lang/Object;
    .restart local v8    # "thrown$iv$iv":Ljava/lang/Throwable;
    .restart local v16    # "this_$iv":Lokio/FileSystem;
    .restart local v17    # "$i$f$-read":I
    .restart local v19    # "file$iv":Lokio/Path;
    :catchall_2
    move-exception v0

    goto :goto_4

    .end local v17    # "$i$f$-read":I
    .restart local v4    # "$i$f$-read":I
    :catchall_3
    move-exception v0

    move/from16 v17, v4

    .end local v4    # "$i$f$-read":I
    .restart local v17    # "$i$f$-read":I
    goto :goto_4

    .end local v17    # "$i$f$-read":I
    .end local v19    # "file$iv":Lokio/Path;
    .local v3, "file$iv":Lokio/Path;
    .restart local v4    # "$i$f$-read":I
    :catchall_4
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    .end local v3    # "file$iv":Lokio/Path;
    .end local v4    # "$i$f$-read":I
    .restart local v17    # "$i$f$-read":I
    .restart local v19    # "file$iv":Lokio/Path;
    goto :goto_4

    .end local v16    # "this_$iv":Lokio/FileSystem;
    .end local v17    # "$i$f$-read":I
    .end local v19    # "file$iv":Lokio/Path;
    .local v2, "this_$iv":Lokio/FileSystem;
    .restart local v3    # "file$iv":Lokio/Path;
    .restart local v4    # "$i$f$-read":I
    :catchall_5
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v19, v3

    move/from16 v17, v4

    .line 1091
    .end local v2    # "this_$iv":Lokio/FileSystem;
    .end local v3    # "file$iv":Lokio/Path;
    .end local v4    # "$i$f$-read":I
    .local v0, "t$iv$iv":Ljava/lang/Throwable;
    .restart local v16    # "this_$iv":Lokio/FileSystem;
    .restart local v17    # "$i$f$-read":I
    .restart local v19    # "file$iv":Lokio/Path;
    :goto_4
    move-object v8, v0

    .line 1094
    .end local v0    # "t$iv$iv":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 1095
    if-nez v5, :cond_6

    :goto_6
    goto :goto_7

    :cond_6
    :try_start_8
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_6

    .line 1096
    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1097
    .restart local v0    # "t$iv$iv":Ljava/lang/Throwable;
    if-nez v8, :cond_7

    move-object v8, v0

    goto :goto_7

    .line 1098
    :cond_7
    invoke-static {v8, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1101
    .end local v0    # "t$iv$iv":Ljava/lang/Throwable;
    :goto_7
    if-nez v8, :cond_8

    .line 1102
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1083
    .end local v5    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v6    # "$i$f$use":I
    .end local v7    # "result$iv$iv":Ljava/lang/Object;
    .end local v8    # "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 307
    .end local v16    # "this_$iv":Lokio/FileSystem;
    .end local v17    # "$i$f$-read":I
    .end local v19    # "file$iv":Lokio/Path;
    return-void

    .line 1101
    .restart local v5    # "$this$use$iv$iv":Ljava/io/Closeable;
    .restart local v6    # "$i$f$use":I
    .restart local v7    # "result$iv$iv":Ljava/lang/Object;
    .restart local v8    # "thrown$iv$iv":Ljava/lang/Throwable;
    .restart local v16    # "this_$iv":Lokio/FileSystem;
    .restart local v17    # "$i$f$-read":I
    .restart local v19    # "file$iv":Lokio/Path;
    :cond_8
    throw v8
.end method

.method private final readJournalLine(Ljava/lang/String;)V
    .locals 20
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    .line 322
    .local v2, "firstSpace":I
    const-string v3, "unexpected journal line: "

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 324
    add-int/lit8 v11, v2, 0x1

    .line 325
    .local v11, "keyBegin":I
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/16 v6, 0x20

    const/4 v8, 0x0

    move v7, v11

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v5

    .local v5, "secondSpace":I
    const/4 v6, 0x0

    .line 327
    .local v6, "key":Ljava/lang/String;
    const-string v7, "(this as java.lang.String).substring(startIndex)"

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    const/4 v9, 0x2

    const/4 v12, 0x0

    if-ne v5, v4, :cond_1

    .line 328
    if-eqz v1, :cond_0

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v13

    .line 329
    sget-object v13, Lokhttp3/internal/cache/DiskLruCache;->REMOVE:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v2, v13, :cond_2

    sget-object v13, Lokhttp3/internal/cache/DiskLruCache;->REMOVE:Ljava/lang/String;

    invoke-static {v1, v13, v12, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 330
    iget-object v3, v0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void

    .line 328
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :cond_1
    if-eqz v1, :cond_8

    invoke-virtual {v1, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v13

    .line 337
    :cond_2
    iget-object v13, v0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 338
    .local v13, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    if-nez v13, :cond_3

    .line 339
    new-instance v14, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v14, v0, v6}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    move-object v13, v14

    .line 340
    iget-object v14, v0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    check-cast v14, Ljava/util/Map;

    invoke-interface {v14, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_3
    nop

    .line 344
    if-eq v5, v4, :cond_5

    sget-object v14, Lokhttp3/internal/cache/DiskLruCache;->CLEAN:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v2, v14, :cond_5

    sget-object v14, Lokhttp3/internal/cache/DiskLruCache;->CLEAN:Ljava/lang/String;

    invoke-static {v1, v14, v12, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 345
    add-int/lit8 v3, v5, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v3

    check-cast v14, Ljava/lang/CharSequence;

    .line 346
    const/4 v3, 0x1

    new-array v15, v3, [C

    const/16 v4, 0x20

    aput-char v4, v15, v12

    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 345
    nop

    .line 347
    .local v4, "parts":Ljava/util/List;
    invoke-virtual {v13, v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setReadable$okhttp(Z)V

    .line 348
    invoke-virtual {v13, v10}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setCurrentEditor$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 349
    invoke-virtual {v13, v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setLengths$okhttp(Ljava/util/List;)V

    .end local v4    # "parts":Ljava/util/List;
    goto :goto_0

    .line 345
    :cond_4
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 352
    :cond_5
    if-ne v5, v4, :cond_6

    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->DIRTY:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v2, v7, :cond_6

    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->DIRTY:Ljava/lang/String;

    invoke-static {v1, v7, v12, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 353
    new-instance v3, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {v3, v0, v13}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    invoke-virtual {v13, v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setCurrentEditor$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    goto :goto_0

    .line 356
    :cond_6
    if-ne v5, v4, :cond_7

    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->READ:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_7

    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->READ:Ljava/lang/String;

    invoke-static {v1, v4, v12, v9, v10}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_7
    new-instance v4, Ljava/io/IOException;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    .end local v13    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    :cond_8
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 322
    .end local v5    # "secondSpace":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "keyBegin":I
    :cond_9
    new-instance v4, Ljava/io/IOException;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final removeOldestEntry()Z
    .locals 3

    .line 706
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 707
    .local v1, "toEvict":Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    const-string v0, "toEvict"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 709
    const/4 v0, 0x1

    return v0

    .line 712
    .end local v1    # "toEvict":Lokhttp3/internal/cache/DiskLruCache$Entry;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 740
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Lkotlin/text/Regex;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    return-void

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 740
    .local v0, "$i$a$-require-DiskLruCache$validateKey$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-DiskLruCache$validateKey$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 684
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 1125
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v0

    .line 1126
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v5, v4, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 684
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v5, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v0, v5

    :cond_1
    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v2, v5, v4

    .local v2, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    add-int/lit8 v4, v4, 0x1

    .line 685
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 686
    invoke-virtual {v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach$okhttp()V

    goto :goto_1

    .line 690
    .end local v2    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_3
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 691
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 693
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    monitor-exit p0

    return-void

    .line 1126
    .restart local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .local v2, "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_5
    :goto_2
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    .line 677
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized completeEdit$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 13
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getEntry$okhttp()Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v0

    .line 522
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 525
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v3

    if-nez v3, :cond_3

    .line 526
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-lez v3, :cond_3

    const/4 v4, 0x0

    :cond_0
    move v5, v4

    .local v5, "i":I
    add-int/2addr v4, v2

    .line 527
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->getWritten$okhttp()[Z

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    .line 531
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getDirtyFiles$okhttp()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/Path;

    invoke-virtual {v6, v7}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 532
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 526
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_1
    if-lt v4, v3, :cond_0

    goto :goto_0

    .line 528
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 529
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Newly created entry didn\'t create value for index "

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    .end local v5    # "i":I
    :cond_3
    :goto_0
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-lez v3, :cond_8

    :cond_4
    move v4, v1

    .local v4, "i":I
    add-int/2addr v1, v2

    .line 539
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getDirtyFiles$okhttp()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/Path;

    .line 540
    .local v5, "dirty":Lokio/Path;
    if-eqz p2, :cond_6

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    move-result v6

    if-nez v6, :cond_6

    .line 541
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v6, v5}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 542
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCleanFiles$okhttp()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/Path;

    .line 543
    .local v6, "clean":Lokio/Path;
    iget-object v7, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v7, v5, v6}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 544
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLengths$okhttp()[J

    move-result-object v7

    aget-wide v8, v7, v4

    move-wide v7, v8

    .line 546
    .local v7, "oldLength":J
    iget-object v9, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {v9, v6}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v9

    invoke-virtual {v9}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    move-result-object v9

    if-nez v9, :cond_5

    const-wide/16 v9, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 547
    .local v9, "newLength":J
    :goto_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLengths$okhttp()[J

    move-result-object v11

    aput-wide v9, v11, v4

    .line 548
    iget-wide v11, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    sub-long/2addr v11, v7

    add-long/2addr v11, v9

    iput-wide v11, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .end local v6    # "clean":Lokio/Path;
    .end local v7    # "oldLength":J
    .end local v9    # "newLength":J
    goto :goto_2

    .line 551
    :cond_6
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-static {v6, v5}, Lokhttp3/internal/Util;->deleteIfExists(Lokio/FileSystem;Lokio/Path;)V

    .line 538
    .end local v5    # "dirty":Lokio/Path;
    :cond_7
    :goto_2
    if-lt v1, v3, :cond_4

    .line 555
    .end local v4    # "i":I
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setCurrentEditor$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    .line 556
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getZombie$okhttp()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 557
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    monitor-exit p0

    return-void

    .line 561
    :cond_9
    :try_start_2
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 562
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v1, "$this$completeEdit_u24lambda_u2d4":Lokio/BufferedSink;
    const/4 v3, 0x0

    .line 563
    .local v3, "$i$a$-apply-DiskLruCache$completeEdit$1":I
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getReadable$okhttp()Z

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x20

    if-nez v4, :cond_b

    if-eqz p2, :cond_a

    goto :goto_3

    .line 573
    :cond_a
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->getLruEntries$okhttp()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->REMOVE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 575
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 576
    invoke-interface {v1, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_4

    .line 564
    :cond_b
    :goto_3
    invoke-virtual {v0, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setReadable$okhttp(Z)V

    .line 565
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->CLEAN:Ljava/lang/String;

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 566
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 567
    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths$okhttp(Lokio/BufferedSink;)V

    .line 568
    invoke-interface {v1, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 569
    if-eqz p2, :cond_c

    .line 570
    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    invoke-virtual {v0, v4, v5}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setSequenceNumber$okhttp(J)V

    .line 578
    :cond_c
    :goto_4
    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 579
    nop

    .line 562
    .end local v1    # "$this$completeEdit_u24lambda_u2d4":Lokio/BufferedSink;
    .end local v3    # "$i$a$-apply-DiskLruCache$completeEdit$1":I
    nop

    .line 581
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_d

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 582
    :cond_d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    check-cast v2, Lokhttp3/internal/concurrent/Task;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    :cond_e
    monitor-exit p0

    return-void

    .line 522
    :cond_f
    :try_start_3
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 520
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 722
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->deleteContents(Lokio/FileSystem;Lokio/Path;)V

    .line 723
    return-void
.end method

.method public final edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/cache/DiskLruCache;->edit$default(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JILjava/lang/Object;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 462
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 463
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 465
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    sget-wide v1, Lokhttp3/internal/cache/DiskLruCache;->ANY_SEQUENCE_NUMBER:J

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    .line 466
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getSequenceNumber$okhttp()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 467
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 470
    :cond_1
    if-nez v0, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    .line 471
    monitor-exit p0

    return-object v3

    .line 474
    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 475
    monitor-exit p0

    return-object v3

    .line 478
    :cond_4
    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz v1, :cond_5

    goto :goto_1

    .line 489
    :cond_5
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 490
    .local v1, "journalWriter":Lokio/BufferedSink;
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->DIRTY:Ljava/lang/String;

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 491
    const/16 v4, 0x20

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v2

    .line 492
    invoke-interface {v2, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 493
    const/16 v4, 0xa

    invoke-interface {v2, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 494
    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 496
    iget-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_6

    .line 497
    monitor-exit p0

    return-object v3

    .line 500
    :cond_6
    if-nez v0, :cond_7

    .line 501
    :try_start_4
    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v2, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    move-object v0, v2

    .line 502
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_7
    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {v2, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 505
    .local v2, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-virtual {v0, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setCurrentEditor$okhttp(Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 506
    monitor-exit p0

    return-object v2

    .line 484
    .end local v1    # "journalWriter":Lokio/BufferedSink;
    .end local v2    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :cond_8
    :goto_1
    :try_start_5
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    move-object v5, v1

    check-cast v5, Lokhttp3/internal/concurrent/Task;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    monitor-exit p0

    return-object v3

    .line 459
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized evictAll()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 731
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 733
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "lruEntries.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 1127
    .local v1, "$i$f$toTypedArray":I
    move-object v2, v0

    .line 1128
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    new-array v4, v3, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 733
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v4, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v0, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, v4, v1

    .local v2, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    add-int/lit8 v1, v1, 0x1

    .line 734
    const-string v5, "entry"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    goto :goto_0

    .line 736
    .end local v2    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_0
    iput-boolean v3, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 1128
    .restart local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v1    # "$i$f$toTypedArray":I
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 730
    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 666
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 668
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 669
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 670
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    monitor-exit p0

    return-void

    .line 665
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 439
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 440
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 442
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot$okhttp()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    move-object v1, v2

    .line 444
    .local v1, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :try_start_2
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 445
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lokhttp3/internal/cache/DiskLruCache;->READ:Ljava/lang/String;

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 446
    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v2

    .line 447
    invoke-interface {v2, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 448
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 449
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    move-object v4, v2

    check-cast v4, Lokhttp3/internal/concurrent/Task;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 436
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final getClosed$okhttp()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    return v0
.end method

.method public final getDirectory()Lokio/Path;
    .locals 1

    .line 91
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    return-object v0
.end method

.method public final getFileSystem$okhttp()Lokio/FileSystem;
    .locals 1

    .line 103
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    return-object v0
.end method

.method public final getLruEntries$okhttp()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 113
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getValueCount$okhttp()I
    .locals 1

    .line 95
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    return v0
.end method

.method public final declared-synchronized initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 224
    move-object v0, p0

    .local v0, "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1079
    .local v1, "$i$f$assertThreadHoldsLock":I
    :try_start_0
    sget-boolean v2, Lokhttp3/internal/Util;->assertionsEnabled:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1080
    :cond_0
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MUST hold lock on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1082
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_1
    :goto_0
    nop

    .line 226
    .end local v0    # "$this$assertThreadHoldsLock$iv":Ljava/lang/Object;
    .end local v1    # "$i$f$assertThreadHoldsLock":I
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 227
    monitor-exit p0

    return-void

    .line 231
    :cond_2
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->delete(Lokio/Path;)V

    goto :goto_1

    .line 236
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v1, v2}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 240
    :cond_4
    :goto_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->isCivilized(Lokio/FileSystem;Lokio/Path;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->civilizedFileSystem:Z

    .line 243
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 244
    nop

    .line 245
    :try_start_2
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 246
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 247
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    monitor-exit p0

    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_3
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Lokio/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    nop

    .line 253
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 250
    const/4 v5, 0x5

    invoke-virtual {v2, v3, v5, v4}, Lokhttp3/internal/platform/Platform;->log(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    nop

    .line 259
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    :try_start_5
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    .line 262
    goto :goto_2

    :catchall_0
    move-exception v1

    .line 261
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    throw v1

    .line 265
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal$okhttp()V

    .line 267
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 268
    monitor-exit p0

    return-void

    .line 223
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public final declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 673
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 673
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized rebuildJournal$okhttp()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 397
    :goto_0
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Lokio/Path;

    .local v2, "file$iv":Lokio/Path;
    move-object v3, v0

    .line 1103
    .local v3, "this_$iv":Lokio/FileSystem;
    nop

    .line 1104
    const/4 v4, 0x0

    .line 1103
    .local v4, "mustCreate$iv":Z
    const/4 v5, 0x0

    .line 1105
    .local v5, "$i$f$-write":I
    invoke-virtual {v3, v2, v4}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v0

    .local v6, "$this$use$iv$iv":Ljava/io/Closeable;
    const/4 v7, 0x0

    .line 1106
    .local v7, "$i$f$use":I
    const/4 v8, 0x0

    .line 1107
    .local v8, "result$iv$iv":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1109
    .local v9, "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 1110
    :try_start_1
    move-object v0, v6

    check-cast v0, Lokio/BufferedSink;

    .local v0, "it$iv":Lokio/BufferedSink;
    const/4 v10, 0x0

    .line 1111
    .local v10, "$i$a$-use-FileSystem$write$1$iv":I
    move-object v11, v0

    .local v11, "$this$rebuildJournal_u24lambda_u2d3":Lokio/BufferedSink;
    const/4 v12, 0x0

    .line 398
    .local v12, "$i$a$--write$default-DiskLruCache$rebuildJournal$1":I
    sget-object v13, Lokhttp3/internal/cache/DiskLruCache;->MAGIC:Ljava/lang/String;

    invoke-interface {v11, v13}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v13

    const/16 v14, 0xa

    invoke-interface {v13, v14}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 399
    sget-object v13, Lokhttp3/internal/cache/DiskLruCache;->VERSION_1:Ljava/lang/String;

    invoke-interface {v11, v13}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v13

    invoke-interface {v13, v14}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 400
    iget v13, v1, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v14, v13

    invoke-interface {v11, v14, v15}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v13

    const/16 v14, 0xa

    invoke-interface {v13, v14}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 401
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->getValueCount$okhttp()I

    move-result v13

    int-to-long v14, v13

    invoke-interface {v11, v14, v15}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v13

    const/16 v14, 0xa

    invoke-interface {v13, v14}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 402
    invoke-interface {v11, v14}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 404
    invoke-virtual/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->getLruEntries$okhttp()Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 405
    .local v14, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-virtual {v14}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "it$iv":Lokio/BufferedSink;
    .local v16, "it$iv":Lokio/BufferedSink;
    const/16 v0, 0x20

    if-eqz v15, :cond_1

    .line 406
    sget-object v15, Lokhttp3/internal/cache/DiskLruCache;->DIRTY:Ljava/lang/String;

    invoke-interface {v11, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    invoke-interface {v15, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 407
    invoke-virtual {v14}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 408
    const/16 v0, 0xa

    invoke-interface {v11, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-object/from16 v0, v16

    goto :goto_1

    .line 410
    :cond_1
    sget-object v15, Lokhttp3/internal/cache/DiskLruCache;->CLEAN:Ljava/lang/String;

    invoke-interface {v11, v15}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v15

    invoke-interface {v15, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 411
    invoke-virtual {v14}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 412
    invoke-virtual {v14, v11}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths$okhttp(Lokio/BufferedSink;)V

    .line 413
    const/16 v0, 0xa

    invoke-interface {v11, v0}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-object/from16 v0, v16

    goto :goto_1

    .line 416
    .end local v14    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local v16    # "it$iv":Lokio/BufferedSink;
    .restart local v0    # "it$iv":Lokio/BufferedSink;
    :cond_2
    move-object/from16 v16, v0

    .end local v0    # "it$iv":Lokio/BufferedSink;
    .end local v11    # "$this$rebuildJournal_u24lambda_u2d3":Lokio/BufferedSink;
    .end local v12    # "$i$a$--write$default-DiskLruCache$rebuildJournal$1":I
    .restart local v16    # "it$iv":Lokio/BufferedSink;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v10    # "$i$a$-use-FileSystem$write$1$iv":I
    .end local v16    # "it$iv":Lokio/BufferedSink;
    move-object v8, v0

    goto :goto_2

    .line 1112
    :catchall_0
    move-exception v0

    .line 1113
    .local v0, "t$iv$iv":Ljava/lang/Throwable;
    move-object v9, v0

    .line 1116
    .end local v0    # "t$iv$iv":Ljava/lang/Throwable;
    :goto_2
    nop

    .line 1117
    if-nez v6, :cond_3

    :goto_3
    goto :goto_4

    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 1118
    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 1119
    .restart local v0    # "t$iv$iv":Ljava/lang/Throwable;
    if-nez v9, :cond_4

    move-object v9, v0

    goto :goto_4

    .line 1120
    :cond_4
    :try_start_3
    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 1123
    .end local v0    # "t$iv$iv":Ljava/lang/Throwable;
    :goto_4
    if-nez v9, :cond_6

    .line 1124
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1105
    .end local v6    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v7    # "$i$f$use":I
    .end local v8    # "result$iv$iv":Ljava/lang/Object;
    .end local v9    # "thrown$iv$iv":Ljava/lang/Throwable;
    nop

    .line 418
    .end local v2    # "file$iv":Lokio/Path;
    .end local v3    # "this_$iv":Lokio/FileSystem;
    .end local v4    # "mustCreate$iv":Z
    .end local v5    # "$i$f$-write":I
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v2}, Lokio/FileSystem;->exists(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    iget-object v3, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    invoke-virtual {v0, v2, v3}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 420
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Lokio/Path;

    iget-object v3, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v2, v3}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 421
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Lokio/Path;

    invoke-static {v0, v2}, Lokhttp3/internal/Util;->deleteIfExists(Lokio/FileSystem;Lokio/Path;)V

    goto :goto_5

    .line 423
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_5
    iget-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    iget-object v2, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Lokio/Path;

    iget-object v3, v1, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Lokio/Path;

    invoke-virtual {v0, v2, v3}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    .line 426
    :goto_5
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v0

    iput-object v0, v1, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, v1, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 428
    iput-boolean v0, v1, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 429
    monitor-exit p0

    return-void

    .line 1123
    .restart local v2    # "file$iv":Lokio/Path;
    .restart local v3    # "this_$iv":Lokio/FileSystem;
    .restart local v4    # "mustCreate$iv":Z
    .restart local v5    # "$i$f$-write":I
    .restart local v6    # "$this$use$iv$iv":Ljava/io/Closeable;
    .restart local v7    # "$i$f$use":I
    .restart local v8    # "result$iv$iv":Ljava/lang/Object;
    .restart local v9    # "thrown$iv$iv":Ljava/lang/Throwable;
    :cond_6
    :try_start_4
    throw v9

    .line 394
    .end local v2    # "file$iv":Lokio/Path;
    .end local v3    # "this_$iv":Lokio/FileSystem;
    .end local v4    # "mustCreate$iv":Z
    .end local v5    # "$i$f$-write":I
    .end local v6    # "$this$use$iv$iv":Ljava/io/Closeable;
    .end local v7    # "$i$f$use":I
    .end local v8    # "result$iv$iv":Ljava/lang/Object;
    .end local v9    # "thrown$iv$iv":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 606
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 607
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 609
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v2

    .line 610
    .local v2, "removed":Z
    if-eqz v2, :cond_1

    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_1
    monitor-exit p0

    return v2

    .line 603
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local v2    # "removed":Z
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final removeEntry$okhttp(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 11
    .param p1, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->civilizedFileSystem:Z

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 619
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    move-result v0

    if-lez v0, :cond_1

    .line 621
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    if-nez v0, :cond_0

    goto :goto_0

    .local v0, "it":Lokio/BufferedSink;
    :cond_0
    const/4 v4, 0x0

    .line 622
    .local v4, "$i$a$-let-DiskLruCache$removeEntry$1":I
    sget-object v5, Lokhttp3/internal/cache/DiskLruCache;->DIRTY:Ljava/lang/String;

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 623
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 624
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 625
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 626
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 627
    nop

    .line 621
    .end local v0    # "it":Lokio/BufferedSink;
    .end local v4    # "$i$a$-let-DiskLruCache$removeEntry$1":I
    nop

    .line 629
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLockingSourceCount$okhttp()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 630
    :cond_2
    invoke-virtual {p1, v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setZombie$okhttp(Z)V

    .line 631
    return v3

    .line 635
    :cond_3
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCurrentEditor$okhttp()Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach$okhttp()V

    .line 637
    :goto_1
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-lez v0, :cond_6

    const/4 v4, 0x0

    :cond_5
    move v5, v4

    .local v5, "i":I
    add-int/2addr v4, v3

    .line 638
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokio/FileSystem;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getCleanFiles$okhttp()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokio/Path;

    invoke-static {v6, v7}, Lokhttp3/internal/Util;->deleteIfExists(Lokio/FileSystem;Lokio/Path;)V

    .line 639
    iget-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLengths$okhttp()[J

    move-result-object v8

    aget-wide v9, v8, v5

    sub-long/2addr v6, v9

    iput-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 640
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getLengths$okhttp()[J

    move-result-object v6

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v5

    .line 637
    if-lt v4, v0, :cond_5

    .line 643
    .end local v5    # "i":I
    :cond_6
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 644
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    if-nez v0, :cond_7

    goto :goto_2

    .restart local v0    # "it":Lokio/BufferedSink;
    :cond_7
    const/4 v4, 0x0

    .line 645
    .local v4, "$i$a$-let-DiskLruCache$removeEntry$2":I
    sget-object v5, Lokhttp3/internal/cache/DiskLruCache;->REMOVE:Ljava/lang/String;

    invoke-interface {v0, v5}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 646
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 647
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 648
    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 644
    .end local v0    # "it":Lokio/BufferedSink;
    .end local v4    # "$i$a$-let-DiskLruCache$removeEntry$2":I
    nop

    .line 650
    :goto_2
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->getKey$okhttp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 653
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    move-object v5, v0

    check-cast v5, Lokhttp3/internal/concurrent/Task;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V

    .line 656
    :cond_8
    return v3
.end method

.method public final setClosed$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 173
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    return-void
.end method

.method public final declared-synchronized setMaxSize(J)V
    .locals 7
    .param p1, "value"    # J

    monitor-enter p0

    .line 115
    :try_start_0
    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 116
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupTask:Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;

    move-object v2, v0

    check-cast v2, Lokhttp3/internal/concurrent/Task;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;JILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    .end local p1    # "value":J
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 516
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 514
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 759
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$snapshots$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 757
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    nop

    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 699
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->removeOldestEntry()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 701
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    .line 702
    return-void
.end method
