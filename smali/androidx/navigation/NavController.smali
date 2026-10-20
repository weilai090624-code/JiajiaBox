.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "NavController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$OnDestinationChangedListener;,
        Landroidx/navigation/NavController$NavControllerNavigatorState;,
        Landroidx/navigation/NavController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 7 Uri.kt\nandroidx/core/net/UriKt\n+ 8 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2362:1\n178#2,2:2363\n1290#2,2:2367\n1290#2,2:2369\n178#2,2:2473\n1#3:2365\n150#4:2366\n1849#5,2:2371\n1849#5,2:2373\n1858#5,3:2375\n1768#5,4:2378\n1849#5:2382\n764#5:2383\n855#5,2:2384\n1850#5:2386\n764#5:2387\n855#5,2:2388\n764#5:2390\n855#5,2:2391\n1849#5,2:2393\n764#5:2395\n855#5,2:2396\n1849#5,2:2398\n817#5:2407\n845#5,2:2408\n1849#5:2410\n1850#5:2418\n1849#5,2:2419\n1849#5,2:2421\n817#5:2423\n845#5,2:2424\n1849#5,2:2426\n1849#5,2:2428\n531#5,6:2430\n531#5,6:2436\n531#5,6:2442\n1849#5,2:2448\n1849#5,2:2450\n1858#5,3:2453\n1849#5,2:2459\n531#5,6:2461\n531#5,6:2467\n357#6,7:2400\n357#6,7:2411\n29#7:2452\n13631#8,3:2456\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n*L\n77#1:2363,2\n581#1:2367,2\n600#1:2369,2\n2270#1:2473,2\n155#1:2366\n719#1:2371,2\n723#1:2373,2\n805#1:2375,3\n865#1:2378,4\n998#1:2382\n999#1:2383\n999#1:2384,2\n998#1:2386\n1006#1:2387\n1006#1:2388,2\n1010#1:2390\n1010#1:2391,2\n1079#1:2393,2\n1091#1:2395\n1091#1:2396,2\n1096#1:2398,2\n1149#1:2407\n1149#1:2408,2\n1149#1:2410\n1149#1:2418\n1678#1:2419,2\n1726#1:2421,2\n1753#1:2423\n1753#1:2424,2\n1756#1:2426,2\n1798#1:2428,2\n1840#1:2430,6\n1862#1:2436,6\n1889#1:2442,6\n1899#1:2448,2\n1915#1:2450,2\n2058#1:2453,3\n2101#1:2459,2\n2206#1:2461,6\n2227#1:2467,6\n1135#1:2400,7\n1150#1:2411,7\n1985#1:2452\n2096#1:2456,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0016\u0018\u0000 \u00c5\u00012\u00020\u0001:\u0006\u00c5\u0001\u00c6\u0001\u00c7\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J2\u0010p\u001a\u00020\u00162\u0006\u0010q\u001a\u0002022\u0008\u0010r\u001a\u0004\u0018\u00010\\2\u0006\u0010\u0015\u001a\u00020\u00072\u000e\u0008\u0002\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0002J\u0010\u0010t\u001a\u00020\u00162\u0006\u0010u\u001a\u00020cH\u0016J\u0012\u0010v\u001a\u0002062\u0008\u0008\u0001\u0010w\u001a\u00020\u001fH\u0007J\u0010\u0010v\u001a\u0002062\u0006\u0010x\u001a\u00020 H\u0007J\u0012\u0010y\u001a\u0002062\u0008\u0008\u0001\u0010w\u001a\u00020\u001fH\u0003J\u0008\u0010z\u001a\u00020{H\u0016J\u0008\u0010|\u001a\u000206H\u0002J\u0010\u0010}\u001a\u00020\u00162\u0006\u0010~\u001a\u000206H\u0017J\u0014\u0010\u007f\u001a\u0004\u0018\u0001022\u0008\u0008\u0001\u0010w\u001a\u00020\u001fH\u0007J\u0013\u0010\u007f\u001a\u0004\u0018\u0001022\u0007\u0010\u0080\u0001\u001a\u00020 H\u0007J\u0015\u0010\u0081\u0001\u001a\u0004\u0018\u00010 2\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J\u0013\u0010\u0084\u0001\u001a\u00020\u00072\u0008\u0008\u0001\u0010w\u001a\u00020\u001fH\u0016J\u000f\u0010\u0084\u0001\u001a\u00020\u00072\u0006\u0010x\u001a\u00020 J\u0015\u0010\u0085\u0001\u001a\u00030\u0086\u00012\t\u0008\u0001\u0010\u0087\u0001\u001a\u00020\u001fH\u0016J\u0015\u0010\u0088\u0001\u001a\u0002062\n\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u008a\u0001H\u0017J \u0010\u008b\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2\u000f\u0010\u008c\u0001\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010\u0018H\u0002J\u001b\u0010\u008d\u0001\u001a\u00020\u00162\u0007\u0010\u008e\u0001\u001a\u00020\u00072\u0007\u0010\u008f\u0001\u001a\u00020\u0007H\u0002J\u0013\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0082\u0001\u001a\u00030\u0091\u0001H\u0017J\u001f\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0082\u0001\u001a\u00030\u0091\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0017J+\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0082\u0001\u001a\u00030\u0091\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0017J\u0013\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0017J\u001f\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0017J+\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0096\u0001\u001a\u00030\u0097\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0017J4\u0010\u0090\u0001\u001a\u00020\u00162\u0006\u0010q\u001a\u0002022\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\\2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0003J\u0013\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u0001H\u0017J\u001f\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0017J\u001d\u0010\u0090\u0001\u001a\u00020\u00162\u0008\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0008\u0010\u0094\u0001\u001a\u00030\u0095\u0001H\u0017J\u0014\u0010\u0090\u0001\u001a\u00020\u00162\t\u0008\u0001\u0010\u009b\u0001\u001a\u00020\u001fH\u0017J\u001f\u0010\u0090\u0001\u001a\u00020\u00162\t\u0008\u0001\u0010\u009b\u0001\u001a\u00020\u001f2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\\H\u0017J+\u0010\u0090\u0001\u001a\u00020\u00162\t\u0008\u0001\u0010\u009b\u0001\u001a\u00020\u001f2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\\2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0017J7\u0010\u0090\u0001\u001a\u00020\u00162\t\u0008\u0001\u0010\u009b\u0001\u001a\u00020\u001f2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\\2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0017J-\u0010\u0090\u0001\u001a\u00020\u00162\u0006\u0010x\u001a\u00020 2\u000c\u0008\u0002\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\u000c\u0008\u0002\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0007J+\u0010\u0090\u0001\u001a\u00020\u00162\u0006\u0010x\u001a\u00020 2\u001a\u0010\u009c\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u009d\u0001\u0012\u0004\u0012\u00020\u00160\u0012\u00a2\u0006\u0003\u0008\u009e\u0001J\t\u0010\u009f\u0001\u001a\u000206H\u0017J\u0014\u0010\u00a0\u0001\u001a\u00020\u00162\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\\H\u0003J\t\u0010\u00a2\u0001\u001a\u000206H\u0017J\u001c\u0010\u00a2\u0001\u001a\u0002062\u0008\u0008\u0001\u0010w\u001a\u00020\u001f2\u0007\u0010\u00a3\u0001\u001a\u000206H\u0017J%\u0010\u00a2\u0001\u001a\u0002062\u0008\u0008\u0001\u0010w\u001a\u00020\u001f2\u0007\u0010\u00a3\u0001\u001a\u0002062\u0007\u0010\u00a4\u0001\u001a\u000206H\u0017J%\u0010\u00a2\u0001\u001a\u0002062\u0006\u0010x\u001a\u00020 2\u0007\u0010\u00a3\u0001\u001a\u0002062\t\u0008\u0002\u0010\u00a4\u0001\u001a\u000206H\u0007J\'\u0010\u00a5\u0001\u001a\u00020\u00162\u0006\u0010g\u001a\u00020\u00072\u000e\u0010\u00a6\u0001\u001a\t\u0012\u0004\u0012\u00020\u00160\u00a7\u0001H\u0000\u00a2\u0006\u0003\u0008\u00a8\u0001J\'\u0010\u00a9\u0001\u001a\u0002062\u0008\u0008\u0001\u0010w\u001a\u00020\u001f2\u0007\u0010\u00a3\u0001\u001a\u0002062\t\u0008\u0002\u0010\u00a4\u0001\u001a\u000206H\u0003J-\u0010\u00aa\u0001\u001a\u00020\u00162\u0006\u0010g\u001a\u00020\u00072\t\u0008\u0002\u0010\u00a4\u0001\u001a\u0002062\u000f\u0008\u0002\u0010\u00ab\u0001\u001a\u0008\u0012\u0004\u0012\u00020\"0\u0018H\u0002J\u0015\u0010\u00ac\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eH\u0000\u00a2\u0006\u0003\u0008\u00ad\u0001J\u0011\u0010\u00ae\u0001\u001a\u00020\u00162\u0006\u0010u\u001a\u00020cH\u0016J\u0014\u0010\u00af\u0001\u001a\u00020\u00162\t\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\\H\u0017J5\u0010\u00b1\u0001\u001a\u0002062\u0007\u0010\u00b2\u0001\u001a\u00020\u001f2\t\u0010\u0098\u0001\u001a\u0004\u0018\u00010\\2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u0001H\u0002J\u000b\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\\H\u0017J\u001b\u0010@\u001a\u00020\u00162\u0006\u0010=\u001a\u00020\t2\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\\H\u0017J\u0013\u0010@\u001a\u00020\u00162\t\u0008\u0001\u0010\u00b3\u0001\u001a\u00020\u001fH\u0017J\u001e\u0010@\u001a\u00020\u00162\t\u0008\u0001\u0010\u00b3\u0001\u001a\u00020\u001f2\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\\H\u0017J\u0012\u0010\u00b4\u0001\u001a\u00020\u00162\u0007\u0010\u00b5\u0001\u001a\u00020MH\u0017J\u0012\u0010\u00b6\u0001\u001a\u00020\u00162\u0007\u0010\u00b7\u0001\u001a\u00020`H\u0017J\u0013\u0010\u00b8\u0001\u001a\u00020\u00162\u0008\u0010\u00b9\u0001\u001a\u00030\u00ba\u0001H\u0017J\t\u0010\u00bb\u0001\u001a\u000206H\u0002J\t\u0010\u00bc\u0001\u001a\u000206H\u0002J\u001a\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u00072\u0007\u0010\u008e\u0001\u001a\u00020\u0007H\u0000\u00a2\u0006\u0003\u0008\u00be\u0001J\u000f\u0010\u00bf\u0001\u001a\u00020\u0016H\u0000\u00a2\u0006\u0003\u0008\u00c0\u0001J\t\u0010\u00c1\u0001\u001a\u00020\u0016H\u0002J\u0018\u0010\u007f\u001a\u0004\u0018\u000102*\u0002022\u0008\u0008\u0001\u0010w\u001a\u00020\u001fH\u0002Jb\u0010\u00c2\u0001\u001a\u00020\u0016*\n\u0012\u0006\u0008\u0001\u0012\u0002020Y2\r\u0010\u00c3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000e2\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0095\u00012$\u0008\u0002\u0010\u00c4\u0001\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u00160\u0012H\u0002JL\u0010\u00a9\u0001\u001a\u00020\u0016*\n\u0012\u0006\u0008\u0001\u0012\u0002020Y2\u0006\u0010g\u001a\u00020\u00072\u0007\u0010\u00a4\u0001\u001a\u0002062$\u0008\u0002\u0010\u00c4\u0001\u001a\u001d\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(g\u0012\u0004\u0012\u00020\u00160\u0012H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0011\u001a\u001f\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00188WX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010!\u001a\u0014\u0012\u0004\u0012\u00020 \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\u00180\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010&R\u001a\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0016\u0010*\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u00070.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100R\u0016\u00101\u001a\u0004\u0018\u0001028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R\u000e\u00105\u001a\u000206X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00107\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00088\u00109R\u000e\u0010:\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u000206X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u0002060\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010=\u001a\u00020\t2\u0006\u0010=\u001a\u00020\t8W@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001c\u0010B\u001a\u00020C8@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u0010\u0010H\u001a\u0004\u0018\u00010IX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010J\u001a\u00020KX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u0004\u0018\u00010MX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010N\u001a\u00020I8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008O\u0010PR$\u0010S\u001a\u00020\u000b2\u0006\u0010S\u001a\u00020\u000b8V@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008T\u0010U\"\u0004\u0008V\u0010WR&\u0010X\u001a\u001a\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002020Y\u0012\u0008\u0012\u00060ZR\u00020\u00000\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u0004\u0018\u00010\\X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010]\u001a\u00020^X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u0004\u0018\u00010`X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010a\u001a\u0008\u0012\u0004\u0012\u00020c0bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020e0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010f\u001a\u001f\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(g\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010h\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010,R\u0010\u0010j\u001a\u0004\u0018\u00010kX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010l\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u000e0m\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008n\u0010o\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Landroidx/navigation/NavController;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_currentBackStackEntryFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Landroidx/navigation/NavBackStackEntry;",
        "_graph",
        "Landroidx/navigation/NavGraph;",
        "_navigatorProvider",
        "Landroidx/navigation/NavigatorProvider;",
        "_visibleEntries",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "addToBackStackHandler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "backStackEntry",
        "",
        "backQueue",
        "Lkotlin/collections/ArrayDeque;",
        "getBackQueue",
        "()Lkotlin/collections/ArrayDeque;",
        "backStackEntriesToDispatch",
        "",
        "backStackMap",
        "",
        "",
        "",
        "backStackStates",
        "Landroidx/navigation/NavBackStackEntryState;",
        "backStackToRestore",
        "",
        "Landroid/os/Parcelable;",
        "[Landroid/os/Parcelable;",
        "childToParentEntries",
        "getContext",
        "()Landroid/content/Context;",
        "currentBackStackEntry",
        "getCurrentBackStackEntry",
        "()Landroidx/navigation/NavBackStackEntry;",
        "currentBackStackEntryFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "getCurrentBackStackEntryFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "currentDestination",
        "Landroidx/navigation/NavDestination;",
        "getCurrentDestination",
        "()Landroidx/navigation/NavDestination;",
        "deepLinkHandled",
        "",
        "destinationCountOnBackStack",
        "getDestinationCountOnBackStack",
        "()I",
        "dispatchReentrantCount",
        "enableOnBackPressedCallback",
        "entrySavedState",
        "graph",
        "getGraph",
        "()Landroidx/navigation/NavGraph;",
        "setGraph",
        "(Landroidx/navigation/NavGraph;)V",
        "hostLifecycleState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "getHostLifecycleState$navigation_runtime_release",
        "()Landroidx/lifecycle/Lifecycle$State;",
        "setHostLifecycleState$navigation_runtime_release",
        "(Landroidx/lifecycle/Lifecycle$State;)V",
        "inflater",
        "Landroidx/navigation/NavInflater;",
        "lifecycleObserver",
        "Landroidx/lifecycle/LifecycleObserver;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "navInflater",
        "getNavInflater",
        "()Landroidx/navigation/NavInflater;",
        "navInflater$delegate",
        "Lkotlin/Lazy;",
        "navigatorProvider",
        "getNavigatorProvider",
        "()Landroidx/navigation/NavigatorProvider;",
        "setNavigatorProvider",
        "(Landroidx/navigation/NavigatorProvider;)V",
        "navigatorState",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavController$NavControllerNavigatorState;",
        "navigatorStateToRestore",
        "Landroid/os/Bundle;",
        "onBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "onBackPressedDispatcher",
        "Landroidx/activity/OnBackPressedDispatcher;",
        "onDestinationChangedListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "parentToChildCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "popFromBackStackHandler",
        "popUpTo",
        "previousBackStackEntry",
        "getPreviousBackStackEntry",
        "viewModel",
        "Landroidx/navigation/NavControllerViewModel;",
        "visibleEntries",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getVisibleEntries",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "addEntryToBackStack",
        "node",
        "finalArgs",
        "restoredEntries",
        "addOnDestinationChangedListener",
        "listener",
        "clearBackStack",
        "destinationId",
        "route",
        "clearBackStackInternal",
        "createDeepLink",
        "Landroidx/navigation/NavDeepLinkBuilder;",
        "dispatchOnDestinationChanged",
        "enableOnBackPressed",
        "enabled",
        "findDestination",
        "destinationRoute",
        "findInvalidDestinationDisplayNameInDeepLink",
        "deepLink",
        "",
        "getBackStackEntry",
        "getViewModelStoreOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "navGraphId",
        "handleDeepLink",
        "intent",
        "Landroid/content/Intent;",
        "instantiateBackStack",
        "backStackState",
        "linkChildToParent",
        "child",
        "parent",
        "navigate",
        "Landroid/net/Uri;",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "request",
        "Landroidx/navigation/NavDeepLinkRequest;",
        "args",
        "directions",
        "Landroidx/navigation/NavDirections;",
        "resId",
        "builder",
        "Landroidx/navigation/NavOptionsBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "navigateUp",
        "onGraphCreated",
        "startDestinationArgs",
        "popBackStack",
        "inclusive",
        "saveState",
        "popBackStackFromNavigator",
        "onComplete",
        "Lkotlin/Function0;",
        "popBackStackFromNavigator$navigation_runtime_release",
        "popBackStackInternal",
        "popEntryFromBackStack",
        "savedState",
        "populateVisibleEntries",
        "populateVisibleEntries$navigation_runtime_release",
        "removeOnDestinationChangedListener",
        "restoreState",
        "navState",
        "restoreStateInternal",
        "id",
        "graphResId",
        "setLifecycleOwner",
        "owner",
        "setOnBackPressedDispatcher",
        "dispatcher",
        "setViewModelStore",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "tryRelaunchUpToExplicitStack",
        "tryRelaunchUpToGeneratedStack",
        "unlinkChildFromParent",
        "unlinkChildFromParent$navigation_runtime_release",
        "updateBackStackLifecycle",
        "updateBackStackLifecycle$navigation_runtime_release",
        "updateOnBackPressedCallbackEnabled",
        "navigateInternal",
        "entries",
        "handler",
        "Companion",
        "NavControllerNavigatorState",
        "OnDestinationChangedListener",
        "navigation-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/NavController$Companion;

