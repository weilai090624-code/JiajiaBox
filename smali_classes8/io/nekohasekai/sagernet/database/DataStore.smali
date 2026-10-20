.class public final Lio/nekohasekai/sagernet/database/DataStore;
.super Ljava/lang/Object;
.source "DataStore.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataStore.kt\nio/nekohasekai/sagernet/database/DataStore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,261:1\n1#2:262\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008[\n\u0002\u0010\u0002\n\u0003\u0008\u00d5\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u00103\u001a\u00020\u0011J\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u00020\u0011J\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u0001J\u001b\u0010\u00b2\u0001\u001a\u00020U2\u0007\u0010\u00b3\u0001\u001a\u0002072\u0007\u0010\u00b4\u0001\u001a\u00020UH\u0002J\u001c\u0010\u00b5\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b3\u0001\u001a\u0002072\u0007\u0010\u00ac\u0001\u001a\u00020UH\u0002J\u001d\u0010\u0085\u0004\u001a\u00030\u00b1\u00012\u0008\u0010\u0086\u0004\u001a\u00030\u0087\u00042\u0007\u0010\u00b3\u0001\u001a\u000207H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR+\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R+\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u0018\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0016R+\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0018\u001a\u0004\u0008\u001e\u0010\u0014\"\u0004\u0008\u001f\u0010\u0016R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R+\u00108\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008=\u0010\u0018\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R+\u0010>\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008A\u0010\u0018\u001a\u0004\u0008?\u00100\"\u0004\u0008@\u00102R+\u0010B\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008E\u0010\u0018\u001a\u0004\u0008C\u00100\"\u0004\u0008D\u00102R+\u0010F\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008I\u0010\u0018\u001a\u0004\u0008G\u00100\"\u0004\u0008H\u00102R+\u0010J\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008M\u0010\u0018\u001a\u0004\u0008K\u00100\"\u0004\u0008L\u00102R+\u0010N\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008Q\u0010\u0018\u001a\u0004\u0008O\u00100\"\u0004\u0008P\u00102R+\u0010R\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008T\u0010\u0018\u001a\u0004\u0008R\u00100\"\u0004\u0008S\u00102R+\u0010V\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008[\u0010\u0018\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR+\u0010\\\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008_\u0010\u0018\u001a\u0004\u0008]\u0010X\"\u0004\u0008^\u0010ZR+\u0010`\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008c\u0010\u0018\u001a\u0004\u0008a\u0010:\"\u0004\u0008b\u0010<R+\u0010d\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008g\u0010\u0018\u001a\u0004\u0008e\u0010X\"\u0004\u0008f\u0010ZR+\u0010h\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008k\u0010\u0018\u001a\u0004\u0008i\u00100\"\u0004\u0008j\u00102R+\u0010l\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008o\u0010\u0018\u001a\u0004\u0008m\u0010X\"\u0004\u0008n\u0010ZR+\u0010p\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008s\u0010\u0018\u001a\u0004\u0008q\u00100\"\u0004\u0008r\u00102R+\u0010t\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008w\u0010\u0018\u001a\u0004\u0008u\u00100\"\u0004\u0008v\u00102R+\u0010x\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008{\u0010\u0018\u001a\u0004\u0008y\u00100\"\u0004\u0008z\u00102R+\u0010|\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u007f\u0010\u0018\u001a\u0004\u0008}\u0010X\"\u0004\u0008~\u0010ZR/\u0010\u0080\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010\u0018\u001a\u0005\u0008\u0081\u0001\u00100\"\u0005\u0008\u0082\u0001\u00102R/\u0010\u0084\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0087\u0001\u0010\u0018\u001a\u0005\u0008\u0085\u0001\u0010:\"\u0005\u0008\u0086\u0001\u0010<R/\u0010\u0088\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u008b\u0001\u0010\u0018\u001a\u0005\u0008\u0089\u0001\u0010:\"\u0005\u0008\u008a\u0001\u0010<R/\u0010\u008c\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u008f\u0001\u0010\u0018\u001a\u0005\u0008\u008d\u0001\u0010:\"\u0005\u0008\u008e\u0001\u0010<R/\u0010\u0090\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0093\u0001\u0010\u0018\u001a\u0005\u0008\u0091\u0001\u00100\"\u0005\u0008\u0092\u0001\u00102R/\u0010\u0094\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0097\u0001\u0010\u0018\u001a\u0005\u0008\u0095\u0001\u00100\"\u0005\u0008\u0096\u0001\u00102R/\u0010\u0098\u0001\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u009b\u0001\u0010\u0018\u001a\u0005\u0008\u0099\u0001\u0010X\"\u0005\u0008\u009a\u0001\u0010ZR/\u0010\u009c\u0001\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u009f\u0001\u0010\u0018\u001a\u0005\u0008\u009d\u0001\u0010X\"\u0005\u0008\u009e\u0001\u0010ZR/\u0010\u00a0\u0001\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a3\u0001\u0010\u0018\u001a\u0005\u0008\u00a1\u0001\u0010X\"\u0005\u0008\u00a2\u0001\u0010ZR/\u0010\u00a4\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a7\u0001\u0010\u0018\u001a\u0005\u0008\u00a5\u0001\u00100\"\u0005\u0008\u00a6\u0001\u00102R\u001f\u0010\u00a8\u0001\u001a\u00020U8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u001a\u0005\u0008\u00a9\u0001\u0010XR(\u0010\u00ad\u0001\u001a\u00020U2\u0007\u0010\u00ac\u0001\u001a\u00020U8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u00ae\u0001\u0010X\"\u0005\u0008\u00af\u0001\u0010ZR/\u0010\u00b6\u0001\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b9\u0001\u0010\u0018\u001a\u0005\u0008\u00b7\u0001\u0010X\"\u0005\u0008\u00b8\u0001\u0010ZR/\u0010\u00ba\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00bd\u0001\u0010\u0018\u001a\u0005\u0008\u00bb\u0001\u00100\"\u0005\u0008\u00bc\u0001\u00102R/\u0010\u00be\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c1\u0001\u0010\u0018\u001a\u0005\u0008\u00bf\u0001\u00100\"\u0005\u0008\u00c0\u0001\u00102R/\u0010\u00c2\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c5\u0001\u0010\u0018\u001a\u0005\u0008\u00c3\u0001\u00100\"\u0005\u0008\u00c4\u0001\u00102R/\u0010\u00c6\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c9\u0001\u0010\u0018\u001a\u0005\u0008\u00c7\u0001\u0010:\"\u0005\u0008\u00c8\u0001\u0010<R/\u0010\u00ca\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00cd\u0001\u0010\u0018\u001a\u0005\u0008\u00cb\u0001\u00100\"\u0005\u0008\u00cc\u0001\u00102R\u001e\u0010\u00ce\u0001\u001a\u00020.8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u00d0\u0001\u0010\u0018\u001a\u0005\u0008\u00cf\u0001\u00100R/\u0010\u00d1\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d4\u0001\u0010\u0018\u001a\u0005\u0008\u00d2\u0001\u00100\"\u0005\u0008\u00d3\u0001\u00102R/\u0010\u00d5\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d8\u0001\u0010\u0018\u001a\u0005\u0008\u00d6\u0001\u0010:\"\u0005\u0008\u00d7\u0001\u0010<R/\u0010\u00d9\u0001\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00dc\u0001\u0010\u0018\u001a\u0005\u0008\u00da\u0001\u0010X\"\u0005\u0008\u00db\u0001\u0010ZR/\u0010\u00dd\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e0\u0001\u0010\u0018\u001a\u0005\u0008\u00de\u0001\u00100\"\u0005\u0008\u00df\u0001\u00102R/\u0010\u00e1\u0001\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e4\u0001\u0010\u0018\u001a\u0005\u0008\u00e2\u0001\u0010X\"\u0005\u0008\u00e3\u0001\u0010ZR/\u0010\u00e5\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e8\u0001\u0010\u0018\u001a\u0005\u0008\u00e6\u0001\u00100\"\u0005\u0008\u00e7\u0001\u00102R/\u0010\u00e9\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00ec\u0001\u0010\u0018\u001a\u0005\u0008\u00ea\u0001\u0010:\"\u0005\u0008\u00eb\u0001\u0010<R/\u0010\u00ed\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f0\u0001\u0010\u0018\u001a\u0005\u0008\u00ee\u0001\u00100\"\u0005\u0008\u00ef\u0001\u00102R/\u0010\u00f1\u0001\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f4\u0001\u0010\u0018\u001a\u0005\u0008\u00f2\u0001\u00100\"\u0005\u0008\u00f3\u0001\u00102R/\u0010\u00f5\u0001\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f8\u0001\u0010\u0018\u001a\u0005\u0008\u00f6\u0001\u0010\u0014\"\u0005\u0008\u00f7\u0001\u0010\u0016R/\u0010\u00f9\u0001\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00fc\u0001\u0010\u0018\u001a\u0005\u0008\u00fa\u0001\u0010\u0014\"\u0005\u0008\u00fb\u0001\u0010\u0016R/\u0010\u00fd\u0001\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0002\u0010\u0018\u001a\u0005\u0008\u00fe\u0001\u0010:\"\u0005\u0008\u00ff\u0001\u0010<R/\u0010\u0081\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0084\u0002\u0010\u0018\u001a\u0005\u0008\u0082\u0002\u0010:\"\u0005\u0008\u0083\u0002\u0010<R/\u0010\u0085\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0088\u0002\u0010\u0018\u001a\u0005\u0008\u0086\u0002\u0010X\"\u0005\u0008\u0087\u0002\u0010ZR/\u0010\u0089\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u008c\u0002\u0010\u0018\u001a\u0005\u0008\u008a\u0002\u0010:\"\u0005\u0008\u008b\u0002\u0010<R/\u0010\u008d\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0090\u0002\u0010\u0018\u001a\u0005\u0008\u008e\u0002\u0010:\"\u0005\u0008\u008f\u0002\u0010<R/\u0010\u0091\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0094\u0002\u0010\u0018\u001a\u0005\u0008\u0092\u0002\u0010:\"\u0005\u0008\u0093\u0002\u0010<R/\u0010\u0095\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0098\u0002\u0010\u0018\u001a\u0005\u0008\u0096\u0002\u0010:\"\u0005\u0008\u0097\u0002\u0010<R/\u0010\u0099\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u009c\u0002\u0010\u0018\u001a\u0005\u0008\u009a\u0002\u0010:\"\u0005\u0008\u009b\u0002\u0010<R/\u0010\u009d\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a0\u0002\u0010\u0018\u001a\u0005\u0008\u009e\u0002\u0010:\"\u0005\u0008\u009f\u0002\u0010<R/\u0010\u00a1\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a4\u0002\u0010\u0018\u001a\u0005\u0008\u00a2\u0002\u0010:\"\u0005\u0008\u00a3\u0002\u0010<R/\u0010\u00a5\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a8\u0002\u0010\u0018\u001a\u0005\u0008\u00a6\u0002\u0010:\"\u0005\u0008\u00a7\u0002\u0010<R/\u0010\u00a9\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00ac\u0002\u0010\u0018\u001a\u0005\u0008\u00aa\u0002\u0010:\"\u0005\u0008\u00ab\u0002\u0010<R/\u0010\u00ad\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b0\u0002\u0010\u0018\u001a\u0005\u0008\u00ae\u0002\u0010:\"\u0005\u0008\u00af\u0002\u0010<R/\u0010\u00b1\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b4\u0002\u0010\u0018\u001a\u0005\u0008\u00b2\u0002\u0010:\"\u0005\u0008\u00b3\u0002\u0010<R/\u0010\u00b5\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b8\u0002\u0010\u0018\u001a\u0005\u0008\u00b6\u0002\u0010:\"\u0005\u0008\u00b7\u0002\u0010<R/\u0010\u00b9\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00bc\u0002\u0010\u0018\u001a\u0005\u0008\u00ba\u0002\u0010:\"\u0005\u0008\u00bb\u0002\u0010<R/\u0010\u00bd\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c0\u0002\u0010\u0018\u001a\u0005\u0008\u00be\u0002\u0010:\"\u0005\u0008\u00bf\u0002\u0010<R/\u0010\u00c1\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c4\u0002\u0010\u0018\u001a\u0005\u0008\u00c2\u0002\u0010:\"\u0005\u0008\u00c3\u0002\u0010<R/\u0010\u00c5\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c8\u0002\u0010\u0018\u001a\u0005\u0008\u00c6\u0002\u0010X\"\u0005\u0008\u00c7\u0002\u0010ZR/\u0010\u00c9\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00cc\u0002\u0010\u0018\u001a\u0005\u0008\u00ca\u0002\u0010:\"\u0005\u0008\u00cb\u0002\u0010<R/\u0010\u00cd\u0002\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d0\u0002\u0010\u0018\u001a\u0005\u0008\u00ce\u0002\u00100\"\u0005\u0008\u00cf\u0002\u00102R/\u0010\u00d1\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d4\u0002\u0010\u0018\u001a\u0005\u0008\u00d2\u0002\u0010X\"\u0005\u0008\u00d3\u0002\u0010ZR/\u0010\u00d5\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d8\u0002\u0010\u0018\u001a\u0005\u0008\u00d6\u0002\u0010X\"\u0005\u0008\u00d7\u0002\u0010ZR/\u0010\u00d9\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00dc\u0002\u0010\u0018\u001a\u0005\u0008\u00da\u0002\u0010X\"\u0005\u0008\u00db\u0002\u0010ZR/\u0010\u00dd\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e0\u0002\u0010\u0018\u001a\u0005\u0008\u00de\u0002\u0010X\"\u0005\u0008\u00df\u0002\u0010ZR/\u0010\u00e1\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e4\u0002\u0010\u0018\u001a\u0005\u0008\u00e2\u0002\u0010X\"\u0005\u0008\u00e3\u0002\u0010ZR/\u0010\u00e5\u0002\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e8\u0002\u0010\u0018\u001a\u0005\u0008\u00e6\u0002\u00100\"\u0005\u0008\u00e7\u0002\u00102R/\u0010\u00e9\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00ec\u0002\u0010\u0018\u001a\u0005\u0008\u00ea\u0002\u0010X\"\u0005\u0008\u00eb\u0002\u0010ZR/\u0010\u00ed\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f0\u0002\u0010\u0018\u001a\u0005\u0008\u00ee\u0002\u0010X\"\u0005\u0008\u00ef\u0002\u0010ZR/\u0010\u00f1\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f4\u0002\u0010\u0018\u001a\u0005\u0008\u00f2\u0002\u0010X\"\u0005\u0008\u00f3\u0002\u0010ZR/\u0010\u00f5\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f8\u0002\u0010\u0018\u001a\u0005\u0008\u00f6\u0002\u0010:\"\u0005\u0008\u00f7\u0002\u0010<R/\u0010\u00f9\u0002\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00fc\u0002\u0010\u0018\u001a\u0005\u0008\u00fa\u0002\u0010X\"\u0005\u0008\u00fb\u0002\u0010ZR/\u0010\u00fd\u0002\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0003\u0010\u0018\u001a\u0005\u0008\u00fe\u0002\u0010:\"\u0005\u0008\u00ff\u0002\u0010<R/\u0010\u0081\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0084\u0003\u0010\u0018\u001a\u0005\u0008\u0082\u0003\u0010:\"\u0005\u0008\u0083\u0003\u0010<R/\u0010\u0085\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0088\u0003\u0010\u0018\u001a\u0005\u0008\u0086\u0003\u00100\"\u0005\u0008\u0087\u0003\u00102R/\u0010\u0089\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u008c\u0003\u0010\u0018\u001a\u0005\u0008\u008a\u0003\u00100\"\u0005\u0008\u008b\u0003\u00102R/\u0010\u008d\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0090\u0003\u0010\u0018\u001a\u0005\u0008\u008e\u0003\u0010:\"\u0005\u0008\u008f\u0003\u0010<R/\u0010\u0091\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0094\u0003\u0010\u0018\u001a\u0005\u0008\u0092\u0003\u0010:\"\u0005\u0008\u0093\u0003\u0010<R/\u0010\u0095\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0098\u0003\u0010\u0018\u001a\u0005\u0008\u0096\u0003\u0010:\"\u0005\u0008\u0097\u0003\u0010<R/\u0010\u0099\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u009c\u0003\u0010\u0018\u001a\u0005\u0008\u009a\u0003\u0010:\"\u0005\u0008\u009b\u0003\u0010<R/\u0010\u009d\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a0\u0003\u0010\u0018\u001a\u0005\u0008\u009e\u0003\u0010:\"\u0005\u0008\u009f\u0003\u0010<R/\u0010\u00a1\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a4\u0003\u0010\u0018\u001a\u0005\u0008\u00a2\u0003\u0010:\"\u0005\u0008\u00a3\u0003\u0010<R/\u0010\u00a5\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00a8\u0003\u0010\u0018\u001a\u0005\u0008\u00a6\u0003\u0010:\"\u0005\u0008\u00a7\u0003\u0010<R/\u0010\u00a9\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00ac\u0003\u0010\u0018\u001a\u0005\u0008\u00aa\u0003\u0010:\"\u0005\u0008\u00ab\u0003\u0010<R/\u0010\u00ad\u0003\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b0\u0003\u0010\u0018\u001a\u0005\u0008\u00ae\u0003\u0010X\"\u0005\u0008\u00af\u0003\u0010ZR/\u0010\u00b1\u0003\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b4\u0003\u0010\u0018\u001a\u0005\u0008\u00b2\u0003\u0010\u0014\"\u0005\u0008\u00b3\u0003\u0010\u0016R/\u0010\u00b5\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00b8\u0003\u0010\u0018\u001a\u0005\u0008\u00b6\u0003\u0010:\"\u0005\u0008\u00b7\u0003\u0010<R/\u0010\u00b9\u0003\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00bc\u0003\u0010\u0018\u001a\u0005\u0008\u00ba\u0003\u0010\u0014\"\u0005\u0008\u00bb\u0003\u0010\u0016R/\u0010\u00bd\u0003\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c0\u0003\u0010\u0018\u001a\u0005\u0008\u00be\u0003\u0010\u0014\"\u0005\u0008\u00bf\u0003\u0010\u0016R/\u0010\u00c1\u0003\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c4\u0003\u0010\u0018\u001a\u0005\u0008\u00c2\u0003\u0010X\"\u0005\u0008\u00c3\u0003\u0010ZR/\u0010\u00c5\u0003\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00c8\u0003\u0010\u0018\u001a\u0005\u0008\u00c6\u0003\u0010X\"\u0005\u0008\u00c7\u0003\u0010ZR/\u0010\u00c9\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00cc\u0003\u0010\u0018\u001a\u0005\u0008\u00ca\u0003\u0010:\"\u0005\u0008\u00cb\u0003\u0010<R/\u0010\u00cd\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d0\u0003\u0010\u0018\u001a\u0005\u0008\u00ce\u0003\u0010:\"\u0005\u0008\u00cf\u0003\u0010<R/\u0010\u00d1\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d4\u0003\u0010\u0018\u001a\u0005\u0008\u00d2\u0003\u0010:\"\u0005\u0008\u00d3\u0003\u0010<R/\u0010\u00d5\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00d8\u0003\u0010\u0018\u001a\u0005\u0008\u00d6\u0003\u0010:\"\u0005\u0008\u00d7\u0003\u0010<R/\u0010\u00d9\u0003\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00dc\u0003\u0010\u0018\u001a\u0005\u0008\u00da\u0003\u0010X\"\u0005\u0008\u00db\u0003\u0010ZR/\u0010\u00dd\u0003\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e0\u0003\u0010\u0018\u001a\u0005\u0008\u00de\u0003\u0010X\"\u0005\u0008\u00df\u0003\u0010ZR/\u0010\u00e1\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e4\u0003\u0010\u0018\u001a\u0005\u0008\u00e2\u0003\u00100\"\u0005\u0008\u00e3\u0003\u00102R/\u0010\u00e5\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00e8\u0003\u0010\u0018\u001a\u0005\u0008\u00e6\u0003\u0010:\"\u0005\u0008\u00e7\u0003\u0010<R/\u0010\u00e9\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00ec\u0003\u0010\u0018\u001a\u0005\u0008\u00ea\u0003\u00100\"\u0005\u0008\u00eb\u0003\u00102R/\u0010\u00ed\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f0\u0003\u0010\u0018\u001a\u0005\u0008\u00ee\u0003\u00100\"\u0005\u0008\u00ef\u0003\u00102R/\u0010\u00f1\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f4\u0003\u0010\u0018\u001a\u0005\u0008\u00f2\u0003\u00100\"\u0005\u0008\u00f3\u0003\u00102R/\u0010\u00f5\u0003\u001a\u0002072\u0006\u0010\u0010\u001a\u0002078F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00f8\u0003\u0010\u0018\u001a\u0005\u0008\u00f6\u0003\u0010:\"\u0005\u0008\u00f7\u0003\u0010<R/\u0010\u00f9\u0003\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u00fc\u0003\u0010\u0018\u001a\u0005\u0008\u00fa\u0003\u00100\"\u0005\u0008\u00fb\u0003\u00102R/\u0010\u00fd\u0003\u001a\u00020U2\u0006\u0010\u0010\u001a\u00020U8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0080\u0004\u0010\u0018\u001a\u0005\u0008\u00fe\u0003\u0010X\"\u0005\u0008\u00ff\u0003\u0010ZR/\u0010\u0081\u0004\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020.8F@FX\u0086\u008e\u0002\u00a2\u0006\u0015\n\u0005\u0008\u0084\u0004\u0010\u0018\u001a\u0005\u0008\u0082\u0004\u00100\"\u0005\u0008\u0083\u0004\u00102\u00a8\u0006\u0088\u0004"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/DataStore;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "<init>",
        "()V",
        "serviceState",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "getServiceState",
        "()Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "setServiceState",
        "(Lio/nekohasekai/sagernet/bg/BaseService$State;)V",
        "configurationStore",
        "Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;",
        "getConfigurationStore",
        "()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;",
        "profileCacheStore",
        "getProfileCacheStore",
        "<set-?>",
        "",
        "currentProfile",
        "getCurrentProfile",
        "()J",
        "setCurrentProfile",
        "(J)V",
        "currentProfile$delegate",
        "Lio/nekohasekai/sagernet/ktx/PreferenceProxy;",
        "selectedProxy",
        "getSelectedProxy",
        "setSelectedProxy",
        "selectedProxy$delegate",
        "selectedGroup",
        "getSelectedGroup",
        "setSelectedGroup",
        "selectedGroup$delegate",
        "vpnService",
        "Lio/nekohasekai/sagernet/bg/VpnService;",
        "getVpnService",
        "()Lio/nekohasekai/sagernet/bg/VpnService;",
        "setVpnService",
        "(Lio/nekohasekai/sagernet/bg/VpnService;)V",
        "baseService",
        "Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "getBaseService",
        "()Lio/nekohasekai/sagernet/bg/BaseService$Interface;",
        "setBaseService",
        "(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V",
        "runningTest",
        "",
        "getRunningTest",
        "()Z",
        "setRunningTest",
        "(Z)V",
        "currentGroupId",
        "currentGroup",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "selectedGroupForImport",
        "",
        "appTLSVersion",
        "getAppTLSVersion",
        "()Ljava/lang/String;",
        "setAppTLSVersion",
        "(Ljava/lang/String;)V",
        "appTLSVersion$delegate",
        "enableClashAPI",
        "getEnableClashAPI",
        "setEnableClashAPI",
        "enableClashAPI$delegate",
        "showBottomBar",
        "getShowBottomBar",
        "setShowBottomBar",
        "showBottomBar$delegate",
        "allowInsecureOnRequest",
        "getAllowInsecureOnRequest",
        "setAllowInsecureOnRequest",
        "allowInsecureOnRequest$delegate",
        "networkChangeResetConnections",
        "getNetworkChangeResetConnections",
        "setNetworkChangeResetConnections",
        "networkChangeResetConnections$delegate",
        "wakeResetConnections",
        "getWakeResetConnections",
        "setWakeResetConnections",
        "wakeResetConnections$delegate",
        "isExpert",
        "setExpert",
        "isExpert$delegate",
        "",
        "appTheme",
        "getAppTheme",
        "()I",
        "setAppTheme",
        "(I)V",
        "appTheme$delegate",
        "nightTheme",
        "getNightTheme",
        "setNightTheme",
        "nightTheme$delegate",
        "serviceMode",
        "getServiceMode",
        "setServiceMode",
        "serviceMode$delegate",
        "trafficSniffing",
        "getTrafficSniffing",
        "setTrafficSniffing",
        "trafficSniffing$delegate",
        "resolveDestination",
        "getResolveDestination",
        "setResolveDestination",
        "resolveDestination$delegate",
        "mtu",
        "getMtu",
        "setMtu",
        "mtu$delegate",
        "bypassLan",
        "getBypassLan",
        "setBypassLan",
        "bypassLan$delegate",
        "bypassLanInCore",
        "getBypassLanInCore",
        "setBypassLanInCore",
        "bypassLanInCore$delegate",
        "allowAccess",
        "getAllowAccess",
        "setAllowAccess",
        "allowAccess$delegate",
        "speedInterval",
        "getSpeedInterval",
        "setSpeedInterval",
        "speedInterval$delegate",
        "showGroupInNotification",
        "getShowGroupInNotification",
        "setShowGroupInNotification",
        "showGroupInNotification$delegate",
        "globalCustomConfig",
        "getGlobalCustomConfig",
        "setGlobalCustomConfig",
        "globalCustomConfig$delegate",
        "remoteDns",
        "getRemoteDns",
        "setRemoteDns",
        "remoteDns$delegate",
        "directDns",
        "getDirectDns",
        "setDirectDns",
        "directDns$delegate",
        "enableDnsRouting",
        "getEnableDnsRouting",
        "setEnableDnsRouting",
        "enableDnsRouting$delegate",
        "enableFakeDns",
        "getEnableFakeDns",
        "setEnableFakeDns",
        "enableFakeDns$delegate",
        "rulesProvider",
        "getRulesProvider",
        "setRulesProvider",
        "rulesProvider$delegate",
        "logLevel",
        "getLogLevel",
        "setLogLevel",
        "logLevel$delegate",
        "logBufSize",
        "getLogBufSize",
        "setLogBufSize",
        "logBufSize$delegate",
        "acquireWakeLock",
        "getAcquireWakeLock",
        "setAcquireWakeLock",
        "acquireWakeLock$delegate",
        "userIndex",
        "getUserIndex",
        "userIndex$delegate",
        "Lkotlin/Lazy;",
        "value",
        "mixedPort",
        "getMixedPort",
        "setMixedPort",
        "initGlobal",
        "",
        "getLocalPort",
        "key",
        "default",
        "saveLocalPort",
        "ipv6Mode",
        "getIpv6Mode",
        "setIpv6Mode",
        "ipv6Mode$delegate",
        "meteredNetwork",
        "getMeteredNetwork",
        "setMeteredNetwork",
        "meteredNetwork$delegate",
        "proxyApps",
        "getProxyApps",
        "setProxyApps",
        "proxyApps$delegate",
        "bypass",
        "getBypass",
        "setBypass",
        "bypass$delegate",
        "individual",
        "getIndividual",
        "setIndividual",
        "individual$delegate",
        "showDirectSpeed",
        "getShowDirectSpeed",
        "setShowDirectSpeed",
        "showDirectSpeed$delegate",
        "persistAcrossReboot",
        "getPersistAcrossReboot",
        "persistAcrossReboot$delegate",
        "appendHttpProxy",
        "getAppendHttpProxy",
        "setAppendHttpProxy",
        "appendHttpProxy$delegate",
        "connectionTestURL",
        "getConnectionTestURL",
        "setConnectionTestURL",
        "connectionTestURL$delegate",
        "connectionTestConcurrent",
        "getConnectionTestConcurrent",
        "setConnectionTestConcurrent",
        "connectionTestConcurrent$delegate",
        "alwaysShowAddress",
        "getAlwaysShowAddress",
        "setAlwaysShowAddress",
        "alwaysShowAddress$delegate",
        "tunImplementation",
        "getTunImplementation",
        "setTunImplementation",
        "tunImplementation$delegate",
        "profileTrafficStatistics",
        "getProfileTrafficStatistics",
        "setProfileTrafficStatistics",
        "profileTrafficStatistics$delegate",
        "yacdURL",
        "getYacdURL",
        "setYacdURL",
        "yacdURL$delegate",
        "globalAllowInsecure",
        "getGlobalAllowInsecure",
        "setGlobalAllowInsecure",
        "globalAllowInsecure$delegate",
        "dirty",
        "getDirty",
        "setDirty",
        "dirty$delegate",
        "editingId",
        "getEditingId",
        "setEditingId",
        "editingId$delegate",
        "editingGroup",
        "getEditingGroup",
        "setEditingGroup",
        "editingGroup$delegate",
        "profileName",
        "getProfileName",
        "setProfileName",
        "profileName$delegate",
        "serverAddress",
        "getServerAddress",
        "setServerAddress",
        "serverAddress$delegate",
        "serverPort",
        "getServerPort",
        "setServerPort",
        "serverPort$delegate",
        "serverPorts",
        "getServerPorts",
        "setServerPorts",
        "serverPorts$delegate",
        "serverUsername",
        "getServerUsername",
        "setServerUsername",
        "serverUsername$delegate",
        "serverPassword",
        "getServerPassword",
        "setServerPassword",
        "serverPassword$delegate",
        "serverPassword1",
        "getServerPassword1",
        "setServerPassword1",
        "serverPassword1$delegate",
        "serverMethod",
        "getServerMethod",
        "setServerMethod",
        "serverMethod$delegate",
        "sharedStorage",
        "getSharedStorage",
        "setSharedStorage",
        "sharedStorage$delegate",
        "serverProtocol",
        "getServerProtocol",
        "setServerProtocol",
        "serverProtocol$delegate",
        "serverObfs",
        "getServerObfs",
        "setServerObfs",
        "serverObfs$delegate",
        "serverNetwork",
        "getServerNetwork",
        "setServerNetwork",
        "serverNetwork$delegate",
        "serverHost",
        "getServerHost",
        "setServerHost",
        "serverHost$delegate",
        "serverPath",
        "getServerPath",
        "setServerPath",
        "serverPath$delegate",
        "serverSNI",
        "getServerSNI",
        "setServerSNI",
        "serverSNI$delegate",
        "serverEncryption",
        "getServerEncryption",
        "setServerEncryption",
        "serverEncryption$delegate",
        "serverALPN",
        "getServerALPN",
        "setServerALPN",
        "serverALPN$delegate",
        "serverCertificates",
        "getServerCertificates",
        "setServerCertificates",
        "serverCertificates$delegate",
        "serverMTU",
        "getServerMTU",
        "setServerMTU",
        "serverMTU$delegate",
        "serverHeaders",
        "getServerHeaders",
        "setServerHeaders",
        "serverHeaders$delegate",
        "serverAllowInsecure",
        "getServerAllowInsecure",
        "setServerAllowInsecure",
        "serverAllowInsecure$delegate",
        "serverAuthType",
        "getServerAuthType",
        "setServerAuthType",
        "serverAuthType$delegate",
        "serverUploadSpeed",
        "getServerUploadSpeed",
        "setServerUploadSpeed",
        "serverUploadSpeed$delegate",
        "serverDownloadSpeed",
        "getServerDownloadSpeed",
        "setServerDownloadSpeed",
        "serverDownloadSpeed$delegate",
        "serverStreamReceiveWindow",
        "getServerStreamReceiveWindow",
        "setServerStreamReceiveWindow",
        "serverStreamReceiveWindow$delegate",
        "serverConnectionReceiveWindow",
        "getServerConnectionReceiveWindow",
        "setServerConnectionReceiveWindow",
        "serverConnectionReceiveWindow$delegate",
        "serverDisableMtuDiscovery",
        "getServerDisableMtuDiscovery",
        "setServerDisableMtuDiscovery",
        "serverDisableMtuDiscovery$delegate",
        "serverHopInterval",
        "getServerHopInterval",
        "setServerHopInterval",
        "serverHopInterval$delegate",
        "protocolVersion",
        "getProtocolVersion",
        "setProtocolVersion",
        "protocolVersion$delegate",
        "serverProtocolInt",
        "getServerProtocolInt",
        "setServerProtocolInt",
        "serverProtocolInt$delegate",
        "serverPrivateKey",
        "getServerPrivateKey",
        "setServerPrivateKey",
        "serverPrivateKey$delegate",
        "serverInsecureConcurrency",
        "getServerInsecureConcurrency",
        "setServerInsecureConcurrency",
        "serverInsecureConcurrency$delegate",
        "serverUDPRelayMode",
        "getServerUDPRelayMode",
        "setServerUDPRelayMode",
        "serverUDPRelayMode$delegate",
        "serverCongestionController",
        "getServerCongestionController",
        "setServerCongestionController",
        "serverCongestionController$delegate",
        "serverDisableSNI",
        "getServerDisableSNI",
        "setServerDisableSNI",
        "serverDisableSNI$delegate",
        "serverReduceRTT",
        "getServerReduceRTT",
        "setServerReduceRTT",
        "serverReduceRTT$delegate",
        "routeName",
        "getRouteName",
        "setRouteName",
        "routeName$delegate",
        "routeDomain",
        "getRouteDomain",
        "setRouteDomain",
        "routeDomain$delegate",
        "routeIP",
        "getRouteIP",
        "setRouteIP",
        "routeIP$delegate",
        "routePort",
        "getRoutePort",
        "setRoutePort",
        "routePort$delegate",
        "routeSourcePort",
        "getRouteSourcePort",
        "setRouteSourcePort",
        "routeSourcePort$delegate",
        "routeNetwork",
        "getRouteNetwork",
        "setRouteNetwork",
        "routeNetwork$delegate",
        "routeSource",
        "getRouteSource",
        "setRouteSource",
        "routeSource$delegate",
        "routeProtocol",
        "getRouteProtocol",
        "setRouteProtocol",
        "routeProtocol$delegate",
        "routeOutbound",
        "getRouteOutbound",
        "setRouteOutbound",
        "routeOutbound$delegate",
        "routeOutboundRule",
        "getRouteOutboundRule",
        "setRouteOutboundRule",
        "routeOutboundRule$delegate",
        "routePackages",
        "getRoutePackages",
        "setRoutePackages",
        "routePackages$delegate",
        "frontProxy",
        "getFrontProxy",
        "setFrontProxy",
        "frontProxy$delegate",
        "landingProxy",
        "getLandingProxy",
        "setLandingProxy",
        "landingProxy$delegate",
        "frontProxyTmp",
        "getFrontProxyTmp",
        "setFrontProxyTmp",
        "frontProxyTmp$delegate",
        "landingProxyTmp",
        "getLandingProxyTmp",
        "setLandingProxyTmp",
        "landingProxyTmp$delegate",
        "serverConfig",
        "getServerConfig",
        "setServerConfig",
        "serverConfig$delegate",
        "serverCustom",
        "getServerCustom",
        "setServerCustom",
        "serverCustom$delegate",
        "serverCustomOutbound",
        "getServerCustomOutbound",
        "setServerCustomOutbound",
        "serverCustomOutbound$delegate",
        "groupName",
        "getGroupName",
        "setGroupName",
        "groupName$delegate",
        "groupType",
        "getGroupType",
        "setGroupType",
        "groupType$delegate",
        "groupOrder",
        "getGroupOrder",
        "setGroupOrder",
        "groupOrder$delegate",
        "groupIsSelector",
        "getGroupIsSelector",
        "setGroupIsSelector",
        "groupIsSelector$delegate",
        "subscriptionLink",
        "getSubscriptionLink",
        "setSubscriptionLink",
        "subscriptionLink$delegate",
        "subscriptionForceResolve",
        "getSubscriptionForceResolve",
        "setSubscriptionForceResolve",
        "subscriptionForceResolve$delegate",
        "subscriptionDeduplication",
        "getSubscriptionDeduplication",
        "setSubscriptionDeduplication",
        "subscriptionDeduplication$delegate",
        "subscriptionUpdateWhenConnectedOnly",
        "getSubscriptionUpdateWhenConnectedOnly",
        "setSubscriptionUpdateWhenConnectedOnly",
        "subscriptionUpdateWhenConnectedOnly$delegate",
        "subscriptionUserAgent",
        "getSubscriptionUserAgent",
        "setSubscriptionUserAgent",
        "subscriptionUserAgent$delegate",
        "subscriptionAutoUpdate",
        "getSubscriptionAutoUpdate",
        "setSubscriptionAutoUpdate",
        "subscriptionAutoUpdate$delegate",
        "subscriptionAutoUpdateDelay",
        "getSubscriptionAutoUpdateDelay",
        "setSubscriptionAutoUpdateDelay",
        "subscriptionAutoUpdateDelay$delegate",
        "rulesFirstCreate",
        "getRulesFirstCreate",
        "setRulesFirstCreate",
        "rulesFirstCreate$delegate",
        "onPreferenceDataStoreChanged",
        "store",
        "Landroidx/preference/PreferenceDataStore;",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

