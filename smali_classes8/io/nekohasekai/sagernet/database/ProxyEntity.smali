.class public final Lio/nekohasekai/sagernet/database/ProxyEntity;
.super Lio/nekohasekai/sagernet/fmt/Serializable;
.source "ProxyEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;,
        Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProxyEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProxyEntity.kt\nio/nekohasekai/sagernet/database/ProxyEntity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,544:1\n1734#2,3:545\n1872#2,3:548\n*S KotlinDebug\n*F\n+ 1 ProxyEntity.kt\nio/nekohasekai/sagernet/database/ProxyEntity\n*L\n273#1:545,3\n278#1:548,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008a\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00da\u00012\u00020\u0001:\u0004\u00da\u0001\u00db\u0001B\u00b9\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010.\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u000100\u00a2\u0006\u0004\u00081\u00102J\n\u0010\u0097\u0001\u001a\u00030\u0098\u0001H\u0016J\u0014\u0010\u0099\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u009b\u0001H\u0016J\u0014\u0010\u009c\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u0001H\u0016J\u0012\u0010\u009f\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u0001J\u0007\u0010\u00a2\u0001\u001a\u00020\rJ\u0015\u0010\u00a3\u0001\u001a\u000b \u00a4\u0001*\u0004\u0018\u00010\r0\r\u00a2\u0006\u0002\u0010HJ\u0015\u0010\u00a5\u0001\u001a\u000b \u00a4\u0001*\u0004\u0018\u00010\r0\r\u00a2\u0006\u0002\u0010HJ\u0008\u0010\u00a6\u0001\u001a\u00030\u00a7\u0001J\u0008\u0010\u00a8\u0001\u001a\u00030\u0092\u0001J\u0008\u0010\u00a9\u0001\u001a\u00030\u0092\u0001J\u0013\u0010\u00aa\u0001\u001a\u00020\r2\n\u0008\u0002\u0010\u00ab\u0001\u001a\u00030\u0092\u0001J\u0014\u0010\u00ac\u0001\u001a\u000f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00ad\u0001J\u0008\u0010\u00ae\u0001\u001a\u00030\u0092\u0001J\n\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00b0\u0001J\u0011\u0010\u00b1\u0001\u001a\u00020\u00002\u0008\u0010\u00b2\u0001\u001a\u00030\u00a7\u0001J\u001c\u0010\u00b3\u0001\u001a\u00030\u00b4\u00012\u0008\u0010\u00b5\u0001\u001a\u00030\u00b6\u00012\u0008\u0010\u00b7\u0001\u001a\u00030\u0092\u0001J\t\u0010\u00b8\u0001\u001a\u00020\u0006H\u0016J\n\u0010\u00b9\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00ba\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00bb\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00bc\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00bd\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00be\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u00bf\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00c0\u0001\u001a\u00020\u0006H\u00c6\u0003J\n\u0010\u00c1\u0001\u001a\u00020\rH\u00c6\u0003J\u000c\u0010\u00c2\u0001\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000c\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000c\u0010\u00c4\u0001\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000c\u0010\u00c5\u0001\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003J\u000c\u0010\u00c6\u0001\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000c\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u000c\u0010\u00c8\u0001\u001a\u0004\u0018\u00010\u001aH\u00c6\u0003J\u000c\u0010\u00c9\u0001\u001a\u0004\u0018\u00010\u001cH\u00c6\u0003J\u000c\u0010\u00ca\u0001\u001a\u0004\u0018\u00010\u001eH\u00c6\u0003J\u000c\u0010\u00cb\u0001\u001a\u0004\u0018\u00010 H\u00c6\u0003J\u000c\u0010\u00cc\u0001\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\u000c\u0010\u00cd\u0001\u001a\u0004\u0018\u00010$H\u00c6\u0003J\u000c\u0010\u00ce\u0001\u001a\u0004\u0018\u00010&H\u00c6\u0003J\u000c\u0010\u00cf\u0001\u001a\u0004\u0018\u00010(H\u00c6\u0003J\u000c\u0010\u00d0\u0001\u001a\u0004\u0018\u00010*H\u00c6\u0003J\u000c\u0010\u00d1\u0001\u001a\u0004\u0018\u00010,H\u00c6\u0003J\u000c\u0010\u00d2\u0001\u001a\u0004\u0018\u00010.H\u00c6\u0003J\u000c\u0010\u00d3\u0001\u001a\u0004\u0018\u000100H\u00c6\u0003J\u00bc\u0002\u0010\u00d4\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u000100H\u00c6\u0001J\u0017\u0010\u00d5\u0001\u001a\u00030\u0092\u00012\n\u0010\u00d6\u0001\u001a\u0005\u0018\u00010\u00d7\u0001H\u00d6\u0003J\n\u0010\u00d8\u0001\u001a\u00020\u0006H\u00d6\u0001J\n\u0010\u00d9\u0001\u001a\u00020\rH\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00104\"\u0004\u00088\u00106R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u00104\"\u0004\u0008>\u00106R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u00104\"\u0004\u0008@\u00106R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u00104\"\u0004\u0008B\u00106R\u001a\u0010\n\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010:\"\u0004\u0008D\u0010<R\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010:\"\u0004\u0008F\u0010<R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010H\"\u0004\u0008L\u0010JR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010Z\"\u0004\u0008[\u0010\\R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010f\"\u0004\u0008g\u0010hR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u0010r\"\u0004\u0008s\u0010tR\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008y\u0010z\"\u0004\u0008{\u0010|R\u001d\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000f\n\u0000\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R \u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R \u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R \u0010-\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0089\u0001\u0010\u008a\u0001\"\u0006\u0008\u008b\u0001\u0010\u008c\u0001R \u0010/\u001a\u0004\u0018\u000100X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R$\u0010\u0091\u0001\u001a\u00030\u0092\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0093\u0001\u0010\u0094\u0001\"\u0006\u0008\u0095\u0001\u0010\u0096\u0001\u00a8\u0006\u00dc\u0001"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "Lio/nekohasekai/sagernet/fmt/Serializable;",
        "id",
        "",
        "groupId",
        "type",
        "",
        "userOrder",
        "tx",
        "rx",
        "status",
        "ping",
        "uuid",
        "",
        "error",
        "socksBean",
        "Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;",
        "httpBean",
        "Lio/nekohasekai/sagernet/fmt/http/HttpBean;",
        "ssBean",
        "Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;",
        "vmessBean",
        "Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;",
        "trojanBean",
        "Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;",
        "trojanGoBean",
        "Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;",
        "mieruBean",
        "Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;",
        "naiveBean",
        "Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;",
        "hysteriaBean",
        "Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;",
        "tuicBean",
        "Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;",
        "sshBean",
        "Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;",
        "wgBean",
        "Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;",
        "shadowTLSBean",
        "Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;",
        "anyTLSBean",
        "Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;",
        "chainBean",
        "Lio/nekohasekai/sagernet/fmt/internal/ChainBean;",
        "nekoBean",
        "Lmoe/matsuri/nb4a/proxy/neko/NekoBean;",
        "configBean",
        "Lmoe/matsuri/nb4a/proxy/config/ConfigBean;",
        "<init>",
        "(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "getGroupId",
        "setGroupId",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getUserOrder",
        "setUserOrder",
        "getTx",
        "setTx",
        "getRx",
        "setRx",
        "getStatus",
        "setStatus",
        "getPing",
        "setPing",
        "getUuid",
        "()Ljava/lang/String;",
        "setUuid",
        "(Ljava/lang/String;)V",
        "getError",
        "setError",
        "getSocksBean",
        "()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;",
        "setSocksBean",
        "(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)V",
        "getHttpBean",
        "()Lio/nekohasekai/sagernet/fmt/http/HttpBean;",
        "setHttpBean",
        "(Lio/nekohasekai/sagernet/fmt/http/HttpBean;)V",
        "getSsBean",
        "()Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;",
        "setSsBean",
        "(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V",
        "getVmessBean",
        "()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;",
        "setVmessBean",
        "(Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;)V",
        "getTrojanBean",
        "()Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;",
        "setTrojanBean",
        "(Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;)V",
        "getTrojanGoBean",
        "()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;",
        "setTrojanGoBean",
        "(Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;)V",
        "getMieruBean",
        "()Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;",
        "setMieruBean",
        "(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;)V",
        "getNaiveBean",
        "()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;",
        "setNaiveBean",
        "(Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;)V",
        "getHysteriaBean",
        "()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;",
        "setHysteriaBean",
        "(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)V",
        "getTuicBean",
        "()Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;",
        "setTuicBean",
        "(Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;)V",
        "getSshBean",
        "()Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;",
        "setSshBean",
        "(Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;)V",
        "getWgBean",
        "()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;",
        "setWgBean",
        "(Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;)V",
        "getShadowTLSBean",
        "()Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;",
        "setShadowTLSBean",
        "(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)V",
        "getAnyTLSBean",
        "()Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;",
        "setAnyTLSBean",
        "(Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;)V",
        "getChainBean",
        "()Lio/nekohasekai/sagernet/fmt/internal/ChainBean;",
        "setChainBean",
        "(Lio/nekohasekai/sagernet/fmt/internal/ChainBean;)V",
        "getNekoBean",
        "()Lmoe/matsuri/nb4a/proxy/neko/NekoBean;",
        "setNekoBean",
        "(Lmoe/matsuri/nb4a/proxy/neko/NekoBean;)V",
        "getConfigBean",
        "()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;",
        "setConfigBean",
        "(Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V",
        "dirty",
        "",
        "getDirty",
        "()Z",
        "setDirty",
        "(Z)V",
        "initializeDefaultValues",
        "",
        "serializeToBuffer",
        "output",
        "Lcom/esotericsoftware/kryo/io/ByteBufferOutput;",
        "deserializeFromBuffer",
        "input",
        "Lcom/esotericsoftware/kryo/io/ByteBufferInput;",
        "putByteArray",
        "byteArray",
        "",
        "displayType",
        "displayName",
        "kotlin.jvm.PlatformType",
        "displayAddress",
        "requireBean",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "haveLink",
        "haveStandardLink",
        "toStdLink",
        "compact",
        "exportConfig",
        "Lkotlin/Pair;",
        "needExternal",
        "singMux",
        "Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;",
        "putBean",
        "bean",
        "settingIntent",
        "Landroid/content/Intent;",
        "ctx",
        "Landroid/content/Context;",
        "isSubscription",
        "describeContents",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "Companion",
        "Dao",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;