.field private static final KEY_BACK_STACK:Ljava/lang/String; = "android-support-nav:controller:backStack"

.field private static final KEY_BACK_STACK_DEST_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackDestIds"

.field private static final KEY_BACK_STACK_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackIds"

.field private static final KEY_BACK_STACK_STATES_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackStates"

.field private static final KEY_BACK_STACK_STATES_PREFIX:Ljava/lang/String; = "android-support-nav:controller:backStackStates:"

.field public static final KEY_DEEP_LINK_ARGS:Ljava/lang/String; = "android-support-nav:controller:deepLinkArgs"

.field public static final KEY_DEEP_LINK_EXTRAS:Ljava/lang/String; = "android-support-nav:controller:deepLinkExtras"

.field public static final KEY_DEEP_LINK_HANDLED:Ljava/lang/String; = "android-support-nav:controller:deepLinkHandled"

.field public static final KEY_DEEP_LINK_IDS:Ljava/lang/String; = "android-support-nav:controller:deepLinkIds"

.field public static final KEY_DEEP_LINK_INTENT:Ljava/lang/String; = "android-support-nav:controller:deepLinkIntent"

.field private static final KEY_NAVIGATOR_STATE:Ljava/lang/String; = "android-support-nav:controller:navigatorState"

.field private static final KEY_NAVIGATOR_STATE_NAMES:Ljava/lang/String; = "android-support-nav:controller:navigatorState:names"

.field private static final TAG:Ljava/lang/String; = "NavController"

.field private static deepLinkSaveState:Z


# instance fields
.field private final _currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _graph:Landroidx/navigation/NavGraph;

.field private _navigatorProvider:Landroidx/navigation/NavigatorProvider;

.field private final _visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private addToBackStackHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final backQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackEntriesToDispatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;>;"
        }
    .end annotation
.end field

.field private backStackToRestore:[Landroid/os/Parcelable;

.field private final childToParentEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final currentBackStackEntryFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private deepLinkHandled:Z

.field private dispatchReentrantCount:I

.field private enableOnBackPressedCallback:Z

.field private final entrySavedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

.field private inflater:Landroidx/navigation/NavInflater;

.field private final lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final navInflater$delegate:Lkotlin/Lazy;

.field private final navigatorState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;",
            ">;"
        }
    .end annotation
.end field

.field private navigatorStateToRestore:Landroid/os/Bundle;

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$OnDestinationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final parentToChildCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private popFromBackStackHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private viewModel:Landroidx/navigation/NavControllerViewModel;