.field private static final acquireWakeLock$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final allowAccess$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final allowInsecureOnRequest$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final alwaysShowAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final appTLSVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final appTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final appendHttpProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static baseService:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

.field private static final bypass$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final bypassLan$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final bypassLanInCore$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

.field private static final connectionTestConcurrent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final connectionTestURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final currentProfile$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final directDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final dirty$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final editingGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final editingId$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final enableClashAPI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final enableDnsRouting$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final enableFakeDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final frontProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final frontProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final globalAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final globalCustomConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final groupIsSelector$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final groupName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final groupOrder$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final groupType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final individual$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final ipv6Mode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final isExpert$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final landingProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final landingProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final logBufSize$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final logLevel$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final meteredNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final mtu$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final networkChangeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final nightTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final persistAcrossReboot$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

.field private static final profileName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final profileTrafficStatistics$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final protocolVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final proxyApps$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final remoteDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final resolveDestination$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeDomain$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeIP$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeOutboundRule$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routePackages$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeSource$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final routeSourcePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final rulesFirstCreate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final rulesProvider$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static runningTest:Z

.field private static final selectedGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final selectedProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverALPN$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverAuthType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverCertificates$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverCongestionController$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverConnectionReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverCustom$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverCustomOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverDisableMtuDiscovery$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverDisableSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverDownloadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverEncryption$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverHeaders$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverHopInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverHost$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverInsecureConcurrency$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverMTU$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverMethod$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverObfs$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverPassword$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverPassword1$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverPath$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverPort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverPorts$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverPrivateKey$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverProtocolInt$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverReduceRTT$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverStreamReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverUDPRelayMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverUploadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serverUsername$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final serviceMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static volatile serviceState:Lio/nekohasekai/sagernet/bg/BaseService$State;