.field public static final TYPE_ANYTLS:I = 0x16

.field public static final TYPE_CHAIN:I = 0x8

.field public static final TYPE_CONFIG:I = 0x3e6

.field public static final TYPE_HTTP:I = 0x1

.field public static final TYPE_HYSTERIA:I = 0xf

.field public static final TYPE_MIERU:I = 0x15

.field public static final TYPE_NAIVE:I = 0x9

.field public static final TYPE_NEKO:I = 0x3e7

.field public static final TYPE_SHADOWTLS:I = 0x13

.field public static final TYPE_SOCKS:I = 0x0

.field public static final TYPE_SS:I = 0x2

.field public static final TYPE_SSH:I = 0x11

.field public static final TYPE_TROJAN:I = 0x6

.field public static final TYPE_TROJAN_GO:I = 0x7

.field public static final TYPE_TUIC:I = 0x14

.field public static final TYPE_VMESS:I = 0x4

.field public static final TYPE_WG:I = 0x12

.field private static final chainName$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

.field private chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

.field private configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

.field private transient dirty:Z

.field private error:Ljava/lang/String;

.field private groupId:J

.field private httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

.field private hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

.field private id:J

.field private mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

.field private naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

.field private nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

.field private ping:I

.field private rx:J

.field private shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

.field private socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

.field private ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

.field private sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

.field private status:I

.field private trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

.field private trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

.field private tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

.field private tx:J

.field private type:I

.field private userOrder:J

.field private uuid:Ljava/lang/String;

.field private vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

.field private wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;