.field private final visibleEntries:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Y4vBWHZVaSR0f5jqW3bejMnSM88(Landroidx/navigation/NavController;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/navigation/NavController;->lifecycleObserver$lambda-2(Landroidx/navigation/NavController;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavController;->Companion:Landroidx/navigation/NavController$Companion;

    .line 2311
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    sget-object v1, Landroidx/navigation/NavController$activity$1;->INSTANCE:Landroidx/navigation/NavController$activity$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 77
    nop

    .local v0, "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 2363
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroid/content/Context;

    .local v5, "it":Landroid/content/Context;
    const/4 v6, 0x0

    .line 77
    .local v6, "$i$a$-firstOrNull-NavController$activity$2":I
    instance-of v5, v5, Landroid/app/Activity;

    .end local v5    # "it":Landroid/content/Context;
    .end local v6    # "$i$a$-firstOrNull-NavController$activity$2":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 2364
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v4

    .end local v0    # "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Landroid/app/Activity;

    .line 73
    iput-object v3, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    .line 114
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 117
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 137
    iget-object v0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->visibleEntries:Lkotlinx/coroutines/flow/StateFlow;

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 179
    new-instance v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    iput-object v0, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    .line 189
    new-instance v0, Landroidx/navigation/NavController$onBackPressedCallback$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$onBackPressedCallback$1;-><init>(Landroidx/navigation/NavController;)V

    check-cast v0, Landroidx/activity/OnBackPressedCallback;

    iput-object v0, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    .line 218
    new-instance v1, Landroidx/navigation/NavigatorProvider;

    invoke-direct {v1}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 244
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    .line 247
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Landroidx/navigation/NavController;->entrySavedState:Ljava/util/Map;

    .line 383
    nop

    .line 384
    iget-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v2, Landroidx/navigation/NavGraphNavigator;

    iget-object v3, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-direct {v2, v3}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    check-cast v2, Landroidx/navigation/Navigator;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 385
    iget-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v2, Landroidx/navigation/ActivityNavigator;

    iget-object v3, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/navigation/Navigator;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 386
    nop

    .line 870
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    .line 1020
    new-instance v1, Landroidx/navigation/NavController$navInflater$2;

    invoke-direct {v1, p0}, Landroidx/navigation/NavController$navInflater$2;-><init>(Landroidx/navigation/NavController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lkotlin/Lazy;

    .line 2246
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 2253
    iget-object v0, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    iput-object v0, p0, Landroidx/navigation/NavController;->currentBackStackEntryFlow:Lkotlinx/coroutines/flow/Flow;

    .line 68
    return-void
.end method

.method public static final synthetic access$addEntryToBackStack(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Landroidx/navigation/NavController;
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "finalArgs"    # Landroid/os/Bundle;
    .param p3, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "restoredEntries"    # Ljava/util/List;

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAddToBackStackHandler$p(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getBackStackMap$p(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getDeepLinkSaveState$cp()Z
    .locals 1

    .line 68
    sget-boolean v0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return v0
.end method

.method public static final synthetic access$getEntrySavedState$p(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->entrySavedState:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getInflater$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavInflater;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->inflater:Landroidx/navigation/NavInflater;

    return-object v0
.end method

.method public static final synthetic access$getNavigatorState$p(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPopFromBackStackHandler$p(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getViewModel$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavControllerViewModel;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    return-object v0
.end method

.method public static final synthetic access$get_navigatorProvider$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavigatorProvider;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public static final synthetic access$get_visibleEntries$p(Landroidx/navigation/NavController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 68
    iget-object v0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$popEntryFromBackStack(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 0
    .param p0, "$this"    # Landroidx/navigation/NavController;
    .param p1, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "saveState"    # Z
    .param p3, "savedState"    # Lkotlin/collections/ArrayDeque;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void
.end method

.method public static final synthetic access$setDeepLinkSaveState$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 68
    sput-boolean p0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return-void
.end method

.method private final addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 31
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "finalArgs"    # Landroid/os/Bundle;
    .param p3, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "restoredEntries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)V"
        }
    .end annotation

    .line 1819
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v15

    .line 1820
    .local v15, "newDest":Landroidx/navigation/NavDestination;
    instance-of v0, v15, Landroidx/navigation/FloatingWindow;

    if-nez v0, :cond_1

    .line 1824
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1825
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/FloatingWindow;

    if-eqz v0, :cond_1

    .line 1826
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1834
    :cond_1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v5, v0

    .line 1835
    .local v5, "hierarchy":Lkotlin/collections/ArrayDeque;
    move-object v0, v15

    .line 1836
    .local v0, "destination":Landroidx/navigation/NavDestination;
    instance-of v1, v7, Landroidx/navigation/NavGraph;

    const/16 v18, 0x0

    if-eqz v1, :cond_8

    move-object/from16 v19, v0

    .line 1838
    .end local v0    # "destination":Landroidx/navigation/NavDestination;
    .local v19, "destination":Landroidx/navigation/NavDestination;
    :goto_0
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v4

    .line 1839
    .local v4, "parent":Landroidx/navigation/NavGraph;
    if-eqz v4, :cond_6

    .line 1840
    move-object/from16 v0, p4

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 2430
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2431
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2432
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 2433
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .local v8, "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v9, 0x0

    .line 1841
    .local v9, "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$1":I
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .end local v8    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$1":I
    if-eqz v8, :cond_2

    goto :goto_1

    .line 2435
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object/from16 v3, v18

    .line 1840
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    if-nez v3, :cond_4

    .line 1842
    sget-object v8, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 1843
    iget-object v9, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    move-object v10, v4

    check-cast v10, Landroidx/navigation/NavDestination;

    .line 1844
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v12

    iget-object v0, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object v13, v0

    check-cast v13, Landroidx/navigation/NavViewModelStoreProvider;

    .line 1842
    const/16 v16, 0x60

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object/from16 v11, p2

    move-object/from16 v20, v15

    .end local v15    # "newDest":Landroidx/navigation/NavDestination;
    .local v20, "newDest":Landroidx/navigation/NavDestination;
    move-object v15, v0

    invoke-static/range {v8 .. v17}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    goto :goto_2

    .line 1840
    .end local v20    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v15    # "newDest":Landroidx/navigation/NavDestination;
    :cond_4
    move-object/from16 v20, v15

    .end local v15    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v20    # "newDest":Landroidx/navigation/NavDestination;
    :goto_2
    move-object v8, v3

    .line 1846
    .local v8, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v5, v8}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1848
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-ne v0, v4, :cond_5

    .line 1849
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v4

    .end local v4    # "parent":Landroidx/navigation/NavGraph;
    .local v13, "parent":Landroidx/navigation/NavGraph;
    move v4, v9

    move-object v9, v5

    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .local v9, "hierarchy":Lkotlin/collections/ArrayDeque;
    move-object v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_3

    .line 1848
    .end local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v13    # "parent":Landroidx/navigation/NavGraph;
    .restart local v4    # "parent":Landroidx/navigation/NavGraph;
    .restart local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    :cond_5
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v4

    move-object v9, v5

    .end local v4    # "parent":Landroidx/navigation/NavGraph;
    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v13    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_3

    .line 1839
    .end local v8    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v13    # "parent":Landroidx/navigation/NavGraph;
    .end local v20    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v4    # "parent":Landroidx/navigation/NavGraph;
    .restart local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v15    # "newDest":Landroidx/navigation/NavDestination;
    :cond_6
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v4

    move-object v9, v5

    move-object/from16 v20, v15

    .line 1852
    .end local v4    # "parent":Landroidx/navigation/NavGraph;
    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v15    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v13    # "parent":Landroidx/navigation/NavGraph;
    .restart local v20    # "newDest":Landroidx/navigation/NavDestination;
    :goto_3
    move-object v0, v13

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1853
    .end local v19    # "destination":Landroidx/navigation/NavDestination;
    .local v0, "destination":Landroidx/navigation/NavDestination;
    if-eqz v0, :cond_9

    if-ne v0, v7, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v19, v0

    move-object v5, v9

    move-object/from16 v15, v20

    goto/16 :goto_0

    .line 1836
    .end local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v13    # "parent":Landroidx/navigation/NavGraph;
    .end local v20    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v15    # "newDest":Landroidx/navigation/NavDestination;
    :cond_8
    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v9, v5

    move-object/from16 v20, v15

    .line 1858
    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v15    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v20    # "newDest":Landroidx/navigation/NavDestination;
    :cond_9
    :goto_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v15, v20

    goto :goto_5

    :cond_a
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v15

    :goto_5
    move-object v0, v15

    move-object v8, v0

    .line 1859
    .end local v0    # "destination":Landroidx/navigation/NavDestination;
    .local v8, "destination":Landroidx/navigation/NavDestination;
    :goto_6
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1860
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 1861
    .local v0, "parent":Landroidx/navigation/NavGraph;
    if-eqz v0, :cond_e

    .line 1862
    move-object/from16 v1, p4

    .local v1, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2436
    .local v2, "$i$f$lastOrNull":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 2437
    .local v3, "iterator$iv":Ljava/util/ListIterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2438
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    .line 2439
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v10, 0x0

    .line 1863
    .local v10, "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$2":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v13

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v10    # "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$2":I
    if-eqz v5, :cond_b

    goto :goto_7

    .line 2441
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_c
    move-object/from16 v4, v18

    .line 1862
    .end local v1    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$lastOrNull":I
    .end local v3    # "iterator$iv":Ljava/util/ListIterator;
    :goto_7
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    if-nez v4, :cond_d

    .line 1864
    sget-object v21, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 1865
    iget-object v1, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Landroidx/navigation/NavDestination;

    invoke-virtual {v0, v11}, Landroidx/navigation/NavGraph;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v25

    .line 1866
    iget-object v2, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v26, v2

    check-cast v26, Landroidx/navigation/NavViewModelStoreProvider;

    .line 1864
    const/16 v29, 0x60

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v30}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v4

    .line 1862
    :cond_d
    move-object v1, v4

    .line 1868
    .local v1, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v9, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1870
    .end local v1    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_e
    move-object v8, v0

    check-cast v8, Landroidx/navigation/NavDestination;

    .end local v0    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_6

    .line 1873
    :cond_f
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1874
    move-object/from16 v15, v20

    goto :goto_8

    .line 1876
    :cond_10
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v15

    .line 1873
    :goto_8
    nop

    .line 1872
    move-object v10, v15

    .line 1878
    .local v10, "overlappingDestination":Landroidx/navigation/NavDestination;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_11

    .line 1879
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 1880
    invoke-virtual {v10}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    .line 1879
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_9

    .line 1887
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-nez v0, :cond_12

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1888
    .local v0, "firstEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_12
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_a

    :cond_13
    move-object/from16 v1, v18

    :goto_a
    iget-object v2, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1889
    move-object/from16 v1, p4

    .local v1, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2442
    .restart local v2    # "$i$f$lastOrNull":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 2443
    .restart local v3    # "iterator$iv":Ljava/util/ListIterator;
    :cond_14
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2444
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    .line 2445
    .restart local v4    # "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .restart local v5    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v13, 0x0

    .line 1890
    .local v13, "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$3":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v14

    iget-object v15, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v13    # "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$3":I
    if-eqz v5, :cond_14

    move-object/from16 v18, v4

    goto :goto_b

    .line 2447
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_15
    nop

    .line 1889
    .end local v1    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$lastOrNull":I
    .end local v3    # "iterator$iv":Ljava/util/ListIterator;
    :goto_b
    check-cast v18, Landroidx/navigation/NavBackStackEntry;

    if-nez v18, :cond_16

    .line 1891
    sget-object v21, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 1892
    iget-object v1, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    iget-object v2, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v23, v2

    check-cast v23, Landroidx/navigation/NavDestination;

    iget-object v2, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Landroidx/navigation/NavGraph;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v25

    .line 1893
    iget-object v2, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v26, v2

    check-cast v26, Landroidx/navigation/NavViewModelStoreProvider;

    .line 1891
    const/16 v29, 0x60

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v30}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v18

    .line 1889
    :cond_16
    move-object/from16 v1, v18

    .line 1895
    .local v1, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v9, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1899
    .end local v1    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_17
    move-object v1, v9

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2448
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v13, 0x0

    .line 1900
    .local v13, "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    iget-object v14, v6, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 1901
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v15

    .line 1900
    invoke-virtual {v14, v15}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v14

    .line 1903
    .local v14, "navigator":Landroidx/navigation/Navigator;
    iget-object v15, v6, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_18

    check-cast v15, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1906
    .local v15, "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    invoke-virtual {v15, v5}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    .line 1907
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v13    # "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    .end local v14    # "navigator":Landroidx/navigation/Navigator;
    .end local v15    # "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    goto :goto_c

    .line 1903
    .restart local v4    # "element$iv":Ljava/lang/Object;
    .restart local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .restart local v13    # "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    .restart local v14    # "navigator":Landroidx/navigation/Navigator;
    :cond_18
    const/4 v3, 0x0

    .line 1904
    .local v3, "$i$a$-checkNotNull-NavController$addEntryToBackStack$1$navigatorBackStack$1":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    .local v16, "firstEntry":Landroidx/navigation/NavBackStackEntry;
    const-string v0, "NavigatorBackStack for "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " should already be created"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1903
    .end local v3    # "$i$a$-checkNotNull-NavController$addEntryToBackStack$1$navigatorBackStack$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2449
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v13    # "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    .end local v14    # "navigator":Landroidx/navigation/Navigator;
    .end local v16    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    .restart local v0    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_19
    move-object/from16 v16, v0

    .line 1908
    .end local v0    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    .restart local v16    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 1911
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, v12}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1915
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2450
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .local v4, "it":Landroidx/navigation/NavBackStackEntry;
    const/4 v5, 0x0

    .line 1916
    .local v5, "$i$a$-forEach-NavController$addEntryToBackStack$2":I
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v13

    .line 1917
    .local v13, "parent":Landroidx/navigation/NavGraph;
    if-eqz v13, :cond_1a

    .line 1918
    invoke-virtual {v13}, Landroidx/navigation/NavGraph;->getId()I

    move-result v14

    invoke-virtual {v6, v14}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v14

    invoke-direct {v6, v4, v14}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 1920
    :cond_1a
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "$i$a$-forEach-NavController$addEntryToBackStack$2":I
    .end local v13    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_d

    .line 2451
    :cond_1b
    nop

    .line 1921
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method static synthetic addEntryToBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    .line 1813
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 1817
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 1813
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addEntryToBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final clearBackStackInternal(I)Z
    .locals 9
    .param p1, "destinationId"    # I

    .line 719
    iget-object v0, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2371
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v5, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v6, 0x0

    .line 720
    .local v6, "$i$a$-forEach-NavController$clearBackStackInternal$1":I
    invoke-virtual {v5, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 721
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v5    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v6    # "$i$a$-forEach-NavController$clearBackStackInternal$1":I
    goto :goto_0

    .line 2372
    :cond_0
    nop

    .line 722
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v0

    .line 723
    .local v0, "restored":Z
    iget-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2373
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v7, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v8, 0x0

    .line 724
    .local v8, "$i$a$-forEach-NavController$clearBackStackInternal$2":I
    invoke-virtual {v7, v6}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 725
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v7    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v8    # "$i$a$-forEach-NavController$clearBackStackInternal$2":I
    goto :goto_1

    .line 2374
    :cond_1
    nop

    .line 726
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v4, v6}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method private final dispatchOnDestinationChanged()Z
    .locals 9

    .line 881
    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 885
    .local v0, "lastBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    if-eqz v0, :cond_1

    .line 886
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_1
    iget v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    .line 892
    invoke-virtual {p0}, Landroidx/navigation/NavController;->updateBackStackLifecycle$navigation_runtime_release()V

    .line 893
    iget v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    .line 895
    iget v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    if-nez v1, :cond_4

    .line 897
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 898
    .local v1, "dispatchList":Ljava/util/List;
    iget-object v3, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 899
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 901
    .local v4, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v5, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 902
    .local v6, "listener":Landroidx/navigation/NavController$OnDestinationChangedListener;
    nop

    .line 903
    nop

    .line 904
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    .line 905
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 902
    invoke-interface {v6, p0, v7, v8}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .end local v6    # "listener":Landroidx/navigation/NavController$OnDestinationChangedListener;
    goto :goto_2

    .line 908
    :cond_2
    iget-object v5, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {v5, v4}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_1

    .line 910
    .end local v4    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->populateVisibleEntries$navigation_runtime_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 912
    .end local v1    # "dispatchList":Ljava/util/List;
    :cond_4
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public static final enableDeepLinkSaveState(Z)V
    .locals 1
    .annotation runtime Landroidx/navigation/NavDeepLinkSaveStateControl;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavController;->Companion:Landroidx/navigation/NavController$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController$Companion;->enableDeepLinkSaveState(Z)V

    return-void
.end method

.method private final findDestination(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1, "$this$findDestination"    # Landroidx/navigation/NavDestination;
    .param p2, "destinationId"    # I

    .line 1403
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1404
    return-object p1

    .line 1406
    :cond_0
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1407
    .local v0, "currentGraph":Landroidx/navigation/NavGraph;
    :goto_0
    invoke-virtual {v0, p2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    return-object v1
.end method

.method private final findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;
    .locals 6
    .param p1, "deepLink"    # [I

    .line 1354
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1355
    .local v0, "graph":Landroidx/navigation/NavGraph;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 1356
    aget v4, p1, v1

    .line 1358
    .local v4, "destinationId":I
    nop

    .line 1359
    if-nez v1, :cond_1

    .line 1360
    iget-object v5, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/navigation/NavGraph;->getId()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v3, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    goto :goto_1

    .line 1361
    :cond_0
    nop

    :goto_1
    check-cast v3, Landroidx/navigation/NavDestination;

    goto :goto_2

    .line 1363
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 1359
    :goto_2
    nop

    .line 1358
    if-nez v3, :cond_2

    .line 1364
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1357
    :cond_2
    nop

    .line 1365
    .local v3, "node":Landroidx/navigation/NavDestination;
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_3

    .line 1367
    instance-of v5, v3, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_3

    .line 1368
    move-object v0, v3

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 1371
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    instance-of v5, v5, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_3

    .line 1372
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_3

    .line 1355
    .end local v3    # "node":Landroidx/navigation/NavDestination;
    .end local v4    # "destinationId":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1378
    .end local v1    # "i":I
    :cond_4
    return-object v3
.end method

.method private final getDestinationCountOnBackStack()I
    .locals 8

    .line 865
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2378
    .local v1, "$i$f$count":I
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 2379
    :cond_0
    const/4 v2, 0x0

    .line 2380
    .local v2, "count$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 866
    .local v6, "$i$a$-count-NavController$destinationCountOnBackStack$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    instance-of v7, v7, Landroidx/navigation/NavGraph;

    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-count-NavController$destinationCountOnBackStack$1":I
    if-nez v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2381
    :cond_2
    nop

    .line 867
    .end local v0    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    :goto_1
    return v2
.end method

.method private final instantiateBackStack(Lkotlin/collections/ArrayDeque;)Ljava/util/List;
    .locals 13
    .param p1, "backStackState"    # Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 1796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1797
    .local v0, "backStack":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "currentDestination":Ljava/lang/Object;
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    :cond_1
    move-object v1, v2

    .line 1798
    if-eqz p1, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 2428
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavBackStackEntryState;

    .local v6, "state":Landroidx/navigation/NavBackStackEntryState;
    const/4 v7, 0x0

    .line 1799
    .local v7, "$i$a$-forEach-NavController$instantiateBackStack$1":I
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v8

    invoke-direct {p0, v1, v8}, Landroidx/navigation/NavController;->findDestination(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    move-result-object v8

    .line 1800
    .local v8, "node":Landroidx/navigation/NavDestination;
    if-eqz v8, :cond_2

    .line 1807
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    iget-object v10, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    iget-object v12, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v6, v10, v8, v11, v12}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1808
    move-object v1, v8

    .line 1809
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v7    # "$i$a$-forEach-NavController$instantiateBackStack$1":I
    .end local v8    # "node":Landroidx/navigation/NavDestination;
    goto :goto_0

    .line 1800
    .restart local v5    # "element$iv":Ljava/lang/Object;
    .restart local v6    # "state":Landroidx/navigation/NavBackStackEntryState;
    .restart local v7    # "$i$a$-forEach-NavController$instantiateBackStack$1":I
    .restart local v8    # "node":Landroidx/navigation/NavDestination;
    :cond_2
    const/4 v4, 0x0

    .line 1801
    .local v4, "$i$a$-checkNotNull-NavController$instantiateBackStack$1$1":I
    sget-object v9, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 1802
    iget-object v10, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v11

    .line 1801
    invoke-virtual {v9, v10, v11}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 1804
    .local v9, "dest":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restore State failed: destination "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cannot be found from the current destination "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1805
    nop

    .line 1804
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1800
    .end local v4    # "$i$a$-checkNotNull-NavController$instantiateBackStack$1$1":I
    .end local v9    # "dest":Ljava/lang/String;
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2429
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v7    # "$i$a$-forEach-NavController$instantiateBackStack$1":I
    .end local v8    # "node":Landroidx/navigation/NavDestination;
    :cond_3
    nop

    .line 1810
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    :cond_4
    return-object v0
.end method

.method private static final lifecycleObserver$lambda-2(Landroidx/navigation/NavController;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p0, "this$0"    # Landroidx/navigation/NavController;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    const-string v0, "event.targetState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 181
    iget-object p1, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 183
    .local v0, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0, p2}, Landroidx/navigation/NavBackStackEntry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .end local v0    # "entry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private final linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 3
    .param p1, "child"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "parent"    # Landroidx/navigation/NavBackStackEntry;

    .line 143
    iget-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 148
    return-void
.end method

.method private final navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 21
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 1678
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2419
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v5, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v8, 0x0

    .line 1679
    .local v8, "$i$a$-forEach-NavController$navigate$3":I
    invoke-virtual {v5, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 1680
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v5    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v8    # "$i$a$-forEach-NavController$navigate$3":I
    goto :goto_0

    .line 2420
    :cond_0
    nop

    .line 1681
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    const/4 v0, 0x0

    .line 1682
    .local v0, "popped":Z
    const/4 v8, 0x0

    .line 1683
    .local v8, "launchSingleTop":Z
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v9, v1

    .line 1684
    .local v9, "navigated":Lkotlin/jvm/internal/Ref$BooleanRef;
    if-eqz v7, :cond_1

    .line 1685
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1686
    nop

    .line 1687
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v1

    .line 1688
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v2

    .line 1689
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v3

    .line 1686
    invoke-direct {v6, v1, v2, v3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v0

    move v10, v0

    goto :goto_1

    .line 1693
    :cond_1
    move v10, v0

    .end local v0    # "popped":Z
    .local v10, "popped":Z
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1695
    .local v5, "finalArgs":Landroid/os/Bundle;
    const/4 v3, 0x0

    if-eqz v7, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldRestoreState()Z

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1696
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    move-object/from16 v2, p4

    invoke-direct {v6, v0, v5, v7, v2}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v0

    iput-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object/from16 v13, p1

    move-object/from16 v16, v5

    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1695
    :cond_3
    move-object/from16 v2, p4

    .line 1698
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    .line 1699
    .local v1, "currentBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v0, v6, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 1700
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v11

    .line 1699
    invoke-virtual {v0, v11}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    .line 1702
    .local v0, "navigator":Landroidx/navigation/Navigator;
    if-eqz v7, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v11

    if-ne v11, v4, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_7

    .line 1703
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v12

    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->getId()I

    move-result v11

    if-ne v12, v11, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_7

    .line 1705
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v6, v4}, Landroidx/navigation/NavController;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    .line 1706
    new-instance v4, Landroidx/navigation/NavBackStackEntry;

    invoke-direct {v4, v1, v5}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    .line 1707
    .local v4, "newEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v11

    invoke-virtual {v11, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1708
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v11

    .line 1709
    .local v11, "parent":Landroidx/navigation/NavGraph;
    if-eqz v11, :cond_6

    .line 1710
    invoke-virtual {v11}, Landroidx/navigation/NavGraph;->getId()I

    move-result v12

    invoke-virtual {v6, v12}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v12

    invoke-direct {v6, v4, v12}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 1712
    :cond_6
    invoke-virtual {v0, v4}, Landroidx/navigation/Navigator;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    .line 1713
    const/4 v8, 0x1

    move-object/from16 v13, p1

    move-object/from16 v16, v5

    const/4 v7, 0x0

    .end local v4    # "newEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_5

    .line 1716
    :cond_7
    sget-object v11, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 1717
    iget-object v12, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v15

    iget-object v4, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v16, v4

    check-cast v16, Landroidx/navigation/NavViewModelStoreProvider;

    .line 1716
    const/16 v19, 0x60

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p1

    move-object v14, v5

    invoke-static/range {v11 .. v20}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v11

    .line 1719
    .local v11, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v12, Landroidx/navigation/NavController$navigate$4;

    invoke-direct {v12, v9, v6, v13, v5}, Landroidx/navigation/NavController$navigate$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object v14, v0

    .end local v0    # "navigator":Landroidx/navigation/Navigator;
    .local v14, "navigator":Landroidx/navigation/Navigator;
    move-object/from16 v0, p0

    move-object v15, v1

    .end local v1    # "currentBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    .local v15, "currentBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    move-object v1, v14

    move-object v2, v4

    const/4 v4, 0x0

    move-object/from16 v3, p3

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v16, v5

    .end local v5    # "finalArgs":Landroid/os/Bundle;
    .local v16, "finalArgs":Landroid/os/Bundle;
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V

    .line 1725
    .end local v11    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v14    # "navigator":Landroidx/navigation/Navigator;
    .end local v15    # "currentBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 1726
    iget-object v0, v6, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2421
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v4, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v5, 0x0

    .line 1727
    .local v5, "$i$a$-forEach-NavController$navigate$5":I
    invoke-virtual {v4, v7}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 1728
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v5    # "$i$a$-forEach-NavController$navigate$5":I
    goto :goto_6

    .line 2422
    :cond_8
    nop

    .line 1729
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    if-nez v10, :cond_a

    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_a

    if-eqz v8, :cond_9

    goto :goto_7

    .line 1732
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->updateBackStackLifecycle$navigation_runtime_release()V

    goto :goto_8

    .line 1730
    :cond_a
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 1734
    :goto_8
    return-void
.end method

.method public static synthetic navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 1

    .line 1979
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 1981
    move-object p2, v0

    .line 1979
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1982
    move-object p3, v0

    .line 1979
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$this$navigateInternal"    # Landroidx/navigation/Navigator;
    .param p2, "entries"    # Ljava/util/List;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;
    .param p5, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p5, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 260
    invoke-virtual {p1, p2, p3, p4}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 262
    return-void
.end method

.method static synthetic navigateInternal$default(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 253
    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 257
    sget-object p5, Landroidx/navigation/NavController$navigateInternal$1;->INSTANCE:Landroidx/navigation/NavController$navigateInternal$1;

    check-cast p5, Lkotlin/jvm/functions/Function1;

    move-object v5, p5

    goto :goto_0

    .line 253
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigateInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final onGraphCreated(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/navigation/NavController;->navigatorStateToRestore:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .local v1, "navigatorStateToRestore":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1106
    .local v2, "$i$a$-let-NavController$onGraphCreated$1":I
    nop

    .line 1107
    nop

    .line 1106
    const-string v3, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1109
    .local v3, "navigatorNames":Ljava/util/ArrayList;
    if-eqz v3, :cond_1

    .line 1110
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1111
    .local v5, "name":Ljava/lang/String;
    iget-object v6, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    const-string v7, "name"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v6

    .line 1112
    .local v6, "navigator":Landroidx/navigation/Navigator;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1113
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 1114
    invoke-virtual {v6, v7}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "navigator":Landroidx/navigation/Navigator;
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1118
    :cond_1
    nop

    .line 1105
    .end local v1    # "navigatorStateToRestore":Landroid/os/Bundle;
    .end local v2    # "$i$a$-let-NavController$onGraphCreated$1":I
    .end local v3    # "navigatorNames":Ljava/util/ArrayList;
    nop

    .line 1119
    :cond_2
    iget-object v1, v0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .local v1, "backStackToRestore":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 1120
    .local v4, "$i$a$-let-NavController$onGraphCreated$2":I
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    .line 1121
    .local v7, "parcelable":Landroid/os/Parcelable;
    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntryState;

    .line 1122
    .local v8, "state":Landroidx/navigation/NavBackStackEntryState;
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v9

    invoke-virtual {v0, v9}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v9

    .line 1123
    .local v9, "node":Landroidx/navigation/NavDestination;
    if-eqz v9, :cond_5

    .line 1133
    iget-object v10, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    iget-object v12, v0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v8, v10, v9, v11, v12}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v10

    .line 1134
    .local v10, "entry":Landroidx/navigation/NavBackStackEntry;
    iget-object v11, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v11

    .line 1135
    .local v11, "navigator":Landroidx/navigation/Navigator;
    iget-object v12, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    .local v12, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 2400
    .local v13, "$i$f$getOrPut":I
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2401
    .local v14, "value$iv":Ljava/lang/Object;
    if-nez v14, :cond_3

    .line 2402
    const/4 v15, 0x0

    .line 1136
    .local v15, "$i$a$-getOrPut-NavController$onGraphCreated$2$navigatorBackStack$1":I
    new-instance v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v2, v0, v11}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 2403
    .end local v15    # "$i$a$-getOrPut-NavController$onGraphCreated$2$navigatorBackStack$1":I
    .local v2, "answer$iv":Ljava/lang/Object;
    invoke-interface {v12, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    nop

    .end local v2    # "answer$iv":Ljava/lang/Object;
    goto :goto_2

    .line 2406
    :cond_3
    move-object v2, v14

    .line 2401
    :goto_2
    nop

    .line 1135
    .end local v12    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v13    # "$i$f$getOrPut":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1138
    .local v2, "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v12

    invoke-virtual {v12, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1139
    invoke-virtual {v2, v10}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    .line 1140
    invoke-virtual {v10}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v12

    .line 1141
    .local v12, "parent":Landroidx/navigation/NavGraph;
    if-eqz v12, :cond_4

    .line 1142
    invoke-virtual {v12}, Landroidx/navigation/NavGraph;->getId()I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v13

    invoke-direct {v0, v10, v13}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 1120
    .end local v2    # "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v8    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v9    # "node":Landroidx/navigation/NavDestination;
    .end local v10    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "navigator":Landroidx/navigation/Navigator;
    .end local v12    # "parent":Landroidx/navigation/NavGraph;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1124
    .restart local v8    # "state":Landroidx/navigation/NavBackStackEntryState;
    .restart local v9    # "node":Landroidx/navigation/NavDestination;
    :cond_5
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 1125
    iget-object v3, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 1126
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v5

    .line 1124
    invoke-virtual {v2, v3, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, "dest":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring the Navigation back stack failed: destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be found from the current destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1130
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    .line 1129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1128
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1145
    .end local v2    # "dest":Ljava/lang/String;
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    .end local v8    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v9    # "node":Landroidx/navigation/NavDestination;
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 1146
    iput-object v3, v0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    .line 1147
    nop

    .line 1119
    .end local v1    # "backStackToRestore":[Landroid/os/Parcelable;
    .end local v4    # "$i$a$-let-NavController$onGraphCreated$2":I
    nop

    .line 1149
    :cond_7
    iget-object v1, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v1}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2407
    .local v2, "$i$f$filterNot":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2408
    .local v6, "$i$f$filterNotTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/Navigator;

    .local v9, "it":Landroidx/navigation/Navigator;
    const/4 v10, 0x0

    .line 1149
    .local v10, "$i$a$-filterNot-NavController$onGraphCreated$3":I
    invoke-virtual {v9}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v9

    .end local v9    # "it":Landroidx/navigation/Navigator;
    .end local v10    # "$i$a$-filterNot-NavController$onGraphCreated$3":I
    if-nez v9, :cond_8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2409
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterNotTo":I
    check-cast v4, Ljava/util/List;

    .line 2407
    nop

    .end local v1    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterNot":I
    check-cast v4, Ljava/lang/Iterable;

    .line 1149
    move-object v1, v4

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2410
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/Navigator;

    .local v6, "navigator":Landroidx/navigation/Navigator;
    const/4 v7, 0x0

    .line 1150
    .local v7, "$i$a$-forEach-NavController$onGraphCreated$4":I
    iget-object v8, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    .local v8, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 2411
    .local v9, "$i$f$getOrPut":I
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2412
    .local v10, "value$iv":Ljava/lang/Object;
    if-nez v10, :cond_a

    .line 2413
    const/4 v11, 0x0

    .line 1151
    .local v11, "$i$a$-getOrPut-NavController$onGraphCreated$4$navigatorBackStack$1":I
    new-instance v12, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v12, v0, v6}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .end local v11    # "$i$a$-getOrPut-NavController$onGraphCreated$4$navigatorBackStack$1":I
    move-object v11, v12

    .line 2414
    .local v11, "answer$iv":Ljava/lang/Object;
    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2415
    nop

    .end local v11    # "answer$iv":Ljava/lang/Object;
    goto :goto_5

    .line 2417
    :cond_a
    move-object v11, v10

    .line 2412
    :goto_5
    nop

    .line 1150
    .end local v8    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v9    # "$i$f$getOrPut":I
    .end local v10    # "value$iv":Ljava/lang/Object;
    move-object v8, v11

    check-cast v8, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1153
    .local v8, "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavigatorState;

    invoke-virtual {v6, v9}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavigatorState;)V

    .line 1154
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "navigator":Landroidx/navigation/Navigator;
    .end local v7    # "$i$a$-forEach-NavController$onGraphCreated$4":I
    .end local v8    # "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    goto :goto_4

    .line 2418
    :cond_b
    nop

    .line 1155
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1157
    iget-boolean v1, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->handleDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    .line 1156
    :goto_6
    move v1, v2

    .line 1158
    .local v1, "deepLinked":Z
    if-nez v1, :cond_d

    .line 1161
    iget-object v2, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/navigation/NavDestination;

    move-object/from16 v4, p1

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .end local v1    # "deepLinked":Z
    goto :goto_7

    .line 1158
    .restart local v1    # "deepLinked":Z
    :cond_d
    move-object/from16 v4, p1

    goto :goto_7

    .line 1155
    .end local v1    # "deepLinked":Z
    :cond_e
    move-object/from16 v4, p1

    .line 1164
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 1166
    :goto_7
    return-void
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    .line 494
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 497
    const/4 p3, 0x0

    .line 494
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStack(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final popBackStackInternal(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$this$popBackStackInternal"    # Landroidx/navigation/Navigator;
    .param p2, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "saveState"    # Z
    .param p4, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 273
    iput-object p4, p0, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 274
    invoke-virtual {p1, p2, p3}, Landroidx/navigation/Navigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 276
    return-void
.end method

.method private final popBackStackInternal(IZZ)Z
    .locals 18
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    .line 520
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 522
    return v1

    .line 524
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    .line 525
    .local v9, "popOperations":Ljava/util/List;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 526
    .local v10, "iterator":Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 527
    .local v0, "foundDestination":Landroidx/navigation/NavDestination;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 528
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 529
    .local v2, "destination":Landroidx/navigation/NavDestination;
    iget-object v3, v6, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 530
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    .line 532
    .local v3, "navigator":Landroidx/navigation/Navigator;
    if-nez p2, :cond_2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-eq v4, v7, :cond_3

    .line 533
    :cond_2
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_3
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 536
    move-object v0, v2

    .line 537
    move-object v11, v0

    goto :goto_0

    .line 527
    .end local v2    # "destination":Landroidx/navigation/NavDestination;
    .end local v3    # "navigator":Landroidx/navigation/Navigator;
    :cond_4
    move-object v11, v0

    .line 540
    .end local v0    # "foundDestination":Landroidx/navigation/NavDestination;
    .local v11, "foundDestination":Landroidx/navigation/NavDestination;
    :goto_0
    if-nez v11, :cond_5

    .line 543
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 544
    iget-object v2, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 543
    invoke-virtual {v0, v2, v7}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "destinationName":Ljava/lang/String;
    nop

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring popBackStack to destination "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as it was not found on the current back stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 546
    const-string v3, "NavController"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v1

    .line 553
    .end local v0    # "destinationName":Ljava/lang/String;
    :cond_5
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v12, v0

    .line 554
    .local v12, "popped":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v13, v0

    .line 555
    .local v13, "savedState":Lkotlin/collections/ArrayDeque;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/navigation/Navigator;

    .line 556
    .local v15, "navigator":Landroidx/navigation/Navigator;
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v5, v0

    .line 557
    .local v5, "receivedPop":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    new-instance v16, Landroidx/navigation/NavController$popBackStackInternal$2;

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v12

    move-object/from16 v3, p0

    move-object v7, v4

    move/from16 v4, p3

    move-object/from16 v17, v9

    move-object v9, v5

    .end local v5    # "receivedPop":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v9, "receivedPop":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v17, "popOperations":Ljava/util/List;
    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$popBackStackInternal$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;ZLkotlin/collections/ArrayDeque;)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {v6, v15, v7, v8, v0}, Landroidx/navigation/NavController;->popBackStackInternal(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V

    .line 562
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_6

    .line 564
    goto :goto_2

    .line 562
    :cond_6
    move/from16 v7, p1

    move-object/from16 v9, v17

    goto :goto_1

    .line 555
    .end local v15    # "navigator":Landroidx/navigation/Navigator;
    .end local v17    # "popOperations":Ljava/util/List;
    .local v9, "popOperations":Ljava/util/List;
    :cond_7
    move-object/from16 v17, v9

    .line 567
    .end local v9    # "popOperations":Ljava/util/List;
    .restart local v17    # "popOperations":Ljava/util/List;
    :goto_2
    if-eqz v8, :cond_c

    .line 568
    if-nez p2, :cond_a

    .line 572
    sget-object v0, Landroidx/navigation/NavController$popBackStackInternal$3;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 578
    new-instance v1, Landroidx/navigation/NavController$popBackStackInternal$4;

    invoke-direct {v1, v6}, Landroidx/navigation/NavController$popBackStackInternal$4;-><init>(Landroidx/navigation/NavController;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 581
    nop

    .local v0, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 2367
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavDestination;

    .local v4, "destination":Landroidx/navigation/NavDestination;
    const/4 v5, 0x0

    .line 582
    .local v5, "$i$a$-forEach-NavController$popBackStackInternal$5":I
    iget-object v7, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/navigation/NavBackStackEntryState;

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    invoke-interface {v7, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    .end local v5    # "$i$a$-forEach-NavController$popBackStackInternal$5":I
    goto :goto_3

    .line 2368
    :cond_9
    nop

    .line 585
    .end local v0    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$forEach":I
    :cond_a
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 586
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    .line 590
    .local v0, "firstState":Landroidx/navigation/NavBackStackEntryState;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v1

    invoke-virtual {v6, v1}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 591
    .local v1, "firstStateDestination":Landroidx/navigation/NavDestination;
    sget-object v2, Landroidx/navigation/NavController$popBackStackInternal$6;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$6;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 597
    new-instance v3, Landroidx/navigation/NavController$popBackStackInternal$7;

    invoke-direct {v3, v6}, Landroidx/navigation/NavController$popBackStackInternal$7;-><init>(Landroidx/navigation/NavController;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 600
    nop

    .local v2, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v3, 0x0

    .line 2369
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Landroidx/navigation/NavDestination;

    .local v7, "destination":Landroidx/navigation/NavDestination;
    const/4 v9, 0x0

    .line 601
    .local v9, "$i$a$-forEach-NavController$popBackStackInternal$8":I
    iget-object v14, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    .end local v1    # "firstStateDestination":Landroidx/navigation/NavDestination;
    .local v16, "firstStateDestination":Landroidx/navigation/NavDestination;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    move-object/from16 v1, v16

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v7    # "destination":Landroidx/navigation/NavDestination;
    .end local v9    # "$i$a$-forEach-NavController$popBackStackInternal$8":I
    goto :goto_5

    .line 2370
    .end local v16    # "firstStateDestination":Landroidx/navigation/NavDestination;
    .restart local v1    # "firstStateDestination":Landroidx/navigation/NavDestination;
    :cond_b
    move-object/from16 v16, v1

    .line 604
    .end local v1    # "firstStateDestination":Landroidx/navigation/NavDestination;
    .end local v2    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v3    # "$i$f$forEach":I
    .restart local v16    # "firstStateDestination":Landroidx/navigation/NavDestination;
    iget-object v1, v6, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v0    # "firstState":Landroidx/navigation/NavBackStackEntryState;
    .end local v16    # "firstStateDestination":Landroidx/navigation/NavDestination;
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 608
    iget-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method static synthetic popBackStackInternal$default(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 268
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 271
    sget-object p4, Landroidx/navigation/NavController$popBackStackInternal$1;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 268
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->popBackStackInternal(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z
    .locals 0

    .line 515
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 518
    const/4 p3, 0x0

    .line 515
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 6
    .param p1, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "saveState"    # Z
    .param p3, "savedState"    # Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)V"
        }
    .end annotation

    .line 653
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 654
    .local v0, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 658
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 659
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    .line 660
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    .line 659
    nop

    .line 661
    .local v1, "navigator":Landroidx/navigation/Navigator;
    iget-object v2, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 665
    .local v2, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    .line 666
    iget-object v5, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 665
    :goto_2
    nop

    .line 667
    .local v3, "transitioning":Z
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 668
    if-eqz p2, :cond_3

    .line 670
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 672
    new-instance v4, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v4, v0}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {p3, v4}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 674
    :cond_3
    if-nez v3, :cond_4

    .line 675
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 676
    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    goto :goto_3

    .line 678
    :cond_4
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 681
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    if-nez v3, :cond_6

    .line 682
    iget-object v4, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/navigation/NavControllerViewModel;->clear(Ljava/lang/String;)V

    .line 684
    :cond_6
    return-void

    .line 654
    .end local v1    # "navigator":Landroidx/navigation/Navigator;
    .end local v2    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v3    # "transitioning":Z
    :cond_7
    const/4 v1, 0x0

    .line 655
    .local v1, "$i$a$-check-NavController$popEntryFromBackStack$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to pop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which is not the top of the back stack ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 656
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 655
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    .end local v1    # "$i$a$-check-NavController$popEntryFromBackStack$1":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V
    .locals 0

    .line 648
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 650
    const/4 p2, 0x0

    .line 648
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 651
    new-instance p3, Lkotlin/collections/ArrayDeque;

    invoke-direct {p3}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 648
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popEntryFromBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
    .locals 19
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 1742
    move-object/from16 v10, p0

    iget-object v0, v10, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1743
    return v1

    .line 1745
    :cond_0
    iget-object v0, v10, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 1747
    .local v11, "backStackId":Ljava/lang/String;
    iget-object v0, v10, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Landroidx/navigation/NavController$restoreStateInternal$1;

    invoke-direct {v2, v11}, Landroidx/navigation/NavController$restoreStateInternal$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 1748
    iget-object v0, v10, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lkotlin/collections/ArrayDeque;

    .line 1750
    .local v12, "backStackState":Lkotlin/collections/ArrayDeque;
    invoke-direct {v10, v12}, Landroidx/navigation/NavController;->instantiateBackStack(Lkotlin/collections/ArrayDeque;)Ljava/util/List;

    move-result-object v13

    .line 1752
    .local v13, "entries":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    check-cast v14, Ljava/util/List;

    .line 1753
    .local v14, "entriesGroupedByNavigator":Ljava/util/List;
    move-object v0, v13

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2423
    .local v2, "$i$f$filterNot":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 2424
    .local v5, "$i$f$filterNotTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .local v8, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v9, 0x0

    .line 1755
    .local v9, "$i$a$-filterNot-NavController$restoreStateInternal$2":I
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v15

    instance-of v8, v15, Landroidx/navigation/NavGraph;

    .end local v8    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "$i$a$-filterNot-NavController$restoreStateInternal$2":I
    if-nez v8, :cond_1

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2425
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterNotTo":I
    check-cast v3, Ljava/util/List;

    .line 2423
    nop

    .end local v0    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterNot":I
    check-cast v3, Ljava/lang/Iterable;

    .line 1756
    move-object v0, v3

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2426
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 1757
    .local v6, "$i$a$-forEach-NavController$restoreStateInternal$3":I
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1758
    .local v7, "previousEntryList":Ljava/util/List;
    if-eqz v7, :cond_3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 1759
    .local v8, "previousNavigatorName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1761
    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1764
    :cond_4
    move-object v9, v14

    check-cast v9, Ljava/util/Collection;

    const/4 v15, 0x1

    new-array v15, v15, [Landroidx/navigation/NavBackStackEntry;

    aput-object v5, v15, v1

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1766
    :goto_3
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-forEach-NavController$restoreStateInternal$3":I
    .end local v7    # "previousEntryList":Ljava/util/List;
    .end local v8    # "previousNavigatorName":Ljava/lang/String;
    goto :goto_1

    .line 2427
    :cond_5
    nop

    .line 1767
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v15, v0

    .line 1769
    .local v15, "navigated":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/util/List;

    .line 1770
    .local v17, "entryList":Ljava/util/List;
    iget-object v0, v10, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 1771
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    .line 1770
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v18

    .line 1773
    .local v18, "navigator":Landroidx/navigation/Navigator;
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 1774
    .local v3, "lastNavigatedIndex":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v6, Landroidx/navigation/NavController$restoreStateInternal$4;

    move-object v0, v6

    move-object v1, v15

    move-object v2, v13

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$restoreStateInternal$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    move-object v9, v6

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroidx/navigation/NavController;->navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V

    .end local v3    # "lastNavigatedIndex":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v17    # "entryList":Ljava/util/List;
    .end local v18    # "navigator":Landroidx/navigation/Navigator;
    goto :goto_4

    .line 1790
    :cond_6
    iget-boolean v0, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method private final tryRelaunchUpToExplicitStack()Z
    .locals 18

    .line 765
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 766
    return v2

    .line 769
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 770
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 772
    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v4

    .line 773
    .local v4, "deepLinkIds":Ljava/util/List;
    const-string v5, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 776
    .local v5, "deepLinkArgs":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "leafDestinationId":I
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 777
    if-eqz v5, :cond_1

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 780
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 781
    return v2

    .line 785
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavDestination;

    invoke-direct {v0, v7, v6}, Landroidx/navigation/NavController;->findDestination(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    move-result-object v7

    .local v7, "$this$tryRelaunchUpToExplicitStack_u24lambda_u2d9":Landroidx/navigation/NavDestination;
    const/4 v8, 0x0

    .line 786
    .local v8, "$i$a$-with-NavController$tryRelaunchUpToExplicitStack$1":I
    instance-of v9, v7, Landroidx/navigation/NavGraph;

    if-eqz v9, :cond_3

    .line 787
    sget-object v9, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    move-object v10, v7

    check-cast v10, Landroidx/navigation/NavGraph;

    invoke-virtual {v9, v10}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    .line 789
    :cond_3
    nop

    .line 785
    .end local v7    # "$this$tryRelaunchUpToExplicitStack_u24lambda_u2d9":Landroidx/navigation/NavDestination;
    .end local v8    # "$i$a$-with-NavController$tryRelaunchUpToExplicitStack$1":I
    nop

    .line 792
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_5

    .line 793
    return v2

    .line 796
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v7

    .line 799
    .local v7, "navDeepLinkBuilder":Landroidx/navigation/NavDeepLinkBuilder;
    new-array v9, v8, [Lkotlin/Pair;

    const-string v10, "android-support-nav:controller:deepLinkIntent"

    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v9}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    .line 800
    .local v2, "arguments":Landroid/os/Bundle;
    const-string v9, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    .local v9, "it":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 801
    .local v10, "$i$a$-let-NavController$tryRelaunchUpToExplicitStack$2":I
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 802
    nop

    .line 800
    .end local v9    # "it":Landroid/os/Bundle;
    .end local v10    # "$i$a$-let-NavController$tryRelaunchUpToExplicitStack$2":I
    nop

    .line 803
    :cond_6
    invoke-virtual {v7, v2}, Landroidx/navigation/NavDeepLinkBuilder;->setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    .line 805
    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 2375
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 2376
    .local v11, "index$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "index$iv":I
    .local v14, "index$iv":I
    if-gez v11, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    move-object v15, v13

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v11, "index":I
    .local v15, "deepLinkId":I
    const/16 v16, 0x0

    .line 806
    .local v16, "$i$a$-forEachIndexed-NavController$tryRelaunchUpToExplicitStack$3":I
    if-eqz v5, :cond_8

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    goto :goto_2

    :cond_8
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v8, v17

    invoke-virtual {v7, v15, v8}, Landroidx/navigation/NavDeepLinkBuilder;->addDestination(ILandroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    .line 807
    move v11, v14

    const/4 v8, 0x1

    .end local v11    # "index":I
    .end local v13    # "item$iv":Ljava/lang/Object;
    .end local v15    # "deepLinkId":I
    .end local v16    # "$i$a$-forEachIndexed-NavController$tryRelaunchUpToExplicitStack$3":I
    goto :goto_1

    .line 2377
    .end local v14    # "index$iv":I
    .local v11, "index$iv":I
    :cond_9
    nop

    .line 809
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv":I
    invoke-virtual {v7}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 810
    iget-object v8, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 811
    :cond_a
    const/4 v8, 0x1

    return v8
.end method

.method private final tryRelaunchUpToGeneratedStack()Z
    .locals 9

    .line 819
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 820
    .local v0, "currentDestination":Landroidx/navigation/NavDestination;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    .line 821
    .local v1, "destId":I
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 822
    .local v2, "parent":Landroidx/navigation/NavGraph;
    :goto_0
    if-eqz v2, :cond_3

    .line 823
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v3

    if-eq v3, v1, :cond_2

    .line 824
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v3, "args":Landroid/os/Bundle;
    iget-object v4, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 826
    iget-object v4, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 829
    .local v4, "data":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 832
    nop

    .line 833
    nop

    .line 834
    iget-object v5, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    .line 832
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 836
    iget-object v5, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 837
    new-instance v6, Landroidx/navigation/NavDeepLinkRequest;

    iget-object v7, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "activity!!.intent"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/content/Intent;)V

    .line 836
    invoke-virtual {v5, v6}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v5

    .line 839
    .local v5, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v5, :cond_0

    .line 840
    invoke-virtual {v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    .line 841
    invoke-virtual {v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v7

    .line 840
    invoke-virtual {v6, v7}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 843
    .local v6, "destinationArgs":Landroid/os/Bundle;
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 847
    .end local v4    # "data":Landroid/net/Uri;
    .end local v5    # "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .end local v6    # "destinationArgs":Landroid/os/Bundle;
    :cond_0
    new-instance v4, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v4, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    .line 848
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getId()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6, v7}, Landroidx/navigation/NavDeepLinkBuilder;->setDestination$default(Landroidx/navigation/NavDeepLinkBuilder;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v4

    .line 849
    invoke-virtual {v4, v3}, Landroidx/navigation/NavDeepLinkBuilder;->setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v4

    .line 850
    invoke-virtual {v4}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 847
    nop

    .line 851
    .local v4, "parentIntents":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v4}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 852
    iget-object v5, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 853
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 855
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "parentIntents":Landroidx/core/app/TaskStackBuilder;
    :cond_2
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    .line 856
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    goto/16 :goto_0

    .line 858
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private final updateOnBackPressedCallbackEnabled()V
    .locals 3

    .line 2158
    iget-object v0, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 2159
    iget-boolean v1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2158
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 2161
    return-void
.end method


# virtual methods
.method public addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/navigation/NavController$OnDestinationChangedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 402
    .local v0, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    nop

    .line 403
    nop

    .line 404
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 405
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 402
    invoke-interface {p1, p0, v1, v2}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 408
    .end local v0    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_0
    return-void
.end method

.method public final clearBackStack(I)Z
    .locals 2
    .param p1, "destinationId"    # I

    .line 711
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->clearBackStackInternal(I)Z

    move-result v0

    .line 714
    .local v0, "cleared":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final clearBackStack(Ljava/lang/String;)Z
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->clearBackStack(I)Z

    move-result v0

    return v0
.end method

.method public createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;
    .locals 1

    .line 1996
    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    return-object v0
.end method

.method public enableOnBackPressed(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2153
    iput-boolean p1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    .line 2154
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 2155
    return-void
.end method

.method public final findDestination(I)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1, "destinationId"    # I

    .line 1392
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    .line 1393
    const/4 v0, 0x0

    return-object v0

    .line 1395
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1396
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0

    .line 1398
    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1399
    .local v0, "currentNode":Landroidx/navigation/NavDestination;
    :cond_3
    invoke-direct {p0, v0, p1}, Landroidx/navigation/NavController;->findDestination(Landroidx/navigation/NavDestination;I)Landroidx/navigation/NavDestination;

    move-result-object v1

    return-object v1
.end method

.method public final findDestination(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 3
    .param p1, "destinationRoute"    # Ljava/lang/String;

    const-string v0, "destinationRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    .line 1414
    const/4 v0, 0x0

    return-object v0

    .line 1416
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0

    .line 1419
    :cond_1
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1420
    .local v0, "currentNode":Landroidx/navigation/NavDestination;
    :cond_3
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1421
    .local v1, "currentGraph":Landroidx/navigation/NavGraph;
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v2

    return-object v2
.end method

.method public getBackQueue()Lkotlin/collections/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    return-object v0
.end method

.method public getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;
    .locals 7
    .param p1, "destinationId"    # I

    .line 2206
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 2461
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2462
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2463
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 2464
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .local v4, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v5, 0x0

    .line 2207
    .local v5, "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$1":I
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .end local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$1":I
    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    .line 2466
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .line 2206
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    move-object v0, v3

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 2209
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    if-eqz v0, :cond_3

    .line 2213
    return-object v0

    .line 2209
    :cond_3
    const/4 v1, 0x0

    .line 2210
    .local v1, "$i$a$-requireNotNull-NavController$getBackStackEntry$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No destination with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2211
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 2210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2209
    .end local v1    # "$i$a$-requireNotNull-NavController$getBackStackEntry$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getBackStackEntry(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;
    .locals 7
    .param p1, "route"    # Ljava/lang/String;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 2467
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2468
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2469
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 2470
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .local v4, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v5, 0x0

    .line 2228
    .local v5, "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$2":I
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$2":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 2472
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 2227
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    move-object v0, v3

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 2230
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    if-eqz v0, :cond_2

    .line 2234
    return-object v0

    .line 2230
    :cond_2
    const/4 v1, 0x0

    .line 2231
    .local v1, "$i$a$-requireNotNull-NavController$getBackStackEntry$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No destination with route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2232
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 2231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2230
    .end local v1    # "$i$a$-requireNotNull-NavController$getBackStackEntry$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 71
    iget-object v0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 1

    .line 2243
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    return-object v0
.end method

.method public final getCurrentBackStackEntryFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 2252
    iget-object v0, p0, Landroidx/navigation/NavController;->currentBackStackEntryFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getCurrentDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1386
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGraph()Landroidx/navigation/NavGraph;
    .locals 2

    .line 94
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2365
    :cond_1
    const/4 v0, 0x0

    .line 94
    .local v0, "$i$a$-checkNotNull-NavController$graph$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NavController$graph$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 172
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 172
    :goto_0
    return-object v0
.end method

.method public getNavInflater()Landroidx/navigation/NavInflater;
    .locals 1

    .line 1020
    iget-object v0, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavInflater;

    return-object v0
.end method

.method public getNavigatorProvider()Landroidx/navigation/NavigatorProvider;
    .locals 1

    .line 234
    iget-object v0, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 8

    .line 2265
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2267
    .local v0, "iterator":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2268
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2270
    :cond_0
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .local v1, "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 2473
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 2271
    .local v6, "$i$a$-firstOrNull-NavController$previousBackStackEntry$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    instance-of v7, v7, Landroidx/navigation/NavGraph;

    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-firstOrNull-NavController$previousBackStackEntry$1":I
    if-nez v7, :cond_1

    goto :goto_0

    .line 2474
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    .end local v1    # "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 2270
    return-object v4
.end method

.method public getViewModelStoreOwner(I)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 4
    .param p1, "navGraphId"    # I

    .line 2185
    iget-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v0, :cond_1

    .line 2188
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    .line 2189
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    .line 2192
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    return-object v1

    .line 2189
    :cond_0
    const/4 v1, 0x0

    .line 2190
    .local v1, "$i$a$-require-NavController$getViewModelStoreOwner$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No NavGraph with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is on the NavController\'s back stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2189
    .end local v1    # "$i$a$-require-NavController$getViewModelStoreOwner$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2185
    .end local v0    # "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    :cond_1
    const/4 v0, 0x0

    .line 2186
    .local v0, "$i$a$-checkNotNull-NavController$getViewModelStoreOwner$1":I
    nop

    .line 2185
    .end local v0    # "$i$a$-checkNotNull-NavController$getViewModelStoreOwner$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() before calling getViewModelStoreOwner()."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroidx/navigation/NavController;->visibleEntries:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public handleDeepLink(Landroid/content/Intent;)Z
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1193
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v0, 0x0

    if-nez v7, :cond_0

    .line 1194
    return v0

    .line 1196
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1197
    .local v8, "extras":Landroid/os/Bundle;
    const/4 v9, 0x0

    if-eqz v8, :cond_1

    const-string v1, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v9

    .line 1198
    .local v1, "deepLink":[I
    :goto_0
    if-eqz v8, :cond_2

    const-string v2, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v9

    .line 1199
    .local v2, "deepLinkArgs":Ljava/util/ArrayList;
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v10, v3

    .line 1200
    .local v10, "globalArgs":Landroid/os/Bundle;
    if-eqz v8, :cond_3

    const-string v3, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v9

    :goto_2
    move-object v11, v3

    .line 1201
    .local v11, "deepLinkExtras":Landroid/os/Bundle;
    if-eqz v11, :cond_4

    .line 1202
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1204
    :cond_4
    const/4 v12, 0x1

    if-eqz v1, :cond_6

    array-length v3, v1

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 1205
    :cond_6
    iget-object v3, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Landroidx/navigation/NavDeepLinkRequest;

    invoke-direct {v4, v7}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    .line 1206
    .local v3, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v3, :cond_7

    .line 1207
    invoke-virtual {v3}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 1208
    .local v4, "destination":Landroidx/navigation/NavDestination;
    invoke-static {v4, v9, v12, v9}, Landroidx/navigation/NavDestination;->buildDeepLinkIds$default(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    move-result-object v1

    .line 1209
    const/4 v2, 0x0

    .line 1210
    invoke-virtual {v3}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1211
    .local v5, "destinationArgs":Landroid/os/Bundle;
    if-eqz v5, :cond_7

    .line 1212
    invoke-virtual {v10, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1216
    .end local v3    # "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    .end local v5    # "destinationArgs":Landroid/os/Bundle;
    :cond_7
    move-object v13, v1

    move-object v14, v2

    .end local v1    # "deepLink":[I
    .end local v2    # "deepLinkArgs":Ljava/util/ArrayList;
    .local v13, "deepLink":[I
    .local v14, "deepLinkArgs":Ljava/util/ArrayList;
    if-eqz v13, :cond_19

    array-length v1, v13

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_9

    goto/16 :goto_c

    .line 1219
    :cond_9
    invoke-direct {v6, v13}, Landroidx/navigation/NavController;->findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;

    move-result-object v15

    .line 1220
    .local v15, "invalidDestinationDisplayName":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 1222
    nop

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1224
    nop

    .line 1223
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1221
    const-string v2, "NavController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return v0

    .line 1228
    :cond_a
    const-string v1, "android-support-nav:controller:deepLinkIntent"

    move-object v2, v7

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1229
    array-length v1, v13

    new-array v5, v1, [Landroid/os/Bundle;

    .line 1230
    .local v5, "args":[Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "index":I
    array-length v2, v5

    :goto_5
    if-ge v1, v2, :cond_c

    .line 1231
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1232
    .local v3, "arguments":Landroid/os/Bundle;
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1233
    if-eqz v14, :cond_b

    .line 1234
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 1235
    .local v4, "deepLinkArguments":Landroid/os/Bundle;
    if-eqz v4, :cond_b

    .line 1236
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1239
    .end local v4    # "deepLinkArguments":Landroid/os/Bundle;
    :cond_b
    aput-object v3, v5, v1

    .line 1230
    .end local v3    # "arguments":Landroid/os/Bundle;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1241
    .end local v1    # "index":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .line 1242
    .local v16, "flags":I
    const/high16 v1, 0x10000000

    and-int v2, v16, v1

    if-eqz v2, :cond_e

    .line 1243
    const v2, 0x8000

    and-int v3, v16, v2

    if-nez v3, :cond_e

    .line 1248
    invoke-virtual {v7, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1250
    iget-object v1, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 1251
    invoke-virtual {v1, v7}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    const-string v2, "create(context)\n        \u2026ntWithParentStack(intent)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1249
    nop

    .line 1252
    .local v1, "taskStackBuilder":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 1253
    iget-object v2, v6, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_d

    .local v2, "activity":Landroid/app/Activity;
    const/4 v3, 0x0

    .line 1254
    .local v3, "$i$a$-let-NavController$handleDeepLink$1":I
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1256
    invoke-virtual {v2, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1257
    nop

    .line 1253
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "$i$a$-let-NavController$handleDeepLink$1":I
    nop

    .line 1258
    :cond_d
    return v12

    .line 1260
    .end local v1    # "taskStackBuilder":Landroidx/core/app/TaskStackBuilder;
    :cond_e
    and-int v1, v16, v1

    const-string v4, "Deep Linking failed: destination "

    if-eqz v1, :cond_12

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1263
    iget-object v0, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v12, v4

    move/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "args":[Landroid/os/Bundle;
    .local v17, "args":[Landroid/os/Bundle;
    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    goto :goto_6

    .line 1262
    .end local v17    # "args":[Landroid/os/Bundle;
    .restart local v5    # "args":[Landroid/os/Bundle;
    :cond_f
    move-object v12, v4

    move-object/from16 v17, v5

    .line 1265
    .end local v5    # "args":[Landroid/os/Bundle;
    .restart local v17    # "args":[Landroid/os/Bundle;
    :goto_6
    const/4 v0, 0x0

    .line 1266
    .local v0, "index":I
    :goto_7
    array-length v1, v13

    if-ge v0, v1, :cond_11

    .line 1267
    aget v1, v13, v0

    .line 1268
    .local v1, "destinationId":I
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    aget-object v0, v17, v0

    .line 1269
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {v6, v1}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 1270
    .local v3, "node":Landroidx/navigation/NavDestination;
    if-eqz v3, :cond_10

    .line 1279
    nop

    .line 1280
    nop

    .line 1281
    new-instance v4, Landroidx/navigation/NavController$handleDeepLink$2;

    invoke-direct {v4, v3, v6}, Landroidx/navigation/NavController$handleDeepLink$2;-><init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v4}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v4

    .line 1300
    nop

    .line 1279
    invoke-direct {v6, v3, v0, v4, v9}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    move v0, v2

    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "destinationId":I
    .end local v3    # "node":Landroidx/navigation/NavDestination;
    goto :goto_7

    .line 1271
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v1    # "destinationId":I
    .restart local v3    # "node":Landroidx/navigation/NavDestination;
    :cond_10
    sget-object v4, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    .line 1272
    iget-object v5, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 1271
    invoke-virtual {v4, v5, v1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1274
    .local v4, "dest":Ljava/lang/String;
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 1275
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " cannot be found from the current destination "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1276
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v12

    .line 1275
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1274
    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1303
    .end local v1    # "destinationId":I
    .end local v2    # "index":I
    .end local v3    # "node":Landroidx/navigation/NavDestination;
    .end local v4    # "dest":Ljava/lang/String;
    .local v0, "index":I
    :cond_11
    const/4 v1, 0x1

    return v1

    .line 1306
    .end local v0    # "index":I
    .end local v17    # "args":[Landroid/os/Bundle;
    .restart local v5    # "args":[Landroid/os/Bundle;
    :cond_12
    move-object v12, v4

    move-object/from16 v17, v5

    .end local v5    # "args":[Landroid/os/Bundle;
    .restart local v17    # "args":[Landroid/os/Bundle;
    iget-object v1, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1307
    .local v1, "graph":Landroidx/navigation/NavGraph;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v13

    :goto_8
    if-ge v2, v3, :cond_18

    .line 1308
    aget v4, v13, v2

    .line 1309
    .local v4, "destinationId":I
    aget-object v5, v17, v2

    .line 1310
    .local v5, "arguments":Landroid/os/Bundle;
    if-nez v2, :cond_13

    iget-object v9, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v9, Landroidx/navigation/NavDestination;

    goto :goto_9

    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v9

    .line 1311
    .local v9, "node":Landroidx/navigation/NavDestination;
    :goto_9
    if-eqz v9, :cond_17

    .line 1317
    array-length v0, v13

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_16

    .line 1319
    instance-of v0, v9, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_15

    .line 1320
    move-object v0, v9

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 1323
    .end local v1    # "graph":Landroidx/navigation/NavGraph;
    .local v0, "graph":Landroidx/navigation/NavGraph;
    :goto_a
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_14

    .line 1324
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_a

    .line 1323
    :cond_14
    move-object v1, v0

    move/from16 v20, v3

    const/4 v3, 0x0

    goto :goto_b

    .line 1319
    .end local v0    # "graph":Landroidx/navigation/NavGraph;
    .restart local v1    # "graph":Landroidx/navigation/NavGraph;
    :cond_15
    move/from16 v20, v3

    const/4 v3, 0x0

    goto :goto_b

    .line 1329
    :cond_16
    nop

    .line 1330
    nop

    .line 1331
    nop

    .line 1332
    new-instance v20, Landroidx/navigation/NavOptions$Builder;

    invoke-direct/range {v20 .. v20}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 1333
    iget-object v0, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v21

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo$default(Landroidx/navigation/NavOptions$Builder;IZZILjava/lang/Object;)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 1334
    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 1335
    invoke-virtual {v0, v3}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v0

    .line 1337
    nop

    .line 1329
    const/4 v3, 0x0

    invoke-direct {v6, v9, v5, v0, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1307
    .end local v4    # "destinationId":I
    .end local v5    # "arguments":Landroid/os/Bundle;
    .end local v9    # "node":Landroidx/navigation/NavDestination;
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object v9, v3

    move/from16 v3, v20

    const/4 v0, 0x0

    goto :goto_8

    .line 1312
    .restart local v4    # "destinationId":I
    .restart local v5    # "arguments":Landroid/os/Bundle;
    .restart local v9    # "node":Landroidx/navigation/NavDestination;
    :cond_17
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, v4}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "dest":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1314
    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " cannot be found in graph "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1341
    .end local v0    # "dest":Ljava/lang/String;
    .end local v4    # "destinationId":I
    .end local v5    # "arguments":Landroid/os/Bundle;
    .end local v9    # "node":Landroidx/navigation/NavDestination;
    .end local v18    # "i":I
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroidx/navigation/NavController;->deepLinkHandled:Z

    .line 1342
    return v0

    .line 1217
    .end local v1    # "graph":Landroidx/navigation/NavGraph;
    .end local v15    # "invalidDestinationDisplayName":Ljava/lang/String;
    .end local v16    # "flags":I
    .end local v17    # "args":[Landroid/os/Bundle;
    :cond_19
    :goto_c
    const/4 v0, 0x0

    return v0
.end method

.method public navigate(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 1438
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1454
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 1455
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;

    .line 1472
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1473
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 15
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 1496
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1497
    .local v3, "finalNavOptions":Landroidx/navigation/NavOptions;
    nop

    .line 1498
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1499
    iget-object v4, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v4, Landroidx/navigation/NavDestination;

    goto :goto_0

    .line 1501
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 1498
    :goto_0
    nop

    .line 1497
    if-eqz v4, :cond_b

    .line 1505
    .local v4, "currentNode":Landroidx/navigation/NavDestination;
    nop

    .line 1504
    move/from16 v5, p1

    .line 1506
    .local v5, "destId":I
    invoke-virtual {v4, v1}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v6

    .line 1507
    .local v6, "navAction":Landroidx/navigation/NavAction;
    const/4 v7, 0x0

    .line 1508
    .local v7, "combinedArgs":Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 1509
    if-nez v3, :cond_1

    .line 1510
    invoke-virtual {v6}, Landroidx/navigation/NavAction;->getNavOptions()Landroidx/navigation/NavOptions;

    move-result-object v3

    .line 1512
    :cond_1
    invoke-virtual {v6}, Landroidx/navigation/NavAction;->getDestinationId()I

    move-result v5

    .line 1513
    invoke-virtual {v6}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 1514
    .local v8, "navActionArgs":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 1515
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    move-object v7, v9

    .line 1516
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1519
    .end local v8    # "navActionArgs":Landroid/os/Bundle;
    :cond_2
    if-eqz v2, :cond_4

    .line 1520
    if-nez v7, :cond_3

    .line 1521
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object v7, v8

    .line 1523
    :cond_3
    invoke-virtual {v7, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1525
    :cond_4
    if-nez v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 1526
    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v8

    invoke-virtual {v3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 1527
    return-void

    .line 1529
    :cond_5
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_a

    .line 1532
    invoke-virtual {p0, v5}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    .line 1533
    .local v10, "node":Landroidx/navigation/NavDestination;
    if-nez v10, :cond_9

    .line 1534
    sget-object v11, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v12, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v11, v12, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    .line 1535
    .local v11, "dest":Ljava/lang/String;
    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    :goto_2
    const-string v9, " cannot be found from the current destination "

    if-nez v8, :cond_8

    const/4 v8, 0x0

    .line 1536
    .local v8, "$i$a$-require-NavController$navigate$2":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Navigation destination "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " referenced from action "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1537
    sget-object v13, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v14, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v13, v14, v1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 1536
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1537
    nop

    .line 1536
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1538
    nop

    .line 1536
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1535
    .end local v8    # "$i$a$-require-NavController$navigate$2":I
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1540
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    .line 1541
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Navigation action/destination "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1542
    nop

    .line 1541
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1540
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1545
    .end local v11    # "dest":Ljava/lang/String;
    :cond_9
    move-object/from16 v8, p4

    invoke-direct {p0, v10, v7, v3, v8}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1546
    return-void

    .line 1529
    .end local v10    # "node":Landroidx/navigation/NavDestination;
    :cond_a
    move-object/from16 v8, p4

    const/4 v9, 0x0

    .line 1530
    .local v9, "$i$a$-require-NavController$navigate$1":I
    nop

    .line 1529
    .end local v9    # "$i$a$-require-NavController$navigate$1":I
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1502
    .end local v4    # "currentNode":Landroidx/navigation/NavDestination;
    .end local v5    # "destId":I
    .end local v6    # "navAction":Landroidx/navigation/NavAction;
    .end local v7    # "combinedArgs":Landroid/os/Bundle;
    :cond_b
    move-object/from16 v8, p4

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "no current navigation node"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public navigate(Landroid/net/Uri;)V
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1560
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;)V

    .line 1561
    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1576
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1577
    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1597
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1598
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;)V
    .locals 1
    .param p1, "request"    # Landroidx/navigation/NavDeepLinkRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V

    .line 1614
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V
    .locals 1
    .param p1, "request"    # Landroidx/navigation/NavDeepLinkRequest;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1630
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1631
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 9
    .param p1, "request"    # Landroidx/navigation/NavDeepLinkRequest;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->matchDeepLink(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 1653
    .local v0, "deepLinkMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v0, :cond_1

    .line 1654
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 1655
    .local v1, "destination":Landroidx/navigation/NavDestination;
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1656
    .local v2, "args":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 1657
    .local v3, "node":Landroidx/navigation/NavDestination;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object v5, v4

    .local v5, "$this$navigate_u24lambda_u2d30":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 1658
    .local v6, "$i$a$-apply-NavController$navigate$intent$1":I
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1660
    nop

    .line 1657
    .end local v5    # "$this$navigate_u24lambda_u2d30":Landroid/content/Intent;
    .end local v6    # "$i$a$-apply-NavController$navigate$intent$1":I
    nop

    .line 1661
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android-support-nav:controller:deepLinkIntent"

    move-object v6, v4

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1662
    invoke-direct {p0, v3, v2, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1669
    .end local v1    # "destination":Landroidx/navigation/NavDestination;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v3    # "node":Landroidx/navigation/NavDestination;
    .end local v4    # "intent":Landroid/content/Intent;
    return-void

    .line 1664
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Navigation destination that matches request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be found in the navigation graph "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1666
    iget-object v3, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1665
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1664
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public navigate(Landroidx/navigation/NavDirections;)V
    .locals 3
    .param p1, "directions"    # Landroidx/navigation/NavDirections;

    const-string v0, "directions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1930
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 1931
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/NavOptions;)V
    .locals 2
    .param p1, "directions"    # Landroidx/navigation/NavDirections;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "directions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1941
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 1942
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/Navigator$Extras;)V
    .locals 3
    .param p1, "directions"    # Landroidx/navigation/NavDirections;
    .param p2, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "directions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorExtras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1952
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1953
    return-void
.end method

.method public final navigate(Ljava/lang/String;)V
    .locals 7

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;)V
    .locals 7

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    return-void
.end method

.method public final navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 5
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1984
    nop

    .line 1985
    sget-object v0, Landroidx/navigation/NavDeepLinkRequest$Builder;->Companion:Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;

    sget-object v1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "$this$toUri$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2452
    .local v2, "$i$f$toUri":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Uri.parse(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1985
    .end local v1    # "$this$toUri$iv":Ljava/lang/String;
    .end local v2    # "$i$f$toUri":I
    invoke-virtual {v0, v3}, Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;->fromUri(Landroid/net/Uri;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkRequest$Builder;->build()Landroidx/navigation/NavDeepLinkRequest;

    move-result-object v0

    .line 1986
    nop

    .line 1984
    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1988
    return-void
.end method

.method public final navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavOptionsBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1965
    invoke-static {p2}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 1966
    return-void
.end method

.method public navigateUp()Z
    .locals 2

    .line 747
    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 748
    iget-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 749
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 750
    invoke-direct {p0}, Landroidx/navigation/NavController;->tryRelaunchUpToExplicitStack()Z

    move-result v1

    return v1

    .line 752
    :cond_2
    invoke-direct {p0}, Landroidx/navigation/NavController;->tryRelaunchUpToGeneratedStack()Z

    move-result v1

    return v1

    .line 755
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    return v0
.end method

.method public popBackStack()Z
    .locals 2

    .line 430
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    move-result v0

    .line 430
    :goto_0
    return v0
.end method

.method public popBackStack(IZ)Z
    .locals 1
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    move-result v0

    return v0
.end method

.method public popBackStack(IZZ)Z
    .locals 2
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    .line 472
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v0

    .line 475
    .local v0, "popped":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final popBackStack(Ljava/lang/String;Z)Z
    .locals 7

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final popBackStack(Ljava/lang/String;ZZ)Z
    .locals 1
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    move-result v0

    return v0
.end method

.method public final popBackStackFromNavigator$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .param p1, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "onComplete"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "popUpTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 624
    .local v0, "popIndex":I
    if-gez v0, :cond_0

    .line 626
    nop

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring pop of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as it was not found on the current back stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    const-string v2, "NavController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    return-void

    .line 631
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 634
    nop

    .line 635
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    .line 636
    nop

    .line 637
    nop

    .line 634
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    .line 642
    :cond_1
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    .line 643
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 644
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 645
    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 646
    return-void
.end method

.method public final populateVisibleEntries$navigation_runtime_release()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 998
    .local v0, "entries":Ljava/util/List;
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 2382
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v8, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v9, 0x0

    .line 999
    .local v9, "$i$a$-forEach-NavController$populateVisibleEntries$1":I
    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    invoke-virtual {v8}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-interface {v11}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 2383
    .local v12, "$i$f$filter":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 2384
    .local v15, "$i$f$filterTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .local v7, "entry":Landroidx/navigation/NavBackStackEntry;
    const/16 v18, 0x0

    .line 1000
    .local v18, "$i$a$-filter-NavController$populateVisibleEntries$1$1":I
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1001
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    move-object/from16 v19, v2

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v19, "$this$forEach$iv":Ljava/lang/Iterable;
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    .line 1000
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_0
    move-object/from16 v19, v2

    .line 1001
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_1
    const/4 v1, 0x0

    .line 1000
    :goto_2
    nop

    .end local v7    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v18    # "$i$a$-filter-NavController$populateVisibleEntries$1$1":I
    if-eqz v1, :cond_2

    invoke-interface {v13, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    goto :goto_1

    .line 2385
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_3
    move-object/from16 v19, v2

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$filterTo":I
    .restart local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    move-object v1, v13

    check-cast v1, Ljava/util/List;

    .line 2383
    nop

    .end local v11    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filter":I
    check-cast v1, Ljava/lang/Iterable;

    .line 999
    invoke-static {v10, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1003
    move-object/from16 v1, p0

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v8    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v9    # "$i$a$-forEach-NavController$populateVisibleEntries$1":I
    goto :goto_0

    .line 2386
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    :cond_4
    move-object/from16 v19, v2

    .line 1006
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 2387
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2388
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .local v9, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v10, 0x0

    .line 1007
    .local v10, "$i$a$-filter-NavController$populateVisibleEntries$2":I
    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1008
    invoke-virtual {v9}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    sget-object v12, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v11, v12}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_4

    :cond_6
    const/4 v11, 0x0

    .line 1007
    :goto_4
    nop

    .end local v9    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v10    # "$i$a$-filter-NavController$populateVisibleEntries$2":I
    if-eqz v11, :cond_5

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2389
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 2387
    nop

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    check-cast v4, Ljava/lang/Iterable;

    .line 1006
    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1010
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2390
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 2391
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .local v8, "it":Landroidx/navigation/NavBackStackEntry;
    const/4 v9, 0x0

    .line 1011
    .local v9, "$i$a$-filter-NavController$populateVisibleEntries$3":I
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    instance-of v10, v10, Landroidx/navigation/NavGraph;

    .end local v8    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "$i$a$-filter-NavController$populateVisibleEntries$3":I
    if-nez v10, :cond_8

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2392
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 2390
    nop

    .line 1010
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    return-object v3
.end method

.method public removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/navigation/NavController$OnDestinationChangedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "navState"    # Landroid/os/Bundle;

    .line 2086
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 2087
    return-void

    .line 2089
    :cond_0
    iget-object v2, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2090
    const-string v2, "android-support-nav:controller:navigatorState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroidx/navigation/NavController;->navigatorStateToRestore:Landroid/os/Bundle;

    .line 2091
    const-string v2, "android-support-nav:controller:backStack"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    .line 2092
    iget-object v2, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2093
    const-string v2, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 2094
    .local v2, "backStackDestIds":[I
    const-string v3, "android-support-nav:controller:backStackIds"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2095
    .local v3, "backStackIds":Ljava/util/ArrayList;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2096
    move-object v4, v2

    .local v4, "$this$forEachIndexed$iv":[I
    const/4 v5, 0x0

    .line 2456
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .line 2457
    .local v6, "index$iv":I
    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget v9, v4, v8

    .local v9, "item$iv":I
    add-int/lit8 v10, v6, 0x1

    .local v6, "index":I
    .local v10, "index$iv":I
    move v11, v9

    .local v11, "id":I
    const/4 v12, 0x0

    .local v12, "$i$a$-forEachIndexed-NavController$restoreState$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2097
    iget-object v14, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    nop

    .end local v6    # "index":I
    .end local v11    # "id":I
    .end local v12    # "$i$a$-forEachIndexed-NavController$restoreState$1":I
    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_0

    .line 2458
    .end local v9    # "item$iv":I
    .end local v10    # "index$iv":I
    .local v6, "index$iv":I
    :cond_1
    nop

    .line 2100
    .end local v4    # "$this$forEachIndexed$iv":[I
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "index$iv":I
    :cond_2
    const-string v4, "android-support-nav:controller:backStackStates"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2101
    .local v4, "backStackStateIds":Ljava/util/ArrayList;
    if-eqz v4, :cond_7

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2459
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "id":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2102
    .local v10, "$i$a$-forEach-NavController$restoreState$2":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android-support-nav:controller:backStackStates:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 2103
    .local v11, "backStackState":[Landroid/os/Parcelable;
    if-eqz v11, :cond_5

    .line 2104
    iget-object v12, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    const-string v13, "id"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lkotlin/collections/ArrayDeque;

    .line 2105
    array-length v14, v11

    .line 2104
    invoke-direct {v13, v14}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    .line 2106
    move-object v14, v13

    .local v14, "$this$restoreState_u24lambda_u2d46_u24lambda_u2d45":Lkotlin/collections/ArrayDeque;
    const/4 v15, 0x0

    .line 2107
    .local v15, "$i$a$-apply-NavController$restoreState$2$1":I
    invoke-static {v11}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Parcelable;

    .line 2108
    .local v17, "parcelable":Landroid/os/Parcelable;
    if-eqz v17, :cond_3

    move-object/from16 v18, v2

    .end local v2    # "backStackDestIds":[I
    .local v18, "backStackDestIds":[I
    move-object/from16 v2, v17

    check-cast v2, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v14, v2}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    goto :goto_2

    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    :cond_3
    move-object/from16 v18, v2

    .end local v2    # "backStackDestIds":[I
    .restart local v18    # "backStackDestIds":[I
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v7, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    invoke-direct {v2, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2110
    .end local v17    # "parcelable":Landroid/os/Parcelable;
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    :cond_4
    move-object/from16 v18, v2

    .line 2106
    .end local v2    # "backStackDestIds":[I
    .end local v14    # "$this$restoreState_u24lambda_u2d46_u24lambda_u2d45":Lkotlin/collections/ArrayDeque;
    .end local v15    # "$i$a$-apply-NavController$restoreState$2$1":I
    .restart local v18    # "backStackDestIds":[I
    nop

    .line 2104
    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2103
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    :cond_5
    move-object/from16 v18, v2

    .line 2112
    .end local v2    # "backStackDestIds":[I
    .restart local v18    # "backStackDestIds":[I
    :goto_3
    move-object/from16 v2, v18

    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "$i$a$-forEach-NavController$restoreState$2":I
    .end local v11    # "backStackState":[Landroid/os/Parcelable;
    goto :goto_1

    .line 2460
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    :cond_6
    move-object/from16 v18, v2

    .end local v2    # "backStackDestIds":[I
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    .restart local v18    # "backStackDestIds":[I
    goto :goto_4

    .line 2101
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    :cond_7
    move-object/from16 v18, v2

    .line 2113
    .end local v2    # "backStackDestIds":[I
    .restart local v18    # "backStackDestIds":[I
    :goto_4
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    .line 2114
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 18

    .line 2010
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2011
    .local v1, "b":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2012
    .local v2, "navigatorNames":Ljava/util/ArrayList;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2013
    .local v3, "navigatorState":Landroid/os/Bundle;
    iget-object v4, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v4}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "name":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/Navigator;

    .line 2014
    .local v5, "value":Landroidx/navigation/Navigator;
    invoke-virtual {v5}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    move-result-object v7

    .line 2015
    .local v7, "savedState":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 2016
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .end local v5    # "value":Landroidx/navigation/Navigator;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "savedState":Landroid/os/Bundle;
    goto :goto_0

    .line 2020
    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2021
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2022
    const-string v4, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2023
    const-string v4, "android-support-nav:controller:navigatorState"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2025
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2026
    if-nez v1, :cond_3

    .line 2027
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2029
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    .line 2030
    .local v4, "backStack":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 2031
    .local v5, "index":I
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 2032
    .local v7, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index":I
    .local v8, "index":I
    new-instance v9, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v9, v7}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    check-cast v9, Landroid/os/Parcelable;

    aput-object v9, v4, v5

    move v5, v8

    .end local v7    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_1

    .line 2034
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_4
    const-string v6, "android-support-nav:controller:backStack"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2036
    .end local v4    # "backStack":[Landroid/os/Parcelable;
    .end local v5    # "index":I
    :cond_5
    iget-object v4, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2037
    if-nez v1, :cond_6

    .line 2038
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2040
    :cond_6
    iget-object v4, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2041
    .local v4, "backStackDestIds":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2042
    .local v5, "backStackIds":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 2043
    .local v6, "index":I
    iget-object v7, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .local v9, "destId":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2044
    .local v8, "id":Ljava/lang/String;
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "index":I
    .local v10, "index":I
    aput v9, v4, v6

    .line 2045
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v10

    goto :goto_2

    .line 2047
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "destId":I
    .end local v10    # "index":I
    .restart local v6    # "index":I
    :cond_7
    const-string v7, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2048
    const-string v7, "android-support-nav:controller:backStackIds"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2050
    .end local v4    # "backStackDestIds":[I
    .end local v5    # "backStackIds":Ljava/util/ArrayList;
    .end local v6    # "index":I
    :cond_8
    iget-object v4, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2051
    if-nez v1, :cond_9

    .line 2052
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2054
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .local v4, "backStackStateIds":Ljava/util/ArrayList;
    iget-object v5, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "id":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/ArrayDeque;

    .line 2056
    .local v6, "backStackStates":Lkotlin/collections/ArrayDeque;
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2057
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v8

    new-array v8, v8, [Landroid/os/Parcelable;

    .line 2058
    .local v8, "states":[Landroid/os/Parcelable;
    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 2453
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 2454
    .local v11, "index$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "index$iv":I
    .local v14, "index$iv":I
    if-gez v11, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_a
    move-object v15, v13

    check-cast v15, Landroidx/navigation/NavBackStackEntryState;

    .local v11, "stateIndex":I
    .local v15, "backStackState":Landroidx/navigation/NavBackStackEntryState;
    const/16 v16, 0x0

    .line 2059
    .local v16, "$i$a$-forEachIndexed-NavController$saveState$1":I
    move-object/from16 v17, v15

    check-cast v17, Landroid/os/Parcelable;

    aput-object v17, v8, v11

    .line 2060
    move v11, v14

    .end local v11    # "stateIndex":I
    .end local v13    # "item$iv":Ljava/lang/Object;
    .end local v15    # "backStackState":Landroidx/navigation/NavBackStackEntryState;
    .end local v16    # "$i$a$-forEachIndexed-NavController$saveState$1":I
    goto :goto_4

    .line 2455
    .end local v14    # "index$iv":I
    .local v11, "index$iv":I
    :cond_b
    nop

    .line 2061
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android-support-nav:controller:backStackStates:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v6    # "backStackStates":Lkotlin/collections/ArrayDeque;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "states":[Landroid/os/Parcelable;
    goto :goto_3

    .line 2063
    :cond_c
    const-string v5, "android-support-nav:controller:backStackStates"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2065
    .end local v4    # "backStackStateIds":Ljava/util/ArrayList;
    :cond_d
    iget-boolean v4, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-eqz v4, :cond_f

    .line 2066
    if-nez v1, :cond_e

    .line 2067
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2069
    :cond_e
    const-string v4, "android-support-nav:controller:deepLinkHandled"

    iget-boolean v5, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2071
    :cond_f
    return-object v1
.end method

.method public setGraph(I)V
    .locals 2
    .param p1, "graphResId"    # I

    .line 1039
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 1040
    return-void
.end method

.method public setGraph(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "graphResId"    # I
    .param p2, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 1058
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 1059
    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;)V
    .locals 1
    .param p1, "graph"    # Landroidx/navigation/NavGraph;

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "startDestinationArgs"    # Landroid/os/Bundle;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "graph"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    iget-object v0, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1075
    iget-object v0, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    move-object v8, v0

    .local v8, "previousGraph":Landroidx/navigation/NavGraph;
    const/4 v9, 0x0

    .line 1078
    .local v9, "$i$a$-let-NavController$setGraph$1":I
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 1079
    .local v10, "savedBackStackIds":Ljava/util/ArrayList;
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2393
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    .local v4, "id":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 1080
    .local v5, "$i$a$-forEach-NavController$setGraph$1$1":I
    const-string v11, "id"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v6, v11}, Landroidx/navigation/NavController;->clearBackStackInternal(I)Z

    .line 1081
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "$i$a$-forEach-NavController$setGraph$1$1":I
    goto :goto_0

    .line 2394
    :cond_0
    nop

    .line 1083
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    .line 1075
    .end local v8    # "previousGraph":Landroidx/navigation/NavGraph;
    .end local v9    # "$i$a$-let-NavController$setGraph$1":I
    .end local v10    # "savedBackStackIds":Ljava/util/ArrayList;
    nop

    .line 1085
    :cond_1
    iput-object v7, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1086
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroidx/navigation/NavController;->onGraphCreated(Landroid/os/Bundle;)V

    goto/16 :goto_5

    .line 1088
    :cond_2
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_7

    .line 1089
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    .line 1090
    .local v3, "newDestination":Landroidx/navigation/NavDestination;
    iget-object v4, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroidx/collection/SparseArrayCompat;->replace(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 2395
    .local v5, "$i$f$filter":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v4

    .local v9, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 2396
    .local v10, "$i$f$filterTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    .local v13, "currentEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v14, 0x0

    .line 1095
    .local v14, "$i$a$-filter-NavController$setGraph$2":I
    if-eqz v3, :cond_3

    invoke-virtual {v13}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/navigation/NavDestination;->getId()I

    move-result v15

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-ne v15, v0, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .end local v13    # "currentEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v14    # "$i$a$-filter-NavController$setGraph$2":I
    :goto_3
    if-eqz v15, :cond_4

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, p2

    goto :goto_2

    .line 2397
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$filterTo":I
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    .line 2395
    nop

    .end local v4    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filter":I
    check-cast v0, Ljava/lang/Iterable;

    .line 1096
    nop

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 2398
    .local v4, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .local v9, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v10, 0x0

    .line 1097
    .local v10, "$i$a$-forEach-NavController$setGraph$3":I
    const-string v11, "newDestination"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroidx/navigation/NavBackStackEntry;->setDestination(Landroidx/navigation/NavDestination;)V

    .line 1098
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    .end local v9    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v10    # "$i$a$-forEach-NavController$setGraph$3":I
    goto :goto_4

    .line 2399
    :cond_6
    nop

    .line 1088
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "newDestination":Landroidx/navigation/NavDestination;
    .end local v4    # "$i$f$forEach":I
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p2

    goto :goto_1

    .line 1101
    .end local v1    # "i":I
    :cond_7
    :goto_5
    return-void
.end method

.method public final setHostLifecycleState$navigation_runtime_release(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/lifecycle/Lifecycle$State;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 177
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    return-void

    .line 2122
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2123
    :cond_1
    iput-object p1, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2124
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2125
    return-void
.end method

.method public setNavigatorProvider(Landroidx/navigation/NavigatorProvider;)V
    .locals 2
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    const-string v0, "navigatorProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iput-object p1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 241
    return-void

    .line 2365
    :cond_0
    const/4 v0, 0x0

    .line 239
    .local v0, "$i$a$-check-NavController$navigatorProvider$1":I
    nop

    .end local v0    # "$i$a$-check-NavController$navigatorProvider$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavigatorProvider must be set before setGraph call"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 4
    .param p1, "dispatcher"    # Landroidx/activity/OnBackPressedDispatcher;

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Landroidx/navigation/NavController;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    return-void

    .line 2133
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 2137
    .local v0, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    iget-object v1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 2139
    iput-object p1, p0, Landroidx/navigation/NavController;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2140
    iget-object v1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 2144
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .local v1, "$this$setOnBackPressedDispatcher_u24lambda_u2d48":Landroidx/lifecycle/Lifecycle;
    const/4 v2, 0x0

    .line 2145
    .local v2, "$i$a$-apply-NavController$setOnBackPressedDispatcher$1":I
    iget-object v3, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2146
    iget-object v3, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2147
    nop

    .line 2144
    .end local v1    # "$this$setOnBackPressedDispatcher_u24lambda_u2d48":Landroidx/lifecycle/Lifecycle;
    .end local v2    # "$i$a$-apply-NavController$setOnBackPressedDispatcher$1":I
    nop

    .line 2148
    return-void

    .line 2133
    .end local v0    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    :cond_1
    const/4 v0, 0x0

    .line 2134
    .local v0, "$i$a$-checkNotNull-NavController$setOnBackPressedDispatcher$lifecycleOwner$1":I
    nop

    .line 2133
    .end local v0    # "$i$a$-checkNotNull-NavController$setOnBackPressedDispatcher$lifecycleOwner$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 2
    .param p1, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    const-string/jumbo v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    sget-object v1, Landroidx/navigation/NavControllerViewModel;->Companion:Landroidx/navigation/NavControllerViewModel$Companion;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavControllerViewModel$Companion;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2167
    return-void

    .line 2169
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2170
    sget-object v0, Landroidx/navigation/NavControllerViewModel;->Companion:Landroidx/navigation/NavControllerViewModel$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavControllerViewModel$Companion;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 2171
    return-void

    .line 2365
    :cond_1
    const/4 v0, 0x0

    .line 2169
    .local v0, "$i$a$-check-NavController$setViewModelStore$1":I
    nop

    .end local v0    # "$i$a$-check-NavController$setViewModelStore$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewModelStore should be set before setGraph call"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;
    .locals 5
    .param p1, "child"    # Landroidx/navigation/NavBackStackEntry;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 152
    .local v0, "parent":Landroidx/navigation/NavBackStackEntry;
    :cond_0
    iget-object v2, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    .local v1, "count":Ljava/lang/Integer;
    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 155
    iget-object v2, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .local v2, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v3

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2366
    .local v4, "$i$f$get":I
    invoke-virtual {v2, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    .line 155
    .end local v2    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$get":I
    nop

    .line 154
    nop

    .line 156
    .local v2, "navGraphNavigator":Landroidx/navigation/Navigator;
    iget-object v3, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 157
    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v2    # "navGraphNavigator":Landroidx/navigation/Navigator;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public final updateBackStackLifecycle$navigation_runtime_release()V
    .locals 14

    .line 918
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getBackQueue()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 919
    .local v0, "backStack":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    return-void

    .line 926
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 927
    .local v1, "nextResumed":Landroidx/navigation/NavDestination;
    const/4 v2, 0x0

    .line 928
    .local v2, "nextStarted":Landroidx/navigation/NavDestination;
    instance-of v3, v1, Landroidx/navigation/FloatingWindow;

    if-eqz v3, :cond_2

    .line 931
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 932
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 933
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 934
    .local v4, "destination":Landroidx/navigation/NavDestination;
    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_1

    .line 935
    move-object v2, v4

    .line 936
    nop

    .line 944
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 945
    .local v3, "upwardStateTransitions":Ljava/util/HashMap;
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 946
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 947
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 948
    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    .line 949
    .local v6, "currentMaxLifecycle":Landroidx/lifecycle/Lifecycle$State;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    .line 950
    .local v7, "destination":Landroidx/navigation/NavDestination;
    if-eqz v1, :cond_7

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_7

    .line 953
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_6

    .line 954
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v8

    .line 955
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v8

    .line 954
    nop

    .line 956
    .local v8, "navigator":Landroidx/navigation/Navigator;
    iget-object v9, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 957
    .local v9, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-eqz v10, :cond_3

    invoke-interface {v10, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 958
    .local v10, "transitioning":Ljava/lang/Boolean;
    :goto_1
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_5

    .line 959
    move-object v11, v3

    check-cast v11, Ljava/util/Map;

    sget-object v12, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 961
    :cond_5
    move-object v11, v3

    check-cast v11, Ljava/util/Map;

    sget-object v12, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v11, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    .end local v8    # "navigator":Landroidx/navigation/Navigator;
    .end local v9    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v10    # "transitioning":Ljava/lang/Boolean;
    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroidx/navigation/NavDestination;

    goto/16 :goto_0

    .line 965
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_a

    .line 966
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v8, :cond_8

    .line 969
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v8}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_4

    .line 970
    :cond_8
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v8, :cond_9

    .line 973
    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    :cond_9
    :goto_4
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Landroidx/navigation/NavDestination;

    goto/16 :goto_0

    .line 977
    :cond_a
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v8}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "currentMaxLifecycle":Landroidx/lifecycle/Lifecycle$State;
    .end local v7    # "destination":Landroidx/navigation/NavDestination;
    goto/16 :goto_0

    .line 982
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 983
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 984
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 985
    .restart local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/Lifecycle$State;

    .line 986
    .local v6, "newState":Landroidx/lifecycle/Lifecycle$State;
    if-eqz v6, :cond_c

    .line 987
    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_5

    .line 990
    :cond_c
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "newState":Landroidx/lifecycle/Lifecycle$State;
    goto :goto_5

    .line 993
    :cond_d
    return-void
.end method
