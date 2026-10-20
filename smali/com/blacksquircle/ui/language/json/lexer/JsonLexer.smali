.class public Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;
.super Ljava/lang/Object;
.source "JsonLexer.java"


# static fields
.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0001\u0001\u0007\u0002\u0001\u0001\u0002\u0002\u0001\u0001\u0008\u0001\u0001\u0002\u0002\u0001\t\u0001\n\u0003\u0002\u0001\u000b\u0001\u000c\u0001\u0003\u0001\u0005\u0001\u0000\u0001\u0006\u0001\u0000\u0004\u0001\u0002\u0000\u0001\r\u0001\u000e\u0001\u0002\u0002\u0001\u0005\u0002\u0002\u0005\u0002\u0006\u0003\u0000\u0001\r\u0001\u0002\u0001\u000e\u0001\u0001\u0001\u0002\u0001\u0001\u0003\u0002\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\r\u0002\u0002\u0001\u000f\u0001\u0010\u0001\u0000\u0001\r\u0001\u0002\u0001\u0011\u0001\u0000\u0001\u0002\u0001\u0000\u0001\u0002\u0001\u0000"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0003\u0001\u0001\t\u0003\u0001\u0001\t\u0005\u0001\u0001\t\u0003\u0001\u0002\t\u0003\u0001\u0002\t\u0001\u0001\u0001\t\u0001\u0000\u0001\t\u0001\u0000\u0004\u0001\u0002\u0000\u000e\u0001\u0003\u0000\n\u0001\u0001\u0000\u0001\t\u0001\u0000\u0005\u0001\u0001\u0000\u0001\t\u0002\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP_BLOCKS:[I