# direct methods
.method public static synthetic $r8$lambda$8x1z9qmRBbMs4Ak9vyeNv6jR-mY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainName_delegate$lambda$8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->Companion:Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;

    .line 99
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainName$delegate:Lkotlin/Lazy;

    .line 102
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyEntity$Companion$CREATOR$1;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/ProxyEntity$Companion$CREATOR$1;-><init>()V

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;

    sput-object v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->CREATOR:Lio/nekohasekai/sagernet/fmt/Serializable$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 35

    move-object/from16 v0, p0

    const v33, 0x7ffffff

    const/16 v34, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v0 .. v34}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V
    .locals 16
    .param p1, "id"    # J
    .param p3, "groupId"    # J
    .param p5, "type"    # I
    .param p6, "userOrder"    # J
    .param p8, "tx"    # J
    .param p10, "rx"    # J
    .param p12, "status"    # I
    .param p13, "ping"    # I
    .param p14, "uuid"    # Ljava/lang/String;
    .param p15, "error"    # Ljava/lang/String;
    .param p16, "socksBean"    # Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .param p17, "httpBean"    # Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .param p18, "ssBean"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .param p19, "vmessBean"    # Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .param p20, "trojanBean"    # Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .param p21, "trojanGoBean"    # Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .param p22, "mieruBean"    # Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .param p23, "naiveBean"    # Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .param p24, "hysteriaBean"    # Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .param p25, "tuicBean"    # Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .param p26, "sshBean"    # Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .param p27, "wgBean"    # Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .param p28, "shadowTLSBean"    # Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .param p29, "anyTLSBean"    # Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .param p30, "chainBean"    # Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .param p31, "nekoBean"    # Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .param p32, "configBean"    # Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    const-string v2, "uuid"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct/range {p0 .. p0}, Lio/nekohasekai/sagernet/fmt/Serializable;-><init>()V

    .line 47
    move-wide/from16 v2, p1

    iput-wide v2, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    .line 48
    move-wide/from16 v4, p3

    iput-wide v4, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    .line 49
    move/from16 v6, p5

    iput v6, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 50
    move-wide/from16 v7, p6

    iput-wide v7, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    .line 51
    move-wide/from16 v9, p8

    iput-wide v9, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    .line 52
    move-wide/from16 v11, p10

    iput-wide v11, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    .line 53
    move/from16 v13, p12

    iput v13, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    .line 54
    move/from16 v14, p13

    iput v14, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    .line 55
    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    .line 56
    move-object/from16 v15, p15

    iput-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    .line 57
    move-object/from16 v1, p16

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    .line 58
    move-object/from16 v1, p17

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    .line 59
    move-object/from16 v1, p18

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    .line 60
    move-object/from16 v1, p19

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    .line 61
    move-object/from16 v1, p20

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    .line 62
    move-object/from16 v1, p21

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    .line 63
    move-object/from16 v1, p22

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    .line 64
    move-object/from16 v1, p23

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    .line 65
    move-object/from16 v1, p24

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    .line 66
    move-object/from16 v1, p25

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    .line 67
    move-object/from16 v1, p26

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    .line 68
    move-object/from16 v1, p27

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    .line 69
    move-object/from16 v1, p28

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    .line 70
    move-object/from16 v1, p29

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    .line 71
    move-object/from16 v1, p30

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    .line 72
    move-object/from16 v1, p31

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    .line 73
    move-object/from16 v1, p32

    iput-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    .line 46
    return-void
.end method

.method public synthetic constructor <init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 33

    .line 46
    move/from16 v0, p33

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 47
    move-wide v4, v2

    goto :goto_0

    .line 46
    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 48
    move-wide v6, v2

    goto :goto_1

    .line 46
    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    .line 49
    const/4 v1, 0x0

    goto :goto_2

    .line 46
    :cond_2
    move/from16 v1, p5

    :goto_2
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_3

    .line 50
    move-wide v9, v2

    goto :goto_3

    .line 46
    :cond_3
    move-wide/from16 v9, p6

    :goto_3
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_4

    .line 51
    move-wide v11, v2

    goto :goto_4

    .line 46
    :cond_4
    move-wide/from16 v11, p8

    :goto_4
    and-int/lit8 v13, v0, 0x20

    if-eqz v13, :cond_5

    .line 52
    goto :goto_5

    .line 46
    :cond_5
    move-wide/from16 v2, p10

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    .line 53
    const/4 v13, 0x0

    goto :goto_6

    .line 46
    :cond_6
    move/from16 v13, p12

    :goto_6
    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_7

    .line 54
    goto :goto_7

    .line 46
    :cond_7
    move/from16 v8, p13

    :goto_7
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_8

    .line 55
    const-string v14, ""

    goto :goto_8

    .line 46
    :cond_8
    move-object/from16 v14, p14

    :goto_8
    and-int/lit16 v15, v0, 0x200

    const/16 v16, 0x0

    if-eqz v15, :cond_9

    .line 56
    move-object/from16 v15, v16

    goto :goto_9

    .line 46
    :cond_9
    move-object/from16 v15, p15

    :goto_9
    move-object/from16 p34, v15

    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    .line 57
    move-object/from16 v15, v16

    goto :goto_a

    .line 46
    :cond_a
    move-object/from16 v15, p16

    :goto_a
    move-object/from16 v17, v15

    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    .line 58
    move-object/from16 v15, v16

    goto :goto_b

    .line 46
    :cond_b
    move-object/from16 v15, p17

    :goto_b
    move-object/from16 v18, v15

    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    .line 59
    move-object/from16 v15, v16

    goto :goto_c

    .line 46
    :cond_c
    move-object/from16 v15, p18

    :goto_c
    move-object/from16 v19, v15

    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    .line 60
    move-object/from16 v15, v16

    goto :goto_d

    .line 46
    :cond_d
    move-object/from16 v15, p19

    :goto_d
    move-object/from16 v20, v15

    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    .line 61
    move-object/from16 v15, v16

    goto :goto_e

    .line 46
    :cond_e
    move-object/from16 v15, p20

    :goto_e
    const v21, 0x8000

    and-int v21, v0, v21

    if-eqz v21, :cond_f

    .line 62
    move-object/from16 v21, v16

    goto :goto_f

    .line 46
    :cond_f
    move-object/from16 v21, p21

    :goto_f
    const/high16 v22, 0x10000

    and-int v22, v0, v22

    if-eqz v22, :cond_10

    .line 63
    move-object/from16 v22, v16

    goto :goto_10

    .line 46
    :cond_10
    move-object/from16 v22, p22

    :goto_10
    const/high16 v23, 0x20000

    and-int v23, v0, v23

    if-eqz v23, :cond_11

    .line 64
    move-object/from16 v23, v16

    goto :goto_11

    .line 46
    :cond_11
    move-object/from16 v23, p23

    :goto_11
    const/high16 v24, 0x40000

    and-int v24, v0, v24

    if-eqz v24, :cond_12

    .line 65
    move-object/from16 v24, v16

    goto :goto_12

    .line 46
    :cond_12
    move-object/from16 v24, p24

    :goto_12
    const/high16 v25, 0x80000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    .line 66
    move-object/from16 v25, v16

    goto :goto_13

    .line 46
    :cond_13
    move-object/from16 v25, p25

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    .line 67
    move-object/from16 v26, v16

    goto :goto_14

    .line 46
    :cond_14
    move-object/from16 v26, p26

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    .line 68
    move-object/from16 v27, v16

    goto :goto_15

    .line 46
    :cond_15
    move-object/from16 v27, p27

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    .line 69
    move-object/from16 v28, v16

    goto :goto_16

    .line 46
    :cond_16
    move-object/from16 v28, p28

    :goto_16
    const/high16 v29, 0x800000

    and-int v29, v0, v29

    if-eqz v29, :cond_17

    .line 70
    move-object/from16 v29, v16

    goto :goto_17

    .line 46
    :cond_17
    move-object/from16 v29, p29

    :goto_17
    const/high16 v30, 0x1000000

    and-int v30, v0, v30

    if-eqz v30, :cond_18

    .line 71
    move-object/from16 v30, v16

    goto :goto_18

    .line 46
    :cond_18
    move-object/from16 v30, p30

    :goto_18
    const/high16 v31, 0x2000000

    and-int v31, v0, v31

    if-eqz v31, :cond_19

    .line 72
    move-object/from16 v31, v16

    goto :goto_19

    .line 46
    :cond_19
    move-object/from16 v31, p31

    :goto_19
    const/high16 v32, 0x4000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1a

    .line 73
    goto :goto_1a

    .line 46
    :cond_1a
    move-object/from16 v16, p32

    :goto_1a
    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move/from16 p6, v1

    move-wide/from16 p7, v9

    move-wide/from16 p9, v11

    move-wide/from16 p11, v2

    move/from16 p13, v13

    move/from16 p14, v8

    move-object/from16 p15, v14

    move-object/from16 p16, p34

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v15

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    move-object/from16 p27, v26

    move-object/from16 p28, v27

    move-object/from16 p29, v28

    move-object/from16 p30, v29

    move-object/from16 p31, v30

    move-object/from16 p32, v31

    move-object/from16 p33, v16

    invoke-direct/range {p1 .. p33}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    .line 74
    return-void