.field private static final sharedStorage$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final showBottomBar$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final showDirectSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final showGroupInNotification$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final speedInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionAutoUpdate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionAutoUpdateDelay$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionDeduplication$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionForceResolve$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionLink$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionUpdateWhenConnectedOnly$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final subscriptionUserAgent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final trafficSniffing$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final tunImplementation$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final userIndex$delegate:Lkotlin/Lazy;

.field private static vpnService:Lio/nekohasekai/sagernet/bg/VpnService;

.field private static final wakeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

.field private static final yacdURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;


# direct methods
.method public static synthetic $r8$lambda$1VPYO0s0HjVMh-4i0QVTC6fKH4Y()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->serviceMode_delegate$lambda$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$1qeQsKN1Wf-ASOngilX20URdlh4()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->mtu_delegate$lambda$7()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$23_3jnzDZAp71fTcA88V6T0lpOQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->globalCustomConfig_delegate$lambda$8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$5HkivjcsTpOzQPgZ3gAqsCAyiaw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->yacdURL_delegate$lambda$23()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$D1Quq-E8ognKiWRrViZVf_N36YU()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->globalAllowInsecure_delegate$lambda$24()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$EsmGTfv8ssUA08F1NjgU7aMsRf0()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->enableDnsRouting_delegate$lambda$11()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$FZrJGbh6i-BqogAEbydxHfX1zV4()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->persistAcrossReboot_delegate$lambda$18()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$FjSeqtOSEgc6KMZbbukZ2EvIuzw()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->logBufSize_delegate$lambda$13()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$LdGY6zAHSQUxVTS-z0KRcbQIq3g()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->protocolVersion_delegate$lambda$26()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$Qnmun8O74FTJPk5wu1VN0YOFBcA()J
    .locals 2

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroup_delegate$lambda$0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$UAKYLHEAm7x_mdrfZDEcxBjNr4U()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->directDns_delegate$lambda$10()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$VRpYs5iqVUWk8_Y_9o-Bk5rAM58()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestConcurrent_delegate$lambda$20()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$VS5Bi4VcOxRgeTNns6ahR_QrfUU()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->profileTrafficStatistics_delegate$lambda$22()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$VxGNxAePkV6sBWAXtoZik9Up7Ms()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->tunImplementation_delegate$lambda$21()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$Wz81FWqKUb6AjgOYoX0WC8VMLUA()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->networkChangeResetConnections_delegate$lambda$4()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$XZ9pJOIPF7cyTKD7j0kh1T0Q44U()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdateDelay_delegate$lambda$27()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$f4TsTPD1MFXGQ_q1vzVR0A2HKI4()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->serverHopInterval_delegate$lambda$25()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$hC7axUrHvuFCwb689r3f1B01Lbw()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->ipv6Mode_delegate$lambda$15()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$ho-rwpRi64P6HmDSFxnXUfKWlbQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestURL_delegate$lambda$19()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$l0azRXt10UIW86itzPHKaApVRtc()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->bypass_delegate$lambda$16()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$mOLAnLiZAtbye8TWiJl_82D1wBc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->remoteDns_delegate$lambda$9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$qu6c_plDZLjfjKj7A7IlbGAkfHM()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->showDirectSpeed_delegate$lambda$17()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$sG7-Px0ZAnXBFmBoVac865io6E4()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->userIndex_delegate$lambda$14()I

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$tmSGMMInuYkM-EK52-wKHb5icxM()Z
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->enableFakeDns_delegate$lambda$12()Z

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$uJbAjsHMDJBvBJT_Z3oJORb1NbI()I
    .locals 1

    invoke-static {}, Lio/nekohasekai/sagernet/database/DataStore;->trafficSniffing_delegate$lambda$6()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 24

    const/16 v0, 0x72

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 34
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "currentProfile"

    const-string v3, "getCurrentProfile()J"

    const-class v4, Lio/nekohasekai/sagernet/database/DataStore;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 36
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "selectedProxy"

    const-string v3, "getSelectedProxy()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "selectedGroup"

    const-string v3, "getSelectedGroup()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getAppTLSVersion()Ljava/lang/String;"

    const-string v6, "appTLSVersion"

    invoke-direct {v1, v4, v6, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 90
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getEnableClashAPI()Z"

    const-string v7, "enableClashAPI"

    invoke-direct {v1, v4, v7, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 91
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getShowBottomBar()Z"

    const-string v8, "showBottomBar"

    invoke-direct {v1, v4, v8, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 93
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getAllowInsecureOnRequest()Z"

    const-string v9, "allowInsecureOnRequest"

    invoke-direct {v1, v4, v9, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 94
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getNetworkChangeResetConnections()Z"

    const-string v10, "networkChangeResetConnections"

    invoke-direct {v1, v4, v10, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 95
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getWakeResetConnections()Z"

    const-string v11, "wakeResetConnections"

    invoke-direct {v1, v4, v11, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 99
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "isExpert()Z"

    const-string v12, "isExpert"

    invoke-direct {v1, v4, v12, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 100
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getAppTheme()I"

    const-string v13, "appTheme"

    invoke-direct {v1, v4, v13, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 101
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getNightTheme()I"

    const-string v14, "nightTheme"

    invoke-direct {v1, v4, v14, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 102
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getServiceMode()Ljava/lang/String;"

    const-string v15, "serviceMode"

    invoke-direct {v1, v4, v15, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 104
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getTrafficSniffing()I"

    const-string v2, "trafficSniffing"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 105
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getResolveDestination()Z"

    move-object/from16 v16, v2

    const-string v2, "resolveDestination"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 107
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getMtu()I"

    move-object/from16 v17, v2

    const-string v2, "mtu"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 109
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getBypassLan()Z"

    move-object/from16 v18, v2

    const-string v2, "bypassLan"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 110
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getBypassLanInCore()Z"

    move-object/from16 v19, v2

    const-string v2, "bypassLanInCore"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    .line 112
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getAllowAccess()Z"

    move-object/from16 v20, v2

    const-string v2, "allowAccess"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    .line 113
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "getSpeedInterval()I"

    move-object/from16 v21, v2

    const-string v2, "speedInterval"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    .line 114
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "showGroupInNotification"

    move-object/from16 v22, v2

    const-string v2, "getShowGroupInNotification()Z"

    invoke-direct {v1, v4, v3, v2, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 116
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "globalCustomConfig"

    const-string v3, "getGlobalCustomConfig()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 118
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "remoteDns"

    const-string v3, "getRemoteDns()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 119
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "directDns"

    const-string v3, "getDirectDns()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 120
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "enableDnsRouting"

    const-string v3, "getEnableDnsRouting()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 121
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "enableFakeDns"

    const-string v3, "getEnableFakeDns()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 123
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "rulesProvider"

    const-string v3, "getRulesProvider()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 124
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "logLevel"

    const-string v3, "getLogLevel()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 125
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "logBufSize"

    const-string v3, "getLogBufSize()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 126
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "acquireWakeLock"

    const-string v3, "getAcquireWakeLock()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 149
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "ipv6Mode"

    const-string v3, "getIpv6Mode()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 151
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "meteredNetwork"

    const-string v3, "getMeteredNetwork()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 152
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "proxyApps"

    const-string v3, "getProxyApps()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 153
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "bypass"

    const-string v3, "getBypass()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 154
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "individual"

    const-string v3, "getIndividual()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 155
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "showDirectSpeed"

    const-string v3, "getShowDirectSpeed()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 157
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "persistAcrossReboot"

    const-string v3, "getPersistAcrossReboot()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 159
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "appendHttpProxy"

    const-string v3, "getAppendHttpProxy()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 160
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "connectionTestURL"

    const-string v3, "getConnectionTestURL()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 161
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "connectionTestConcurrent"

    const-string v3, "getConnectionTestConcurrent()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 162
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "alwaysShowAddress"

    const-string v3, "getAlwaysShowAddress()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 164
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "tunImplementation"

    const-string v3, "getTunImplementation()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 165
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "profileTrafficStatistics"

    const-string v3, "getProfileTrafficStatistics()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 167
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "yacdURL"

    const-string v3, "getYacdURL()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 171
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "globalAllowInsecure"

    const-string v3, "getGlobalAllowInsecure()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 175
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "dirty"

    const-string v3, "getDirty()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 176
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "editingId"

    const-string v3, "getEditingId()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 177
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "editingGroup"

    const-string v3, "getEditingGroup()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 178
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "profileName"

    const-string v3, "getProfileName()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 179
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverAddress"

    const-string v3, "getServerAddress()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 180
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPort"

    const-string v3, "getServerPort()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 181
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPorts"

    const-string v3, "getServerPorts()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 182
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverUsername"

    const-string v3, "getServerUsername()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 183
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPassword"

    const-string v3, "getServerPassword()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 184
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPassword1"

    const-string v3, "getServerPassword1()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 185
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverMethod"

    const-string v3, "getServerMethod()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 187
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "sharedStorage"

    const-string v3, "getSharedStorage()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 189
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "getServerProtocol()Ljava/lang/String;"

    const-string v3, "serverProtocol"

    invoke-direct {v1, v4, v3, v2, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 190
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverObfs"

    move-object/from16 v23, v3

    const-string v3, "getServerObfs()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 192
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverNetwork"

    const-string v3, "getServerNetwork()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 193
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverHost"

    const-string v3, "getServerHost()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 194
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPath"

    const-string v3, "getServerPath()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 195
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverSNI"

    const-string v3, "getServerSNI()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 196
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverEncryption"

    const-string v3, "getServerEncryption()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 197
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverALPN"

    const-string v3, "getServerALPN()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 198
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverCertificates"

    const-string v3, "getServerCertificates()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 199
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverMTU"

    const-string v3, "getServerMTU()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 200
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverHeaders"

    const-string v3, "getServerHeaders()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 201
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverAllowInsecure"

    const-string v3, "getServerAllowInsecure()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 203
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverAuthType"

    const-string v3, "getServerAuthType()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 204
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverUploadSpeed"

    const-string v3, "getServerUploadSpeed()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 205
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverDownloadSpeed"

    const-string v3, "getServerDownloadSpeed()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 206
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverStreamReceiveWindow"

    const-string v3, "getServerStreamReceiveWindow()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 207
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverConnectionReceiveWindow"

    const-string v3, "getServerConnectionReceiveWindow()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 208
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverDisableMtuDiscovery"

    const-string v3, "getServerDisableMtuDiscovery()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 209
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverHopInterval"

    const-string v3, "getServerHopInterval()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 211
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "protocolVersion"

    const-string v3, "getProtocolVersion()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 213
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverProtocolInt"

    const-string v3, "getServerProtocolInt()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 214
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverPrivateKey"

    const-string v3, "getServerPrivateKey()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 215
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverInsecureConcurrency"

    const-string v3, "getServerInsecureConcurrency()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 217
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverUDPRelayMode"

    const-string v3, "getServerUDPRelayMode()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 218
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverCongestionController"

    const-string v3, "getServerCongestionController()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 219
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverDisableSNI"

    const-string v3, "getServerDisableSNI()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 220
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverReduceRTT"

    const-string v3, "getServerReduceRTT()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 222
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeName"

    const-string v3, "getRouteName()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 223
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeDomain"

    const-string v3, "getRouteDomain()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 224
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeIP"

    const-string v3, "getRouteIP()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 225
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routePort"

    const-string v3, "getRoutePort()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 226
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeSourcePort"

    const-string v3, "getRouteSourcePort()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 227
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeNetwork"

    const-string v3, "getRouteNetwork()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 228
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeSource"

    const-string v3, "getRouteSource()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 229
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeProtocol"

    const-string v3, "getRouteProtocol()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 230
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeOutbound"

    const-string v3, "getRouteOutbound()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 231
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routeOutboundRule"

    const-string v3, "getRouteOutboundRule()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 232
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "routePackages"

    const-string v3, "getRoutePackages()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 234
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "frontProxy"

    const-string v3, "getFrontProxy()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 235
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "landingProxy"

    const-string v3, "getLandingProxy()J"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 236
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "frontProxyTmp"

    const-string v3, "getFrontProxyTmp()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 237
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "landingProxyTmp"

    const-string v3, "getLandingProxyTmp()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 239
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverConfig"

    const-string v3, "getServerConfig()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 240
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverCustom"

    const-string v3, "getServerCustom()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 241
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "serverCustomOutbound"

    const-string v3, "getServerCustomOutbound()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 243
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "groupName"

    const-string v3, "getGroupName()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 244
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "groupType"

    const-string v3, "getGroupType()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 245
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "groupOrder"

    const-string v3, "getGroupOrder()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 246
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "groupIsSelector"

    const-string v3, "getGroupIsSelector()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 248
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionLink"

    const-string v3, "getSubscriptionLink()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 249
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionForceResolve"

    const-string v3, "getSubscriptionForceResolve()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 250
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionDeduplication"

    const-string v3, "getSubscriptionDeduplication()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 251
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionUpdateWhenConnectedOnly"

    const-string v3, "getSubscriptionUpdateWhenConnectedOnly()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 252
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionUserAgent"

    const-string v3, "getSubscriptionUserAgent()Ljava/lang/String;"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 253
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionAutoUpdate"

    const-string v3, "getSubscriptionAutoUpdate()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 254
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "subscriptionAutoUpdateDelay"

    const-string v3, "getSubscriptionAutoUpdateDelay()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 256
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "rulesFirstCreate"

    const-string v3, "getRulesFirstCreate()Z"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0x71

    aput-object v1, v0, v2

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lio/nekohasekai/sagernet/database/DataStore;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/DataStore;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    .line 28
    sget-object v0, Lio/nekohasekai/sagernet/bg/BaseService$State;->Idle:Lio/nekohasekai/sagernet/bg/BaseService$State;

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serviceState:Lio/nekohasekai/sagernet/bg/BaseService$State;

    .line 30
    new-instance v0, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    sget-object v1, Lio/nekohasekai/sagernet/database/preference/PublicDatabase;->Companion:Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/preference/PublicDatabase$Companion;->getKvPairDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;-><init>(Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;)V

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    .line 31
    new-instance v0, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    sget-object v1, Lmoe/matsuri/nb4a/TempDatabase;->Companion:Lmoe/matsuri/nb4a/TempDatabase$Companion;

    invoke-virtual {v1}, Lmoe/matsuri/nb4a/TempDatabase$Companion;->getProfileCacheDao()Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;-><init>(Lio/nekohasekai/sagernet/database/preference/KeyValuePair$Dao;)V

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "profileCurrent"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->currentProfile$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 36
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "profileId"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->selectedProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 37
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "profileGroup"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 89
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const/4 v1, 0x2

    invoke-static {v0, v6, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appTLSVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 90
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    invoke-static {v0, v7, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableClashAPI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 91
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    invoke-static {v0, v8, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showBottomBar$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 93
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    invoke-static {v0, v9, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->allowInsecureOnRequest$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 94
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v10, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->networkChangeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 95
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const/4 v1, 0x2

    invoke-static {v0, v11, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->wakeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 99
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    invoke-static {v0, v12, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->isExpert$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 100
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    invoke-static {v0, v13, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->int$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 101
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    invoke-static {v0, v14, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->nightTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 102
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, v15, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serviceMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 104
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda9;-><init>()V

    move-object/from16 v3, v16

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->trafficSniffing$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 105
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    move-object/from16 v3, v17

    const/4 v1, 0x2

    invoke-static {v0, v3, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->resolveDestination$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 107
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda10;-><init>()V

    move-object/from16 v3, v18

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->mtu$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 109
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    move-object/from16 v3, v19

    const/4 v1, 0x2

    invoke-static {v0, v3, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypassLan$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 110
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    move-object/from16 v3, v20

    invoke-static {v0, v3, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypassLanInCore$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 112
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    move-object/from16 v3, v21

    invoke-static {v0, v3, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->allowAccess$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 113
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    move-object/from16 v3, v22

    invoke-static {v0, v3, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->speedInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 114
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v3, "showGroupInNotification"

    invoke-static {v0, v3, v2, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showGroupInNotification$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 116
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda12;-><init>()V

    const-string v3, "globalCustomConfig"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->globalCustomConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 118
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda13;-><init>()V

    const-string v3, "remoteDns"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->remoteDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 119
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda14;-><init>()V

    const-string v3, "directDns"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->directDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 120
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda15;-><init>()V

    const-string v3, "enableDnsRouting"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableDnsRouting$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 121
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda16;-><init>()V

    const-string v3, "enableFakeDns"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableFakeDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 123
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "rulesProvider"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->rulesProvider$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 124
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "logLevel"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->logLevel$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 125
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "logBufSize"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->int(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->logBufSize$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 126
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "acquireWakeLock"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->acquireWakeLock$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 129
    new-instance v0, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->userIndex$delegate:Lkotlin/Lazy;

    .line 149
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda18;-><init>()V

    const-string v3, "ipv6Mode"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->ipv6Mode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 151
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "meteredNetwork"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->meteredNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 152
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "proxyApps"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->proxyApps$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 153
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda19;-><init>()V

    const-string v3, "bypassMode"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypass$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 154
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "individual"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->individual$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 155
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda20;-><init>()V

    const-string v3, "showDirectSpeed"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showDirectSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 157
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda21;-><init>()V

    const-string v3, "isAutoConnect"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->persistAcrossReboot$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 159
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "appendHttpProxy"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appendHttpProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 160
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda22;-><init>()V

    const-string v3, "connectionTestURL"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 161
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda23;-><init>()V

    const-string v3, "connectionTestConcurrent"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->int(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestConcurrent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 162
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "alwaysShowAddress"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->alwaysShowAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 164
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda24;-><init>()V

    const-string v3, "tunImplementation"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->tunImplementation$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 165
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "profileTrafficStatistics"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileTrafficStatistics$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 167
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda3;-><init>()V

    const-string v3, "yacdURL"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->yacdURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 171
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "globalAllowInsecure"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->globalAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 175
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "profileDirty"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->dirty$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 176
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "profileId"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->editingId$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 177
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "profileGroup"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->editingGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 178
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "profileName"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 179
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverAddress"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 180
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverPort"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 181
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverPorts"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPorts$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 182
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverUsername"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUsername$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 183
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverPassword"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPassword$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 184
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverPassword1"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPassword1$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 185
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverMethod"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverMethod$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 187
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "sharedStorage"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->sharedStorage$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 189
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    move-object/from16 v1, v23

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 190
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverObfs"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverObfs$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 192
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverNetwork"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 193
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverHost"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHost$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 194
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverPath"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPath$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 195
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverSNI"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 196
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverEncryption"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverEncryption$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 197
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverALPN"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverALPN$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 198
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverCertificates"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCertificates$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 199
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverMTU"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverMTU$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 200
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverHeaders"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHeaders$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 201
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverAllowInsecure"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 203
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverAuthType"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAuthType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 204
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverUploadSpeed"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUploadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 205
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverDownloadSpeed"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDownloadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 206
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverStreamReceiveWindow"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToIntIfExists$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverStreamReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 207
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverConnectionReceiveWindow"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToIntIfExists$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverConnectionReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 208
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v4, "serverDisableMtuDiscovery"

    invoke-static {v0, v4, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDisableMtuDiscovery$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 209
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v3, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda5;-><init>()V

    const-string v4, "hopInterval"

    invoke-static {v0, v4, v3}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHopInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 211
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v3, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda6;-><init>()V

    const-string v4, "protocolVersion"

    invoke-static {v0, v4, v3}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->protocolVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 213
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverProtocolInt$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 214
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverPrivateKey"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPrivateKey$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 215
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverInsecureConcurrency"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverInsecureConcurrency$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 217
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverUDPRelayMode"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUDPRelayMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 218
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverCongestionController"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCongestionController$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 219
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverDisableSNI"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDisableSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 220
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverReduceRTT"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverReduceRTT$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 222
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeName"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 223
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeDomain"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeDomain$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 224
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeIP"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeIP$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 225
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routePort"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 226
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeSourcePort"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeSourcePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 227
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeNetwork"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 228
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeSource"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeSource$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 229
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeProtocol"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 230
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeOutbound"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 231
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routeOutboundLong"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeOutboundRule$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 232
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "routePackages"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routePackages$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 234
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupFrontProxyLong"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->frontProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 235
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupLandingProxyLong"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->long$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->landingProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 236
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupFrontProxy"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->frontProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 237
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupLandingProxy"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->landingProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 239
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverConfig"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 240
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverCustom"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCustom$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 241
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "serverCustomOutbound"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCustomOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 243
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupName"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 244
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupType"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 245
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupOrder"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupOrder$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 246
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "groupIsSelector"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupIsSelector$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 248
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "subscriptionLink"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionLink$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 249
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "subscriptionForceResolve"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionForceResolve$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 250
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "subscriptionDeduplication"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionDeduplication$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 251
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "subscriptionUpdateWhenConnectedOnly"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionUpdateWhenConnectedOnly$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 252
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "subscriptionUserAgent"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->string$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionUserAgent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 253
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "subscriptionAutoUpdate"

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 254
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    new-instance v1, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/database/DataStore$$ExternalSyntheticLambda7;-><init>()V

    const-string v3, "subscriptionAutoUpdateDelay"

    invoke-static {v0, v3, v1}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->stringToInt(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdateDelay$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    .line 256
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    check-cast v0, Landroidx/preference/PreferenceDataStore;

    const-string v1, "rulesFirstCreate"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ktx/PreferencesKt;->boolean$default(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/database/DataStore;->rulesFirstCreate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final bypass_delegate$lambda$16()Z
    .locals 1

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method private static final connectionTestConcurrent_delegate$lambda$20()I
    .locals 1

    .line 161
    const/4 v0, 0x5

    return v0
.end method

.method private static final connectionTestURL_delegate$lambda$19()Ljava/lang/String;
    .locals 1

    .line 160
    const-string v0, "http://cp.cloudflare.com/"

    return-object v0
.end method

.method private static final directDns_delegate$lambda$10()Ljava/lang/String;
    .locals 1

    .line 119
    const-string v0, "https://223.5.5.5/dns-query"

    return-object v0
.end method

.method private static final enableDnsRouting_delegate$lambda$11()Z
    .locals 1

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method private static final enableFakeDns_delegate$lambda$12()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method private final getLocalPort(Ljava/lang/String;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default"    # I

    .line 142
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getUserIndex()I

    move-result v1

    add-int/2addr v1, p2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->parsePort$default(Ljava/lang/String;IIILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private final getUserIndex()I
    .locals 1

    .line 129
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->userIndex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final globalAllowInsecure_delegate$lambda$24()Z
    .locals 1

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method private static final globalCustomConfig_delegate$lambda$8()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, ""

    return-object v0
.end method

.method private static final ipv6Mode_delegate$lambda$15()I
    .locals 1

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method private static final logBufSize_delegate$lambda$13()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method private static final mtu_delegate$lambda$7()I
    .locals 1

    .line 107
    const/16 v0, 0x2328

    return v0
.end method

.method private static final networkChangeResetConnections_delegate$lambda$4()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method private static final persistAcrossReboot_delegate$lambda$18()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method private static final profileTrafficStatistics_delegate$lambda$22()Z
    .locals 1

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method private static final protocolVersion_delegate$lambda$26()I
    .locals 1

    .line 211
    const/4 v0, 0x2

    return v0
.end method

.method private static final remoteDns_delegate$lambda$9()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "https://dns.google/dns-query"

    return-object v0
.end method

.method private final saveLocalPort(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 146
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private static final selectedGroup_delegate$lambda$0()J
    .locals 2

    .line 37
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroupId()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final serverHopInterval_delegate$lambda$25()I
    .locals 1

    .line 209
    const/16 v0, 0xa

    return v0
.end method

.method private static final serviceMode_delegate$lambda$5()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "vpn"

    return-object v0
.end method

.method private static final showDirectSpeed_delegate$lambda$17()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method private static final subscriptionAutoUpdateDelay_delegate$lambda$27()I
    .locals 1

    .line 254
    const/16 v0, 0x168

    return v0
.end method

.method private static final trafficSniffing_delegate$lambda$6()I
    .locals 1

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method private static final tunImplementation_delegate$lambda$21()I
    .locals 1

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method private static final userIndex_delegate$lambda$14()I
    .locals 1

    .line 129
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    return v0
.end method

.method private static final yacdURL_delegate$lambda$23()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "http://127.0.0.1:9090/ui"

    return-object v0
.end method


# virtual methods
.method public final currentGroup()Lio/nekohasekai/sagernet/database/ProxyGroup;
    .locals 22

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    const-string v2, "profileGroup"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 64
    .local v1, "currentSelected":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 65
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    .line 67
    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 68
    :cond_1
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v3

    invoke-interface {v3}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, "groups":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 70
    new-instance v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v5, v4

    const/16 v20, 0x3fb

    const/16 v21, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v5 .. v21}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v5, "$this$currentGroup_u24lambda_u241":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v6, 0x0

    .line 71
    .local v6, "$i$a$-apply-DataStore$currentGroup$1":I
    sget-object v7, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v7

    invoke-interface {v7, v5}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setId(J)V

    .line 72
    nop

    .line 70
    .end local v5    # "$this$currentGroup_u24lambda_u241":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v6    # "$i$a$-apply-DataStore$currentGroup$1":I
    move-object v0, v4

    goto :goto_0

    .line 74
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 76
    :goto_0
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v4

    move-object/from16 v6, p0

    invoke-virtual {v6, v4, v5}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 77
    return-object v0
.end method

.method public final currentGroupId()J
    .locals 23

    .line 48
    move-object/from16 v0, p0

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    const-string v2, "profileGroup"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 49
    .local v1, "currentSelected":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-wide v1

    .line 50
    :cond_0
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v3

    invoke-interface {v3}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v3

    .line 51
    .local v3, "groups":Ljava/util/List;
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v4

    .line 53
    .local v4, "groupId":J
    invoke-virtual {v0, v4, v5}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 54
    return-wide v4

    .line 56
    .end local v4    # "groupId":J
    :cond_1
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v4

    new-instance v15, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v5, v15

    const/16 v20, 0x3fb

    const/16 v21, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v22, v15

    move/from16 v15, v16

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v5 .. v21}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v22

    invoke-interface {v4, v5}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)J

    move-result-wide v4

    .line 57
    .restart local v4    # "groupId":J
    invoke-virtual {v0, v4, v5}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 58
    return-wide v4
.end method

.method public final getAcquireWakeLock()Z
    .locals 3

    .line 126
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->acquireWakeLock$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getAllowAccess()Z
    .locals 3

    .line 112
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->allowAccess$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getAllowInsecureOnRequest()Z
    .locals 3

    .line 93
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->allowInsecureOnRequest$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getAlwaysShowAddress()Z
    .locals 3

    .line 162
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->alwaysShowAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getAppTLSVersion()Ljava/lang/String;
    .locals 3

    .line 89
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appTLSVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAppTheme()I
    .locals 3

    .line 100
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getAppendHttpProxy()Z
    .locals 3

    .line 159
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appendHttpProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getBaseService()Lio/nekohasekai/sagernet/bg/BaseService$Interface;
    .locals 1

    .line 41
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->baseService:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    return-object v0
.end method

.method public final getBypass()Z
    .locals 3

    .line 153
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypass$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getBypassLan()Z
    .locals 3

    .line 109
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypassLan$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getBypassLanInCore()Z
    .locals 3

    .line 110
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypassLanInCore$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;
    .locals 1

    .line 30
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    return-object v0
.end method

.method public final getConnectionTestConcurrent()I
    .locals 3

    .line 161
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestConcurrent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getConnectionTestURL()Ljava/lang/String;
    .locals 3

    .line 160
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentProfile()J
    .locals 3

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->currentProfile$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDirectDns()Ljava/lang/String;
    .locals 3

    .line 119
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->directDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDirty()Z
    .locals 3

    .line 175
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->dirty$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getEditingGroup()J
    .locals 3

    .line 177
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->editingGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEditingId()J
    .locals 3

    .line 176
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->editingId$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEnableClashAPI()Z
    .locals 3

    .line 90
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableClashAPI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getEnableDnsRouting()Z
    .locals 3

    .line 120
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableDnsRouting$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getEnableFakeDns()Z
    .locals 3

    .line 121
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableFakeDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getFrontProxy()J
    .locals 3

    .line 234
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->frontProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFrontProxyTmp()I
    .locals 3

    .line 236
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->frontProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x61

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getGlobalAllowInsecure()Z
    .locals 3

    .line 171
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->globalAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getGlobalCustomConfig()Ljava/lang/String;
    .locals 3

    .line 116
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->globalCustomConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupIsSelector()Z
    .locals 3

    .line 246
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupIsSelector$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x69

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getGroupName()Ljava/lang/String;
    .locals 3

    .line 243
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupOrder()I
    .locals 3

    .line 245
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupOrder$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x68

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getGroupType()I
    .locals 3

    .line 244
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x67

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getIndividual()Ljava/lang/String;
    .locals 3

    .line 154
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->individual$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIpv6Mode()I
    .locals 3

    .line 149
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->ipv6Mode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/NetworkCompatibility;->ipv6Mode(I)I

    move-result v0

    return v0
.end method

.method public final getLandingProxy()J
    .locals 3

    .line 235
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->landingProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x60

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLandingProxyTmp()I
    .locals 3

    .line 237
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->landingProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x62

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getLogBufSize()I
    .locals 3

    .line 125
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->logBufSize$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getLogLevel()I
    .locals 3

    .line 124
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->logLevel$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMeteredNetwork()Z
    .locals 3

    .line 151
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->meteredNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMixedPort()I
    .locals 2

    .line 131
    const-string v0, "mixedPort"

    const/16 v1, 0x820

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/database/DataStore;->getLocalPort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getMtu()I
    .locals 3

    .line 107
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->mtu$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getNetworkChangeResetConnections()Z
    .locals 3

    .line 94
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->networkChangeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getNightTheme()I
    .locals 3

    .line 101
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->nightTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getPersistAcrossReboot()Z
    .locals 3

    .line 157
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->persistAcrossReboot$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getProfileCacheStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;
    .locals 1

    .line 31
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileCacheStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    return-object v0
.end method

.method public final getProfileName()Ljava/lang/String;
    .locals 3

    .line 178
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileTrafficStatistics()Z
    .locals 3

    .line 165
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileTrafficStatistics$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getProtocolVersion()I
    .locals 3

    .line 211
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->protocolVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getProxyApps()Z
    .locals 3

    .line 152
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->proxyApps$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getRemoteDns()Ljava/lang/String;
    .locals 3

    .line 118
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->remoteDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getResolveDestination()Z
    .locals 3

    .line 105
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->resolveDestination$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getRouteDomain()Ljava/lang/String;
    .locals 3

    .line 223
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeDomain$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x55

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteIP()Ljava/lang/String;
    .locals 3

    .line 224
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeIP$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x56

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteName()Ljava/lang/String;
    .locals 3

    .line 222
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x54

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteNetwork()Ljava/lang/String;
    .locals 3

    .line 227
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x59

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteOutbound()I
    .locals 3

    .line 230
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getRouteOutboundRule()J
    .locals 3

    .line 231
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeOutboundRule$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRoutePackages()Ljava/lang/String;
    .locals 3

    .line 232
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routePackages$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRoutePort()Ljava/lang/String;
    .locals 3

    .line 225
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x57

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteProtocol()Ljava/lang/String;
    .locals 3

    .line 229
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteSource()Ljava/lang/String;
    .locals 3

    .line 228
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeSource$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRouteSourcePort()Ljava/lang/String;
    .locals 3

    .line 226
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeSourcePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x58

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRulesFirstCreate()Z
    .locals 3

    .line 256
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->rulesFirstCreate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x71

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getRulesProvider()I
    .locals 3

    .line 123
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->rulesProvider$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getRunningTest()Z
    .locals 1

    .line 45
    sget-boolean v0, Lio/nekohasekai/sagernet/database/DataStore;->runningTest:Z

    return v0
.end method

.method public final getSelectedGroup()J
    .locals 3

    .line 37
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSelectedProxy()J
    .locals 3

    .line 36
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->selectedProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getServerALPN()Ljava/lang/String;
    .locals 3

    .line 197
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverALPN$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x40

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerAddress()Ljava/lang/String;
    .locals 3

    .line 179
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerAllowInsecure()Z
    .locals 3

    .line 201
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x44

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getServerAuthType()I
    .locals 3

    .line 203
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAuthType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x45

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerCertificates()Ljava/lang/String;
    .locals 3

    .line 198
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCertificates$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerConfig()Ljava/lang/String;
    .locals 3

    .line 239
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x63

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerCongestionController()Ljava/lang/String;
    .locals 3

    .line 218
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCongestionController$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x51

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerConnectionReceiveWindow()I
    .locals 3

    .line 207
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverConnectionReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x49

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerCustom()Ljava/lang/String;
    .locals 3

    .line 240
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCustom$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x64

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerCustomOutbound()Ljava/lang/String;
    .locals 3

    .line 241
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCustomOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x65

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerDisableMtuDiscovery()Z
    .locals 3

    .line 208
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDisableMtuDiscovery$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getServerDisableSNI()Z
    .locals 3

    .line 219
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDisableSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x52

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getServerDownloadSpeed()I
    .locals 3

    .line 205
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDownloadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x47

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerEncryption()Ljava/lang/String;
    .locals 3

    .line 196
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverEncryption$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerHeaders()Ljava/lang/String;
    .locals 3

    .line 200
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHeaders$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x43

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerHopInterval()I
    .locals 3

    .line 209
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHopInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerHost()Ljava/lang/String;
    .locals 3

    .line 193
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHost$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerInsecureConcurrency()I
    .locals 3

    .line 215
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverInsecureConcurrency$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerMTU()I
    .locals 3

    .line 199
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverMTU$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x42

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerMethod()Ljava/lang/String;
    .locals 3

    .line 185
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverMethod$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerNetwork()Ljava/lang/String;
    .locals 3

    .line 192
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerObfs()Ljava/lang/String;
    .locals 3

    .line 190
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverObfs$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerPassword()Ljava/lang/String;
    .locals 3

    .line 183
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPassword$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerPassword1()Ljava/lang/String;
    .locals 3

    .line 184
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPassword1$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x36

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerPath()Ljava/lang/String;
    .locals 3

    .line 194
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPath$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerPort()I
    .locals 3

    .line 180
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerPorts()Ljava/lang/String;
    .locals 3

    .line 181
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPorts$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerPrivateKey()Ljava/lang/String;
    .locals 3

    .line 214
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPrivateKey$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerProtocol()Ljava/lang/String;
    .locals 3

    .line 189
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerProtocolInt()I
    .locals 3

    .line 213
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverProtocolInt$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerReduceRTT()Z
    .locals 3

    .line 220
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverReduceRTT$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x53

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getServerSNI()Ljava/lang/String;
    .locals 3

    .line 195
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerStreamReceiveWindow()I
    .locals 3

    .line 206
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverStreamReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x48

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerUDPRelayMode()Ljava/lang/String;
    .locals 3

    .line 217
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUDPRelayMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServerUploadSpeed()I
    .locals 3

    .line 204
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUploadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x46

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getServerUsername()Ljava/lang/String;
    .locals 3

    .line 182
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUsername$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceMode()Ljava/lang/String;
    .locals 3

    .line 102
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serviceMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;
    .locals 1

    .line 27
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serviceState:Lio/nekohasekai/sagernet/bg/BaseService$State;

    return-object v0
.end method

.method public final getSharedStorage()Ljava/lang/String;
    .locals 3

    .line 187
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->sharedStorage$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getShowBottomBar()Z
    .locals 3

    .line 91
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showBottomBar$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getShowDirectSpeed()Z
    .locals 3

    .line 155
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showDirectSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getShowGroupInNotification()Z
    .locals 3

    .line 114
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showGroupInNotification$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getSpeedInterval()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public final getSubscriptionAutoUpdate()Z
    .locals 3

    .line 253
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getSubscriptionAutoUpdateDelay()I
    .locals 3

    .line 254
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdateDelay$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x70

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSubscriptionDeduplication()Z
    .locals 3

    .line 250
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionDeduplication$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getSubscriptionForceResolve()Z
    .locals 3

    .line 249
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionForceResolve$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getSubscriptionLink()Ljava/lang/String;
    .locals 3

    .line 248
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionLink$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriptionUpdateWhenConnectedOnly()Z
    .locals 3

    .line 251
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionUpdateWhenConnectedOnly$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getSubscriptionUserAgent()Ljava/lang/String;
    .locals 3

    .line 252
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionUserAgent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTrafficSniffing()I
    .locals 3

    .line 104
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->trafficSniffing$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getTunImplementation()I
    .locals 3

    .line 164
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->tunImplementation$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getVpnService()Lio/nekohasekai/sagernet/bg/VpnService;
    .locals 1

    .line 40
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->vpnService:Lio/nekohasekai/sagernet/bg/VpnService;

    return-object v0
.end method

.method public final getWakeResetConnections()Z
    .locals 3

    .line 95
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->wakeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getYacdURL()Ljava/lang/String;
    .locals 3

    .line 167
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->yacdURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final initGlobal()V
    .locals 2

    .line 135
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->configurationStore:Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    const-string v1, "mixedPort"

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/DataStore;->getMixedPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/database/DataStore;->setMixedPort(I)V

    .line 138
    :cond_0
    return-void
.end method

.method public final isExpert()Z
    .locals 3

    .line 99
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->isExpert$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onPreferenceDataStoreChanged(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;)V
    .locals 1
    .param p1, "store"    # Landroidx/preference/PreferenceDataStore;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public final selectedGroupForImport()J
    .locals 21

    .line 81
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroup()Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    .line 82
    .local v0, "current":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v1

    return-wide v1

    .line 83
    :cond_0
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v1

    invoke-interface {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "groups":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 262
    .local v4, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v5, 0x0

    .line 84
    .local v5, "$i$a$-find-DataStore$selectedGroupForImport$1":I
    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .end local v4    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v5    # "$i$a$-find-DataStore$selectedGroupForImport$1":I
    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lio/nekohasekai/sagernet/database/ProxyGroup;

    if-eqz v3, :cond_4

    move-object v2, v3

    .line 262
    .local v2, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v3, 0x0

    .line 84
    .local v3, "$i$a$-let-DataStore$selectedGroupForImport$2":I
    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v4

    return-wide v4

    .line 86
    .end local v2    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v3    # "$i$a$-let-DataStore$selectedGroupForImport$2":I
    :cond_4
    sget-object v2, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v2

    new-instance v14, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v3, v14

    const/16 v18, 0x3fb

    const/16 v19, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v19}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v20

    invoke-interface {v2, v3}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)J

    move-result-wide v2

    return-wide v2
.end method

.method public final setAcquireWakeLock(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 126
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->acquireWakeLock$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAllowAccess(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 112
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->allowAccess$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAllowInsecureOnRequest(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 93
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->allowInsecureOnRequest$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAlwaysShowAddress(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 162
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->alwaysShowAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x28

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAppTLSVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appTLSVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAppTheme(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 100
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setAppendHttpProxy(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 159
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->appendHttpProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBaseService(Lio/nekohasekai/sagernet/bg/BaseService$Interface;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    .line 41
    sput-object p1, Lio/nekohasekai/sagernet/database/DataStore;->baseService:Lio/nekohasekai/sagernet/bg/BaseService$Interface;

    return-void
.end method

.method public final setBypass(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 153
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypass$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x21

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBypassLan(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 109
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypassLan$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setBypassLanInCore(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 110
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->bypassLanInCore$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setConnectionTestConcurrent(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 161
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestConcurrent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setConnectionTestURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->connectionTestURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setCurrentProfile(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->currentProfile$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDirectDns(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->directDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDirty(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 175
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->dirty$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEditingGroup(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 177
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->editingGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEditingId(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 176
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->editingId$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEnableClashAPI(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 90
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableClashAPI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEnableDnsRouting(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 120
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableDnsRouting$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setEnableFakeDns(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 121
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->enableFakeDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setExpert(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 99
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->isExpert$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFrontProxy(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 234
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->frontProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5f

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFrontProxyTmp(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 236
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->frontProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x61

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGlobalAllowInsecure(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 171
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->globalAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGlobalCustomConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->globalCustomConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGroupIsSelector(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 246
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupIsSelector$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x69

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGroupName(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGroupOrder(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 245
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupOrder$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x68

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGroupType(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 244
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->groupType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x67

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setIndividual(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->individual$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setIpv6Mode(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 149
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->ipv6Mode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLandingProxy(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 235
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->landingProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x60

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLandingProxyTmp(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 237
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->landingProxyTmp$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x62

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLogBufSize(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 125
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->logBufSize$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 124
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->logLevel$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setMeteredNetwork(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 151
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->meteredNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setMixedPort(I)V
    .locals 1
    .param p1, "value"    # I

    .line 132
    const-string v0, "mixedPort"

    invoke-direct {p0, v0, p1}, Lio/nekohasekai/sagernet/database/DataStore;->saveLocalPort(Ljava/lang/String;I)V

    return-void
.end method

.method public final setMtu(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 107
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->mtu$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setNetworkChangeResetConnections(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 94
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->networkChangeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setNightTheme(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 101
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->nightTheme$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setProfileName(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setProfileTrafficStatistics(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 165
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->profileTrafficStatistics$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setProtocolVersion(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 211
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->protocolVersion$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4c

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setProxyApps(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 152
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->proxyApps$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x20

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRemoteDns(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->remoteDns$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setResolveDestination(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 105
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->resolveDestination$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteDomain(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeDomain$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x55

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteIP(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeIP$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x56

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteName(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeName$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x54

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x59

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteOutbound(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 230
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5c

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteOutboundRule(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 231
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeOutboundRule$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5d

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRoutePackages(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routePackages$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRoutePort(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x57

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteProtocol(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeSource$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x5a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRouteSourcePort(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->routeSourcePort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x58

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRulesFirstCreate(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 256
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->rulesFirstCreate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x71

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRulesProvider(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 123
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->rulesProvider$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x1a

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRunningTest(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 45
    sput-boolean p1, Lio/nekohasekai/sagernet/database/DataStore;->runningTest:Z

    return-void
.end method

.method public final setSelectedGroup(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 37
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroup$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSelectedProxy(J)V
    .locals 3
    .param p1, "<set-?>"    # J

    .line 36
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->selectedProxy$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerALPN(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverALPN$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x40

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAddress$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x31

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerAllowInsecure(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 201
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAllowInsecure$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x44

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerAuthType(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 203
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverAuthType$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x45

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerCertificates(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCertificates$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverConfig$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x63

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerCongestionController(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCongestionController$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x51

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerConnectionReceiveWindow(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 207
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverConnectionReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x49

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerCustom(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCustom$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x64

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerCustomOutbound(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverCustomOutbound$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x65

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerDisableMtuDiscovery(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 208
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDisableMtuDiscovery$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4a

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerDisableSNI(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 219
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDisableSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x52

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerDownloadSpeed(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 205
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverDownloadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x47

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerEncryption(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverEncryption$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3f

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerHeaders(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHeaders$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x43

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerHopInterval(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 209
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHopInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4b

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerHost(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverHost$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerInsecureConcurrency(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 215
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverInsecureConcurrency$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4f

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerMTU(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 199
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverMTU$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x42

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverMethod$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverNetwork$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerObfs(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverObfs$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPassword$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerPassword1(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPassword1$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x36

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPath$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3d

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerPort(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 180
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPort$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerPorts(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPorts$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerPrivateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverPrivateKey$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerProtocol(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverProtocol$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerProtocolInt(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 213
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverProtocolInt$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x4d

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerReduceRTT(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 220
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverReduceRTT$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x53

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerSNI(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverSNI$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x3e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerStreamReceiveWindow(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 206
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverStreamReceiveWindow$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x48

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerUDPRelayMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUDPRelayMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerUploadSpeed(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 204
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUploadSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x46

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServerUsername(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serverUsername$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServiceMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->serviceMode$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setServiceState(Lio/nekohasekai/sagernet/bg/BaseService$State;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/BaseService$State;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sput-object p1, Lio/nekohasekai/sagernet/database/DataStore;->serviceState:Lio/nekohasekai/sagernet/bg/BaseService$State;

    .line 28
    return-void
.end method

.method public final setSharedStorage(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->sharedStorage$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x38

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowBottomBar(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 91
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showBottomBar$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowDirectSpeed(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 155
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showDirectSpeed$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowGroupInNotification(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 114
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->showGroupInNotification$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSpeedInterval(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 113
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->speedInterval$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionAutoUpdate(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 253
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdate$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6f

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionAutoUpdateDelay(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 254
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionAutoUpdateDelay$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x70

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionDeduplication(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 250
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionDeduplication$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6c

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionForceResolve(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 249
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionForceResolve$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6b

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionLink$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6a

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionUpdateWhenConnectedOnly(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 251
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionUpdateWhenConnectedOnly$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6d

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setSubscriptionUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->subscriptionUserAgent$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x6e

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTrafficSniffing(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 104
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->trafficSniffing$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTunImplementation(I)V
    .locals 3
    .param p1, "<set-?>"    # I

    .line 164
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->tunImplementation$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setVpnService(Lio/nekohasekai/sagernet/bg/VpnService;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/bg/VpnService;

    .line 40
    sput-object p1, Lio/nekohasekai/sagernet/database/DataStore;->vpnService:Lio/nekohasekai/sagernet/bg/VpnService;

    return-void
.end method

.method public final setWakeResetConnections(Z)V
    .locals 3
    .param p1, "<set-?>"    # Z

    .line 95
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->wakeResetConnections$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setYacdURL(Ljava/lang/String;)V
    .locals 3
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->yacdURL$delegate:Lio/nekohasekai/sagernet/ktx/PreferenceProxy;

    sget-object v1, Lio/nekohasekai/sagernet/database/DataStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x2b

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lio/nekohasekai/sagernet/ktx/PreferenceProxy;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