.field private static final ZZ_CMAP_BLOCKS_PACKED_0:Ljava/lang/String; = "\t\u0000\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001\u0005\u000e\u0000\u0004\u0006\u0001\u0001\u0001\u0000\u0001\u0007\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0008\u0002\u0000\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\u000f\t\u0010\u0001\u0011\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0004\u0012\u0001\u0013\u0001\u0012\u0002\u0000\u0001\u0014\u0004\u0000\u0001\u0015\t\u0000\u0001\u0016\u0002\u0000\u0001\u0017\u0001\u0018\u0001\u0019\u0002\u0000\u0001\u0006\u0001\u001a\u0003\u0012\u0001\u001b\u0001\u001c\u0002\u0000\u0001\u001d\u0002\u0000\u0001\u001e\u0001\u0000\u0001\u001f\u0003\u0000\u0001 \u0001!\u0001\"\u0001#\u0002\u0000\u0001\u0016\u0001$\u0001\u0000\u0001%\u0001\u0006\u0001&\u0007\u0000\u0001\'\u001a\u0000\u0001(\u0001\u0006\u0004\u0000\u0004\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0007\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u0005\u0006\u0017\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u01ca\u0000\u0004\u0006\u000c\u0000\u000e\u0006\u0005\u0000\u0007\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0011\u0006u\u0000\u0001\u0006\u0002\u0000\u0002\u0006\u0004\u0000\u0008\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0014\u0000\u0001\u0006S\u0000\u0001\u0006\u008b\u0000\u0001\u0006\u0005\u0000\u0002\u0006\u009e\u0000\t\u0006&\u0000\u0002\u0006\u0001\u0000\u0007\u0006\'\u0000\u0007\u0006\u0001\u0000\u0001\u0006-\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0008\u0006\u001b\u0000\u0005\u0006\u0003\u0000\r\u0006\u0005\u0000\u0006\u0006\u0001\u0000\u0004\u0006\u000b\u0000\u0005\u0006J\u0000\u0004\u0006f\u0000\u0001\u0006\t\u0000\u0001\u0006\n\u0000\u0001\u0006\u0013\u0000\u0002\u0006\u0001\u0000\u000f\u0006<\u0000\u0002\u0006e\u0000\u000e\u00066\u0000\u0004\u0006\u0001\u0000\u0005\u0006.\u0000\u0012\u0006\u001c\u0000D\u0006\u0001\u0000\u0001\u0006\u000b\u00007\u0006\u001b\u0000\u0001\u0006d\u0000\u0002\u0006\n\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0008\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0004\u0000\u0002\u0006\t\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0004\u0000\u0008\u0006\u0001\u0000\u0004\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\u000e\u0000\u0007\u0006\u0001\u0000\u0005\u0006\u0003\u0000\u0001\u0006\u0006\u0000\u0004\u0006\u0002\u0000\u0002\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0002\u0006\u0001\u0000\u0001\u0006\u0005\u0000\u0004\u0006\u0002\u0000\u0002\u0006\u0003\u0000\u0003\u0006\u0001\u0000\u0007\u0006\u0004\u0000\u0001\u0006\u0001\u0000\u0007\u0006\u0010\u0000\u000b\u0006\u0003\u0000\u0001\u0006\t\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\n\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0003\u0000\u0002\u0006\u0001\u0000\u000f\u0006\u0004\u0000\u0002\u0006\n\u0000\u0001\u0006\u0001\u0000\u000f\u0006\u0003\u0000\u0001\u0006\u0008\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\t\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0003\u0000\u0008\u0006\u0002\u0000\u0004\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\n\u0000\u0001\u0006\u0001\u0000\u0010\u0006\u0002\u0000\u0001\u0006\u0006\u0000\u0003\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0003\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0003\u0006\u0002\u0000\u0003\u0006\u0003\u0000\u0003\u0006\u000c\u0000\u0004\u0006\u0005\u0000\u0003\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0001\u0000\u0006\u0006\u0001\u0000\u000e\u0006\n\u0000\t\u0006\u0001\u0000\u0007\u0006\u0003\u0000\u0001\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0017\u0000\u0001\u0006\n\u0000\u0001\u0006\u0005\u0000\u0003\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0007\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0006\u0006\u0004\u0000\u0002\u0006\n\u0000\u0012\u0006\u0002\u0000\u0001\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0017\u0000\u0001\u0006\n\u0000\u0001\u0006\u0005\u0000\u0002\u0006\t\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0007\u0006\u0002\u0000\u0007\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0006\n\u0000\u0001\u0006\u0002\u0000\u000f\u0006\u0002\u0000\u0001\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006)\u0000\u0002\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0005\u0000\u0008\u0006\u0001\u0000\u0008\u0006\u0004\u0000\u0002\u0006\n\u0000\n\u0006\u0006\u0000\u0002\u0006\u0002\u0000\u0001\u0006\u0012\u0000\u0003\u0006\u0018\u0000\u0001\u0006\t\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0007\u0000\u0003\u0006\u0001\u0000\u0004\u0006\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0008\u0000\u0012\u0006\u0002\u0000\r\u0006:\u0000\u0004\u0006\u0010\u0000\u0001\u0006\n\u0000\'\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0006\u0006\u0004\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0002\u0000\u0001\u0006\r\u0000\u0001\u0006\u0003\u0000\u0002\u0006\u0005\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0002\u0006\n\u0000\u0002\u0006\u0004\u0000 \u0006\u0001\u0000\u0017\u0006\u0002\u0000\u0006\u0006\n\u0000\u000b\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0004\u0006\n\u0000\u0001\u0006$\u0000\u0004\u0006\u0014\u0000\u0001\u0006\u0012\u0000\u0001\u0006$\u0000\t\u0006\u0001\u00009\u0006J\u0000\u0006\u0006N\u0000\u0002\u0006&\u0000\u0001\u0006\u0001\u0000\u0005\u0006\u0001\u0000\u0002\u0006+\u0000\u0001\u0006M\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0006)\u0000\u0001\u0006\u0004\u0000\u0002\u0006!\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u000f\u0000\u0001\u00069\u0000\u0001\u0006\u0004\u0000\u0002\u0006C\u0000\u0002\u0006\u0003\u0000 \u0006\u0010\u0000\u0010\u0006U\u0000\u000c\u0006\u016c\u0000\u0002\u0006\u0011\u0000\u0001(\u001a\u0000\u0005\u0006K\u0000\u0003\u0006\u0003\u0000\u000f\u0006\r\u0000\u0001\u0006\u0007\u0000\u000b\u0006\u0015\u0000\u000b\u0006\u0014\u0000\u000c\u0006\r\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0002\u0000\u000c\u0006T\u0000\u0003\u0006\u0001\u0000\u0003\u0006\u0003\u0000\u0002\u0006\n\u0000!\u0006\u0003\u0000\u0002\u0006\n\u0000\u0006\u0006X\u0000\u0008\u0006+\u0000\u0005\u0006F\u0000\n\u0006\u001d\u0000\u0003\u0006\u000c\u0000\u0004\u0006\u000c\u0000\n\u0006(\u0000\u0002\u0006\u0005\u0000\u000b\u0006,\u0000\u0004\u0006\u001a\u0000\u0006\u0006\n\u0000&\u0006\u001c\u0000\u0004\u0006?\u0000\u0001\u0006\u001d\u0000\u0002\u0006\u000b\u0000\u0006\u0006\n\u0000\r\u0006\u0001\u0000X\u0006L\u0000\u0004\u0006\n\u0000\u0011\u0006\t\u0000\u000c\u0006t\u0000\u000c\u00068\u0000\u0008\u0006\n\u0000\u0003\u00061\u0000R\u0006\u0003\u0000\u0001\u0006#\u0000\t\u0006\u00e7\u0000\u0015\u0006\u001a\u0000\u0002\u0006\u0006\u0000\u0002\u0006&\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0008\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u001f\u0000\u0002\u00065\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0003\u0000\u0001\u0006\u0007\u0000\u0003\u0006\u0004\u0000\u0002\u0006\u0006\u0000\u0004\u0006\r\u0000\u0005\u0006\u0003\u0000\u0001\u0006\u0007\u0000\u0003\u0006\u000b(\u0005\u0000\u0018\u0006\u0002\u0003\u0005\u0000\u0001(\u000f\u0006\u0002\u0000\u0013\u0006\u0001\u0000\n\u0006\u0001(\u0005\u0000\u0005\u0006\u0006\u0000\u0001\u0006\u0001\u0000\r\u0006\u0001\u0000\u0010\u0006\r\u0000\u0003\u0006\u001b\u0000\u0015\u0006\r\u0000\u0004\u0006\u0001\u0000\u0003\u0006\u000c\u0000\u0011\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u0002\u0006\n\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0005\u0000\u0006\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u000b\u0000\u0002\u0006\u0004\u0000\u0005\u0006\u0005\u0000\u0004\u0006\u0001\u0000\u0011\u0006)\u0000\u0177\u0006/\u0000\u0001\u0006/\u0000\u0001\u0006\u0085\u0000\u0006\u0006\t\u0000\u000c\u0006&\u0000\u0001\u0006\u0001\u0000\u0005\u0006\u0001\u0000\u0002\u00068\u0000\u0007\u0006\u0001\u0000\u000f\u0006\u0018\u0000\t\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006 \u0000/\u0006\u0001\u0000\u00d0\u0006\u0001(\u0004\u0006\u0003\u0000\u0019\u0006\u000f\u0000\u0001\u0006\u0005\u0000\u0002\u0006\u0005\u0000\u0004\u0006V\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0003\u0000\u0001\u0006Z\u0000\u0001\u0006\u0004\u0000\u0005\u0006)\u0000\u0003\u0006^\u0000\u0011\u0006\u001b\u00005\u0006\u00c6\u0000J\u0006\u00cd\u00003\u0006\u008d\u0000C\u0006.\u0000\u0002\u0006\r\u0000\u0003\u0006\u001c\u0000\u0014\u00060\u0000\u0004\u0006\n\u0000\u0001\u0006\u0019\u0000\u0007\u0006S\u0000%\u0006\t\u0000\u0002\u0006g\u0000\u0002\u0006\u0004\u0000\u0001\u0006\u0004\u0000\u000c\u0006\u000b\u0000M\u00060\u0000\u0010\u0006\u0001\u0000\u0007\u00064\u0000\u000c\u0006E\u0000\u000b\u0006\n\u0000\u0006\u0006\u0018\u0000\u0003\u0006\u0001\u0000\u0004\u0006.\u0000\u0002\u0006$\u0000\u000c\u0006\u001d\u0000\u0003\u0006A\u0000\u000e\u0006\u000b\u0000&\u00067\u0000\t\u0006\u000e\u0000\u0002\u0006\n\u0000\u0006\u0006\u0017\u0000\u0003\u0006\u0002\u0000\u0004\u0006C\u0000\u0018\u0006\u0003\u0000\u0002\u0006\u0010\u0000\u0002\u0006\u0005\u0000\n\u0006\u0006\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0006\u0000\t\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0091\u0006+\u0000\u0001\u0006\u0002\u0000\u0002\u0006\n\u0000\u0006\u0006\u00a4\u0000\u000c\u0006\u0017\u0000\u0004\u00061\u0000\u0004\u0006\u0100)n\u0000\u0002\u0006j\u0000&\u0006\u0007\u0000\u000c\u0006\u0005\u0000\u0005\u0006\u000c\u0000\u0001\u0006\r\u0000\u0001\u0006\u0005\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0001\u0006l\u0000!\u0006k\u0000\u0012\u0006@\u0000\u0002\u00066\u0000(\u0006\r\u0000\u0003\u0006\u0010\u0000\u0010\u0006\u0007\u0000\u000c\u0006\u0002\u0000\u0018\u0006\u0003\u0000\u0019\u0006\u0001\u0000\u0006\u0006\u0005\u0000\u0001\u0006\u0087\u0000\u0002\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u000b\u0006\n\u0000\u0007\u0006\u001a\u0000\u0004\u0006\u0001\u0000\u0001\u0006\u001a\u0000\u000b\u0006Y\u0000\u0003\u0006\u0006\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0003\u0000\u0003\u0006\u0002\u0000\u0003\u0006\u0002\u0000\u0012\u0006\u0003\u0000\u0004\u0006\u000c\u0000\u0001\u0006\u001a\u0000\u0001\u0006\u0013\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u000f\u0000\u0002\u0006\u000e\u0000\"\u0006{\u0000E\u00065\u0000\u0088\u0006\u0001\u0000\u0082\u0006\u001d\u0000\u0003\u00061\u0000/\u0006\u001f\u0000\u0011\u0006\u001b\u00005\u0006\u001e\u0000\u0002\u0006$\u0000\u0004\u0006\u0008\u0000\u0001\u0006\u0005\u0000*\u0006\u009e\u0000\u0002\u0006\n\u0000V\u0006\u0006\u0000\u0002\u0006\u0001\u0000\u0001\u0006,\u0000\u0001\u0006\u0002\u0000\u0003\u0006\u0001\u0000\u0002\u0006\u0017\u0000\u00aa\u0006\u0016\u0000\n\u0006\u001a\u0000F\u00068\u0000\u0006\u0006\u0002\u0000@\u0006\u0004\u0000\u0001\u0006\u0002\u0000\u0005\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u001b\u0000\u0004\u0006\u0003\u0000\u0004\u0006\u0001\u0000 \u0006\u001d\u0000\u0083\u00066\u0000\n\u0006\u0016\u0000\n\u0006\u0013\u0000\u008d\u0006I\u0000\u00b7\u0006G\u0000\u001f\u0006\n\u0000\u0010\u0006;\u0000\u0002\u0006\u0001\u0000\u0012\u0006\u0019\u0000\u0007\u0006\n\u0000\u0006\u00065\u0000\u0001\u0006\n\u0000@\u0006E\u0000\u000b\u0006\n\u0000\u00a6\u00068\u0000\u0008\u0006\n\u00006\u0006o\u0000\u0091\u0006c\u0000\u009d\u0006/\u0000\u00d1\u00069\u0000\u00c7\u0006E\u0000\u000b\u0006/\u0000\u0010\u0006\u0011\u0000`\u0006\u0002\u0000\u0163\u0006\u0005\u0000\u0003\u0006\u0016\u0000\u0002\u0006\u0007\u0000\u001e\u0006\u0004\u0000\u0094\u0006\u0003\u0000\u00bb\u0006U\u0000\u0001\u0006G\u0000\u0001\u0006\u0002\u0000\u0002\u0006\u0001\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0004\u0000\u0001\u0006\u000c\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0007\u0000\u0001\u0006A\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0008\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u001c\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0005\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0007\u0000\u0001\u0006\u0154\u0000\u0002\u0006\u0019\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u0008\u0000\u0002\u00066\u0000\u0001\u0006\u001b\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0001\u0006\n\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0006\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0004\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0001\u0000\u0001\u0006\n\u0000\u0001\u0006\u0011\u0000\u0005\u0006\u0003\u0000\u0001\u0006\u0005\u0000\u0001\u0006\u0011\u0000D\u0006\u00d7\u0000)\u00065\u0000\u000b\u0006\u00de\u0000\u00e3\u0006\u0001\u0000\u001e\u0006`\u0000\u0080\u0006\u00f0\u0000\u0010\u0006"