.end method

.method public static final synthetic access$getChainName$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 43
    sget-object v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainName$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final chainName_delegate$lambda$8()Ljava/lang/String;
    .locals 2

    .line 99
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v0

    const v1, 0x7f130237

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic copy$default(Lio/nekohasekai/sagernet/database/ProxyEntity;JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;ILjava/lang/Object;)Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p33

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget v6, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    goto :goto_2

    :cond_2
    move/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_5

    iget-wide v11, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p10

    :goto_5
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_6

    iget v13, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    goto :goto_6

    :cond_6
    move/from16 v13, p12

    :goto_6
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget v14, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    goto :goto_7

    :cond_7
    move/from16 v14, p13

    :goto_7
    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_8

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v15, p14

    :goto_8
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v15, p15

    :goto_9
    move-object/from16 p15, v15

    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    goto :goto_a

    :cond_a
    move-object/from16 v15, p16

    :goto_a
    move-object/from16 p16, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    goto :goto_b

    :cond_b
    move-object/from16 v15, p17

    :goto_b
    move-object/from16 p17, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p18

    :goto_c
    move-object/from16 p18, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p19

    :goto_d
    move-object/from16 p19, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p20

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p21

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p22

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p23

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p24

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p25

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p26

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p27

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p28

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p29

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p30

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p31

    :goto_19
    const/high16 v16, 0x4000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p32

    :goto_1a
    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p31, v15

    move-object/from16 p32, v1

    invoke-virtual/range {p0 .. p32}, Lio/nekohasekai/sagernet/database/ProxyEntity;->copy(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic toStdLink$default(Lio/nekohasekai/sagernet/database/ProxyEntity;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 248
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->toStdLink(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    return-wide v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    return-object v0
.end method

.method public final component12()Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    return-object v0
.end method

.method public final component13()Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    return-object v0
.end method

.method public final component14()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    return-object v0
.end method

.method public final component15()Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    return-object v0
.end method

.method public final component16()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    return-object v0
.end method

.method public final component17()Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    return-object v0
.end method

.method public final component18()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    return-object v0
.end method

.method public final component19()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    return-wide v0
.end method

.method public final component20()Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    return-object v0
.end method

.method public final component21()Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    return-object v0
.end method

.method public final component22()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    return-object v0
.end method

.method public final component23()Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    return-object v0
.end method

.method public final component24()Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    return-object v0
.end method

.method public final component25()Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    return-object v0
.end method

.method public final component26()Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    return-object v0
.end method

.method public final component27()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    return-wide v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    return-wide v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 36

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    move-object/from16 v32, p32

    const-string v0, "uuid"

    move-wide/from16 v33, v1

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v35, Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object/from16 v0, v35

    move-wide/from16 v1, v33

    invoke-direct/range {v0 .. v32}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V

    return-object v35
.end method

.method public describeContents()I
    .locals 1

    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public deserializeFromBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferInput;)V
    .locals 3
    .param p1, "input"    # Lcom/esotericsoftware/kryo/io/ByteBufferInput;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v0

    .line 145
    .local v0, "version":I
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    .line 146
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    .line 147
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 148
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    .line 149
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    .line 150
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    .line 151
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    .line 152
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt()I

    move-result v1

    iput v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    .line 153
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    .line 155
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readVarInt(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBytes(I)[B

    move-result-object v1

    const-string v2, "readBytes(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->putByteArray([B)V

    .line 157
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->dirty:Z

    .line 158
    return-void
.end method

.method public final displayAddress()Ljava/lang/String;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->displayAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final displayName()Ljava/lang/String;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->displayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final displayType()Ljava/lang/String;
    .locals 2

    .line 183
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    const-string v1, "displayType(...)"

    sparse-switch v0, :sswitch_data_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 199
    :sswitch_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/neko/NekoBean;->displayType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :sswitch_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->displayType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :sswitch_2
    const-string v0, "AnyTLS"

    goto/16 :goto_0

    .line 190
    :sswitch_3
    const-string v0, "Mieru"

    goto/16 :goto_0

    .line 195
    :sswitch_4
    const-string v0, "TUIC"

    goto/16 :goto_0

    .line 196
    :sswitch_5
    const-string v0, "ShadowTLS"

    goto/16 :goto_0

    .line 194
    :sswitch_6
    const-string v0, "WireGuard"

    goto :goto_0

    .line 193
    :sswitch_7
    const-string v0, "SSH"

    goto :goto_0

    .line 192
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hysteria"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->protocolVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :sswitch_9
    const-string v0, "Na\u00efve"

    goto :goto_0

    .line 198
    :sswitch_a
    sget-object v0, Lio/nekohasekai/sagernet/database/ProxyEntity;->Companion:Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyEntity$Companion;->getChainName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :sswitch_b
    const-string v0, "Trojan-Go"

    goto :goto_0

    .line 188
    :sswitch_c
    const-string v0, "Trojan"

    goto :goto_0

    .line 187
    :sswitch_d
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->isVLESS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VLESS"

    goto :goto_0

    :cond_0
    const-string v0, "VMess"

    goto :goto_0

    .line 186
    :sswitch_e
    const-string v0, "Shadowsocks"

    goto :goto_0

    .line 185
    :sswitch_f
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->isTLS(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTTPS"

    goto :goto_0

    :cond_1
    const-string v0, "HTTP"

    goto :goto_0

    .line 184
    :sswitch_10
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->protocolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "protocolName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x4 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
        0xf -> :sswitch_8
        0x11 -> :sswitch_7
        0x12 -> :sswitch_6
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x3e6 -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    iget v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    iget-wide v5, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    return v2

    :cond_7
    iget v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    iget v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    if-eq v3, v4, :cond_8

    return v2

    :cond_8
    iget v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    iget v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    return v2

    :cond_b
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    :cond_c
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    return v2

    :cond_15
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    return v2

    :cond_16
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    return v2

    :cond_17
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    return v2

    :cond_18
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    return v2

    :cond_19
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    return v2

    :cond_1a
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    return v2

    :cond_1b
    iget-object v3, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    iget-object v1, v1, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public final exportConfig()Lkotlin/Pair;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/AbstractBean;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v1

    .local v1, "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v2, 0x0

    .line 269
    .local v2, "$i$a$-with-ProxyEntity$exportConfig$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v3

    .local v4, "$this$exportConfig_u24lambda_u244_u24lambda_u243":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 270
    .local v5, "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v10, p0

    invoke-static {v10, v6, v7, v8, v9}, Lio/nekohasekai/sagernet/fmt/ConfigBuilderKt;->buildConfig$default(Lio/nekohasekai/sagernet/database/ProxyEntity;ZZILjava/lang/Object;)Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;

    move-result-object v8

    .line 271
    .local v8, "config":Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;
    invoke-virtual {v8}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getConfig()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v8}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getExternalIndex()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 545
    .local v12, "$i$f$all":I
    instance-of v13, v11, Ljava/util/Collection;

    if-eqz v13, :cond_0

    move-object v13, v11

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;

    .local v15, "it":Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;
    const/16 v16, 0x0

    .line 273
    .local v16, "$i$a$-all-ProxyEntity$exportConfig$1$1$1":I
    invoke-virtual {v15}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;->getChain()Ljava/util/LinkedHashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v15

    .line 546
    .end local v15    # "it":Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;
    .end local v16    # "$i$a$-all-ProxyEntity$exportConfig$1$1$1":I
    if-nez v15, :cond_1

    goto :goto_0

    .line 547
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x1

    .line 273
    .end local v11    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$all":I
    :goto_0
    if-nez v6, :cond_3

    .line 274
    const-string v0, "profiles.txt"

    .line 277
    :cond_3
    invoke-virtual {v8}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;->getExternalIndex()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/fmt/ConfigBuildResult$IndexEntity;->component1()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 278
    .local v7, "chain":Ljava/util/LinkedHashMap;
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    const-string v12, "<get-entries>(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 548
    .local v12, "$i$f$forEachIndexed":I
    const/4 v13, 0x0

    .line 549
    .local v13, "index$iv":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "item$iv":Ljava/lang/Object;
    add-int/lit8 v16, v13, 0x1

    .end local v13    # "index$iv":I
    .local v16, "index$iv":I
    if-gez v13, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    move-object/from16 v17, v15

    check-cast v17, Ljava/util/Map$Entry;

    .local v13, "index":I
    const/16 v18, 0x0

    .line 278
    .local v18, "$i$a$-forEachIndexed-ProxyEntity$exportConfig$1$1$2":I
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v1

    .end local v1    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .local v19, "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const-string v1, "component1(...)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v9

    check-cast v1, Ljava/lang/Integer;

    .local v1, "port":Ljava/lang/Integer;
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move/from16 v17, v2

    .end local v2    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .local v17, "$i$a$-with-ProxyEntity$exportConfig$1":I
    const-string v2, "component2(...)"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v9

    check-cast v2, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .line 279
    .local v2, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v9

    .line 280
    .local v9, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    move-object/from16 v20, v2

    .end local v2    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .local v20, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    instance-of v2, v9, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move/from16 v21, v5

    .end local v5    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    .local v21, "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    const-string v5, "\n\n"

    if-eqz v2, :cond_5

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    move-object v2, v9

    check-cast v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoFmtKt;->buildTrojanGoConfig(Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 285
    :cond_5
    instance-of v2, v9, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    if-eqz v2, :cond_6

    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    move-object v2, v9

    check-cast v2, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Lio/nekohasekai/sagernet/fmt/mieru/MieruFmtKt;->buildMieruConfig(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 290
    :cond_6
    instance-of v2, v9, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    if-eqz v2, :cond_7

    .line 291
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-object v2, v9

    check-cast v2, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v5}, Lio/nekohasekai/sagernet/fmt/naive/NaiveFmtKt;->buildNaiveConfig(Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v1

    const/4 v1, 0x0

    goto :goto_3

    .line 295
    :cond_7
    instance-of v2, v9, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-eqz v2, :cond_8

    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    move-object v2, v9

    check-cast v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "port":Ljava/lang/Integer;
    .local v22, "port":Ljava/lang/Integer;
    invoke-static {v2, v5, v1}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->buildHysteria1Config(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;ILkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 295
    .end local v22    # "port":Ljava/lang/Integer;
    .restart local v1    # "port":Ljava/lang/Integer;
    :cond_8
    move-object/from16 v22, v1

    const/4 v1, 0x0

    .line 300
    .end local v1    # "port":Ljava/lang/Integer;
    .end local v9    # "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .restart local v22    # "port":Ljava/lang/Integer;
    :goto_3
    nop

    .line 549
    .end local v13    # "index":I
    .end local v18    # "$i$a$-forEachIndexed-ProxyEntity$exportConfig$1$1$2":I
    .end local v20    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v22    # "port":Ljava/lang/Integer;
    move-object v9, v1

    move/from16 v13, v16

    move/from16 v2, v17

    move-object/from16 v1, v19

    move/from16 v5, v21

    .end local v15    # "item$iv":Ljava/lang/Object;
    goto/16 :goto_2

    .line 550
    .end local v16    # "index$iv":I
    .end local v17    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .end local v19    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v21    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    .local v1, "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .local v2, "$i$a$-with-ProxyEntity$exportConfig$1":I
    .restart local v5    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    .local v13, "index$iv":I
    :cond_9
    move-object/from16 v19, v1

    move/from16 v17, v2

    move/from16 v21, v5

    move-object v1, v9

    .end local v1    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v2    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .end local v5    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    .restart local v17    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .restart local v19    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .restart local v21    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    move-object/from16 v1, v19

    .end local v7    # "chain":Ljava/util/LinkedHashMap;
    .end local v11    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$forEachIndexed":I
    .end local v13    # "index$iv":I
    goto/16 :goto_1

    .line 302
    .end local v17    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .end local v19    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v21    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    .restart local v1    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .restart local v2    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .restart local v5    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    :cond_a
    move-object/from16 v19, v1

    move/from16 v17, v2

    .line 269
    .end local v1    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v2    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .end local v4    # "$this$exportConfig_u24lambda_u244_u24lambda_u243":Ljava/lang/StringBuilder;
    .end local v5    # "$i$a$-apply-ProxyEntity$exportConfig$1$1":I
    .end local v8    # "config":Lio/nekohasekai/sagernet/fmt/ConfigBuildResult;
    .restart local v17    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .restart local v19    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    nop

    .line 302
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .end local v17    # "$i$a$-with-ProxyEntity$exportConfig$1":I
    .end local v19    # "$this$exportConfig_u24lambda_u244":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const-string v2, "with(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    nop

    .line 268
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method

.method public final getAnyTLSBean()Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    return-object v0
.end method

.method public final getChainBean()Lio/nekohasekai/sagernet/fmt/internal/ChainBean;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    return-object v0
.end method

.method public final getConfigBean()Lmoe/matsuri/nb4a/proxy/config/ConfigBean;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    return-object v0
.end method

.method public final getDirty()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->dirty:Z

    return v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupId()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    return-wide v0
.end method

.method public final getHttpBean()Lio/nekohasekai/sagernet/fmt/http/HttpBean;
    .locals 1

    .line 58
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    return-object v0
.end method

.method public final getHysteriaBean()Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    return-wide v0
.end method

.method public final getMieruBean()Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    return-object v0
.end method

.method public final getNaiveBean()Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    return-object v0
.end method

.method public final getNekoBean()Lmoe/matsuri/nb4a/proxy/neko/NekoBean;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    return-object v0
.end method

.method public final getPing()I
    .locals 1

    .line 54
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    return v0
.end method

.method public final getRx()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    return-wide v0
.end method

.method public final getShadowTLSBean()Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    return-object v0
.end method

.method public final getSocksBean()Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    return-object v0
.end method

.method public final getSsBean()Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    return-object v0
.end method

.method public final getSshBean()Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 53
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    return v0
.end method

.method public final getTrojanBean()Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    return-object v0
.end method

.method public final getTrojanGoBean()Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    return-object v0
.end method

.method public final getTuicBean()Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;
    .locals 1

    .line 66
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    return-object v0
.end method

.method public final getTx()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 49
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    return v0
.end method

.method public final getUserOrder()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    return-wide v0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getVmessBean()Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    return-object v0
.end method

.method public final getWgBean()Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyEntity$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/http/HttpBean;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    if-nez v2, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    :cond_a
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    if-nez v2, :cond_b

    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    if-nez v2, :cond_c

    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-virtual {v2}, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    if-nez v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    invoke-virtual {v2}, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    if-nez v2, :cond_f

    const/4 v2, 0x0

    goto :goto_f

    :cond_f
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_10

    :cond_10
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    invoke-virtual {v2}, Lmoe/matsuri/nb4a/proxy/neko/NekoBean;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    if-nez v2, :cond_11

    goto :goto_11

    :cond_11
    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-virtual {v2}, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v0, v3

    return v0
.end method

.method public final haveLink()Z
    .locals 2

    .line 231
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 232
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0
.end method

.method public final haveStandardLink()Z
    .locals 3

    .line 238
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    .line 239
    instance-of v1, v0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    instance-of v1, v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    instance-of v1, v0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 242
    :cond_2
    instance-of v1, v0, Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 243
    :cond_3
    instance-of v0, v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 244
    :cond_4
    const/4 v2, 0x1

    .line 238
    :goto_0
    return v2
.end method

.method public initializeDefaultValues()V
    .locals 0

    .line 119
    return-void
.end method

.method public final needExternal()Z
    .locals 3

    .line 307
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 313
    goto :goto_0

    .line 312
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 311
    :sswitch_2
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->canUseSingBox(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 310
    :sswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 308
    :sswitch_4
    const/4 v1, 0x1

    .line 307
    :cond_0
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0x9 -> :sswitch_3
        0xf -> :sswitch_2
        0x15 -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final putBean(Lio/nekohasekai/sagernet/fmt/AbstractBean;)Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 3
    .param p1, "bean"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    .line 347
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    .line 348
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    .line 349
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    .line 350
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    .line 351
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    .line 352
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    .line 353
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    .line 354
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    .line 355
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    .line 356
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    .line 357
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    .line 358
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    .line 359
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    .line 360
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    .line 361
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    .line 362
    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    .line 364
    nop

    .line 365
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 367
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    goto/16 :goto_0

    .line 370
    :cond_0
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    if-eqz v0, :cond_1

    .line 371
    const/4 v0, 0x1

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 372
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    goto/16 :goto_0

    .line 375
    :cond_1
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    if-eqz v0, :cond_2

    .line 376
    const/4 v0, 0x2

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 377
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    goto/16 :goto_0

    .line 380
    :cond_2
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    if-eqz v0, :cond_3

    .line 381
    const/4 v0, 0x4

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 382
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    goto/16 :goto_0

    .line 385
    :cond_3
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    if-eqz v0, :cond_4

    .line 386
    const/4 v0, 0x6

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 387
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    goto/16 :goto_0

    .line 390
    :cond_4
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    if-eqz v0, :cond_5

    .line 391
    const/4 v0, 0x7

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 392
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    goto/16 :goto_0

    .line 395
    :cond_5
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    if-eqz v0, :cond_6

    .line 396
    const/16 v0, 0x15

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 397
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    goto/16 :goto_0

    .line 400
    :cond_6
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    if-eqz v0, :cond_7

    .line 401
    const/16 v0, 0x9

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 402
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    goto/16 :goto_0

    .line 405
    :cond_7
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-eqz v0, :cond_8

    .line 406
    const/16 v0, 0xf

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 407
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    goto/16 :goto_0

    .line 410
    :cond_8
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    if-eqz v0, :cond_9

    .line 411
    const/16 v0, 0x11

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 412
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    goto :goto_0

    .line 415
    :cond_9
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    if-eqz v0, :cond_a

    .line 416
    const/16 v0, 0x12

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 417
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    goto :goto_0

    .line 420
    :cond_a
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    if-eqz v0, :cond_b

    .line 421
    const/16 v0, 0x14

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 422
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    goto :goto_0

    .line 425
    :cond_b
    instance-of v0, p1, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    if-eqz v0, :cond_c

    .line 426
    const/16 v0, 0x13

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 427
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    goto :goto_0

    .line 430
    :cond_c
    instance-of v0, p1, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    if-eqz v0, :cond_d

    .line 431
    const/16 v0, 0x16

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 432
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    goto :goto_0

    .line 435
    :cond_d
    instance-of v0, p1, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    if-eqz v0, :cond_e

    .line 436
    const/16 v0, 0x8

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 437
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    goto :goto_0

    .line 440
    :cond_e
    instance-of v0, p1, Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    if-eqz v0, :cond_f

    .line 441
    const/16 v0, 0x3e7

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 442
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    goto :goto_0

    .line 445
    :cond_f
    instance-of v0, p1, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    if-eqz v0, :cond_10

    .line 446
    const/16 v0, 0x3e6

    iput v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    .line 447
    move-object v0, p1

    check-cast v0, Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    .line 452
    :goto_0
    return-object p0

    .line 447
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final putByteArray([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 178
    :sswitch_0
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->nekoDeserialize([B)Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    goto/16 :goto_0

    .line 179
    :sswitch_1
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->configDeserialize([B)Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    goto/16 :goto_0

    .line 176
    :sswitch_2
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->anyTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    goto :goto_0

    .line 169
    :sswitch_3
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->mieruDeserialize([B)Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    goto :goto_0

    .line 174
    :sswitch_4
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->tuicDeserialize([B)Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    goto :goto_0

    .line 175
    :sswitch_5
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowTLSDeserialize([B)Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    goto :goto_0

    .line 173
    :sswitch_6
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->wireguardDeserialize([B)Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    goto :goto_0

    .line 172
    :sswitch_7
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->sshDeserialize([B)Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    goto :goto_0

    .line 171
    :sswitch_8
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->hysteriaDeserialize([B)Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    goto :goto_0

    .line 170
    :sswitch_9
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->naiveDeserialize([B)Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    goto :goto_0

    .line 177
    :sswitch_a
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->chainDeserialize([B)Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    goto :goto_0

    .line 168
    :sswitch_b
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanGoDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    goto :goto_0

    .line 167
    :sswitch_c
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->trojanDeserialize([B)Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    goto :goto_0

    .line 166
    :sswitch_d
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->vmessDeserialize([B)Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    goto :goto_0

    .line 165
    :sswitch_e
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->shadowsocksDeserialize([B)Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    goto :goto_0

    .line 164
    :sswitch_f
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->httpDeserialize([B)Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    goto :goto_0

    .line 163
    :sswitch_10
    invoke-static {p1}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->socksDeserialize([B)Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    .line 181
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x4 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
        0xf -> :sswitch_8
        0x11 -> :sswitch_7
        0x12 -> :sswitch_6
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x3e6 -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .locals 3

    .line 208
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :sswitch_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 225
    :sswitch_1
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 222
    :sswitch_2
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 215
    :sswitch_3
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 220
    :sswitch_4
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 221
    :sswitch_5
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 219
    :sswitch_6
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 218
    :sswitch_7
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 217
    :sswitch_8
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 216
    :sswitch_9
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 223
    :sswitch_a
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 214
    :sswitch_b
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 213
    :sswitch_c
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 212
    :sswitch_d
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 211
    :sswitch_e
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 210
    :sswitch_f
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    goto :goto_0

    .line 209
    :sswitch_10
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    check-cast v0, Lio/nekohasekai/sagernet/fmt/AbstractBean;

    .line 208
    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->displayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x4 -> :sswitch_d
        0x6 -> :sswitch_c
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_9
        0xf -> :sswitch_8
        0x11 -> :sswitch_7
        0x12 -> :sswitch_6
        0x13 -> :sswitch_5
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x3e6 -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public serializeToBuffer(Lcom/esotericsoftware/kryo/io/ByteBufferOutput;)V
    .locals 3
    .param p1, "output"    # Lcom/esotericsoftware/kryo/io/ByteBufferOutput;

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 124
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 125
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 126
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 127
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 128
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 129
    iget-wide v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    invoke-virtual {p1, v0, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeLong(J)V

    .line 130
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 131
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeString(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->serialize(Lio/nekohasekai/sagernet/fmt/Serializable;)[B

    move-result-object v0

    .line 136
    .local v0, "data":[B
    array-length v1, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeVarInt(IZ)I

    .line 137
    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBytes([B)V

    .line 139
    iget-boolean v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->dirty:Z

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/io/ByteBufferOutput;->writeBoolean(Z)V

    .line 140
    return-void
.end method

.method public final setAnyTLSBean(Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    .line 70
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    return-void
.end method

.method public final setChainBean(Lio/nekohasekai/sagernet/fmt/internal/ChainBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    .line 71
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    return-void
.end method

.method public final setConfigBean(Lmoe/matsuri/nb4a/proxy/config/ConfigBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    .line 73
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    return-void
.end method

.method public final setDirty(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 114
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->dirty:Z

    .line 116
    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    return-void
.end method

.method public final setGroupId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 48
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    return-void
.end method

.method public final setHttpBean(Lio/nekohasekai/sagernet/fmt/http/HttpBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    .line 58
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    return-void
.end method

.method public final setHysteriaBean(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    .line 65
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    return-void
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 47
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    return-void
.end method

.method public final setMieruBean(Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    .line 63
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    return-void
.end method

.method public final setNaiveBean(Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    .line 64
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    return-void
.end method

.method public final setNekoBean(Lmoe/matsuri/nb4a/proxy/neko/NekoBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    .line 72
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    return-void
.end method

.method public final setPing(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 54
    iput p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    return-void
.end method

.method public final setRx(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 52
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    return-void
.end method

.method public final setShadowTLSBean(Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    .line 69
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    return-void
.end method

.method public final setSocksBean(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    .line 57
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    return-void
.end method

.method public final setSsBean(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    .line 59
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    return-void
.end method

.method public final setSshBean(Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    .line 67
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 53
    iput p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    return-void
.end method

.method public final setTrojanBean(Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    .line 61
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    return-void
.end method

.method public final setTrojanGoBean(Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    .line 62
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    return-void
.end method

.method public final setTuicBean(Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    .line 66
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    return-void
.end method

.method public final setTx(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 51
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    return-void
.end method

.method public final setType(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 49
    iput p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    return-void
.end method

.method public final setUserOrder(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 50
    iput-wide p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    return-void
.end method

.method public final setUuid(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    return-void
.end method

.method public final setVmessBean(Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    .line 60
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    return-void
.end method

.method public final setWgBean(Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    .line 68
    iput-object p1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    return-void
.end method

.method public final settingIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isSubscription"    # Z

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v0, Landroid/content/Intent;

    .line 457
    iget v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 473
    :sswitch_0
    const-class v1, Lmoe/matsuri/nb4a/proxy/config/ConfigSettingActivity;

    goto :goto_0

    .line 471
    :sswitch_1
    const-class v1, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSSettingsActivity;

    goto :goto_0

    .line 464
    :sswitch_2
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/MieruSettingsActivity;

    goto :goto_0

    .line 469
    :sswitch_3
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/TuicSettingsActivity;

    goto :goto_0

    .line 470
    :sswitch_4
    const-class v1, Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSSettingsActivity;

    goto :goto_0

    .line 468
    :sswitch_5
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/WireGuardSettingsActivity;

    goto :goto_0

    .line 467
    :sswitch_6
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/SSHSettingsActivity;

    goto :goto_0

    .line 466
    :sswitch_7
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/HysteriaSettingsActivity;

    goto :goto_0

    .line 465
    :sswitch_8
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/NaiveSettingsActivity;

    goto :goto_0

    .line 472
    :sswitch_9
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/ChainSettingsActivity;

    goto :goto_0

    .line 463
    :sswitch_a
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/TrojanGoSettingsActivity;

    goto :goto_0

    .line 462
    :sswitch_b
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/TrojanSettingsActivity;

    goto :goto_0

    .line 461
    :sswitch_c
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/VMessSettingsActivity;

    goto :goto_0

    .line 460
    :sswitch_d
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/ShadowsocksSettingsActivity;

    goto :goto_0

    .line 459
    :sswitch_e
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/HttpSettingsActivity;

    goto :goto_0

    .line 458
    :sswitch_f
    const-class v1, Lio/nekohasekai/sagernet/ui/profile/SocksSettingsActivity;

    .line 456
    :goto_0
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    move-object v1, v0

    .local v1, "$this$settingIntent_u24lambda_u247":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 477
    .local v2, "$i$a$-apply-ProxyEntity$settingIntent$1":I
    const-string v3, "id"

    iget-wide v4, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 478
    const-string v3, "sub"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    nop

    .line 476
    .end local v1    # "$this$settingIntent_u24lambda_u247":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-ProxyEntity$settingIntent$1":I
    nop

    .line 456
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0x1 -> :sswitch_e
        0x2 -> :sswitch_d
        0x4 -> :sswitch_c
        0x6 -> :sswitch_b
        0x7 -> :sswitch_a
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0xf -> :sswitch_7
        0x11 -> :sswitch_6
        0x12 -> :sswitch_5
        0x13 -> :sswitch_4
        0x14 -> :sswitch_3
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x3e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public final singMux()Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    .locals 10

    .line 318
    iget v0, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    const-string v1, "yamux"

    const-string v2, "h2mux"

    const-string v3, "smux"

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 341
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 330
    :pswitch_1
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;-><init>()V

    move-object v6, v0

    .local v6, "$this$singMux_u24lambda_u246":Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    const/4 v7, 0x0

    .line 331
    .local v7, "$i$a$-apply-ProxyEntity$singMux$2":I
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->enableMux:Ljava/lang/Boolean;

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->enabled:Ljava/lang/Boolean;

    .line 332
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->muxPadding:Ljava/lang/Boolean;

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->padding:Ljava/lang/Boolean;

    .line 333
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->muxConcurrency:Ljava/lang/Integer;

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->max_streams:Ljava/lang/Integer;

    .line 334
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;->muxType:Ljava/lang/Integer;

    .line 335
    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_1

    move-object v1, v3

    goto :goto_2

    .line 336
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 337
    :cond_3
    :goto_1
    move-object v1, v2

    .line 334
    :goto_2
    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->protocol:Ljava/lang/String;

    .line 339
    nop

    .line 330
    .end local v6    # "$this$singMux_u24lambda_u246":Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    .end local v7    # "$i$a$-apply-ProxyEntity$singMux$2":I
    goto :goto_6

    .line 319
    :pswitch_2
    new-instance v0, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;

    invoke-direct {v0}, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;-><init>()V

    move-object v6, v0

    .local v6, "$this$singMux_u24lambda_u245":Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    const/4 v7, 0x0

    .line 320
    .local v7, "$i$a$-apply-ProxyEntity$singMux$1":I
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->enableMux:Ljava/lang/Boolean;

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->enabled:Ljava/lang/Boolean;

    .line 321
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->muxPadding:Ljava/lang/Boolean;

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->padding:Ljava/lang/Boolean;

    .line 322
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->muxConcurrency:Ljava/lang/Integer;

    iput-object v8, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->max_streams:Ljava/lang/Integer;

    .line 323
    iget-object v8, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v8, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;->muxType:Ljava/lang/Integer;

    .line 324
    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_5

    move-object v1, v3

    goto :goto_5

    .line 325
    :cond_5
    :goto_3
    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_7

    goto :goto_5

    .line 326
    :cond_7
    :goto_4
    move-object v1, v2

    .line 323
    :goto_5
    iput-object v1, v6, Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;->protocol:Ljava/lang/String;

    .line 328
    nop

    .line 319
    .end local v6    # "$this$singMux_u24lambda_u245":Lmoe/matsuri/nb4a/SingBoxOptions$MultiplexOptions;
    .end local v7    # "$i$a$-apply-ProxyEntity$singMux$1":I
    nop

    .line 318
    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final toStdLink(Z)Ljava/lang/String;
    .locals 6
    .param p1, "compact"    # Z

    .line 248
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->requireBean()Lio/nekohasekai/sagernet/fmt/AbstractBean;

    move-result-object v0

    .local v0, "$this$toStdLink_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    const/4 v1, 0x0

    .line 249
    .local v1, "$i$a$-with-ProxyEntity$toStdLink$1":I
    nop

    .line 250
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/socks/SOCKSFmtKt;->toUri(Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 251
    :cond_0
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/http/HttpFmtKt;->toUri(Lio/nekohasekai/sagernet/fmt/http/HttpBean;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 252
    :cond_1
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksFmtKt;->toUri(Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 253
    :cond_2
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->toUriVMessVLESSTrojan(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 254
    :cond_3
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;

    invoke-static {v2, v4}, Lio/nekohasekai/sagernet/fmt/v2ray/V2RayFmtKt;->toUriVMessVLESSTrojan(Lio/nekohasekai/sagernet/fmt/v2ray/StandardV2RayBean;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 255
    :cond_4
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoFmtKt;->toUri(Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 256
    :cond_5
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    if-eqz v2, :cond_6

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lio/nekohasekai/sagernet/fmt/naive/NaiveFmtKt;->toUri$default(Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 257
    :cond_6
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaFmtKt;->toUri(Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 258
    :cond_7
    instance-of v2, v0, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-static {v2}, Lio/nekohasekai/sagernet/fmt/tuic/TuicFmtKt;->toUri(Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 259
    :cond_8
    instance-of v2, v0, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    if-eqz v2, :cond_9

    move-object v2, v0

    check-cast v2, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    invoke-static {v2}, Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSFmtKt;->toUri(Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 260
    :cond_9
    instance-of v2, v0, Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    if-eqz v2, :cond_a

    const-string v2, ""

    goto :goto_0

    .line 261
    :cond_a
    invoke-static {v0}, Lio/nekohasekai/sagernet/fmt/UniversalFmtKt;->toUniversalLink(Lio/nekohasekai/sagernet/fmt/AbstractBean;)Ljava/lang/String;

    move-result-object v2

    .line 262
    :goto_0
    nop

    .line 248
    .end local v0    # "$this$toStdLink_u24lambda_u240":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .end local v1    # "$i$a$-with-ProxyEntity$toStdLink$1":I
    nop

    .line 263
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxyEntity(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->groupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->userOrder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->rx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ping:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", socksBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->socksBean:Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", httpBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->httpBean:Lio/nekohasekai/sagernet/fmt/http/HttpBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->ssBean:Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", vmessBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->vmessBean:Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trojanBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanBean:Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trojanGoBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->trojanGoBean:Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mieruBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->mieruBean:Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", naiveBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->naiveBean:Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hysteriaBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->hysteriaBean:Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tuicBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->tuicBean:Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sshBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->sshBean:Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wgBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->wgBean:Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shadowTLSBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->shadowTLSBean:Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anyTLSBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->anyTLSBean:Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", chainBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->chainBean:Lio/nekohasekai/sagernet/fmt/internal/ChainBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nekoBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->nekoBean:Lmoe/matsuri/nb4a/proxy/neko/NekoBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", configBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/database/ProxyEntity;->configBean:Lmoe/matsuri/nb4a/proxy/config/ConfigBean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
