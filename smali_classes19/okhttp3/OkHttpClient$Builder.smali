.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1089:1\n1#2:1090\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008h\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006J\u0015\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0013\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J8\u0010\u0012\u001a\u00020\u00002#\u0008\u0004\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0004\u0008\u001d\u0010\u0010J\u0015\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001e\u0010\u0013J8\u0010\u001e\u001a\u00020\u00002#\u0008\u0004\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0015\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u00190\u0014H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001f\u0010\u001cJ\u0015\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010\'\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008*\u0010+J\u0015\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020&\u00a2\u0006\u0004\u0008,\u0010(J\u0015\u0010.\u001a\u00020\u00002\u0006\u0010-\u001a\u00020&\u00a2\u0006\u0004\u0008.\u0010(J\u0015\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00080\u00101J\u0017\u00103\u001a\u00020\u00002\u0008\u00103\u001a\u0004\u0018\u000102\u00a2\u0006\u0004\u00083\u00104J\u0015\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u00002\u0008\u00109\u001a\u0004\u0018\u000108\u00a2\u0006\u0004\u00089\u0010:J\u0015\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020;\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020)\u00a2\u0006\u0004\u0008>\u0010+J\u0015\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020?\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020BH\u0007\u00a2\u0006\u0004\u0008C\u0010DJ\u001d\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020B2\u0006\u0010F\u001a\u00020E\u00a2\u0006\u0004\u0008C\u0010GJ\u001b\u0010J\u001a\u00020\u00002\u000c\u0010J\u001a\u0008\u0012\u0004\u0012\u00020I0H\u00a2\u0006\u0004\u0008J\u0010KJ\u001b\u0010M\u001a\u00020\u00002\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020L0H\u00a2\u0006\u0004\u0008M\u0010KJ\u0015\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020N\u00a2\u0006\u0004\u0008O\u0010PJ\u0015\u0010R\u001a\u00020\u00002\u0006\u0010R\u001a\u00020Q\u00a2\u0006\u0004\u0008R\u0010SJ\u001d\u0010X\u001a\u00020\u00002\u0006\u0010U\u001a\u00020T2\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008X\u0010YJ\u0017\u0010X\u001a\u00020\u00002\u0006\u0010[\u001a\u00020ZH\u0007\u00a2\u0006\u0004\u0008X\u0010\\J\u001d\u0010]\u001a\u00020\u00002\u0006\u0010U\u001a\u00020T2\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008]\u0010YJ\u0017\u0010]\u001a\u00020\u00002\u0006\u0010[\u001a\u00020ZH\u0007\u00a2\u0006\u0004\u0008]\u0010\\J\u001d\u0010^\u001a\u00020\u00002\u0006\u0010U\u001a\u00020T2\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008^\u0010YJ\u0017\u0010^\u001a\u00020\u00002\u0006\u0010[\u001a\u00020ZH\u0007\u00a2\u0006\u0004\u0008^\u0010\\J\u001d\u0010_\u001a\u00020\u00002\u0006\u0010U\u001a\u00020T2\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008_\u0010YJ\u0017\u0010_\u001a\u00020\u00002\u0006\u0010[\u001a\u00020ZH\u0007\u00a2\u0006\u0004\u0008_\u0010\\J\u001d\u0010a\u001a\u00020\u00002\u0006\u0010`\u001a\u00020T2\u0006\u0010W\u001a\u00020V\u00a2\u0006\u0004\u0008a\u0010YJ\u0017\u0010a\u001a\u00020\u00002\u0006\u0010[\u001a\u00020ZH\u0007\u00a2\u0006\u0004\u0008a\u0010\\J\u0015\u0010c\u001a\u00020\u00002\u0006\u0010b\u001a\u00020T\u00a2\u0006\u0004\u0008c\u0010dJ\r\u0010e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008e\u0010fR\"\u0010\u0008\u001a\u00020\u00078\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010g\u001a\u0004\u0008h\u0010i\"\u0004\u0008j\u0010kR\"\u0010\u000b\u001a\u00020\n8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010l\u001a\u0004\u0008m\u0010n\"\u0004\u0008o\u0010pR \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010q\u001a\u0004\u0008r\u0010\u0010R \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010q\u001a\u0004\u0008s\u0010\u0010R\"\u0010$\u001a\u00020#8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\"\u0010\'\u001a\u00020&8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010y\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R%\u0010*\u001a\u00020)8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0004\u0008*\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R$\u0010,\u001a\u00020&8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0014\n\u0004\u0008,\u0010y\u001a\u0005\u0008\u0083\u0001\u0010{\"\u0005\u0008\u0084\u0001\u0010}R$\u0010.\u001a\u00020&8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0014\n\u0004\u0008.\u0010y\u001a\u0005\u0008\u0085\u0001\u0010{\"\u0005\u0008\u0086\u0001\u0010}R\'\u00100\u001a\u00020/8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u00080\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R)\u00103\u001a\u0004\u0018\u0001028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u00083\u0010\u008c\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001\"\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\'\u00106\u001a\u0002058\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u00086\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R)\u00109\u001a\u0004\u0018\u0001088\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u00089\u0010\u0096\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001\"\u0006\u0008\u0099\u0001\u0010\u009a\u0001R)\u0010<\u001a\u0004\u0018\u00010;8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008<\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001\"\u0006\u0008\u009e\u0001\u0010\u009f\u0001R&\u0010>\u001a\u00020)8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0016\n\u0004\u0008>\u0010~\u001a\u0006\u0008\u00a0\u0001\u0010\u0080\u0001\"\u0006\u0008\u00a1\u0001\u0010\u0082\u0001R\'\u0010@\u001a\u00020?8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008@\u0010\u00a2\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\"\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001R+\u0010\u00a7\u0001\u001a\u0004\u0018\u00010B8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001\"\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001R+\u0010\u00ad\u0001\u001a\u0004\u0018\u00010E8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\"\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R+\u0010J\u001a\u0008\u0012\u0004\u0012\u00020I0H8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0004\u0008J\u0010q\u001a\u0005\u0008\u00b3\u0001\u0010\u0010\"\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001R+\u0010M\u001a\u0008\u0012\u0004\u0012\u00020L0H8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0015\n\u0004\u0008M\u0010q\u001a\u0005\u0008\u00b6\u0001\u0010\u0010\"\u0006\u0008\u00b7\u0001\u0010\u00b5\u0001R\'\u0010O\u001a\u00020N8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008O\u0010\u00b8\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001\"\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R\'\u0010R\u001a\u00020Q8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008R\u0010\u00bd\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\"\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R,\u0010\u00c3\u0001\u001a\u0005\u0018\u00010\u00c2\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\u001a\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\"\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R(\u0010X\u001a\u00030\u00c9\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008X\u0010\u00ca\u0001\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001\"\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001R(\u0010]\u001a\u00030\u00c9\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008]\u0010\u00ca\u0001\u001a\u0006\u0008\u00cf\u0001\u0010\u00cc\u0001\"\u0006\u0008\u00d0\u0001\u0010\u00ce\u0001R(\u0010^\u001a\u00030\u00c9\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008^\u0010\u00ca\u0001\u001a\u0006\u0008\u00d1\u0001\u0010\u00cc\u0001\"\u0006\u0008\u00d2\u0001\u0010\u00ce\u0001R(\u0010_\u001a\u00030\u00c9\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008_\u0010\u00ca\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00cc\u0001\"\u0006\u0008\u00d4\u0001\u0010\u00ce\u0001R(\u0010a\u001a\u00030\u00c9\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008a\u0010\u00ca\u0001\u001a\u0006\u0008\u00d5\u0001\u0010\u00cc\u0001\"\u0006\u0008\u00d6\u0001\u0010\u00ce\u0001R\'\u0010c\u001a\u00020T8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008c\u0010\u00d7\u0001\u001a\u0006\u0008\u00d8\u0001\u0010\u00d9\u0001\"\u0006\u0008\u00da\u0001\u0010\u00db\u0001R,\u0010\u00dd\u0001\u001a\u0005\u0018\u00010\u00dc\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00dd\u0001\u0010\u00de\u0001\u001a\u0006\u0008\u00df\u0001\u0010\u00e0\u0001\"\u0006\u0008\u00e1\u0001\u0010\u00e2\u0001\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u00e3\u0001"
    }
    d2 = {
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/OkHttpClient;",
        "okHttpClient",
        "(Lokhttp3/OkHttpClient;)V",
        "Lokhttp3/Dispatcher;",
        "dispatcher",
        "(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/ConnectionPool;",
        "connectionPool",
        "(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;",
        "",
        "Lokhttp3/Interceptor;",
        "interceptors",
        "()Ljava/util/List;",
        "interceptor",
        "addInterceptor",
        "(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;",
        "Lkotlin/Function1;",
        "Lokhttp3/Interceptor$Chain;",
        "Lkotlin/ParameterName;",
        "name",
        "chain",
        "Lokhttp3/Response;",
        "block",
        "-addInterceptor",
        "(Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient$Builder;",
        "networkInterceptors",
        "addNetworkInterceptor",
        "-addNetworkInterceptor",
        "Lokhttp3/EventListener;",
        "eventListener",
        "(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/EventListener$Factory;",
        "eventListenerFactory",
        "(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;",
        "",
        "retryOnConnectionFailure",
        "(Z)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/Authenticator;",
        "authenticator",
        "(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;",
        "followRedirects",
        "followProtocolRedirects",
        "followSslRedirects",
        "Lokhttp3/CookieJar;",
        "cookieJar",
        "(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/Cache;",
        "cache",
        "(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/Dns;",
        "dns",
        "(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;",
        "Ljava/net/Proxy;",
        "proxy",
        "(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;",
        "Ljava/net/ProxySelector;",
        "proxySelector",
        "(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;",
        "proxyAuthenticator",
        "Ljavax/net/SocketFactory;",
        "socketFactory",
        "(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactory",
        "(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;",
        "Ljavax/net/ssl/X509TrustManager;",
        "trustManager",
        "(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;",
        "",
        "Lokhttp3/ConnectionSpec;",
        "connectionSpecs",
        "(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/Protocol;",
        "protocols",
        "Ljavax/net/ssl/HostnameVerifier;",
        "hostnameVerifier",
        "(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;",
        "Lokhttp3/CertificatePinner;",
        "certificatePinner",
        "(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;",
        "",
        "timeout",
        "Ljava/util/concurrent/TimeUnit;",
        "unit",
        "callTimeout",
        "(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;",
        "j$/time/Duration",
        "duration",
        "(Lj$/time/Duration;)Lokhttp3/OkHttpClient$Builder;",
        "connectTimeout",
        "readTimeout",
        "writeTimeout",
        "interval",
        "pingInterval",
        "bytes",
        "minWebSocketMessageToCompress",
        "(J)Lokhttp3/OkHttpClient$Builder;",
        "build",
        "()Lokhttp3/OkHttpClient;",
        "Lokhttp3/Dispatcher;",
        "getDispatcher$okhttp",
        "()Lokhttp3/Dispatcher;",
        "setDispatcher$okhttp",
        "(Lokhttp3/Dispatcher;)V",
        "Lokhttp3/ConnectionPool;",
        "getConnectionPool$okhttp",
        "()Lokhttp3/ConnectionPool;",
        "setConnectionPool$okhttp",
        "(Lokhttp3/ConnectionPool;)V",
        "Ljava/util/List;",
        "getInterceptors$okhttp",
        "getNetworkInterceptors$okhttp",
        "Lokhttp3/EventListener$Factory;",
        "getEventListenerFactory$okhttp",
        "()Lokhttp3/EventListener$Factory;",
        "setEventListenerFactory$okhttp",
        "(Lokhttp3/EventListener$Factory;)V",
        "Z",
        "getRetryOnConnectionFailure$okhttp",
        "()Z",
        "setRetryOnConnectionFailure$okhttp",
        "(Z)V",
        "Lokhttp3/Authenticator;",
        "getAuthenticator$okhttp",
        "()Lokhttp3/Authenticator;",
        "setAuthenticator$okhttp",
        "(Lokhttp3/Authenticator;)V",
        "getFollowRedirects$okhttp",
        "setFollowRedirects$okhttp",
        "getFollowSslRedirects$okhttp",
        "setFollowSslRedirects$okhttp",
        "Lokhttp3/CookieJar;",
        "getCookieJar$okhttp",
        "()Lokhttp3/CookieJar;",
        "setCookieJar$okhttp",
        "(Lokhttp3/CookieJar;)V",
        "Lokhttp3/Cache;",
        "getCache$okhttp",
        "()Lokhttp3/Cache;",
        "setCache$okhttp",
        "(Lokhttp3/Cache;)V",
        "Lokhttp3/Dns;",
        "getDns$okhttp",
        "()Lokhttp3/Dns;",
        "setDns$okhttp",
        "(Lokhttp3/Dns;)V",
        "Ljava/net/Proxy;",
        "getProxy$okhttp",
        "()Ljava/net/Proxy;",
        "setProxy$okhttp",
        "(Ljava/net/Proxy;)V",
        "Ljava/net/ProxySelector;",
        "getProxySelector$okhttp",
        "()Ljava/net/ProxySelector;",
        "setProxySelector$okhttp",
        "(Ljava/net/ProxySelector;)V",
        "getProxyAuthenticator$okhttp",
        "setProxyAuthenticator$okhttp",
        "Ljavax/net/SocketFactory;",
        "getSocketFactory$okhttp",
        "()Ljavax/net/SocketFactory;",
        "setSocketFactory$okhttp",
        "(Ljavax/net/SocketFactory;)V",
        "sslSocketFactoryOrNull",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "getSslSocketFactoryOrNull$okhttp",
        "()Ljavax/net/ssl/SSLSocketFactory;",
        "setSslSocketFactoryOrNull$okhttp",
        "(Ljavax/net/ssl/SSLSocketFactory;)V",
        "x509TrustManagerOrNull",
        "Ljavax/net/ssl/X509TrustManager;",
        "getX509TrustManagerOrNull$okhttp",
        "()Ljavax/net/ssl/X509TrustManager;",
        "setX509TrustManagerOrNull$okhttp",
        "(Ljavax/net/ssl/X509TrustManager;)V",
        "getConnectionSpecs$okhttp",
        "setConnectionSpecs$okhttp",
        "(Ljava/util/List;)V",
        "getProtocols$okhttp",
        "setProtocols$okhttp",
        "Ljavax/net/ssl/HostnameVerifier;",
        "getHostnameVerifier$okhttp",
        "()Ljavax/net/ssl/HostnameVerifier;",
        "setHostnameVerifier$okhttp",
        "(Ljavax/net/ssl/HostnameVerifier;)V",
        "Lokhttp3/CertificatePinner;",
        "getCertificatePinner$okhttp",
        "()Lokhttp3/CertificatePinner;",
        "setCertificatePinner$okhttp",
        "(Lokhttp3/CertificatePinner;)V",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "certificateChainCleaner",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "getCertificateChainCleaner$okhttp",
        "()Lokhttp3/internal/tls/CertificateChainCleaner;",
        "setCertificateChainCleaner$okhttp",
        "(Lokhttp3/internal/tls/CertificateChainCleaner;)V",
        "",
        "I",
        "getCallTimeout$okhttp",
        "()I",
        "setCallTimeout$okhttp",
        "(I)V",
        "getConnectTimeout$okhttp",
        "setConnectTimeout$okhttp",
        "getReadTimeout$okhttp",
        "setReadTimeout$okhttp",
        "getWriteTimeout$okhttp",
        "setWriteTimeout$okhttp",
        "getPingInterval$okhttp",
        "setPingInterval$okhttp",
        "J",
        "getMinWebSocketMessageToCompress$okhttp",
        "()J",
        "setMinWebSocketMessageToCompress$okhttp",
        "(J)V",
        "Lokhttp3/internal/connection/RouteDatabase;",
        "routeDatabase",
        "Lokhttp3/internal/connection/RouteDatabase;",
        "getRouteDatabase$okhttp",
        "()Lokhttp3/internal/connection/RouteDatabase;",
        "setRouteDatabase$okhttp",
        "(Lokhttp3/internal/connection/RouteDatabase;)V",
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


# instance fields
.field private authenticator:Lokhttp3/Authenticator;

.field private cache:Lokhttp3/Cache;

.field private callTimeout:I

.field private certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

.field private certificatePinner:Lokhttp3/CertificatePinner;

.field private connectTimeout:I

.field private connectionPool:Lokhttp3/ConnectionPool;

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private cookieJar:Lokhttp3/CookieJar;

.field private dispatcher:Lokhttp3/Dispatcher;

.field private dns:Lokhttp3/Dns;

.field private eventListenerFactory:Lokhttp3/EventListener$Factory;

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private minWebSocketMessageToCompress:J

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private pingInterval:I

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxyAuthenticator:Lokhttp3/Authenticator;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I

.field private x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 481
    new-instance v0, Lokhttp3/ConnectionPool;

    invoke-direct {v0}, Lokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 484
    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/internal/Util;->asFactory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 486
    sget-object v1, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 487
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 488
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 489
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 491
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 494
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 495
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 498
    sget-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Companion;->getDEFAULT_CONNECTION_SPECS$okhttp()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 499
    sget-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Companion;->getDEFAULT_PROTOCOLS$okhttp()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 500
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    check-cast v0, Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 501
    sget-object v0, Lokhttp3/CertificatePinner;->DEFAULT:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 504
    const/16 v0, 0x2710

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 505
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 506
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 508
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lokhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 479
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lokhttp3/OkHttpClient;

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 512
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    .line 513
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionPool()Lokhttp3/ConnectionPool;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    .line 514
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 515
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 516
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->eventListenerFactory()Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    .line 517
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 518
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    .line 519
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 520
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 521
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    .line 522
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    .line 523
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dns()Lokhttp3/Dns;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    .line 524
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 525
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 526
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 527
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 528
    invoke-static {p1}, Lokhttp3/OkHttpClient;->access$getSslSocketFactoryOrNull$p(Lokhttp3/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    .line 529
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->x509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    .line 530
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 531
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 532
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 533
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 534
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->certificateChainCleaner()Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 535
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 536
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 537
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 538
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 539
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->pingIntervalMillis()I

    move-result v0

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 540
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->minWebSocketMessageToCompress()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    .line 541
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->getRouteDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 542
    return-void
.end method


# virtual methods
.method public final -addInterceptor(Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Interceptor$Chain;",
            "Lokhttp3/Response;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 573
    .local v0, "$i$f$-addInterceptor":I
    new-instance v1, Lokhttp3/OkHttpClient$Builder$addInterceptor$2;

    invoke-direct {v1, p1}, Lokhttp3/OkHttpClient$Builder$addInterceptor$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final -addNetworkInterceptor(Lkotlin/jvm/functions/Function1;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Interceptor$Chain;",
            "Lokhttp3/Response;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 588
    .local v0, "$i$f$-addNetworkInterceptor":I
    new-instance v1, Lokhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;

    invoke-direct {v1, p1}, Lokhttp3/OkHttpClient$Builder$addNetworkInterceptor$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {p0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$addInterceptor_u24lambda_u2d2":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 568
    .local v1, "$i$a$-apply-OkHttpClient$Builder$addInterceptor$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getInterceptors$okhttp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 569
    nop

    .line 567
    .end local v0    # "$this$addInterceptor_u24lambda_u2d2":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$addInterceptor$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 569
    return-object v0
.end method

.method public final addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "interceptor"    # Lokhttp3/Interceptor;

    const-string v0, "interceptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$addNetworkInterceptor_u24lambda_u2d3":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 583
    .local v1, "$i$a$-apply-OkHttpClient$Builder$addNetworkInterceptor$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getNetworkInterceptors$okhttp()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 584
    nop

    .line 582
    .end local v0    # "$this$addNetworkInterceptor_u24lambda_u2d3":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$addNetworkInterceptor$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 584
    return-object v0
.end method

.method public final authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lokhttp3/Authenticator;

    const-string v0, "authenticator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 638
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$authenticator_u24lambda_u2d7":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 639
    .local v1, "$i$a$-apply-OkHttpClient$Builder$authenticator$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setAuthenticator$okhttp(Lokhttp3/Authenticator;)V

    .line 640
    nop

    .line 638
    .end local v0    # "$this$authenticator_u24lambda_u2d7":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$authenticator$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 640
    return-object v0
.end method

.method public final build()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1079
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public final cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cache"    # Lokhttp3/Cache;

    .line 668
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$cache_u24lambda_u2d11":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 669
    .local v1, "$i$a$-apply-OkHttpClient$Builder$cache$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setCache$okhttp(Lokhttp3/Cache;)V

    .line 670
    nop

    .line 668
    .end local v0    # "$this$cache_u24lambda_u2d11":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$cache$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 670
    return-object v0
.end method

.method public final callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 931
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$callTimeout_u24lambda_u2d28":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 932
    .local v1, "$i$a$-apply-OkHttpClient$Builder$callTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setCallTimeout$okhttp(I)V

    .line 933
    nop

    .line 931
    .end local v0    # "$this$callTimeout_u24lambda_u2d28":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$callTimeout$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 933
    return-object v0
.end method

.method public final callTimeout(Lj$/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "duration"    # Lj$/time/Duration;

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 946
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$callTimeout_u24lambda_u2d29":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 947
    .local v1, "$i$a$-apply-OkHttpClient$Builder$callTimeout$2":I
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 948
    nop

    .line 946
    .end local v0    # "$this$callTimeout_u24lambda_u2d29":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$callTimeout$2":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 948
    return-object v0
.end method

.method public final certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;

    const-string v0, "certificatePinner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$certificatePinner_u24lambda_u2d27":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 914
    .local v1, "$i$a$-apply-OkHttpClient$Builder$certificatePinner$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getCertificatePinner$okhttp()Lokhttp3/CertificatePinner;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 915
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 918
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setCertificatePinner$okhttp(Lokhttp3/CertificatePinner;)V

    .line 919
    nop

    .line 913
    .end local v0    # "$this$certificatePinner_u24lambda_u2d27":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$certificatePinner$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 919
    return-object v0
.end method

.method public final connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$connectTimeout_u24lambda_u2d30":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 958
    .local v1, "$i$a$-apply-OkHttpClient$Builder$connectTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setConnectTimeout$okhttp(I)V

    .line 959
    nop

    .line 957
    .end local v0    # "$this$connectTimeout_u24lambda_u2d30":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$connectTimeout$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 959
    return-object v0
.end method

.method public final connectTimeout(Lj$/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "duration"    # Lj$/time/Duration;

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 969
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$connectTimeout_u24lambda_u2d31":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 970
    .local v1, "$i$a$-apply-OkHttpClient$Builder$connectTimeout$2":I
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 971
    nop

    .line 969
    .end local v0    # "$this$connectTimeout_u24lambda_u2d31":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$connectTimeout$2":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 971
    return-object v0
.end method

.method public final connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$connectionPool_u24lambda_u2d1":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 557
    .local v1, "$i$a$-apply-OkHttpClient$Builder$connectionPool$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setConnectionPool$okhttp(Lokhttp3/ConnectionPool;)V

    .line 558
    nop

    .line 556
    .end local v0    # "$this$connectionPool_u24lambda_u2d1":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$connectionPool$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 558
    return-object v0
.end method

.method public final connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "connectionSpecs"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$connectionSpecs_u24lambda_u2d20":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 826
    .local v1, "$i$a$-apply-OkHttpClient$Builder$connectionSpecs$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getConnectionSpecs$okhttp()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 830
    :cond_0
    invoke-static {p1}, Lokhttp3/internal/Util;->toImmutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setConnectionSpecs$okhttp(Ljava/util/List;)V

    .line 831
    nop

    .line 825
    .end local v0    # "$this$connectionSpecs_u24lambda_u2d20":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$connectionSpecs$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 831
    return-object v0
.end method

.method public final cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lokhttp3/CookieJar;

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$cookieJar_u24lambda_u2d10":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 664
    .local v1, "$i$a$-apply-OkHttpClient$Builder$cookieJar$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setCookieJar$okhttp(Lokhttp3/CookieJar;)V

    .line 665
    nop

    .line 663
    .end local v0    # "$this$cookieJar_u24lambda_u2d10":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$cookieJar$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 665
    return-object v0
.end method

.method public final dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lokhttp3/Dispatcher;

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$dispatcher_u24lambda_u2d0":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 548
    .local v1, "$i$a$-apply-OkHttpClient$Builder$dispatcher$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setDispatcher$okhttp(Lokhttp3/Dispatcher;)V

    .line 549
    nop

    .line 547
    .end local v0    # "$this$dispatcher_u24lambda_u2d0":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$dispatcher$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 549
    return-object v0
.end method

.method public final dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "dns"    # Lokhttp3/Dns;

    const-string v0, "dns"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$dns_u24lambda_u2d12":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 678
    .local v1, "$i$a$-apply-OkHttpClient$Builder$dns$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getDns$okhttp()Lokhttp3/Dns;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 679
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 681
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setDns$okhttp(Lokhttp3/Dns;)V

    .line 682
    nop

    .line 677
    .end local v0    # "$this$dns_u24lambda_u2d12":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$dns$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 682
    return-object v0
.end method

.method public final eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "eventListener"    # Lokhttp3/EventListener;

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$eventListener_u24lambda_u2d4":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 597
    .local v1, "$i$a$-apply-OkHttpClient$Builder$eventListener$1":I
    invoke-static {p1}, Lokhttp3/internal/Util;->asFactory(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setEventListenerFactory$okhttp(Lokhttp3/EventListener$Factory;)V

    .line 598
    nop

    .line 596
    .end local v0    # "$this$eventListener_u24lambda_u2d4":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$eventListener$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 598
    return-object v0
.end method

.method public final eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListenerFactory"    # Lokhttp3/EventListener$Factory;

    const-string v0, "eventListenerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$eventListenerFactory_u24lambda_u2d5":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 607
    .local v1, "$i$a$-apply-OkHttpClient$Builder$eventListenerFactory$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setEventListenerFactory$okhttp(Lokhttp3/EventListener$Factory;)V

    .line 608
    nop

    .line 606
    .end local v0    # "$this$eventListenerFactory_u24lambda_u2d5":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$eventListenerFactory$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 608
    return-object v0
.end method

.method public final followRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "followRedirects"    # Z

    .line 643
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$followRedirects_u24lambda_u2d8":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 644
    .local v1, "$i$a$-apply-OkHttpClient$Builder$followRedirects$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setFollowRedirects$okhttp(Z)V

    .line 645
    nop

    .line 643
    .end local v0    # "$this$followRedirects_u24lambda_u2d8":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$followRedirects$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 645
    return-object v0
.end method

.method public final followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "followProtocolRedirects"    # Z

    .line 653
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$followSslRedirects_u24lambda_u2d9":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 654
    .local v1, "$i$a$-apply-OkHttpClient$Builder$followSslRedirects$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setFollowSslRedirects$okhttp(Z)V

    .line 655
    nop

    .line 653
    .end local v0    # "$this$followSslRedirects_u24lambda_u2d9":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$followSslRedirects$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 655
    return-object v0
.end method

.method public final getAuthenticator$okhttp()Lokhttp3/Authenticator;
    .locals 1

    .line 486
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final getCache$okhttp()Lokhttp3/Cache;
    .locals 1

    .line 490
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    return-object v0
.end method

.method public final getCallTimeout$okhttp()I
    .locals 1

    .line 503
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    return v0
.end method

.method public final getCertificateChainCleaner$okhttp()Lokhttp3/internal/tls/CertificateChainCleaner;
    .locals 1

    .line 502
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-object v0
.end method

.method public final getCertificatePinner$okhttp()Lokhttp3/CertificatePinner;
    .locals 1

    .line 501
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public final getConnectTimeout$okhttp()I
    .locals 1

    .line 504
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    return v0
.end method

.method public final getConnectionPool$okhttp()Lokhttp3/ConnectionPool;
    .locals 1

    .line 481
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    return-object v0
.end method

.method public final getConnectionSpecs$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public final getCookieJar$okhttp()Lokhttp3/CookieJar;
    .locals 1

    .line 489
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public final getDispatcher$okhttp()Lokhttp3/Dispatcher;
    .locals 1

    .line 480
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    return-object v0
.end method

.method public final getDns$okhttp()Lokhttp3/Dns;
    .locals 1

    .line 491
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public final getEventListenerFactory$okhttp()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 484
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public final getFollowRedirects$okhttp()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    return v0
.end method

.method public final getFollowSslRedirects$okhttp()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return v0
.end method

.method public final getHostnameVerifier$okhttp()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 500
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getInterceptors$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getMinWebSocketMessageToCompress$okhttp()J
    .locals 2

    .line 508
    iget-wide v0, p0, Lokhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    return-wide v0
.end method

.method public final getNetworkInterceptors$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final getPingInterval$okhttp()I
    .locals 1

    .line 507
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return v0
.end method

.method public final getProtocols$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public final getProxy$okhttp()Ljava/net/Proxy;
    .locals 1

    .line 492
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getProxyAuthenticator$okhttp()Lokhttp3/Authenticator;
    .locals 1

    .line 494
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public final getProxySelector$okhttp()Ljava/net/ProxySelector;
    .locals 1

    .line 493
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final getReadTimeout$okhttp()I
    .locals 1

    .line 505
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    return v0
.end method

.method public final getRetryOnConnectionFailure$okhttp()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return v0
.end method

.method public final getRouteDatabase$okhttp()Lokhttp3/internal/connection/RouteDatabase;
    .locals 1

    .line 509
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    return-object v0
.end method

.method public final getSocketFactory$okhttp()Ljavax/net/SocketFactory;
    .locals 1

    .line 495
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 496
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final getWriteTimeout$okhttp()I
    .locals 1

    .line 506
    iget v0, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    return v0
.end method

.method public final getX509TrustManagerOrNull$okhttp()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .line 497
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    const-string v0, "hostnameVerifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$hostnameVerifier_u24lambda_u2d26":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 901
    .local v1, "$i$a$-apply-OkHttpClient$Builder$hostnameVerifier$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getHostnameVerifier$okhttp()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 902
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 905
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setHostnameVerifier$okhttp(Ljavax/net/ssl/HostnameVerifier;)V

    .line 906
    nop

    .line 900
    .end local v0    # "$this$hostnameVerifier_u24lambda_u2d26":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$hostnameVerifier$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 906
    return-object v0
.end method

.method public final interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public final minWebSocketMessageToCompress(J)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "bytes"    # J

    .line 1071
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$minWebSocketMessageToCompress_u24lambda_u2d39":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 1072
    .local v1, "$i$a$-apply-OkHttpClient$Builder$minWebSocketMessageToCompress$1":I
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1076
    invoke-virtual {v0, p1, p2}, Lokhttp3/OkHttpClient$Builder;->setMinWebSocketMessageToCompress$okhttp(J)V

    .line 1077
    nop

    .line 1071
    .end local v0    # "$this$minWebSocketMessageToCompress_u24lambda_u2d39":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$minWebSocketMessageToCompress$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 1077
    return-object v0

    .line 1072
    .restart local v0    # "$this$minWebSocketMessageToCompress_u24lambda_u2d39":Lokhttp3/OkHttpClient$Builder;
    .restart local v1    # "$i$a$-apply-OkHttpClient$Builder$minWebSocketMessageToCompress$1":I
    :cond_1
    const/4 v2, 0x0

    .line 1073
    .local v2, "$i$a$-require-OkHttpClient$Builder$minWebSocketMessageToCompress$1$1":I
    const-string v3, "minWebSocketMessageToCompress must be positive: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1072
    .end local v2    # "$i$a$-require-OkHttpClient$Builder$minWebSocketMessageToCompress$1$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public final networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public final pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1042
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$pingInterval_u24lambda_u2d36":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 1043
    .local v1, "$i$a$-apply-OkHttpClient$Builder$pingInterval$1":I
    const-string v2, "interval"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setPingInterval$okhttp(I)V

    .line 1044
    nop

    .line 1042
    .end local v0    # "$this$pingInterval_u24lambda_u2d36":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$pingInterval$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 1044
    return-object v0
.end method

.method public final pingInterval(Lj$/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "duration"    # Lj$/time/Duration;

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$pingInterval_u24lambda_u2d37":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 1061
    .local v1, "$i$a$-apply-OkHttpClient$Builder$pingInterval$2":I
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1062
    nop

    .line 1060
    .end local v0    # "$this$pingInterval_u24lambda_u2d37":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$pingInterval$2":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 1062
    return-object v0
.end method

.method public final protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;
    .locals 6
    .param p1, "protocols"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$protocols_u24lambda_u2d25":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 866
    .local v1, "$i$a$-apply-OkHttpClient$Builder$protocols$1":I
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 869
    .local v2, "protocolsCopy":Ljava/util/List;
    sget-object v3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_8

    .line 872
    sget-object v3, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_7

    .line 875
    sget-object v3, Lokhttp3/Protocol;->HTTP_1_0:Lokhttp3/Protocol;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 878
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 884
    sget-object v4, Lokhttp3/Protocol;->SPDY_3:Lokhttp3/Protocol;

    invoke-interface {v2, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getProtocols$okhttp()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 887
    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 891
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const-string v4, "unmodifiableList(protocolsCopy)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->setProtocols$okhttp(Ljava/util/List;)V

    .line 892
    nop

    .line 864
    .end local v0    # "$this$protocols_u24lambda_u2d25":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$protocols$1":I
    .end local v2    # "protocolsCopy":Ljava/util/List;
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 892
    return-object v0

    .line 878
    .restart local v0    # "$this$protocols_u24lambda_u2d25":Lokhttp3/OkHttpClient$Builder;
    .restart local v1    # "$i$a$-apply-OkHttpClient$Builder$protocols$1":I
    .restart local v2    # "protocolsCopy":Ljava/util/List;
    :cond_5
    const/4 v3, 0x0

    .line 879
    .local v3, "$i$a$-require-OkHttpClient$Builder$protocols$1$4":I
    nop

    .line 878
    .end local v3    # "$i$a$-require-OkHttpClient$Builder$protocols$1$4":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "protocols must not contain null"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 875
    :cond_6
    const/4 v3, 0x0

    .line 876
    .local v3, "$i$a$-require-OkHttpClient$Builder$protocols$1$3":I
    const-string v4, "protocols must not contain http/1.0: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 875
    .end local v3    # "$i$a$-require-OkHttpClient$Builder$protocols$1$3":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 872
    :cond_7
    const/4 v3, 0x0

    .line 873
    .local v3, "$i$a$-require-OkHttpClient$Builder$protocols$1$2":I
    const-string v4, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 872
    .end local v3    # "$i$a$-require-OkHttpClient$Builder$protocols$1$2":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 869
    :cond_8
    const/4 v3, 0x0

    .line 870
    .local v3, "$i$a$-require-OkHttpClient$Builder$protocols$1$1":I
    const-string v4, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 869
    .end local v3    # "$i$a$-require-OkHttpClient$Builder$protocols$1$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
.end method

.method public final proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    .line 689
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$proxy_u24lambda_u2d13":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 690
    .local v1, "$i$a$-apply-OkHttpClient$Builder$proxy$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getProxy$okhttp()Ljava/net/Proxy;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 691
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 693
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setProxy$okhttp(Ljava/net/Proxy;)V

    .line 694
    nop

    .line 689
    .end local v0    # "$this$proxy_u24lambda_u2d13":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$proxy$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 694
    return-object v0
.end method

.method public final proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "proxyAuthenticator"    # Lokhttp3/Authenticator;

    const-string v0, "proxyAuthenticator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$proxyAuthenticator_u24lambda_u2d15":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 718
    .local v1, "$i$a$-apply-OkHttpClient$Builder$proxyAuthenticator$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getProxyAuthenticator$okhttp()Lokhttp3/Authenticator;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 722
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setProxyAuthenticator$okhttp(Lokhttp3/Authenticator;)V

    .line 723
    nop

    .line 717
    .end local v0    # "$this$proxyAuthenticator_u24lambda_u2d15":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$proxyAuthenticator$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 723
    return-object v0
.end method

.method public final proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    const-string v0, "proxySelector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$proxySelector_u24lambda_u2d14":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 704
    .local v1, "$i$a$-apply-OkHttpClient$Builder$proxySelector$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getProxySelector$okhttp()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 708
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setProxySelector$okhttp(Ljava/net/ProxySelector;)V

    .line 709
    nop

    .line 703
    .end local v0    # "$this$proxySelector_u24lambda_u2d14":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$proxySelector$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 709
    return-object v0
.end method

.method public final readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$readTimeout_u24lambda_u2d32":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 984
    .local v1, "$i$a$-apply-OkHttpClient$Builder$readTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setReadTimeout$okhttp(I)V

    .line 985
    nop

    .line 983
    .end local v0    # "$this$readTimeout_u24lambda_u2d32":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$readTimeout$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 985
    return-object v0
.end method

.method public final readTimeout(Lj$/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "duration"    # Lj$/time/Duration;

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$readTimeout_u24lambda_u2d33":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 999
    .local v1, "$i$a$-apply-OkHttpClient$Builder$readTimeout$2":I
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1000
    nop

    .line 998
    .end local v0    # "$this$readTimeout_u24lambda_u2d33":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$readTimeout$2":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 1000
    return-object v0
.end method

.method public final retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "retryOnConnectionFailure"    # Z

    .line 628
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$retryOnConnectionFailure_u24lambda_u2d6":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 629
    .local v1, "$i$a$-apply-OkHttpClient$Builder$retryOnConnectionFailure$1":I
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setRetryOnConnectionFailure$okhttp(Z)V

    .line 630
    nop

    .line 628
    .end local v0    # "$this$retryOnConnectionFailure_u24lambda_u2d6":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$retryOnConnectionFailure$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 630
    return-object v0
.end method

.method public final setAuthenticator$okhttp(Lokhttp3/Authenticator;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Authenticator;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->authenticator:Lokhttp3/Authenticator;

    return-void
.end method

.method public final setCache$okhttp(Lokhttp3/Cache;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Cache;

    .line 490
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cache:Lokhttp3/Cache;

    return-void
.end method

.method public final setCallTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 503
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->callTimeout:I

    return-void
.end method

.method public final setCertificateChainCleaner$okhttp(Lokhttp3/internal/tls/CertificateChainCleaner;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/internal/tls/CertificateChainCleaner;

    .line 502
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-void
.end method

.method public final setCertificatePinner$okhttp(Lokhttp3/CertificatePinner;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/CertificatePinner;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->certificatePinner:Lokhttp3/CertificatePinner;

    return-void
.end method

.method public final setConnectTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 504
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->connectTimeout:I

    return-void
.end method

.method public final setConnectionPool$okhttp(Lokhttp3/ConnectionPool;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/ConnectionPool;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->connectionPool:Lokhttp3/ConnectionPool;

    return-void
.end method

.method public final setConnectionSpecs$okhttp(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    return-void
.end method

.method public final setCookieJar$okhttp(Lokhttp3/CookieJar;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/CookieJar;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->cookieJar:Lokhttp3/CookieJar;

    return-void
.end method

.method public final setDispatcher$okhttp(Lokhttp3/Dispatcher;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Dispatcher;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dispatcher:Lokhttp3/Dispatcher;

    return-void
.end method

.method public final setDns$okhttp(Lokhttp3/Dns;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Dns;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->dns:Lokhttp3/Dns;

    return-void
.end method

.method public final setEventListenerFactory$okhttp(Lokhttp3/EventListener$Factory;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/EventListener$Factory;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public final setFollowRedirects$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 487
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followRedirects:Z

    return-void
.end method

.method public final setFollowSslRedirects$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 488
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    return-void
.end method

.method public final setHostnameVerifier$okhttp(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1
    .param p1, "<set-?>"    # Ljavax/net/ssl/HostnameVerifier;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public final setMinWebSocketMessageToCompress$okhttp(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 508
    iput-wide p1, p0, Lokhttp3/OkHttpClient$Builder;->minWebSocketMessageToCompress:J

    return-void
.end method

.method public final setPingInterval$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 507
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->pingInterval:I

    return-void
.end method

.method public final setProtocols$okhttp(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    return-void
.end method

.method public final setProxy$okhttp(Ljava/net/Proxy;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/net/Proxy;

    .line 492
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public final setProxyAuthenticator$okhttp(Lokhttp3/Authenticator;)V
    .locals 1
    .param p1, "<set-?>"    # Lokhttp3/Authenticator;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-void
.end method

.method public final setProxySelector$okhttp(Ljava/net/ProxySelector;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/net/ProxySelector;

    .line 493
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    return-void
.end method

.method public final setReadTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 505
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->readTimeout:I

    return-void
.end method

.method public final setRetryOnConnectionFailure$okhttp(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 485
    iput-boolean p1, p0, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    return-void
.end method

.method public final setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/internal/connection/RouteDatabase;

    .line 509
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    return-void
.end method

.method public final setSocketFactory$okhttp(Ljavax/net/SocketFactory;)V
    .locals 1
    .param p1, "<set-?>"    # Ljavax/net/SocketFactory;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

.method public final setSslSocketFactoryOrNull$okhttp(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "<set-?>"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 496
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->sslSocketFactoryOrNull:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public final setWriteTimeout$okhttp(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 506
    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->writeTimeout:I

    return-void
.end method

.method public final setX509TrustManagerOrNull$okhttp(Ljavax/net/ssl/X509TrustManager;)V
    .locals 0
    .param p1, "<set-?>"    # Ljavax/net/ssl/X509TrustManager;

    .line 497
    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->x509TrustManagerOrNull:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public final socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    const-string v0, "socketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$socketFactory_u24lambda_u2d17":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 733
    .local v1, "$i$a$-apply-OkHttpClient$Builder$socketFactory$1":I
    instance-of v2, p1, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_1

    .line 735
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getSocketFactory$okhttp()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 736
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 739
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setSocketFactory$okhttp(Ljavax/net/SocketFactory;)V

    .line 740
    nop

    .line 732
    .end local v0    # "$this$socketFactory_u24lambda_u2d17":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$socketFactory$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 740
    return-object v0

    .line 1090
    .restart local v0    # "$this$socketFactory_u24lambda_u2d17":Lokhttp3/OkHttpClient$Builder;
    .restart local v1    # "$i$a$-apply-OkHttpClient$Builder$socketFactory$1":I
    :cond_1
    const/4 v2, 0x0

    .line 733
    .local v2, "$i$a$-require-OkHttpClient$Builder$socketFactory$1$1":I
    nop

    .end local v2    # "$i$a$-require-OkHttpClient$Builder$socketFactory$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "socketFactory instanceof SSLSocketFactory"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use the sslSocketFactory overload that accepts a X509TrustManager."
    .end annotation

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$sslSocketFactory_u24lambda_u2d18":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 756
    .local v1, "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$1":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 757
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 760
    :cond_0
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setSslSocketFactoryOrNull$okhttp(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 761
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setX509TrustManagerOrNull$okhttp(Ljavax/net/ssl/X509TrustManager;)V

    .line 764
    sget-object v2, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getX509TrustManagerOrNull$okhttp()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setCertificateChainCleaner$okhttp(Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 765
    nop

    .line 755
    .end local v0    # "$this$sslSocketFactory_u24lambda_u2d18":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 765
    return-object v0

    .line 761
    .restart local v0    # "$this$sslSocketFactory_u24lambda_u2d18":Lokhttp3/OkHttpClient$Builder;
    .restart local v1    # "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$1":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to extract the trust manager on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v4}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sslSocketFactory is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 763
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 762
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 761
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trustManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$sslSocketFactory_u24lambda_u2d19":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 816
    .local v1, "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$2":I
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getSslSocketFactoryOrNull$okhttp()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->getX509TrustManagerOrNull$okhttp()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 817
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setRouteDatabase$okhttp(Lokhttp3/internal/connection/RouteDatabase;)V

    .line 820
    :cond_1
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->setSslSocketFactoryOrNull$okhttp(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 821
    sget-object v2, Lokhttp3/internal/tls/CertificateChainCleaner;->Companion:Lokhttp3/internal/tls/CertificateChainCleaner$Companion;

    invoke-virtual {v2, p2}, Lokhttp3/internal/tls/CertificateChainCleaner$Companion;->get(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setCertificateChainCleaner$okhttp(Lokhttp3/internal/tls/CertificateChainCleaner;)V

    .line 822
    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient$Builder;->setX509TrustManagerOrNull$okhttp(Ljavax/net/ssl/X509TrustManager;)V

    .line 823
    nop

    .line 815
    .end local v0    # "$this$sslSocketFactory_u24lambda_u2d19":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$sslSocketFactory$2":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 823
    return-object v0
.end method

.method public final writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    const-string v0, "unit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$writeTimeout_u24lambda_u2d34":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 1012
    .local v1, "$i$a$-apply-OkHttpClient$Builder$writeTimeout$1":I
    const-string v2, "timeout"

    invoke-static {v2, p1, p2, p3}, Lokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->setWriteTimeout$okhttp(I)V

    .line 1013
    nop

    .line 1011
    .end local v0    # "$this$writeTimeout_u24lambda_u2d34":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$writeTimeout$1":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 1013
    return-object v0
.end method

.method public final writeTimeout(Lj$/time/Duration;)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p1, "duration"    # Lj$/time/Duration;

    const-string v0, "duration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .local v0, "$this$writeTimeout_u24lambda_u2d35":Lokhttp3/OkHttpClient$Builder;
    const/4 v1, 0x0

    .line 1026
    .local v1, "$i$a$-apply-OkHttpClient$Builder$writeTimeout$2":I
    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 1027
    nop

    .line 1025
    .end local v0    # "$this$writeTimeout_u24lambda_u2d35":Lokhttp3/OkHttpClient$Builder;
    .end local v1    # "$i$a$-apply-OkHttpClient$Builder$writeTimeout$2":I
    move-object v0, p0

    check-cast v0, Lokhttp3/OkHttpClient$Builder;

    .line 1027
    return-object v0
.end method