.field private static final ZZ_CMAP_TOP:[I

.field private static final ZZ_CMAP_TOP_PACKED_0:Ljava/lang/String; = "\u0001\u0000\u0001\u0100\u0001\u0200\u0001\u0300\u0001\u0400\u0001\u0500\u0001\u0600\u0001\u0700\u0001\u0800\u0001\u0900\u0001\u0a00\u0001\u0b00\u0001\u0c00\u0001\u0d00\u0001\u0e00\u0001\u0f00\u0001\u1000\u0001\u0100\u0001\u1100\u0001\u1200\u0001\u1300\u0001\u0100\u0001\u1400\u0001\u1500\u0001\u1600\u0001\u1700\u0001\u1800\u0001\u1900\u0001\u1a00\u0001\u1b00\u0001\u0100\u0001\u1c00\u0001\u1d00\u0001\u1e00\n\u1f00\u0001\u2000\u0001\u2100\u0001\u2200\u0001\u1f00\u0001\u2300\u0001\u2400\u0002\u1f00\u0019\u0100\u0001\u2500Q\u0100\u0001\u2600\u0004\u0100\u0001\u2700\u0001\u0100\u0001\u2800\u0001\u2900\u0001\u2a00\u0001\u2b00\u0001\u2c00\u0001\u2d00+\u0100\u0001\u2e00\u0008\u2f00\u0019\u1f00\u0001\u0100\u0001\u3000\u0001\u3100\u0001\u0100\u0001\u3200\u0001\u3300\u0001\u3400\u0001\u3500\u0001\u3600\u0001\u3700\u0001\u3800\u0001\u3900\u0003\u1f00\u0001\u3a00\u0001\u3b00\u0001\u3c00\u0001\u3d00\u0001\u3e00\u0003\u1f00\u0001\u3f00\u0001\u4000\u0004\u1f00\u0001\u4100\t\u1f00\u0003\u0100\u0001\u4200\u0001\u4300\u000b\u1f00\u0004\u0100\u0001\u44003\u1f00\u0002\u0100\u0001\u4500\u0004\u1f00\u0001\u4600@\u1f00\u0001\u4700 \u1f00\u0001\u4800\u0001\u4900\u0001\u1f00\u0001\u4a00\u0001\u4b00\u0001\u4c00\u0001\u4d00\u0016\u1f00\u0001\u4e00\u0011\u1f00\u00a6\u0100\u0001\u4f00\u0010\u0100\u0001\u5000\u0001\u5100?\u1f00\u0002\u0100\u0001\u5100\u0b05\u1f00\u0001\u5200\u0001\u5300\u02fe\u1f00"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000*\u0000T\u0000~\u0000\u00a8\u0000\u00d2\u0000\u00fc\u0000~\u0000\u0126\u0000\u0150\u0000\u017a\u0000\u01a4\u0000\u01ce\u0000~\u0000\u01f8\u0000\u0222\u0000\u024c\u0000~\u0000~\u0000\u0276\u0000\u02a0\u0000\u02ca\u0000~\u0000~\u0000\u02f4\u0000~\u0000\u031e\u0000~\u0000\u0348\u0000\u0372\u0000\u039c\u0000\u03c6\u0000\u03f0\u0000\u041a\u0000\u0444\u0000\u046e\u0000\u0498\u0000\u04c2\u0000\u04ec\u0000\u0516\u0000\u0540\u0000\u056a\u0000\u0594\u0000\u05be\u0000\u05e8\u0000\u0612\u0000\u063c\u0000\u0666\u0000\u0690\u0000\u06ba\u0000\u06e4\u0000\u070e\u0000\u0738\u0000\u0762\u0000\u078c\u0000\u04c2\u0000\u07b6\u0000*\u0000\u07e0\u0000\u080a\u0000\u0834\u0000\u06ba\u0000\u085e\u0000~\u0000\u0888\u0000*\u0000\u08b2\u0000\u08dc\u0000*\u0000*\u0000\u0906\u0000~\u0000\u0930\u0000*\u0000\u095a\u0000\u0984\u0000\u09ae\u0000\u09d8\u0000\u0a02"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_TRANS_PACKED_0:Ljava/lang/String; = "\u0001\u0002\u0005\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0002\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\u0002\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0002\u0001\u0012\u0001\u0004\u0001\u0013\u0001\u0002\u0001\u000f\u0001\u0014\u0002\u0002\u0001\u0015\u0002\u0002\u0001\u0016\u0002\u0002\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u0003\u0001\u0004\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0003\u0000\u0005\u0003!\u0000\u0002\u0003+\u0000\u0002\u0005\u0001\u0000\u0002\u0005\u0001\u0000\u0001\u0005\u0001\u001a\u0010\u0005\u0001\u001b\u0011\u0005\u0002\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0002\u0006\u0001\u001c\u000f\u0006\u0001\u001d\u0011\u0006\r\u0000\u0001\u001e\u0001\u0000\u0001\u001f\u0001 \u0002\u0000\u0001!\u0001\"\u0001#\u0005\u0000\u0001!\u000e\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0001\n\u0001\u0002\u0001\u000c\u0001\r\u0001\u0000\u0001\u0002\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0002\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0003\u0002\u0002\n\u0001\u0000\u0001\u0002\u0001\u000f\u0003\u0002\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001$\u0002\u0000\u0002\u0002\u0001%\u0002\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0001\n\u0001\u0002\u0002\n\u0001\u0000\u0001\u0002\u0001\u000f\u0002\u0002\u0001&\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0001\n\u0001\u0002\u0002\r\u0001\u0000\u0001\u0002\u0001\u000f\u0003\u0002\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0001\'\u0001\u0000\u0001(\u0002\u0002\u0002(\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0005\u0002\u0001)\u0005\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001*\n\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001+\n\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\t\u0002\u0001,\u0001\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0006\u0002\u0001-\u0004\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0005\u0003\u0003\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0019\u0001\u0003\u0001\u0000\u0001\u0005\u0001.\u0002\u0005\u0001.\u0001/$\u0005\u0001\u0006\u00010\u0002\u0006\u00010\u00011$\u0006\u000f\u0000\u0002\u001e\u0002\u0000\u0001!\u0007\u0000\u0001!\u001b\u0000\u0001\u001e\u0001\u0000\u0002\u001e\u0002\u0000\u0001!\u0002\u0000\u00012\u0004\u0000\u0001!\u001b\u0000\u0001\u001e\u0001\u0000\u0002 \u0002\u0000\u0001!\u0007\u0000\u0001!\u0018\u0000\u0001\'\u0001\u0000\u0001\'\u0002\u0000\u0002\'8\u0000\u00013$\u0000\u00014\u000f\u0000\u0001$\u00085\u00016\u00025\u0005$\u00015\u0005$\u00035\u000b$\u00025\u0001$\u00025\u0001%\u00017\u0004\u0000\u00037\u0001%\u00027\u0005%\u00017\u0005%\u00037\u000b%\u00027\u0001\u0002\u00017\u0001\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0003\u0002\u00028\u0001\u0000\u00028\u0003\u0002\u0003\u0000\u00038\u0008\u0002\u0002\u0000\u0001\u0002\u0011\u0000\u0002\'\u0019\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0003\u0002\u0002(\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0002\u0002\u00019\u0008\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0003\u0002\u0001:\u0001\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0004\u0002\u0001;\u0006\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0004\u0002\u0001<\u0006\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\t\u0002\u0001=\u0001\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0005\u0001.\u0002\u0005\u0001.\u0001/\u0001\u0005\u0001\u001a\u0010\u0005\u0001\u001b\u0016\u0005\u0001\u0000\u0001\u0005\u0001\u001a\u0010\u0005\u0001\u001b\u0011\u0005\u0001\u0006\u00010\u0002\u0006\u00010\u00011\u0002\u0006\u0001\u001c\u000f\u0006\u0001\u001d\u0016\u0006\u0001\u0000\u0002\u0006\u0001\u001c\u000f\u0006\u0001\u001d\u0011\u0006\u000f\u0000\u0002>\u0001\u0000\u0002>\u0006\u0000\u0003>)\u0000\u0001?\"\u0000\u0001@\u0014\u0000\t5\u0001A 5\u0001$\u00085\u00016\u00025\u0002$\u0001B\u0002$\u00015\u0005$\u00035\u000b$\u00025\u0001$\u00025\u00027\u0004\u0000!7\u0001\u0000\u00017\u0001\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0003\u0002\u0001C\u0007\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0007\u0002\u0001D\u0003\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0004\u0002\u0001E\u0006\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001\u0002\u0001F\t\u0002\u0002\u0000\u0001\u0002\u001f\u0000\u0001G\u000c\u0000\t5\u0001A\u00045\u0001H\u001b5\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0005\u0002\u0001I\u0005\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001\u0002\u0001J\t\u0002\u0002\u0000\u0001\u0002!\u0000\u0001K\n\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0003\u0002\u0001L\u0007\u0002\u0002\u0000\u0001\u0002\u001f\u0000\u0001M\u000c\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0008\u0002\u0001N\u0002\u0002\u0002\u0000\u0001\u0002$\u0000\u0001O\u0007\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\n\u0002\u0001:\u0002\u0000\u0001\u0002&\u0000\u0001@\u0005\u0000"

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private yychar:J

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEOFDone:Z

.field private zzEndRead:I

.field private zzFinalHighSurrogate:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_LEXSTATE:[I

    .line 52
    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackcmap_top()[I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_CMAP_TOP:[I

    .line 94
    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackcmap_blocks()[I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_CMAP_BLOCKS:[I

    .line 275
    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ACTION:[I

    .line 310
    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ROWMAP:[I

    .line 345
    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackTrans()[I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_TRANS:[I

    .line 463
    const-string v0, "Error: could not match input"

    const-string v1, "Error: pushback value was too large"

    const-string v2, "Unknown internal scanner error"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 472
    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ATTRIBUTE:[I

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzLexicalState:I

    .line 512
    const/16 v1, 0x4000

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    .line 538
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtBOL:Z

    .line 573
    iput-object p1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzReader:Ljava/io/Reader;

    .line 574
    return-void
.end method

.method private final yyResetPosition()V
    .locals 2

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtBOL:Z

    .line 692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtEOF:Z

    .line 693
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    .line 694
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 695
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    .line 696
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 697
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    .line 698
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    .line 699
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yycolumn:I

    .line 700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yychar:J

    .line 701
    return-void
.end method

.method private static zzCMap(I)I
    .locals 4
    .param p0, "input"    # I

    .line 580
    and-int/lit16 v0, p0, 0xff

    .line 581
    .local v0, "offset":I
    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_CMAP_BLOCKS:[I

    if-ne v0, p0, :cond_0

    aget v1, v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_CMAP_TOP:[I

    shr-int/lit8 v3, p0, 0x8

    aget v2, v2, v3

    or-int/2addr v2, v0

    aget v1, v1, v2

    :goto_0
    return v1
.end method

.method private zzRefill()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 593
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 594
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 595
    iput v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    .line 596
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    iget-object v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    iget v5, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 602
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    .line 603
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 604
    iput v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    .line 608
    :cond_0
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    iget-object v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    array-length v2, v2

    iget v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    .line 610
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 611
    .local v0, "newBuffer":[C
    iget-object v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget-object v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    iput-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    .line 613
    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    iget v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 614
    iput v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    .line 618
    .end local v0    # "newBuffer":[C
    :cond_1
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    array-length v0, v0

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    sub-int/2addr v0, v2

    .line 619
    .local v0, "requested":I
    iget-object v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzReader:Ljava/io/Reader;

    iget-object v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 622
    .local v2, "numRead":I
    if-eqz v2, :cond_6

    .line 626
    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 627
    iget v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 628
    iget-object v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v5, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    sub-int/2addr v5, v3

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 629
    if-ne v2, v0, :cond_2

    .line 630
    iget v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 631
    iput v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzFinalHighSurrogate:I

    goto :goto_0

    .line 633
    :cond_2
    iget-object v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/io/Reader;->read()I

    move-result v4

    .line 634
    .local v4, "c":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 635
    return v3

    .line 637
    :cond_3
    iget-object v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v5, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    int-to-char v6, v4

    aput-char v6, v3, v5

    .line 642
    .end local v4    # "c":I
    :cond_4
    :goto_0
    return v1

    .line 646
    :cond_5
    return v3

    .line 623
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Reader returned 0 characters. See JFlex examples/zero-reader for a workaround."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzScanError(I)V
    .locals 3
    .param p0, "errorCode"    # I

    .line 785
    :try_start_0
    sget-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 786
    .end local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    .line 790
    .local v0, "message":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "i":I
    move v1, p1

    .line 297
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 298
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 299
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 300
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 301
    .local v3, "value":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 302
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 301
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 303
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackAction()[I
    .locals 3

    .line 288
    const/16 v0, 0x4f

    new-array v0, v0, [I

    .line 289
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 290
    .local v1, "offset":I
    const-string v2, "\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0001\u0001\u0007\u0002\u0001\u0001\u0002\u0002\u0001\u0001\u0008\u0001\u0001\u0002\u0002\u0001\t\u0001\n\u0003\u0002\u0001\u000b\u0001\u000c\u0001\u0003\u0001\u0005\u0001\u0000\u0001\u0006\u0001\u0000\u0004\u0001\u0002\u0000\u0001\r\u0001\u000e\u0001\u0002\u0002\u0001\u0005\u0002\u0002\u0005\u0002\u0006\u0003\u0000\u0001\r\u0001\u0002\u0001\u000e\u0001\u0001\u0001\u0002\u0001\u0001\u0003\u0002\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\r\u0002\u0002\u0001\u000f\u0001\u0010\u0001\u0000\u0001\r\u0001\u0002\u0001\u0011\u0001\u0000\u0001\u0002\u0001\u0000\u0001\u0002\u0001\u0000"

    invoke-static {v2, v1, v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v1

    .line 291
    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "i":I
    move v1, p1

    .line 490
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 491
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 492
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 493
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 494
    .local v3, "value":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 495
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 494
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 496
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackAttribute()[I
    .locals 3

    .line 481
    const/16 v0, 0x4f

    new-array v0, v0, [I

    .line 482
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 483
    .local v1, "offset":I
    const-string v2, "\u0003\u0001\u0001\t\u0003\u0001\u0001\t\u0005\u0001\u0001\t\u0003\u0001\u0002\t\u0003\u0001\u0002\t\u0001\u0001\u0001\t\u0001\u0000\u0001\t\u0001\u0000\u0004\u0001\u0002\u0000\u000e\u0001\u0003\u0000\n\u0001\u0001\u0000\u0001\t\u0001\u0000\u0005\u0001\u0001\u0000\u0001\t\u0002\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000"

    invoke-static {v2, v1, v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v1

    .line 484
    return-object v0
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "i":I
    move v1, p1

    .line 334
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 335
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 336
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 337
    .local v0, "high":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v3, v0

    aput v3, p2, v1

    .line 338
    .end local v0    # "high":I
    move v1, v4

    move v0, v5

    goto :goto_0

    .line 339
    .end local v4    # "j":I
    .end local v5    # "i":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_0
    return v1
.end method

.method private static zzUnpackRowMap()[I
    .locals 3

    .line 325
    const/16 v0, 0x4f

    new-array v0, v0, [I

    .line 326
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 327
    .local v1, "offset":I
    const-string v2, "\u0000\u0000\u0000*\u0000T\u0000~\u0000\u00a8\u0000\u00d2\u0000\u00fc\u0000~\u0000\u0126\u0000\u0150\u0000\u017a\u0000\u01a4\u0000\u01ce\u0000~\u0000\u01f8\u0000\u0222\u0000\u024c\u0000~\u0000~\u0000\u0276\u0000\u02a0\u0000\u02ca\u0000~\u0000~\u0000\u02f4\u0000~\u0000\u031e\u0000~\u0000\u0348\u0000\u0372\u0000\u039c\u0000\u03c6\u0000\u03f0\u0000\u041a\u0000\u0444\u0000\u046e\u0000\u0498\u0000\u04c2\u0000\u04ec\u0000\u0516\u0000\u0540\u0000\u056a\u0000\u0594\u0000\u05be\u0000\u05e8\u0000\u0612\u0000\u063c\u0000\u0666\u0000\u0690\u0000\u06ba\u0000\u06e4\u0000\u070e\u0000\u0738\u0000\u0762\u0000\u078c\u0000\u04c2\u0000\u07b6\u0000*\u0000\u07e0\u0000\u080a\u0000\u0834\u0000\u06ba\u0000\u085e\u0000~\u0000\u0888\u0000*\u0000\u08b2\u0000\u08dc\u0000*\u0000*\u0000\u0906\u0000~\u0000\u0930\u0000*\u0000\u095a\u0000\u0984\u0000\u09ae\u0000\u09d8\u0000\u0a02"

    invoke-static {v2, v1, v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v1

    .line 328
    return-object v0
.end method

.method private static zzUnpackTrans(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 439
    const/4 v0, 0x0

    .line 440
    .local v0, "i":I
    move v1, p1

    .line 441
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 442
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 443
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 444
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 445
    .local v3, "value":I
    add-int/lit8 v3, v3, -0x1

    .line 446
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 447
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 446
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 448
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackTrans()[I
    .locals 3

    .line 432
    const/16 v0, 0xa2c

    new-array v0, v0, [I

    .line 433
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 434
    .local v1, "offset":I
    const-string v2, "\u0001\u0002\u0005\u0003\u0001\u0004\u0001\u0005\u0001\u0006\u0001\u0002\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\u0002\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0002\u0001\u0012\u0001\u0004\u0001\u0013\u0001\u0002\u0001\u000f\u0001\u0014\u0002\u0002\u0001\u0015\u0002\u0002\u0001\u0016\u0002\u0002\u0001\u0017\u0001\u0018\u0001\u0019\u0001\u0003\u0001\u0004\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0003\u0000\u0005\u0003!\u0000\u0002\u0003+\u0000\u0002\u0005\u0001\u0000\u0002\u0005\u0001\u0000\u0001\u0005\u0001\u001a\u0010\u0005\u0001\u001b\u0011\u0005\u0002\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0002\u0006\u0001\u001c\u000f\u0006\u0001\u001d\u0011\u0006\r\u0000\u0001\u001e\u0001\u0000\u0001\u001f\u0001 \u0002\u0000\u0001!\u0001\"\u0001#\u0005\u0000\u0001!\u000e\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0001\n\u0001\u0002\u0001\u000c\u0001\r\u0001\u0000\u0001\u0002\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0002\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0003\u0002\u0002\n\u0001\u0000\u0001\u0002\u0001\u000f\u0003\u0002\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001$\u0002\u0000\u0002\u0002\u0001%\u0002\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0001\n\u0001\u0002\u0002\n\u0001\u0000\u0001\u0002\u0001\u000f\u0002\u0002\u0001&\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0001\n\u0001\u0002\u0002\r\u0001\u0000\u0001\u0002\u0001\u000f\u0003\u0002\u0003\u0000\u0001\u0002\u0001\u000f\t\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0001\'\u0001\u0000\u0001(\u0002\u0002\u0002(\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0005\u0002\u0001)\u0005\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001*\n\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001+\n\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\t\u0002\u0001,\u0001\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0006\u0002\u0001-\u0004\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0005\u0003\u0003\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0019\u0001\u0003\u0001\u0000\u0001\u0005\u0001.\u0002\u0005\u0001.\u0001/$\u0005\u0001\u0006\u00010\u0002\u0006\u00010\u00011$\u0006\u000f\u0000\u0002\u001e\u0002\u0000\u0001!\u0007\u0000\u0001!\u001b\u0000\u0001\u001e\u0001\u0000\u0002\u001e\u0002\u0000\u0001!\u0002\u0000\u00012\u0004\u0000\u0001!\u001b\u0000\u0001\u001e\u0001\u0000\u0002 \u0002\u0000\u0001!\u0007\u0000\u0001!\u0018\u0000\u0001\'\u0001\u0000\u0001\'\u0002\u0000\u0002\'8\u0000\u00013$\u0000\u00014\u000f\u0000\u0001$\u00085\u00016\u00025\u0005$\u00015\u0005$\u00035\u000b$\u00025\u0001$\u00025\u0001%\u00017\u0004\u0000\u00037\u0001%\u00027\u0005%\u00017\u0005%\u00037\u000b%\u00027\u0001\u0002\u00017\u0001\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0003\u0002\u00028\u0001\u0000\u00028\u0003\u0002\u0003\u0000\u00038\u0008\u0002\u0002\u0000\u0001\u0002\u0011\u0000\u0002\'\u0019\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0003\u0002\u0002(\u0001\u0000\u0005\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0002\u0002\u00019\u0008\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0003\u0002\u0001:\u0001\u0002\u0003\u0000\u000b\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0004\u0002\u0001;\u0006\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0004\u0002\u0001<\u0006\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\t\u0002\u0001=\u0001\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0005\u0001.\u0002\u0005\u0001.\u0001/\u0001\u0005\u0001\u001a\u0010\u0005\u0001\u001b\u0016\u0005\u0001\u0000\u0001\u0005\u0001\u001a\u0010\u0005\u0001\u001b\u0011\u0005\u0001\u0006\u00010\u0002\u0006\u00010\u00011\u0002\u0006\u0001\u001c\u000f\u0006\u0001\u001d\u0016\u0006\u0001\u0000\u0002\u0006\u0001\u001c\u000f\u0006\u0001\u001d\u0011\u0006\u000f\u0000\u0002>\u0001\u0000\u0002>\u0006\u0000\u0003>)\u0000\u0001?\"\u0000\u0001@\u0014\u0000\t5\u0001A 5\u0001$\u00085\u00016\u00025\u0002$\u0001B\u0002$\u00015\u0005$\u00035\u000b$\u00025\u0001$\u00025\u00027\u0004\u0000!7\u0001\u0000\u00017\u0001\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0003\u0002\u0001C\u0007\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0007\u0002\u0001D\u0003\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0004\u0002\u0001E\u0006\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001\u0002\u0001F\t\u0002\u0002\u0000\u0001\u0002\u001f\u0000\u0001G\u000c\u0000\t5\u0001A\u00045\u0001H\u001b5\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0005\u0002\u0001I\u0005\u0002\u0002\u0000\u0001\u0002\u0002\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0001\u0002\u0001J\t\u0002\u0002\u0000\u0001\u0002!\u0000\u0001K\n\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0003\u0002\u0001L\u0007\u0002\u0002\u0000\u0001\u0002\u001f\u0000\u0001M\u000c\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\u0008\u0002\u0001N\u0002\u0002\u0002\u0000\u0001\u0002$\u0000\u0001O\u0007\u0000\u0001\u0002\u0008\u0000\u0001\u0002\u0002\u0000\u0005\u0002\u0001\u0000\u0005\u0002\u0003\u0000\n\u0002\u0001:\u0002\u0000\u0001\u0002&\u0000\u0001@\u0005\u0000"

    invoke-static {v2, v1, v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackTrans(Ljava/lang/String;I[I)I

    move-result v1

    .line 435
    return-object v0
.end method

.method private static zzUnpackcmap_blocks(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "i":I
    move v1, p1

    .line 263
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 264
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 265
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 266
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 267
    .local v3, "value":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 268
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 267
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 269
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackcmap_blocks()[I
    .locals 3

    .line 254
    const/16 v0, 0x5400

    new-array v0, v0, [I

    .line 255
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 256
    .local v1, "offset":I
    const-string v2, "\t\u0000\u0001\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0001\u0005\u000e\u0000\u0004\u0006\u0001\u0001\u0001\u0000\u0001\u0007\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0008\u0002\u0000\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0001\u000e\u0001\u000f\t\u0010\u0001\u0011\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0004\u0012\u0001\u0013\u0001\u0012\u0002\u0000\u0001\u0014\u0004\u0000\u0001\u0015\t\u0000\u0001\u0016\u0002\u0000\u0001\u0017\u0001\u0018\u0001\u0019\u0002\u0000\u0001\u0006\u0001\u001a\u0003\u0012\u0001\u001b\u0001\u001c\u0002\u0000\u0001\u001d\u0002\u0000\u0001\u001e\u0001\u0000\u0001\u001f\u0003\u0000\u0001 \u0001!\u0001\"\u0001#\u0002\u0000\u0001\u0016\u0001$\u0001\u0000\u0001%\u0001\u0006\u0001&\u0007\u0000\u0001\'\u001a\u0000\u0001(\u0001\u0006\u0004\u0000\u0004\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0007\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u0005\u0006\u0017\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u01ca\u0000\u0004\u0006\u000c\u0000\u000e\u0006\u0005\u0000\u0007\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0011\u0006u\u0000\u0001\u0006\u0002\u0000\u0002\u0006\u0004\u0000\u0008\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0014\u0000\u0001\u0006S\u0000\u0001\u0006\u008b\u0000\u0001\u0006\u0005\u0000\u0002\u0006\u009e\u0000\t\u0006&\u0000\u0002\u0006\u0001\u0000\u0007\u0006\'\u0000\u0007\u0006\u0001\u0000\u0001\u0006-\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0008\u0006\u001b\u0000\u0005\u0006\u0003\u0000\r\u0006\u0005\u0000\u0006\u0006\u0001\u0000\u0004\u0006\u000b\u0000\u0005\u0006J\u0000\u0004\u0006f\u0000\u0001\u0006\t\u0000\u0001\u0006\n\u0000\u0001\u0006\u0013\u0000\u0002\u0006\u0001\u0000\u000f\u0006<\u0000\u0002\u0006e\u0000\u000e\u00066\u0000\u0004\u0006\u0001\u0000\u0005\u0006.\u0000\u0012\u0006\u001c\u0000D\u0006\u0001\u0000\u0001\u0006\u000b\u00007\u0006\u001b\u0000\u0001\u0006d\u0000\u0002\u0006\n\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0008\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0004\u0000\u0002\u0006\t\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0004\u0000\u0008\u0006\u0001\u0000\u0004\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\u000e\u0000\u0007\u0006\u0001\u0000\u0005\u0006\u0003\u0000\u0001\u0006\u0006\u0000\u0004\u0006\u0002\u0000\u0002\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0002\u0006\u0001\u0000\u0001\u0006\u0005\u0000\u0004\u0006\u0002\u0000\u0002\u0006\u0003\u0000\u0003\u0006\u0001\u0000\u0007\u0006\u0004\u0000\u0001\u0006\u0001\u0000\u0007\u0006\u0010\u0000\u000b\u0006\u0003\u0000\u0001\u0006\t\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\n\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0003\u0000\u0002\u0006\u0001\u0000\u000f\u0006\u0004\u0000\u0002\u0006\n\u0000\u0001\u0006\u0001\u0000\u000f\u0006\u0003\u0000\u0001\u0006\u0008\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0016\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\t\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0003\u0000\u0008\u0006\u0002\u0000\u0004\u0006\u0002\u0000\u0001\u0006\u0005\u0000\u0002\u0006\n\u0000\u0001\u0006\u0001\u0000\u0010\u0006\u0002\u0000\u0001\u0006\u0006\u0000\u0003\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0003\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0003\u0006\u0002\u0000\u0003\u0006\u0003\u0000\u0003\u0006\u000c\u0000\u0004\u0006\u0005\u0000\u0003\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0001\u0000\u0006\u0006\u0001\u0000\u000e\u0006\n\u0000\t\u0006\u0001\u0000\u0007\u0006\u0003\u0000\u0001\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0017\u0000\u0001\u0006\n\u0000\u0001\u0006\u0005\u0000\u0003\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0007\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0006\u0006\u0004\u0000\u0002\u0006\n\u0000\u0012\u0006\u0002\u0000\u0001\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0017\u0000\u0001\u0006\n\u0000\u0001\u0006\u0005\u0000\u0002\u0006\t\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0004\u0000\u0007\u0006\u0002\u0000\u0007\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0006\n\u0000\u0001\u0006\u0002\u0000\u000f\u0006\u0002\u0000\u0001\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006)\u0000\u0002\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0005\u0000\u0008\u0006\u0001\u0000\u0008\u0006\u0004\u0000\u0002\u0006\n\u0000\n\u0006\u0006\u0000\u0002\u0006\u0002\u0000\u0001\u0006\u0012\u0000\u0003\u0006\u0018\u0000\u0001\u0006\t\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0007\u0000\u0003\u0006\u0001\u0000\u0004\u0006\u0006\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0008\u0000\u0012\u0006\u0002\u0000\r\u0006:\u0000\u0004\u0006\u0010\u0000\u0001\u0006\n\u0000\'\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0006\u0006\u0004\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0002\u0000\u0001\u0006\r\u0000\u0001\u0006\u0003\u0000\u0002\u0006\u0005\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0002\u0006\n\u0000\u0002\u0006\u0004\u0000 \u0006\u0001\u0000\u0017\u0006\u0002\u0000\u0006\u0006\n\u0000\u000b\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0004\u0006\n\u0000\u0001\u0006$\u0000\u0004\u0006\u0014\u0000\u0001\u0006\u0012\u0000\u0001\u0006$\u0000\t\u0006\u0001\u00009\u0006J\u0000\u0006\u0006N\u0000\u0002\u0006&\u0000\u0001\u0006\u0001\u0000\u0005\u0006\u0001\u0000\u0002\u0006+\u0000\u0001\u0006M\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0006)\u0000\u0001\u0006\u0004\u0000\u0002\u0006!\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u000f\u0000\u0001\u00069\u0000\u0001\u0006\u0004\u0000\u0002\u0006C\u0000\u0002\u0006\u0003\u0000 \u0006\u0010\u0000\u0010\u0006U\u0000\u000c\u0006\u016c\u0000\u0002\u0006\u0011\u0000\u0001(\u001a\u0000\u0005\u0006K\u0000\u0003\u0006\u0003\u0000\u000f\u0006\r\u0000\u0001\u0006\u0007\u0000\u000b\u0006\u0015\u0000\u000b\u0006\u0014\u0000\u000c\u0006\r\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0002\u0000\u000c\u0006T\u0000\u0003\u0006\u0001\u0000\u0003\u0006\u0003\u0000\u0002\u0006\n\u0000!\u0006\u0003\u0000\u0002\u0006\n\u0000\u0006\u0006X\u0000\u0008\u0006+\u0000\u0005\u0006F\u0000\n\u0006\u001d\u0000\u0003\u0006\u000c\u0000\u0004\u0006\u000c\u0000\n\u0006(\u0000\u0002\u0006\u0005\u0000\u000b\u0006,\u0000\u0004\u0006\u001a\u0000\u0006\u0006\n\u0000&\u0006\u001c\u0000\u0004\u0006?\u0000\u0001\u0006\u001d\u0000\u0002\u0006\u000b\u0000\u0006\u0006\n\u0000\r\u0006\u0001\u0000X\u0006L\u0000\u0004\u0006\n\u0000\u0011\u0006\t\u0000\u000c\u0006t\u0000\u000c\u00068\u0000\u0008\u0006\n\u0000\u0003\u00061\u0000R\u0006\u0003\u0000\u0001\u0006#\u0000\t\u0006\u00e7\u0000\u0015\u0006\u001a\u0000\u0002\u0006\u0006\u0000\u0002\u0006&\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0008\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u001f\u0000\u0002\u00065\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0003\u0000\u0001\u0006\u0007\u0000\u0003\u0006\u0004\u0000\u0002\u0006\u0006\u0000\u0004\u0006\r\u0000\u0005\u0006\u0003\u0000\u0001\u0006\u0007\u0000\u0003\u0006\u000b(\u0005\u0000\u0018\u0006\u0002\u0003\u0005\u0000\u0001(\u000f\u0006\u0002\u0000\u0013\u0006\u0001\u0000\n\u0006\u0001(\u0005\u0000\u0005\u0006\u0006\u0000\u0001\u0006\u0001\u0000\r\u0006\u0001\u0000\u0010\u0006\r\u0000\u0003\u0006\u001b\u0000\u0015\u0006\r\u0000\u0004\u0006\u0001\u0000\u0003\u0006\u000c\u0000\u0011\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u0002\u0006\n\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0005\u0000\u0006\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u000b\u0000\u0002\u0006\u0004\u0000\u0005\u0006\u0005\u0000\u0004\u0006\u0001\u0000\u0011\u0006)\u0000\u0177\u0006/\u0000\u0001\u0006/\u0000\u0001\u0006\u0085\u0000\u0006\u0006\t\u0000\u000c\u0006&\u0000\u0001\u0006\u0001\u0000\u0005\u0006\u0001\u0000\u0002\u00068\u0000\u0007\u0006\u0001\u0000\u000f\u0006\u0018\u0000\t\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0001\u0006 \u0000/\u0006\u0001\u0000\u00d0\u0006\u0001(\u0004\u0006\u0003\u0000\u0019\u0006\u000f\u0000\u0001\u0006\u0005\u0000\u0002\u0006\u0005\u0000\u0004\u0006V\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0003\u0000\u0001\u0006Z\u0000\u0001\u0006\u0004\u0000\u0005\u0006)\u0000\u0003\u0006^\u0000\u0011\u0006\u001b\u00005\u0006\u00c6\u0000J\u0006\u00cd\u00003\u0006\u008d\u0000C\u0006.\u0000\u0002\u0006\r\u0000\u0003\u0006\u001c\u0000\u0014\u00060\u0000\u0004\u0006\n\u0000\u0001\u0006\u0019\u0000\u0007\u0006S\u0000%\u0006\t\u0000\u0002\u0006g\u0000\u0002\u0006\u0004\u0000\u0001\u0006\u0004\u0000\u000c\u0006\u000b\u0000M\u00060\u0000\u0010\u0006\u0001\u0000\u0007\u00064\u0000\u000c\u0006E\u0000\u000b\u0006\n\u0000\u0006\u0006\u0018\u0000\u0003\u0006\u0001\u0000\u0004\u0006.\u0000\u0002\u0006$\u0000\u000c\u0006\u001d\u0000\u0003\u0006A\u0000\u000e\u0006\u000b\u0000&\u00067\u0000\t\u0006\u000e\u0000\u0002\u0006\n\u0000\u0006\u0006\u0017\u0000\u0003\u0006\u0002\u0000\u0004\u0006C\u0000\u0018\u0006\u0003\u0000\u0002\u0006\u0010\u0000\u0002\u0006\u0005\u0000\n\u0006\u0006\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0006\u0000\t\u0006\u0007\u0000\u0001\u0006\u0007\u0000\u0091\u0006+\u0000\u0001\u0006\u0002\u0000\u0002\u0006\n\u0000\u0006\u0006\u00a4\u0000\u000c\u0006\u0017\u0000\u0004\u00061\u0000\u0004\u0006\u0100)n\u0000\u0002\u0006j\u0000&\u0006\u0007\u0000\u000c\u0006\u0005\u0000\u0005\u0006\u000c\u0000\u0001\u0006\r\u0000\u0001\u0006\u0005\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0002\u0000\u0001\u0006l\u0000!\u0006k\u0000\u0012\u0006@\u0000\u0002\u00066\u0000(\u0006\r\u0000\u0003\u0006\u0010\u0000\u0010\u0006\u0007\u0000\u000c\u0006\u0002\u0000\u0018\u0006\u0003\u0000\u0019\u0006\u0001\u0000\u0006\u0006\u0005\u0000\u0001\u0006\u0087\u0000\u0002\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u000b\u0006\n\u0000\u0007\u0006\u001a\u0000\u0004\u0006\u0001\u0000\u0001\u0006\u001a\u0000\u000b\u0006Y\u0000\u0003\u0006\u0006\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0006\u0000\u0002\u0006\u0003\u0000\u0003\u0006\u0002\u0000\u0003\u0006\u0002\u0000\u0012\u0006\u0003\u0000\u0004\u0006\u000c\u0000\u0001\u0006\u001a\u0000\u0001\u0006\u0013\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u000f\u0000\u0002\u0006\u000e\u0000\"\u0006{\u0000E\u00065\u0000\u0088\u0006\u0001\u0000\u0082\u0006\u001d\u0000\u0003\u00061\u0000/\u0006\u001f\u0000\u0011\u0006\u001b\u00005\u0006\u001e\u0000\u0002\u0006$\u0000\u0004\u0006\u0008\u0000\u0001\u0006\u0005\u0000*\u0006\u009e\u0000\u0002\u0006\n\u0000V\u0006\u0006\u0000\u0002\u0006\u0001\u0000\u0001\u0006,\u0000\u0001\u0006\u0002\u0000\u0003\u0006\u0001\u0000\u0002\u0006\u0017\u0000\u00aa\u0006\u0016\u0000\n\u0006\u001a\u0000F\u00068\u0000\u0006\u0006\u0002\u0000@\u0006\u0004\u0000\u0001\u0006\u0002\u0000\u0005\u0006\u0008\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u001b\u0000\u0004\u0006\u0003\u0000\u0004\u0006\u0001\u0000 \u0006\u001d\u0000\u0083\u00066\u0000\n\u0006\u0016\u0000\n\u0006\u0013\u0000\u008d\u0006I\u0000\u00b7\u0006G\u0000\u001f\u0006\n\u0000\u0010\u0006;\u0000\u0002\u0006\u0001\u0000\u0012\u0006\u0019\u0000\u0007\u0006\n\u0000\u0006\u00065\u0000\u0001\u0006\n\u0000@\u0006E\u0000\u000b\u0006\n\u0000\u00a6\u00068\u0000\u0008\u0006\n\u00006\u0006o\u0000\u0091\u0006c\u0000\u009d\u0006/\u0000\u00d1\u00069\u0000\u00c7\u0006E\u0000\u000b\u0006/\u0000\u0010\u0006\u0011\u0000`\u0006\u0002\u0000\u0163\u0006\u0005\u0000\u0003\u0006\u0016\u0000\u0002\u0006\u0007\u0000\u001e\u0006\u0004\u0000\u0094\u0006\u0003\u0000\u00bb\u0006U\u0000\u0001\u0006G\u0000\u0001\u0006\u0002\u0000\u0002\u0006\u0001\u0000\u0002\u0006\u0002\u0000\u0002\u0006\u0004\u0000\u0001\u0006\u000c\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0007\u0000\u0001\u0006A\u0000\u0001\u0006\u0004\u0000\u0002\u0006\u0008\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u001c\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0005\u0000\u0001\u0006\u0001\u0000\u0003\u0006\u0007\u0000\u0001\u0006\u0154\u0000\u0002\u0006\u0019\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u001f\u0000\u0001\u0006\u0019\u0000\u0001\u0006\u0008\u0000\u0002\u00066\u0000\u0001\u0006\u001b\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0001\u0006\n\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0006\u0006\u0001\u0000\u0004\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0003\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0001\u0000\u0001\u0006\u0002\u0000\u0001\u0006\u0001\u0000\u0002\u0006\u0004\u0000\u0001\u0006\u0007\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0004\u0000\u0001\u0006\u0001\u0000\u0001\u0006\n\u0000\u0001\u0006\u0011\u0000\u0005\u0006\u0003\u0000\u0001\u0006\u0005\u0000\u0001\u0006\u0011\u0000D\u0006\u00d7\u0000)\u00065\u0000\u000b\u0006\u00de\u0000\u00e3\u0006\u0001\u0000\u001e\u0006`\u0000\u0080\u0006\u00f0\u0000\u0010\u0006"

    invoke-static {v2, v1, v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackcmap_blocks(Ljava/lang/String;I[I)I

    move-result v1

    .line 257
    return-object v0
.end method

.method private static zzUnpackcmap_top(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "i":I
    move v1, p1

    .line 81
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 82
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 83
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 85
    .local v3, "value":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 86
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 85
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 87
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackcmap_top()[I
    .locals 3

    .line 72
    const/16 v0, 0x1100

    new-array v0, v0, [I

    .line 73
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 74
    .local v1, "offset":I
    const-string v2, "\u0001\u0000\u0001\u0100\u0001\u0200\u0001\u0300\u0001\u0400\u0001\u0500\u0001\u0600\u0001\u0700\u0001\u0800\u0001\u0900\u0001\u0a00\u0001\u0b00\u0001\u0c00\u0001\u0d00\u0001\u0e00\u0001\u0f00\u0001\u1000\u0001\u0100\u0001\u1100\u0001\u1200\u0001\u1300\u0001\u0100\u0001\u1400\u0001\u1500\u0001\u1600\u0001\u1700\u0001\u1800\u0001\u1900\u0001\u1a00\u0001\u1b00\u0001\u0100\u0001\u1c00\u0001\u1d00\u0001\u1e00\n\u1f00\u0001\u2000\u0001\u2100\u0001\u2200\u0001\u1f00\u0001\u2300\u0001\u2400\u0002\u1f00\u0019\u0100\u0001\u2500Q\u0100\u0001\u2600\u0004\u0100\u0001\u2700\u0001\u0100\u0001\u2800\u0001\u2900\u0001\u2a00\u0001\u2b00\u0001\u2c00\u0001\u2d00+\u0100\u0001\u2e00\u0008\u2f00\u0019\u1f00\u0001\u0100\u0001\u3000\u0001\u3100\u0001\u0100\u0001\u3200\u0001\u3300\u0001\u3400\u0001\u3500\u0001\u3600\u0001\u3700\u0001\u3800\u0001\u3900\u0003\u1f00\u0001\u3a00\u0001\u3b00\u0001\u3c00\u0001\u3d00\u0001\u3e00\u0003\u1f00\u0001\u3f00\u0001\u4000\u0004\u1f00\u0001\u4100\t\u1f00\u0003\u0100\u0001\u4200\u0001\u4300\u000b\u1f00\u0004\u0100\u0001\u44003\u1f00\u0002\u0100\u0001\u4500\u0004\u1f00\u0001\u4600@\u1f00\u0001\u4700 \u1f00\u0001\u4800\u0001\u4900\u0001\u1f00\u0001\u4a00\u0001\u4b00\u0001\u4c00\u0001\u4d00\u0016\u1f00\u0001\u4e00\u0011\u1f00\u00a6\u0100\u0001\u4f00\u0010\u0100\u0001\u5000\u0001\u5100?\u1f00\u0002\u0100\u0001\u5100\u0b05\u1f00\u0001\u5200\u0001\u5300\u02fe\u1f00"

    invoke-static {v2, v1, v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzUnpackcmap_top(Ljava/lang/String;I[I)I

    move-result v1

    .line 75
    return-object v0
.end method


# virtual methods
.method public advance()Lcom/blacksquircle/ui/language/json/lexer/JsonToken;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    move-object/from16 v0, p0

    iget v1, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 828
    .local v1, "zzEndReadL":I
    iget-object v2, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    .line 830
    .local v2, "zzBufferL":[C
    sget-object v3, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_TRANS:[I

    .line 831
    .local v3, "zzTransL":[I
    sget-object v4, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ROWMAP:[I

    .line 832
    .local v4, "zzRowMapL":[I
    sget-object v5, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ATTRIBUTE:[I

    .line 835
    .local v5, "zzAttrL":[I
    :goto_0
    iget v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 837
    .local v6, "zzMarkedPosL":I
    iget-wide v7, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yychar:J

    iget v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int v9, v6, v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yychar:J

    .line 839
    const/4 v7, 0x0

    .line 842
    .local v7, "zzR":Z
    iget v8, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    .line 843
    .local v8, "zzCurrentPosL":I
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v8, v6, :cond_1

    .line 845
    invoke-static {v2, v8, v6}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v11

    .line 846
    .local v11, "zzCh":I
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    .line 847
    .local v12, "zzCharCount":I
    sparse-switch v11, :sswitch_data_0

    .line 871
    const/4 v7, 0x0

    .line 872
    iget v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yycolumn:I

    add-int/2addr v9, v12

    iput v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yycolumn:I

    goto :goto_2

    .line 858
    :sswitch_0
    iget v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    add-int/2addr v13, v10

    iput v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    .line 859
    iput v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yycolumn:I

    .line 860
    const/4 v7, 0x1

    .line 861
    goto :goto_2

    .line 853
    :sswitch_1
    iget v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    add-int/2addr v13, v10

    iput v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    .line 854
    iput v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yycolumn:I

    .line 855
    const/4 v7, 0x0

    .line 856
    goto :goto_2

    .line 863
    :sswitch_2
    if-eqz v7, :cond_0

    .line 864
    const/4 v7, 0x0

    goto :goto_2

    .line 866
    :cond_0
    iget v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    add-int/2addr v13, v10

    iput v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    .line 867
    iput v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yycolumn:I

    .line 869
    nop

    .line 844
    :goto_2
    add-int/2addr v8, v12

    goto :goto_1

    .line 876
    .end local v11    # "zzCh":I
    .end local v12    # "zzCharCount":I
    :cond_1
    if-eqz v7, :cond_7

    .line 880
    const/16 v11, 0xa

    if-ge v6, v1, :cond_3

    .line 881
    aget-char v12, v2, v6

    if-ne v12, v11, :cond_2

    const/4 v9, 0x1

    .local v9, "zzPeek":Z
    :cond_2
    goto :goto_3

    .line 882
    .end local v9    # "zzPeek":Z
    :cond_3
    iget-boolean v12, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtEOF:Z

    if-eqz v12, :cond_4

    .line 883
    const/4 v9, 0x0

    .restart local v9    # "zzPeek":Z
    goto :goto_3

    .line 885
    .end local v9    # "zzPeek":Z
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzRefill()Z

    move-result v12

    .line 886
    .local v12, "eof":Z
    iget v1, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 887
    iget v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 888
    iget-object v2, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    .line 889
    if-eqz v12, :cond_5

    .line 890
    const/4 v9, 0x0

    .restart local v9    # "zzPeek":Z
    goto :goto_3

    .line 892
    .end local v9    # "zzPeek":Z
    :cond_5
    aget-char v13, v2, v6

    if-ne v13, v11, :cond_6

    const/4 v9, 0x1

    .line 894
    .end local v12    # "eof":Z
    .restart local v9    # "zzPeek":Z
    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    iget v11, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    sub-int/2addr v11, v10

    iput v11, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyline:I

    .line 896
    .end local v9    # "zzPeek":Z
    :cond_7
    const/4 v9, -0x1

    .line 898
    .local v9, "zzAction":I
    iput v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    iput v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    move v8, v6

    .line 900
    sget-object v11, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_LEXSTATE:[I

    iget v12, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzLexicalState:I

    aget v11, v11, v12

    iput v11, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    .line 903
    iget v11, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    aget v11, v5, v11

    .line 904
    .local v11, "zzAttributes":I
    and-int/lit8 v12, v11, 0x1

    if-ne v12, v10, :cond_8

    .line 905
    iget v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    .line 912
    :cond_8
    :goto_4
    const/4 v12, -0x1

    if-ge v8, v1, :cond_9

    .line 913
    invoke-static {v2, v8, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v13

    .line 914
    .local v13, "zzInput":I
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v8, v14

    goto :goto_5

    .line 916
    .end local v13    # "zzInput":I
    :cond_9
    iget-boolean v13, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtEOF:Z

    if-eqz v13, :cond_a

    .line 917
    const/4 v13, -0x1

    .line 918
    .restart local v13    # "zzInput":I
    goto :goto_6

    .line 922
    .end local v13    # "zzInput":I
    :cond_a
    iput v8, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    .line 923
    iput v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 924
    invoke-direct/range {p0 .. p0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzRefill()Z

    move-result v13

    .line 926
    .local v13, "eof":Z
    iget v8, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    .line 927
    iget v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 928
    iget-object v2, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    .line 929
    iget v1, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 930
    if-eqz v13, :cond_b

    .line 931
    const/4 v14, -0x1

    .line 932
    .local v14, "zzInput":I
    move v13, v14

    goto :goto_6

    .line 935
    .end local v14    # "zzInput":I
    :cond_b
    invoke-static {v2, v8, v1}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v14

    .line 936
    .restart local v14    # "zzInput":I
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v15

    add-int/2addr v8, v15

    move v13, v14

    .line 939
    .end local v14    # "zzInput":I
    .local v13, "zzInput":I
    :goto_5
    iget v14, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    aget v14, v4, v14

    invoke-static {v13}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCMap(I)I

    move-result v15

    add-int/2addr v14, v15

    aget v14, v3, v14

    .line 940
    .local v14, "zzNext":I
    if-ne v14, v12, :cond_c

    goto :goto_6

    .line 941
    :cond_c
    iput v14, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    .line 943
    iget v15, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    aget v11, v5, v15

    .line 944
    and-int/lit8 v15, v11, 0x1

    if-ne v15, v10, :cond_10

    .line 945
    iget v9, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzState:I

    .line 946
    move v6, v8

    .line 947
    and-int/lit8 v15, v11, 0x8

    const/16 v10, 0x8

    if-ne v15, v10, :cond_f

    .line 954
    .end local v14    # "zzNext":I
    :goto_6
    iput v6, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 956
    if-ne v13, v12, :cond_d

    iget v10, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    iget v12, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzCurrentPos:I

    if-ne v10, v12, :cond_d

    .line 957
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtEOF:Z

    .line 959
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->EOF:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 963
    :cond_d
    if-gez v9, :cond_e

    move v10, v9

    goto :goto_7

    :cond_e
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->ZZ_ACTION:[I

    aget v10, v10, v9

    :goto_7
    packed-switch v10, :pswitch_data_0

    .line 1050
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzScanError(I)V

    goto :goto_8

    .line 1048
    :pswitch_0
    goto :goto_8

    .line 1043
    :pswitch_1
    goto :goto_8

    .line 1038
    :pswitch_2
    goto :goto_8

    .line 1033
    :pswitch_3
    goto :goto_8

    .line 1028
    :pswitch_4
    goto :goto_8

    .line 1023
    :pswitch_5
    goto :goto_8

    .line 1018
    :pswitch_6
    goto :goto_8

    .line 1013
    :pswitch_7
    goto :goto_8

    .line 1008
    :pswitch_8
    goto :goto_8

    .line 1003
    :pswitch_9
    goto :goto_8

    .line 998
    :pswitch_a
    goto :goto_8

    .line 993
    :pswitch_b
    goto :goto_8

    .line 988
    :pswitch_c
    goto :goto_8

    .line 983
    :pswitch_d
    goto :goto_8

    .line 978
    :pswitch_e
    goto :goto_8

    .line 973
    :pswitch_f
    goto :goto_8

    .line 968
    :pswitch_10
    goto :goto_8

    .line 1045
    :pswitch_11
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->FALSE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1040
    :pswitch_12
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->TRUE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1035
    :pswitch_13
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->NULL:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1030
    :pswitch_14
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LINE_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1025
    :pswitch_15
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->BLOCK_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1020
    :pswitch_16
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->RBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1015
    :pswitch_17
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1010
    :pswitch_18
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->RBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1005
    :pswitch_19
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1000
    :pswitch_1a
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->COLON:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 995
    :pswitch_1b
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->COMMA:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 990
    :pswitch_1c
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->SINGLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 985
    :pswitch_1d
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->DOUBLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 980
    :pswitch_1e
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->BAD_CHARACTER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 975
    :pswitch_1f
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->WHITESPACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 970
    :pswitch_20
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->IDENTIFIER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 965
    :pswitch_21
    sget-object v10, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->NUMBER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v10

    .line 1053
    .end local v7    # "zzR":Z
    .end local v11    # "zzAttributes":I
    :goto_8
    goto/16 :goto_0

    .line 947
    .restart local v7    # "zzR":Z
    .restart local v11    # "zzAttributes":I
    .restart local v14    # "zzNext":I
    :cond_f
    const/4 v10, 0x1

    .line 950
    .end local v14    # "zzNext":I
    :cond_10
    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_0
        0x85 -> :sswitch_1
        0x2028 -> :sswitch_1
        0x2029 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTokenEnd()I
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yylength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTokenStart()I
    .locals 2

    .line 559
    iget-wide v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yychar:J

    long-to-int v1, v0

    return v1
.end method

.method public final yyatEOF()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtEOF:Z

    return v0
.end method

.method public final yybegin(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 730
    iput p1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzLexicalState:I

    .line 731
    return-void
.end method

.method public final yycharat(I)C
    .locals 2
    .param p1, "position"    # I

    .line 754
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzAtEOF:Z

    .line 657
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEndRead:I

    .line 659
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 662
    :cond_0
    return-void
.end method

.method public final yylength()I
    .locals 2

    .line 764
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    iget v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yypushback(I)V
    .locals 1
    .param p1, "number"    # I

    .line 803
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 804
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzScanError(I)V

    .line 806
    :cond_0
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    .line 807
    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 678
    iput-object p1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzReader:Ljava/io/Reader;

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzEOFDone:Z

    .line 680
    invoke-direct {p0}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->yyResetPosition()V

    .line 681
    iput v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzLexicalState:I

    .line 682
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    array-length v0, v0

    const/16 v1, 0x4000

    if-le v0, v1, :cond_0

    .line 683
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    .line 685
    :cond_0
    return-void
.end method

.method public final yystate()I
    .locals 1

    .line 720
    iget v0, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzLexicalState:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 5

    .line 740
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzBuffer:[C

    iget v2, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    iget v3, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzMarkedPos:I

    iget v4, p0, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
