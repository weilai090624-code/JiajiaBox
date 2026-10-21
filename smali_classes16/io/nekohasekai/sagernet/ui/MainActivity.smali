.class public final Lio/nekohasekai/sagernet/ui/MainActivity;
.super Lio/nekohasekai/sagernet/ui/ThemedActivity;
.source "MainActivity.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;
.implements Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;
.implements Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\nio/nekohasekai/sagernet/ui/MainActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1538:1\n13409#2:1539\n13410#2:1541\n1#3:1540\n774#4:1542\n865#4,2:1543\n1863#4,2:1545\n1863#4,2:1547\n808#4,11:1551\n295#4,2:1562\n808#4,11:1599\n1863#4,2:1610\n1863#4,2:1612\n774#4:1614\n865#4,2:1615\n1863#4,2:1617\n808#4,11:1619\n774#4:1630\n865#4,2:1631\n1863#4,2:1633\n37#5,2:1549\n381#6,7:1564\n381#6,7:1571\n381#6,7:1578\n381#6,7:1585\n381#6,7:1592\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\nio/nekohasekai/sagernet/ui/MainActivity\n*L\n264#1:1539\n264#1:1541\n346#1:1542\n346#1:1543,2\n347#1:1545,2\n950#1:1547,2\n1309#1:1551,11\n1310#1:1562,2\n1344#1:1599,11\n1344#1:1610,2\n1355#1:1612,2\n1469#1:1614\n1469#1:1615,2\n1470#1:1617,2\n1486#1:1619,11\n1487#1:1630\n1487#1:1631,2\n1490#1:1633,2\n1245#1:1549,2\n1326#1:1564,7\n1327#1:1571,7\n1328#1:1578,7\n1329#1:1585,7\n1330#1:1592,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0014J\u0010\u00101\u001a\u0002022\u0006\u00103\u001a\u000202H\u0002J\u0010\u00104\u001a\u00020.2\u0006\u00105\u001a\u000206H\u0002J\u0008\u00107\u001a\u00020.H\u0002J\u0010\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020\u0016H\u0002J\u0008\u0010:\u001a\u00020.H\u0002J\u0010\u0010;\u001a\u00020.2\u0006\u00109\u001a\u00020\u0016H\u0002J\u0010\u0010<\u001a\u00020.2\u0006\u00109\u001a\u00020\u0016H\u0002J\u0008\u0010=\u001a\u00020.H\u0002J\u0012\u0010>\u001a\u00020.2\u0008\u0008\u0002\u0010?\u001a\u00020#H\u0002J*\u0010@\u001a\u00020.2\u0006\u0010A\u001a\u00020)2\u0006\u0010B\u001a\u00020C2\u0010\u0008\u0002\u0010D\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010EH\u0002J\u0008\u0010F\u001a\u00020.H\u0002J$\u0010G\u001a\u00020!2\u0006\u0010H\u001a\u00020I2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020.0KH\u0002J\u0008\u0010L\u001a\u000206H\u0002J2\u0010M\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010N\u001a\u00020O2\u0008\u0008\u0002\u0010P\u001a\u0002022\u0008\u0008\u0002\u0010Q\u001a\u00020#2\u0008\u0008\u0002\u0010R\u001a\u00020OH\u0002J\u001e\u0010S\u001a\u00020\u000e2\u0006\u0010N\u001a\u00020O2\u000c\u0010T\u001a\u0008\u0012\u0004\u0012\u00020.0EH\u0002J0\u0010U\u001a\u00020.2\u0006\u0010V\u001a\u00020!2\u0006\u0010W\u001a\u00020O2\u0016\u0008\u0002\u0010X\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020.\u0018\u00010KH\u0002J6\u0010Y\u001a\u00020.2\u0006\u0010V\u001a\u00020!2\u0006\u0010Z\u001a\u00020O2\n\u0008\u0002\u0010[\u001a\u0004\u0018\u00010O2\u0010\u0008\u0002\u0010T\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010EH\u0002J\u0008\u0010\\\u001a\u00020.H\u0002J\u0008\u0010]\u001a\u00020.H\u0002J\u0010\u0010^\u001a\u00020.2\u0006\u0010V\u001a\u00020!H\u0002J\u0012\u0010_\u001a\u00020.2\u0008\u0010`\u001a\u0004\u0018\u00010aH\u0002J\u0010\u0010b\u001a\u00020.2\u0006\u0010`\u001a\u00020aH\u0002J\u0008\u0010c\u001a\u00020.H\u0002J\u0010\u0010d\u001a\u00020.2\u0006\u00109\u001a\u00020\u0016H\u0002J\u0018\u0010e\u001a\u00020.2\u0006\u00109\u001a\u00020\u00162\u0006\u0010f\u001a\u00020#H\u0002J\u000e\u0010g\u001a\u00020.2\u0006\u0010h\u001a\u00020#J\u0010\u0010i\u001a\u00020.2\u0006\u0010j\u001a\u00020kH\u0014J\u0006\u0010l\u001a\u00020\u0016J\u0016\u0010m\u001a\u00020.2\u0006\u0010n\u001a\u00020oH\u0086@\u00a2\u0006\u0002\u0010pJ\u0016\u0010q\u001a\u00020.2\u0006\u0010r\u001a\u00020sH\u0082@\u00a2\u0006\u0002\u0010tJ\u0016\u0010u\u001a\u00020.2\u0006\u0010n\u001a\u00020oH\u0086@\u00a2\u0006\u0002\u0010pJ\u0016\u0010v\u001a\u00020.2\u0006\u0010w\u001a\u00020xH\u0082@\u00a2\u0006\u0002\u0010yJ\u0018\u0010z\u001a\u00020.2\u0006\u0010{\u001a\u00020O2\u0006\u0010|\u001a\u00020OH\u0016J\u0010\u0010}\u001a\u00020.2\u0006\u0010~\u001a\u00020\u007fH\u0002J\u0013\u0010\u0080\u0001\u001a\u00020#2\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u0016J\u0012\u0010\u0083\u0001\u001a\u00020.2\u0007\u0010\u0084\u0001\u001a\u00020\u001fH\u0007J\u000b\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u001fH\u0002J\u0015\u0010\u0086\u0001\u001a\u00020.2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0002J\u0011\u0010\u0088\u0001\u001a\u00020#2\u0008\u0008\u0001\u00109\u001a\u00020\u0016J\n\u0010\u0089\u0001\u001a\u00030\u008a\u0001H\u0002J\t\u0010\u008b\u0001\u001a\u00020.H\u0002J\u0007\u0010\u008c\u0001\u001a\u00020.J\u001d\u0010\u008f\u0001\u001a\u00020.2\u0014\u0010\u0090\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0004\u0012\u00020.0KJ\u0007\u0010\u0091\u0001\u001a\u00020.J\u0007\u0010\u0092\u0001\u001a\u00020.J\u0007\u0010\u0093\u0001\u001a\u00020.J*\u0010\u0094\u0001\u001a\u00020.2\u0008\u0010\u0095\u0001\u001a\u00030\u008e\u00012\u000b\u0008\u0002\u0010\u0096\u0001\u001a\u0004\u0018\u00010O2\u0008\u0008\u0002\u0010?\u001a\u00020#H\u0002J\u0019\u0010\u0097\u0001\u001a\u00030\u0098\u00012\u0007\u0010N\u001a\u00030\u0099\u0001H\u0010\u00a2\u0006\u0003\u0008\u009a\u0001J(\u0010\u009b\u0001\u001a\u00020.2\u0008\u0010\u0095\u0001\u001a\u00030\u008e\u00012\u0008\u0010{\u001a\u0004\u0018\u00010O2\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010OH\u0016J\u0013\u0010\u00a0\u0001\u001a\u00020.2\u0008\u0010\u00a1\u0001\u001a\u00030\u00a2\u0001H\u0016J\t\u0010\u00a3\u0001\u001a\u00020.H\u0016J\t\u0010\u00a4\u0001\u001a\u00020.H\u0016J\u0013\u0010\u00a8\u0001\u001a\u00020.2\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u0001H\u0016J\u0013\u0010\u00ab\u0001\u001a\u00020.2\u0008\u0010\u00ac\u0001\u001a\u00030\u00ad\u0001H\u0016J\u0011\u0010\u00ae\u0001\u001a\u00020.2\u0006\u00109\u001a\u00020CH\u0016J\u001c\u0010\u00af\u0001\u001a\u00020.2\u0008\u0010\u00b0\u0001\u001a\u00030\u00b1\u00012\u0007\u0010\u00b2\u0001\u001a\u00020OH\u0016J\t\u0010\u00b3\u0001\u001a\u00020.H\u0014J\t\u0010\u00b4\u0001\u001a\u00020.H\u0014J\t\u0010\u00b5\u0001\u001a\u00020.H\u0014J\u001c\u0010\u00b6\u0001\u001a\u00020#2\u0007\u0010\u00b7\u0001\u001a\u00020\u00162\u0008\u0010\u00b8\u0001\u001a\u00030\u00b9\u0001H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u00150\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R*\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e0\u0019j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000e`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001c0\u0019j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001c`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001f0\u0019j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001f`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001f0\u0019j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u001f`\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u008d\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0004\u0012\u00020.\u0018\u00010KX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u009c\u0001\u001a\u00030\u009d\u0001\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u0019\u0010\u00a5\u0001\u001a\u000c\u0012\u0007\u0012\u0005\u0018\u00010\u00a7\u00010\u00a6\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00ba\u0001"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/MainActivity;",
        "Lio/nekohasekai/sagernet/ui/ThemedActivity;",
        "Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;",
        "Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;",
        "Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;",
        "<init>",
        "()V",
        "binding",
        "Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;",
        "getBinding",
        "()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;",
        "setBinding",
        "(Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;)V",
        "navigation",
        "Landroid/view/View;",
        "getNavigation",
        "()Landroid/view/View;",
        "setNavigation",
        "(Landroid/view/View;)V",
        "navEntries",
        "",
        "Lkotlin/Pair;",
        "",
        "[Lkotlin/Pair;",
        "navRowViews",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "navRowLabels",
        "Landroid/widget/TextView;",
        "currentNavId",
        "glassPageFragments",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "glassRows",
        "Landroid/widget/LinearLayout;",
        "glassExpanded",
        "",
        "glassExpandedNavId",
        "glassMenuCapsuleWidth",
        "glassMorphAnim",
        "Landroid/animation/ValueAnimator;",
        "glassMenuRect",
        "Landroid/graphics/Rect;",
        "glassMenuRectReady",
        "activeFragment",
        "cachedPages",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "dp",
        "",
        "v",
        "buildGlassNavRows",
        "panel",
        "Lio/nekohasekai/sagernet/ui/JJGlassCapsule;",
        "setupGlassDrawer",
        "openNavRow",
        "id",
        "clearGlassHost",
        "enterGlassPage",
        "enterGlassFragmentPage",
        "prepareGlassExpansion",
        "collapseGlassToMenu",
        "animate",
        "morphGlassCapsule",
        "target",
        "animDuration",
        "",
        "onEnd",
        "Lkotlin/Function0;",
        "restoreMenuCapsule",
        "glassPanelColumn",
        "root",
        "Landroid/widget/FrameLayout;",
        "topActions",
        "Lkotlin/Function1;",
        "makeGlassPill",
        "glassText",
        "text",
        "",
        "size",
        "bold",
        "color",
        "glassMenuButton",
        "onClick",
        "addGlassHeader",
        "column",
        "title",
        "extra",
        "addGlassRow",
        "label",
        "summary",
        "buildAboutPanel",
        "buildRoutePanel",
        "renderRouteRules",
        "showRouteEditor",
        "rule",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "confirmDeleteRoute",
        "confirmResetRoutes",
        "checkNavItem",
        "setNavRowVisible",
        "visible",
        "refreshNavMenu",
        "clashApi",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "urlTest",
        "importSubscription",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "finishImportSubscription",
        "subscription",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "importProfile",
        "finishImportProfile",
        "profile",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "(Lio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "missingPlugin",
        "profileName",
        "pluginName",
        "showDownloadDialog",
        "pluginEntry",
        "Lio/nekohasekai/sagernet/fmt/PluginEntry;",
        "onNavigationItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "displayFragment",
        "fragment",
        "currentFragment",
        "syncFloatingNav",
        "Landroidx/fragment/app/Fragment;",
        "displayFragmentWithId",
        "newDashboardFragment",
        "Lio/nekohasekai/sagernet/ui/WebviewFragment;",
        "rebuildPageCache",
        "refreshHomeList",
        "connectionListener",
        "Lio/nekohasekai/sagernet/bg/BaseService$State;",
        "attachConnectionListener",
        "listener",
        "detachConnectionListener",
        "requestVpn",
        "stopVpn",
        "changeState",
        "state",
        "msg",
        "snackbarInternal",
        "Lcom/google/android/material/snackbar/Snackbar;",
        "",
        "snackbarInternal$app_ossDebug",
        "stateChanged",
        "connection",
        "Lio/nekohasekai/sagernet/bg/SagerConnection;",
        "getConnection",
        "()Lio/nekohasekai/sagernet/bg/SagerConnection;",
        "onServiceConnected",
        "service",
        "Lio/nekohasekai/sagernet/aidl/ISagerNetService;",
        "onServiceDisconnected",
        "onBinderDied",
        "connect",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Ljava/lang/Void;",
        "cbSpeedUpdate",
        "stats",
        "Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;",
        "cbTrafficUpdate",
        "data",
        "Lio/nekohasekai/sagernet/aidl/TrafficData;",
        "cbSelectorUpdate",
        "onPreferenceDataStoreChanged",
        "store",
        "Landroidx/preference/PreferenceDataStore;",
        "key",
        "onStart",
        "onStop",
        "onDestroy",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
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


# instance fields
.field private activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

.field public binding:Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

.field private final cachedPages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final connect:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

.field private connectionListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/nekohasekai/sagernet/bg/BaseService$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private currentNavId:I

.field private glassExpanded:Z

.field private glassExpandedNavId:I

.field private glassMenuCapsuleWidth:I

.field private final glassMenuRect:Landroid/graphics/Rect;

.field private glassMenuRectReady:Z

.field private glassMorphAnim:Landroid/animation/ValueAnimator;

.field private final glassPageFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
            ">;"
        }
    .end annotation
.end field

.field private glassRows:Landroid/widget/LinearLayout;

.field private latestDashboardStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

.field private final navEntries:[Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final navRowLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private final navRowViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public navigation:Landroid/view/View;

.field private pagesInitialized:Z

.field private swipeController:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

.field private swipeFrom:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

.field private swipeTo:Lio/nekohasekai/sagernet/ui/ToolbarFragment;


# direct methods
.method public static synthetic $r8$lambda$-ODWHmYYTgJ1JyqjTQJalUE4mOg(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/FrameLayout;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$lambda$26(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0alQyQy__0otUnB5QqtMvll7SWo(Lio/nekohasekai/sagernet/database/RuleEntity;Ljava/util/HashMap;Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->showRouteEditor$lambda$65(Lio/nekohasekai/sagernet/database/RuleEntity;Ljava/util/HashMap;Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1SQL1IB16B14Oj_6l0OVUysJ0dY(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel$lambda$55(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3NkXW9gyrUojZHmbiGwE-xrFF8A(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->prepareGlassExpansion$lambda$21(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$45SL5iUOzVVBi4BfFaxzMGJ_M1s(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton$lambda$35$lambda$34(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPoWLfkoNT4mW0JdcEfdudOpGmU(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->onCreate$lambda$5(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiQY2NHO7BtcfhDfI6WSP6p8FgM(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel$lambda$55$lambda$54$lambda$51(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HkOGzNOe-bmkG3H7EePO47DOTys(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->showRouteEditor$lambda$63(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ISJaS8nKtYs0mknLST3DjDLFiug(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$lambda$26$lambda$25(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MvDfhynioO21_nRmhxPFGpXDwtA(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildAboutPanel$lambda$47(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NiiEgX9Y7T7BfodjwTSkhrGCQKY(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->onCreate$lambda$2$lambda$1(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PDrcTlXkYZztJxL36tmxYOqBhUE(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel$lambda$55$lambda$54$lambda$52(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QfPtwJf45Bs_EQ9R1uW2jmi_y0o(Lio/nekohasekai/sagernet/ui/MainActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->onCreate$lambda$4(Lio/nekohasekai/sagernet/ui/MainActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VJSOEWTloJeFfIjYJ_J9lK_YlbA(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->onCreate$lambda$3(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yfn-YsHFS5bA7O-PgQy2T_OS7T4(Lkotlin/jvm/internal/Ref$IntRef;Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Lkotlin/jvm/internal/Ref$IntRef;ILandroid/content/DialogInterface;I)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lio/nekohasekai/sagernet/ui/MainActivity;->showDownloadDialog$lambda$78(Lkotlin/jvm/internal/Ref$IntRef;Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Lkotlin/jvm/internal/Ref$IntRef;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bDxsy90wVI3LxF4Z7J0SnwNJSsA(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->onCreate$lambda$7$lambda$6(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ciEzeYPuNE5vmZ2PpgLfCYOZuz8(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel$lambda$55$lambda$54(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$db4ltuu-PEV4brYCMMKFyNr06fQ(Lio/nekohasekai/sagernet/ui/MainActivity;ILandroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildGlassNavRows$lambda$14$lambda$13$lambda$12(Lio/nekohasekai/sagernet/ui/MainActivity;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e8CV1-Zun8dP7WXjPtgMFJv2OPQ(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->missingPlugin$lambda$77(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eQjOKcMVZWM56PdaMsA02buu81M(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/MainActivity;->confirmDeleteRoute$lambda$69(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fZjvYP0YUXS9pSS9QJ4S6bldECE(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildAboutPanel$lambda$46(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j7XKxGUlG1jGeGtm3Sxq0OBRNmA(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->prepareGlassExpansion$lambda$24(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l123oBQf8piDMCpz6-a-zYN8HXk(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->onPreferenceDataStoreChanged$lambda$91(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mTSL0GhtHCxOQnadUl1NbNlFiZc(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader$lambda$37(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nWYKOBMPY2FY3-g2vWQhUhSPVHE(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow$lambda$45$lambda$44$lambda$43(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbciNXz-bVdawU3SBDZo6pwvUbU(Lio/nekohasekai/sagernet/ui/MainActivity;Z)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->connect$lambda$90(Lio/nekohasekai/sagernet/ui/MainActivity;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$s109DKRx5CKpKENVwOZBD5uNNv8(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$lambda$27(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sXmqbpGfaw-enolIICUYiESwqQA(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->enterGlassFragmentPage$lambda$19(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjTAe2XbKF8lL1sWl2htnAdfG24(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lio/nekohasekai/sagernet/ui/MainActivity;->morphGlassCapsule$lambda$29$lambda$28(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$trzOYD0KFlvb-Hfb3CmCnefWctg(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->confirmResetRoutes$lambda$70(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uEh_xfLZsW3cB_duL98uw6B6H2I(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->onCreate$lambda$8(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zBTMRaeSmWOXcz3LYjbcFKL7niA(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildAboutPanel$lambda$48(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zW60m_PPfZqs4DvpZej3m1SXv_g(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/MainActivity;->missingPlugin$lambda$76(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 81
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;-><init>()V

    .line 91
    nop

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    const v1, 0x7f0a01e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f13019c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 93
    const v2, 0x7f0a01e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f13019e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 92
    nop

    .line 94
    const v2, 0x7f0a01e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x7f130277

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 92
    nop

    .line 97
    const v2, 0x7f0a01de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v5, 0x7f130198

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v0, v5

    .line 92
    nop

    .line 91
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navEntries:[Lkotlin/Pair;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowViews:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowLabels:Ljava/util/HashMap;

    .line 101
    iput v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassPageFragments:Ljava/util/HashMap;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    .line 1410
    new-instance v0, Lio/nekohasekai/sagernet/bg/SagerConnection;

    invoke-direct {v0, v4, v3}, Lio/nekohasekai/sagernet/bg/SagerConnection;-><init>(IZ)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    .line 1425
    new-instance v0, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$StartService;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/VpnRequestActivity$StartService;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda26;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connect:Landroidx/activity/result/ActivityResultLauncher;

    .line 81
    return-void
.end method

.method public static final synthetic access$collapseGlassToMenu(Lio/nekohasekai/sagernet/ui/MainActivity;Z)V
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "animate"    # Z

    .line 81
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu(Z)V

    return-void
.end method

.method public static final synthetic access$confirmDeleteRoute(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 81
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->confirmDeleteRoute(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    return-void
.end method

.method public static final synthetic access$dp(Lio/nekohasekai/sagernet/ui/MainActivity;F)F
    .registers 3
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "v"    # F

    .line 81
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v0

    return v0
.end method

.method public static final synthetic access$finishImportProfile(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "profile"    # Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 81
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->finishImportProfile(Lio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$finishImportSubscription(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "subscription"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 81
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->finishImportSubscription(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getGlassExpanded$p(Lio/nekohasekai/sagernet/ui/MainActivity;)Z
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 81
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    return v0
.end method

.method public static final synthetic access$glassMenuButton(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;
    .registers 4
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onClick"    # Lkotlin/jvm/functions/Function0;

    .line 81
    invoke-direct {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$glassText(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;
    .registers 7
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$receiver"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "bold"    # Z
    .param p5, "color"    # Ljava/lang/String;

    .line 81
    invoke-direct/range {p0 .. p5}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$makeDarkPill(Lio/nekohasekai/sagernet/ui/MainActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 81
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->makeDarkPill()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$makeGlassPill(Lio/nekohasekai/sagernet/ui/MainActivity;)Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 81
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->makeGlassPill()Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$showRouteEditor(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .registers 2
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 81
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->showRouteEditor(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    return-void
.end method

.method private final addGlassHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 15
    .param p1, "column"    # Landroid/widget/LinearLayout;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "extra"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 665
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$addGlassHeader_u24lambda_u2436":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 666
    .local v2, "$i$a$-apply-MainActivity$addGlassHeader$row$1":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 667
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 668
    nop

    .line 665
    .end local v1    # "$this$addGlassHeader_u24lambda_u2436":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-MainActivity$addGlassHeader$row$1":I
    nop

    .line 669
    .local v0, "row":Landroid/widget/LinearLayout;
    nop

    .line 670
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda21;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-string v2, "\u2039 \u83dc\u5355"

    invoke-direct {p0, v2, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v1

    .line 671
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 672
    nop

    .line 673
    nop

    .line 671
    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 669
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    nop

    .line 677
    new-instance v6, Landroid/widget/TextView;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    const-string v10, "#FFFFFF"

    const/high16 v8, 0x41900000    # 18.0f

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 678
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 679
    nop

    .line 680
    nop

    .line 681
    nop

    .line 678
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 682
    nop

    .line 1540
    move-object v3, v2

    .local v3, "$this$addGlassHeader_u24lambda_u2438":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    .line 682
    .local v5, "$i$a$-apply-MainActivity$addGlassHeader$2":I
    const/high16 v6, 0x41200000    # 10.0f

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .end local v3    # "$this$addGlassHeader_u24lambda_u2438":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "$i$a$-apply-MainActivity$addGlassHeader$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 676
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    if-eqz p3, :cond_67

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    :cond_67
    nop

    .line 686
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 687
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 688
    nop

    .line 689
    nop

    .line 687
    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 690
    nop

    .line 1540
    move-object v3, v2

    .local v3, "$this$addGlassHeader_u24lambda_u2439":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    .line 690
    .local v4, "$i$a$-apply-MainActivity$addGlassHeader$3":I
    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v3    # "$this$addGlassHeader_u24lambda_u2439":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "$i$a$-apply-MainActivity$addGlassHeader$3":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 685
    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ResponsiveDrawerHeader;->bind(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic addGlassHeader$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    .line 660
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    .line 663
    const/4 p3, 0x0

    .line 660
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addGlassHeader$lambda$37(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 670
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$default(Lio/nekohasekai/sagernet/ui/MainActivity;ZILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final addGlassRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .registers 17
    .param p1, "column"    # Landroid/widget/LinearLayout;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "onClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 700
    move-object v8, p0

    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, v8

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$addGlassRow_u24lambda_u2440":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 701
    .local v2, "$i$a$-apply-MainActivity$addGlassRow$inner$1":I
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 702
    const/high16 v3, 0x41600000    # 14.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v4, v6, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 703
    nop

    .line 700
    .end local v1    # "$this$addGlassRow_u24lambda_u2440":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-MainActivity$addGlassRow$inner$1":I
    move-object v10, v0

    .line 704
    .local v10, "inner":Landroid/widget/LinearLayout;
    nop

    .line 705
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v8

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;ILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 706
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 707
    nop

    .line 708
    nop

    .line 706
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 704
    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 711
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    if-eqz v0, :cond_61

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v0, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 v0, 0x1

    :goto_62
    if-nez v0, :cond_94

    .line 712
    nop

    .line 713
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v8

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const-string v5, "#B8B8C0"

    const/high16 v3, 0x41400000    # 12.0f

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 714
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 715
    nop

    .line 716
    nop

    .line 714
    invoke-direct {v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 717
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$addGlassRow_u24lambda_u2441":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 717
    .local v3, "$i$a$-apply-MainActivity$addGlassRow$1":I
    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v2    # "$this$addGlassRow_u24lambda_u2441":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$addGlassRow$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 712
    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    :cond_94
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->makeDarkPill()Landroid/widget/FrameLayout;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$addGlassRow_u24lambda_u2445":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 721
    .local v2, "$i$a$-apply-MainActivity$addGlassRow$pill$1":I
    if-eqz p4, :cond_9e

    const/4 v3, 0x1

    goto :goto_9f

    :cond_9e
    const/4 v3, 0x0

    :goto_9f
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 722
    if-eqz p4, :cond_a5

    goto :goto_a6

    :cond_a5
    const/4 v9, 0x0

    :goto_a6
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 723
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 724
    nop

    .line 725
    nop

    .line 723
    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 726
    nop

    .line 1540
    move-object v4, v3

    .local v4, "$this$addGlassRow_u24lambda_u2445_u24lambda_u2442":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x0

    .line 726
    .local v5, "$i$a$-apply-MainActivity$addGlassRow$pill$1$1":I
    const/high16 v9, 0x41000000    # 8.0f

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v9

    float-to-int v9, v9

    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v4    # "$this$addGlassRow_u24lambda_u2445_u24lambda_u2442":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "$i$a$-apply-MainActivity$addGlassRow$pill$1$1":I
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    .line 723
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    nop

    .line 728
    move-object v3, v10

    check-cast v3, Landroid/view/View;

    .line 729
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 730
    nop

    .line 731
    nop

    .line 729
    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 727
    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    if-eqz p4, :cond_de

    move-object/from16 v3, p4

    .line 1540
    .local v3, "it":Lkotlin/jvm/functions/Function0;
    const/4 v4, 0x0

    .line 734
    .local v4, "$i$a$-let-MainActivity$addGlassRow$pill$1$2":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v5, v3}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda30;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    .end local v3    # "it":Lkotlin/jvm/functions/Function0;
    .end local v4    # "$i$a$-let-MainActivity$addGlassRow$pill$1$2":I
    :cond_de
    nop

    .line 720
    .end local v1    # "$this$addGlassRow_u24lambda_u2445":Landroid/widget/FrameLayout;
    .end local v2    # "$i$a$-apply-MainActivity$addGlassRow$pill$1":I
    nop

    .line 736
    .local v0, "pill":Landroid/widget/FrameLayout;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    move-object v2, p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    return-void
.end method

.method static synthetic addGlassRow$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 8

    .line 694
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    .line 697
    move-object p3, v0

    .line 694
    :cond_6
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 698
    move-object p4, v0

    .line 694
    :cond_b
    invoke-direct {p0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final addGlassRow$lambda$45$lambda$44$lambda$43(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2
    .param p0, "$it"    # Lkotlin/jvm/functions/Function0;
    .param p1, "it"    # Landroid/view/View;

    .line 734
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final applyNavDrawerWidth(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 10
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_8f

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v5

    iget-object v5, v5, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v5

    if-lez v5, :cond_8f

    const/high16 v6, 0x43a20000    # 324.0f

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/high16 v7, 0x42800000    # 64.0f

    invoke-direct {p0, v7}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v0, v6, v7

    if-lt v5, v0, :cond_32

    move v0, v6

    goto :goto_40

    :cond_32
    const/high16 v7, 0x42800000    # 64.0f

    invoke-direct {p0, v7}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int v0, v5, v7

    if-lez v0, :cond_8f

    :goto_40
    instance-of v7, v3, Lcom/google/android/material/navigation/NavigationView;

    if-eqz v7, :cond_4e

    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_8f

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8f

    :cond_4e
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-ne v8, v7, :cond_8f

    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_8f

    move-object v7, v4

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    sub-int v2, v0, v1

    if-lez v2, :cond_8f

    iput v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuCapsuleWidth:I

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v8, v2, :cond_79

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_79
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    move-object v1, v7

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_8f

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v8, v0, :cond_8f

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method private final buildAboutPanel()V
    .registers 13

    .line 742
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    const-string v1, "navGlassPageHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    .local v0, "root":Landroid/widget/FrameLayout;
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda18;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassPanelColumn(Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 746
    .local v1, "column":Landroid/widget/LinearLayout;
    nop

    .line 747
    nop

    .line 748
    const v2, 0x7f13005a

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "getString(...)"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    sget-object v2, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/SagerNet$Companion;->getAppVersionNameForDisplay()Ljava/lang/String;

    move-result-object v5

    .line 746
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v1

    invoke-static/range {v2 .. v8}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 751
    nop

    .line 752
    nop

    .line 753
    const v2, 0x7f13001b

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 754
    const v2, 0x7f13001c

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 751
    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 756
    const-string v2, "https://t.me/L_J_J520"

    .line 757
    .local v2, "feedbackUrl":Ljava/lang/String;
    nop

    .line 758
    nop

    .line 759
    const v3, 0x7f13001d

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    nop

    .line 757
    new-instance v4, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda19;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3, v2, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 762
    const-string v3, "https://github.com/MatsuriDayo/NekoBoxForAndroid"

    .line 763
    .local v3, "sourceUrl":Ljava/lang/String;
    nop

    .line 764
    nop

    .line 765
    const v4, 0x7f13001e

    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    nop

    .line 763
    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v5, p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda20;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1, v4, v3, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const-string v4, "\u5b98\u65b9\u7fa4\u7ec4"

    const-string v3, "https://t.me/JiajiaBoxTop1"

    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda19;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1, v4, v3, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    const-string v4, "\u5b98\u65b9\u9891\u9053"

    const-string v3, "https://t.me/JiajiaBox"

    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v5, p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda19;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1, v4, v3, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassRow(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/AboutLegal;->append(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private static final buildAboutPanel$lambda$46(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .registers 9
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "c"    # Landroid/widget/LinearLayout;

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    const v0, 0x7f130198

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 745
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final buildAboutPanel$lambda$47(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$feedbackUrl"    # Ljava/lang/String;

    .line 761
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final buildAboutPanel$lambda$48(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$sourceUrl"    # Ljava/lang/String;

    .line 767
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final buildGlassNavRows(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V
    .registers 23
    .param p1, "panel"    # Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .line 255
    move-object/from16 v0, p0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v1

    float-to-int v1, v1

    .line 256
    .local v1, "pad":I
    const/high16 v2, 0x42380000    # 46.0f

    invoke-direct {v0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    .line 257
    .local v2, "rowHeight":I
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v3

    float-to-int v3, v3

    .line 258
    .local v3, "rowGap":I
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowViews:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 259
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowLabels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 261
    new-instance v4, Landroid/widget/LinearLayout;

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v4

    .local v5, "$this$buildGlassNavRows_u24lambda_u249":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .line 262
    .local v6, "$i$a$-apply-MainActivity$buildGlassNavRows$rows$1":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 263
    nop

    .line 261
    .end local v5    # "$this$buildGlassNavRows_u24lambda_u249":Landroid/widget/LinearLayout;
    .end local v6    # "$i$a$-apply-MainActivity$buildGlassNavRows$rows$1":I
    nop

    .line 264
    .local v4, "rows":Landroid/widget/LinearLayout;
    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->navEntries:[Lkotlin/Pair;

    .local v5, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1539
    .local v6, "$i$f$forEach":I
    array-length v8, v5

    const/4 v10, 0x0

    :goto_36
    if-ge v10, v8, :cond_115

    aget-object v12, v5, v10

    .local v12, "element$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 264
    .local v13, "$i$a$-forEach-MainActivity$buildGlassNavRows$1":I
    invoke-virtual {v12}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .local v14, "id":I
    invoke-virtual {v12}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .line 265
    .local v15, "titleRes":I
    invoke-virtual {v0, v15}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v9, "getString(...)"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v11

    .line 266
    .local v9, "title":Ljava/lang/String;
    new-instance v11, Landroid/widget/TextView;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    invoke-direct {v11, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v7, v11

    .local v7, "$this$buildGlassNavRows_u24lambda_u2414_u24lambda_u2410":Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 267
    .local v16, "$i$a$-apply-MainActivity$buildGlassNavRows$1$label$1":I
    move-object/from16 v17, v5

    .end local v5    # "$this$forEach$iv":[Ljava/lang/Object;
    .local v17, "$this$forEach$iv":[Ljava/lang/Object;
    iget v5, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    if-ne v14, v5, :cond_82

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    .end local v6    # "$i$f$forEach":I
    .local v18, "$i$f$forEach":I
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    goto :goto_87

    .end local v18    # "$i$f$forEach":I
    .restart local v6    # "$i$f$forEach":I
    :cond_82
    move/from16 v18, v6

    .end local v6    # "$i$f$forEach":I
    .restart local v18    # "$i$f$forEach":I
    move-object v5, v9

    check-cast v5, Ljava/lang/CharSequence;

    :goto_87
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const-string v5, "#F0F0F3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 271
    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 273
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 274
    nop

    .line 266
    .end local v7    # "$this$buildGlassNavRows_u24lambda_u2414_u24lambda_u2410":Landroid/widget/TextView;
    .end local v16    # "$i$a$-apply-MainActivity$buildGlassNavRows$1$label$1":I
    move-object v5, v11

    .line 275
    .local v5, "label":Landroid/widget/TextView;
    move/from16 v16, v8

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->makeDarkPill()Landroid/widget/FrameLayout;

    move-result-object v6

    move-object v7, v6

    .local v7, "$this$buildGlassNavRows_u24lambda_u2414_u24lambda_u2413":Landroid/widget/FrameLayout;
    const/4 v8, 0x0

    .line 276
    .local v8, "$i$a$-apply-MainActivity$buildGlassNavRows$1$pill$1":I
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 291
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 292
    nop

    .line 291
    move/from16 v19, v8

    const/4 v8, -0x1

    .end local v8    # "$i$a$-apply-MainActivity$buildGlassNavRows$1$pill$1":I
    .local v19, "$i$a$-apply-MainActivity$buildGlassNavRows$1$pill$1":I
    invoke-direct {v11, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 293
    nop

    .line 1540
    move-object v8, v11

    .local v8, "$this$buildGlassNavRows_u24lambda_u2414_u24lambda_u2413_u24lambda_u2411":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x0

    .line 293
    .local v20, "$i$a$-apply-MainActivity$buildGlassNavRows$1$pill$1$1":I
    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v8    # "$this$buildGlassNavRows_u24lambda_u2414_u24lambda_u2413_u24lambda_u2411":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "$i$a$-apply-MainActivity$buildGlassNavRows$1$pill$1$1":I
    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    .line 291
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    nop

    .line 295
    move-object v8, v5

    check-cast v8, Landroid/view/View;

    .line 296
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 297
    nop

    .line 298
    nop

    .line 296
    move/from16 v20, v2

    const/4 v2, -0x1

    .end local v2    # "rowHeight":I
    .local v20, "rowHeight":I
    invoke-direct {v11, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    .line 294
    invoke-virtual {v7, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    new-instance v2, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0, v14}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda9;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;I)V

    invoke-virtual {v7, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    nop

    .line 275
    .end local v7    # "$this$buildGlassNavRows_u24lambda_u2414_u24lambda_u2413":Landroid/widget/FrameLayout;
    .end local v19    # "$i$a$-apply-MainActivity$buildGlassNavRows$1$pill$1":I
    move-object v2, v6

    .line 303
    .local v2, "pill":Landroid/widget/FrameLayout;
    move-object v6, v2

    check-cast v6, Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 304
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowViews:Ljava/util/HashMap;

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 305
    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowLabels:Ljava/util/HashMap;

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v2    # "pill":Landroid/widget/FrameLayout;
    .end local v5    # "label":Landroid/widget/TextView;
    .end local v9    # "title":Ljava/lang/String;
    nop

    .line 1539
    .end local v13    # "$i$a$-forEach-MainActivity$buildGlassNavRows$1":I
    .end local v14    # "id":I
    .end local v15    # "titleRes":I
    nop

    .end local v12    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    move/from16 v2, v20

    const/4 v7, 0x1

    goto/16 :goto_36

    .line 1541
    .end local v17    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v18    # "$i$f$forEach":I
    .end local v20    # "rowHeight":I
    .local v2, "rowHeight":I
    .local v5, "$this$forEach$iv":[Ljava/lang/Object;
    .restart local v6    # "$i$f$forEach":I
    :cond_115
    move/from16 v20, v2

    move-object/from16 v17, v5

    move/from16 v18, v6

    .line 307
    .end local v2    # "rowHeight":I
    .end local v5    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$forEach":I
    .restart local v20    # "rowHeight":I
    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    .line 308
    invoke-static {v0, v4}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->addMenu(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 309
    nop

    .line 310
    move-object v2, v4

    check-cast v2, Landroid/view/View;

    .line 311
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 312
    nop

    .line 313
    nop

    .line 311
    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    .line 309
    move-object/from16 v6, p1

    invoke-virtual {v6, v2, v5}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->install(Landroid/view/View;)V

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowViews:Ljava/util/HashMap;

    iget v2, v0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    invoke-static {v0, v6, v4, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->install(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/LinearLayout;Ljava/util/Map;I)V

    return-void
.end method

.method private static final buildGlassNavRows$lambda$14$lambda$13$lambda$12(Lio/nekohasekai/sagernet/ui/MainActivity;ILandroid/view/View;)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$id"    # I
    .param p2, "it"    # Landroid/view/View;

    .line 301
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->openNavRow(I)V

    return-void
.end method

.method private final buildRoutePanel()V
    .registers 3

    .line 787
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    .line 788
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    const-string v1, "navGlassPageHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    .local v0, "root":Landroid/widget/FrameLayout;
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda23;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassPanelColumn(Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 809
    .local v1, "column":Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->renderRouteRules(Landroid/widget/LinearLayout;)V

    .line 810
    return-void
.end method

.method private static final buildRoutePanel$lambda$55(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "c"    # Landroid/widget/LinearLayout;

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    nop

    .line 791
    const v0, 0x7f13019e

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 790
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda14;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-direct {p0, p1, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 808
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final buildRoutePanel$lambda$55$lambda$54(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)Lkotlin/Unit;
    .registers 7
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "row"    # Landroid/widget/LinearLayout;

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 793
    nop

    .line 794
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda15;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-string v1, "\uff0b \u65b0\u589e"

    invoke-direct {p0, v1, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v0

    .line 795
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 796
    nop

    .line 797
    nop

    .line 795
    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 793
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    nop

    .line 801
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda16;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-string v1, "\u91cd\u7f6e"

    invoke-direct {p0, v1, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v0

    .line 802
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 803
    nop

    .line 804
    nop

    .line 802
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 805
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$buildRoutePanel_u24lambda_u2455_u24lambda_u2454_u24lambda_u2453":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 805
    .local v3, "$i$a$-apply-MainActivity$buildRoutePanel$column$1$1$3":I
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .end local v2    # "$this$buildRoutePanel_u24lambda_u2455_u24lambda_u2454_u24lambda_u2453":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$buildRoutePanel$column$1$1$3":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 800
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final buildRoutePanel$lambda$55$lambda$54$lambda$51(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->showRouteEditor(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final buildRoutePanel$lambda$55$lambda$54$lambda$52(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 801
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->confirmResetRoutes()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final changeState(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "state"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "animate"    # Z

    .line 1396
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/database/DataStore;->setServiceState(Lio/nekohasekai/sagernet/bg/BaseService$State;)V

    .line 1398
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connectionListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_c
    if-eqz p2, :cond_29

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const v1, 0x7f1302d3

    invoke-virtual {p0, v1, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 1400
    :cond_29
    return-void
.end method

.method static synthetic changeState$default(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 6

    .line 1391
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    .line 1393
    const/4 p2, 0x0

    .line 1391
    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    .line 1394
    const/4 p3, 0x0

    .line 1391
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/MainActivity;->changeState(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Z)V

    return-void
.end method

.method private final checkNavItem(I)V
    .registers 11
    .param p1, "id"    # I

    .line 1057
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/navigation/NavigationView;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1058
    .local v0, "nv":Lcom/google/android/material/navigation/NavigationView;
    :goto_c
    if-eqz v0, :cond_1d

    .line 1059
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1060
    :cond_1c
    return-void

    .line 1062
    :cond_1d
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    .line 1063
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navEntries:[Lkotlin/Pair;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_6d

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "rid":I
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1064
    .local v4, "titleRes":I
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowLabels:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_6a

    .line 1065
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-ne v5, p1, :cond_53

    const-string v8, ""

    goto :goto_55

    :cond_53
    const-string v8, ""

    :goto_55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 1064
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1063
    .end local v4    # "titleRes":I
    .end local v5    # "rid":I
    :cond_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1067
    :cond_6d
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowViews:Ljava/util/HashMap;

    invoke-static {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->select(Ljava/util/Map;I)V

    return-void
.end method

.method private final clearGlassHost()V
    .registers 13

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NestedToolsController;->dismiss(Landroid/app/Activity;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->captureRoot(Landroid/app/Activity;)V

    .line 345
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 346
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1542
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1543
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/fragment/app/Fragment;

    .local v7, "it":Landroidx/fragment/app/Fragment;
    const/4 v8, 0x0

    .line 346
    .local v8, "$i$a$-filter-MainActivity$clearGlassHost$1":I
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_43

    const-string v11, "glass_drawer_page"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_43

    const/4 v10, 0x1

    .line 1543
    .end local v7    # "it":Landroidx/fragment/app/Fragment;
    .end local v8    # "$i$a$-filter-MainActivity$clearGlassHost$1":I
    :cond_43
    if-eqz v10, :cond_24

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1544
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_49
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 1542
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 347
    move-object v0, v2

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1545
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    .local v4, "it":Landroidx/fragment/app/Fragment;
    const/4 v5, 0x0

    .line 348
    .local v5, "$i$a$-forEach-MainActivity$clearGlassHost$2":I
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 349
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    .line 350
    invoke-virtual {v6, v4}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    .line 351
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 353
    :cond_78
    nop

    .line 1545
    .end local v4    # "it":Landroidx/fragment/app/Fragment;
    .end local v5    # "$i$a$-forEach-MainActivity$clearGlassHost$2":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_55

    .line 1546
    :cond_7b
    nop

    .line 354
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassPageFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 355
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 356
    return-void
.end method

.method private final collapseGlassToMenu(Z)V
    .registers 7

    if-eqz p1, :cond_9

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NestedToolsController;->back(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_9
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NestedToolsController;->dismiss(Landroid/app/Activity;)V

    :cond_c
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    iput v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpandedNavId:I

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->reset(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->restoreMenuCapsule()V

    goto :goto_39

    :cond_28
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda13;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-wide/16 v1, 0x104

    invoke-direct {p0, v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->morphGlassCapsule(Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;)V

    :goto_39
    iget v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->checkNavItem(I)V

    return-void
.end method

.method static synthetic collapseGlassToMenu$default(Lio/nekohasekai/sagernet/ui/MainActivity;ZILjava/lang/Object;)V
    .registers 4

    .line 469
    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    :cond_5
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu(Z)V

    return-void
.end method

.method private static final collapseGlassToMenu$lambda$26(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/FrameLayout;)V
    .registers 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$host"    # Landroid/widget/FrameLayout;

    .line 490
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_5

    return-void

    .line 491
    :cond_5
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    .line 492
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 493
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 494
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda17;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-wide/16 v2, 0x17c

    invoke-direct {p0, v0, v2, v3, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->morphGlassCapsule(Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;)V

    .line 497
    iget v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->checkNavItem(I)V

    .line 498
    return-void
.end method

.method private static final collapseGlassToMenu$lambda$26$lambda$25(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 495
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->restoreMenuCapsule()V

    .line 496
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final collapseGlassToMenu$lambda$27(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 2

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->restoreMenuCapsule()V

    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final confirmDeleteRoute(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .registers 5
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 1031
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13009e

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1032
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->displayName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1033
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda7;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;)V

    const v2, 0x7f1302e1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1037
    const v1, 0x7f1301f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1039
    return-void
.end method

.method private static final confirmDeleteRoute$lambda$69(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/database/RuleEntity;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 1034
    new-instance p2, Lio/nekohasekai/sagernet/ui/MainActivity$confirmDeleteRoute$1$1;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lio/nekohasekai/sagernet/ui/MainActivity$confirmDeleteRoute$1$1;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1035
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel()V

    .line 1036
    return-void
.end method

.method private final confirmResetRoutes()V
    .registers 4

    .line 1042
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f13009e

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1043
    const v1, 0x7f130095

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1044
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda10;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const v2, 0x7f1302e1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1051
    const v1, 0x7f1301f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1053
    return-void
.end method

.method private static final confirmResetRoutes$lambda$70(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 1045
    new-instance p1, Lio/nekohasekai/sagernet/ui/MainActivity$confirmResetRoutes$1$1;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$confirmResetRoutes$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1049
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel()V

    .line 1050
    return-void
.end method

.method private static final connect$lambda$90(Lio/nekohasekai/sagernet/ui/MainActivity;Z)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "it"    # Z

    .line 1426
    if-eqz p1, :cond_c

    const v0, 0x7f1302d4

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 1427
    :cond_c
    return-void
.end method

.method private final currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    .registers 9

    .line 1307
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    if-eqz v0, :cond_12

    .line 1540
    .local v0, "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    const/4 v1, 0x0

    .line 1307
    .local v1, "$i$a$-let-MainActivity$currentFragment$1":I
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_12

    return-object v0

    .line 1308
    .end local v0    # "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    .end local v1    # "$i$a$-let-MainActivity$currentFragment$1":I
    :cond_12
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1309
    nop

    .local v0, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1551
    .local v1, "$i$f$filterIsInstance":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1560
    .local v4, "$i$f$filterIsInstanceTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_30
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    instance-of v7, v6, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    if-eqz v7, :cond_30

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 1561
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_42
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterIsInstanceTo":I
    check-cast v2, Ljava/util/List;

    .line 1551
    nop

    .end local v0    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterIsInstance":I
    check-cast v2, Ljava/lang/Iterable;

    .line 1310
    move-object v0, v2

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1562
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .local v4, "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    const/4 v5, 0x0

    .line 1310
    .local v5, "$i$a$-firstOrNull-MainActivity$currentFragment$visible$1":I
    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_6a

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isHidden()Z

    move-result v6

    if-nez v6, :cond_6a

    const/4 v6, 0x1

    goto :goto_6b

    :cond_6a
    const/4 v6, 0x0

    .line 1562
    .end local v4    # "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    .end local v5    # "$i$a$-firstOrNull-MainActivity$currentFragment$visible$1":I
    :goto_6b
    if-eqz v6, :cond_4e

    goto :goto_6f

    .line 1563
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_6e
    const/4 v3, 0x0

    .line 1310
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_6f
    check-cast v3, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1308
    move-object v0, v3

    .line 1311
    .local v0, "visible":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1312
    return-object v0
.end method

.method private final dp(F)F
    .registers 3
    .param p1, "v"    # F

    .line 251
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    return v0
.end method

.method private final enterGlassFragmentPage(I)V
    .registers 12
    .param p1, "id"    # I

    .line 375
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpandedNavId:I

    if-ne v0, p1, :cond_9

    return-void

    .line 376
    :cond_9
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    .line 377
    packed-switch p1, :pswitch_data_d2

    .line 380
    return-void

    .line 379
    :pswitch_10
    new-instance v0, Lio/nekohasekai/sagernet/ui/ToolsFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/ToolsFragment;-><init>()V

    check-cast v0, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    goto :goto_1f

    .line 378
    :pswitch_18
    new-instance v0, Lio/nekohasekai/sagernet/ui/SettingsPreferenceFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/SettingsPreferenceFragment;-><init>()V

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 381
    :goto_1f
    move-object v1, v0

    .local v1, "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    const/4 v2, 0x0

    .line 382
    .local v2, "$i$a$-also-MainActivity$enterGlassFragmentPage$frag$1":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1540
    move-object v4, v3

    .local v4, "$this$enterGlassFragmentPage_u24lambda_u2418_u24lambda_u2417":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 382
    .local v5, "$i$a$-apply-MainActivity$enterGlassFragmentPage$frag$1$1":I
    const-string v6, "glass_drawer_page"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .end local v4    # "$this$enterGlassFragmentPage_u24lambda_u2418_u24lambda_u2417":Landroid/os/Bundle;
    .end local v5    # "$i$a$-apply-MainActivity$enterGlassFragmentPage$frag$1$1":I
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 383
    nop

    .line 381
    .end local v1    # "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    .end local v2    # "$i$a$-also-MainActivity$enterGlassFragmentPage$frag$1":I
    nop

    .line 377
    nop

    .line 384
    .local v0, "frag":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f0a01e7

    if-ne p1, v5, :cond_64

    const v5, 0x7f130277

    goto :goto_67

    :cond_64
    const v5, 0x7f13019f

    :goto_67
    invoke-virtual {p0, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    move-object v6, v0

    check-cast v6, Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v4, v6}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 387
    const v1, 0x7f0a01e7

    if-ne p1, v1, :cond_ab

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_aa

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_aa
    goto :goto_c3

    :cond_ab
    move-object v7, v0

    check-cast v7, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    if-eqz v1, :cond_b9

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :cond_b9
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c3

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 389
    :cond_c3
    :goto_c3
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    .line 390
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->checkNavItem(I)V

    .line 391
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpandedNavId:I

    .line 392
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->prepareGlassExpansion()V

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->rootReady(Landroid/app/Activity;I)V

    .line 393
    return-void

    nop

    :pswitch_data_d2
    .packed-switch 0x7f0a01e7
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method private static final enterGlassFragmentPage$lambda$19(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 5
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 388
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$default(Lio/nekohasekai/sagernet/ui/MainActivity;ZILjava/lang/Object;)V

    return-void
.end method

.method private final enterGlassPage(I)V
    .registers 3
    .param p1, "id"    # I

    .line 360
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpandedNavId:I

    if-ne v0, p1, :cond_9

    return-void

    .line 361
    :cond_9
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    .line 362
    sparse-switch p1, :sswitch_data_26

    .line 365
    return-void

    .line 363
    :sswitch_10
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel()V

    goto :goto_17

    .line 364
    :sswitch_14
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildAboutPanel()V

    .line 367
    :goto_17
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    .line 368
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->checkNavItem(I)V

    .line 369
    iput p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpandedNavId:I

    .line 370
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->prepareGlassExpansion()V

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->rootReady(Landroid/app/Activity;I)V

    .line 371
    return-void

    nop

    :sswitch_data_26
    .sparse-switch
        0x7f0a01de -> :sswitch_14
        0x7f0a01e6 -> :sswitch_10
    .end sparse-switch
.end method

.method private final finishImportProfile(Lio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1187
    iget v3, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->label:I

    packed-switch v3, :pswitch_data_68

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_65

    :pswitch_30
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    .local p1, "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    .end local p1    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    :pswitch_38
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 1188
    .local v3, "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    .local p1, "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->selectedGroupForImport()J

    move-result-wide v4

    .line 1190
    .local v4, "targetId":J
    sget-object v6, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->label:I

    invoke-virtual {v6, v4, v5, p1, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->createProfile(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v4    # "targetId":J
    .end local p1    # "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    if-ne p1, v2, :cond_50

    .line 1187
    return-object v2

    .line 1190
    :cond_50
    move-object p1, v3

    .line 1192
    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    .local p1, "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    :goto_51
    new-instance v3, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$2;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$2;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportProfile$1;->label:I

    invoke-static {v3, v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    if-ne p1, v2, :cond_65

    .line 1187
    return-object v2

    .line 1197
    :cond_65
    :goto_65
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_38
        :pswitch_30
        :pswitch_2c
    .end packed-switch
.end method

.method private final finishImportSubscription(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1158
    iget v3, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_4e

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local p1, "subscription":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_45

    .end local p1    # "subscription":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :pswitch_35
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1159
    .restart local p1    # "subscription":Lio/nekohasekai/sagernet/database/ProxyGroup;
    sget-object v3, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$finishImportSubscription$1;->label:I

    invoke-virtual {v3, p1, v0}, Lio/nekohasekai/sagernet/database/GroupManager;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_45

    .line 1158
    return-object v2

    .line 1160
    :cond_45
    :goto_45
    sget-object v2, Lio/nekohasekai/sagernet/group/GroupUpdater;->Companion:Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;

    invoke-virtual {v2, p1, v4}, Lio/nekohasekai/sagernet/group/GroupUpdater$Companion;->startUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Z)V

    .line 1161
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_2d
    .end packed-switch
.end method

.method private final glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "onClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 638
    new-instance v1, Landroid/widget/TextView;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;ILjava/lang/Object;)Landroid/widget/TextView;

    move-result-object v0

    .line 639
    .local v0, "label":Landroid/widget/TextView;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 640
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->makeDarkPill()Landroid/widget/FrameLayout;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$glassMenuButton_u24lambda_u2435":Landroid/widget/FrameLayout;
    const/4 v3, 0x0

    .line 641
    .local v3, "$i$a$-apply-MainActivity$glassMenuButton$pill$1":I
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 642
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 643
    const/high16 v4, 0x41600000    # 14.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v5

    float-to-int v5, v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v6}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 644
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 645
    nop

    .line 646
    nop

    .line 644
    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    nop

    .line 649
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 650
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 651
    nop

    .line 652
    nop

    .line 650
    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    .line 648
    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    new-instance v4, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    nop

    .line 640
    .end local v2    # "$this$glassMenuButton_u24lambda_u2435":Landroid/widget/FrameLayout;
    .end local v3    # "$i$a$-apply-MainActivity$glassMenuButton$pill$1":I
    nop

    .line 657
    .local v1, "pill":Landroid/widget/FrameLayout;
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    return-object v2
.end method

.method private static final glassMenuButton$lambda$35$lambda$34(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .registers 2
    .param p0, "$onClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "it"    # Landroid/view/View;

    .line 655
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final glassPanelColumn(Landroid/widget/FrameLayout;Lkotlin/jvm/functions/Function1;)Landroid/widget/LinearLayout;
    .registers 10
    .param p1, "root"    # Landroid/widget/FrameLayout;
    .param p2, "topActions"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/LinearLayout;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    .line 584
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 585
    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v0

    float-to-int v0, v0

    .line 586
    .local v0, "pad":I
    new-instance v1, Landroid/widget/ScrollView;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .local v2, "$this$glassPanelColumn_u24lambda_u2431":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    .line 587
    .local v3, "$i$a$-apply-MainActivity$glassPanelColumn$scroll$1":I
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 588
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 589
    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 590
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 591
    nop

    .line 592
    nop

    .line 590
    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    nop

    .line 586
    .end local v2    # "$this$glassPanelColumn_u24lambda_u2431":Landroid/widget/ScrollView;
    .end local v3    # "$i$a$-apply-MainActivity$glassPanelColumn$scroll$1":I
    nop

    .line 595
    .local v1, "scroll":Landroid/widget/ScrollView;
    new-instance v2, Landroid/widget/LinearLayout;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v2

    .local v3, "$this$glassPanelColumn_u24lambda_u2432":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .line 596
    .local v4, "$i$a$-apply-MainActivity$glassPanelColumn$column$1":I
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 597
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 598
    nop

    .line 595
    .end local v3    # "$this$glassPanelColumn_u24lambda_u2432":Landroid/widget/LinearLayout;
    .end local v4    # "$i$a$-apply-MainActivity$glassPanelColumn$column$1":I
    nop

    .line 599
    .local v2, "column":Landroid/widget/LinearLayout;
    nop

    .line 600
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 601
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 602
    nop

    .line 603
    nop

    .line 601
    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 599
    invoke-virtual {v1, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 607
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    return-object v2
.end method

.method private final glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;
    .registers 7
    .param p1, "$this$glassText"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "bold"    # Z
    .param p5, "color"    # Ljava/lang/String;

    .line 630
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 632
    if-eqz p4, :cond_e

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_10

    :cond_e
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 633
    invoke-static {p1, p5}, Lio/nekohasekai/sagernet/ui/UiComponents;->legacyText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 634
    return-object p1
.end method

.method static synthetic glassText$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;ILjava/lang/Object;)Landroid/widget/TextView;
    .registers 14

    .line 624
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_9

    .line 626
    const/high16 p3, 0x41600000    # 14.0f

    const/high16 v3, 0x41600000    # 14.0f

    goto :goto_a

    .line 624
    :cond_9
    move v3, p3

    :goto_a
    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_11

    .line 627
    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_12

    .line 624
    :cond_11
    move v4, p4

    :goto_12
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1a

    .line 628
    const-string p5, "#F0F0F3"

    move-object v5, p5

    goto :goto_1b

    .line 624
    :cond_1a
    move-object v5, p5

    :goto_1b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private final makeDarkPill()Landroid/widget/FrameLayout;
    .registers 5

    new-instance v0, Landroid/widget/FrameLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bg_jj_dark_card"

    const-string p0, "drawable"

    invoke-virtual {v1, v3, p0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pill(Landroid/view/View;)V

    return-object v0
.end method

.method private final makeGlassPill()Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .registers 5

    .line 611
    new-instance v0, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    .local v1, "$this$makeGlassPill_u24lambda_u2433":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    const/4 v2, 0x0

    .line 612
    .local v2, "$i$a$-apply-MainActivity$makeGlassPill$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setGrayFrost(Z)V

    .line 613
    const v3, 0x3fa66666    # 1.3f

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setEdgeMagnify(F)V

    .line 614
    const v3, 0x3f933333    # 1.15f

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostBlur(F)V

    .line 615
    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostAlpha(F)V

    .line 616
    const v3, 0x3f6e147b    # 0.93f

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 617
    const v3, 0x3b3b44

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 618
    const v3, -0x669d9d92

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderColor(I)V

    .line 619
    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setBorderWidthDp(F)V

    .line 620
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setEdgeArcHighlight(Z)V

    .line 621
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFlatFrost(Z)V

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setOpaqueVeil(Z)V

    .line 622
    nop

    .line 611
    .end local v1    # "$this$makeGlassPill_u24lambda_u2433":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .end local v2    # "$i$a$-apply-MainActivity$makeGlassPill$1":I
    nop

    .line 622
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->pill(Landroid/view/View;)V

    return-object v0
.end method

.method private static final missingPlugin$lambda$76(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$pluginEntity"    # Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 1217
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->showDownloadDialog(Lio/nekohasekai/sagernet/fmt/PluginEntry;)V

    .line 1218
    return-void
.end method

.method private static final missingPlugin$lambda$77(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/content/DialogInterface;I)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 1221
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string p2, "https://matsuridayo.github.io/nb4a-plugin/"

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method private final morphGlassCapsule(Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;)V
    .registers 14

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v8

    iget-object v0, v8, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iget-object v1, v8, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v1, :cond_14

    if-eqz p4, :cond_13

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_13
    return-void

    :cond_14
    iget-object v2, v8, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    move-object v4, p1

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    iget-boolean v6, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->start(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function0;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMorphAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static synthetic morphGlassCapsule$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 7

    .line 509
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/ui/MainActivity;->morphGlassCapsule(Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final morphGlassCapsule$lambda$29$lambda$28(Landroid/view/ViewGroup$MarginLayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/animation/ValueAnimator;)V
    .registers 10
    .param p0, "$lp"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p1, "$from"    # Landroid/graphics/Rect;
    .param p2, "$target"    # Landroid/graphics/Rect;
    .param p3, "$capsule"    # Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .param p4, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p5, "anim"    # Landroid/animation/ValueAnimator;

    const-string v0, "anim"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 529
    .local v0, "t":F
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 530
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 533
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p3, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    invoke-virtual {p4}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 535
    return-void
.end method

.method private final newDashboardFragment()Lio/nekohasekai/sagernet/ui/WebviewFragment;
    .registers 11

    .line 1342
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1343
    .local v0, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v1

    .line 1344
    .local v1, "current":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    const-string v3, "getFragments(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1599
    .local v3, "$i$f$filterIsInstance":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 1608
    .local v6, "$i$f$filterIsInstanceTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_26
    :goto_26
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    instance-of v9, v8, Lio/nekohasekai/sagernet/ui/WebviewFragment;

    if-eqz v9, :cond_26

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1609
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_38
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterIsInstanceTo":I
    check-cast v4, Ljava/util/List;

    .line 1599
    nop

    .end local v2    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filterIsInstance":I
    check-cast v4, Ljava/lang/Iterable;

    .line 1344
    move-object v2, v4

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1610
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/nekohasekai/sagernet/ui/WebviewFragment;

    .local v6, "old":Lio/nekohasekai/sagernet/ui/WebviewFragment;
    const/4 v7, 0x0

    .line 1345
    .local v7, "$i$a$-forEach-MainActivity$newDashboardFragment$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->isAdded()Z

    move-result v8

    if-eqz v8, :cond_68

    if-eq v6, v1, :cond_68

    .line 1346
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    move-object v9, v6

    check-cast v9, Landroidx/fragment/app/Fragment;

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1348
    :cond_68
    nop

    .line 1610
    .end local v6    # "old":Lio/nekohasekai/sagernet/ui/WebviewFragment;
    .end local v7    # "$i$a$-forEach-MainActivity$newDashboardFragment$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_44

    .line 1611
    :cond_6b
    nop

    .line 1349
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    new-instance v2, Lio/nekohasekai/sagernet/ui/WebviewFragment;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/ui/WebviewFragment;-><init>()V

    return-object v2
.end method

.method private static final onCreate$lambda$2$lambda$1(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 150
    return-void
.end method

.method private static final onCreate$lambda$3(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 5
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 164
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$default(Lio/nekohasekai/sagernet/ui/MainActivity;ZILjava/lang/Object;)V

    .line 165
    :cond_a
    return-void
.end method

.method private static final onCreate$lambda$4(Lio/nekohasekai/sagernet/ui/MainActivity;Landroidx/activity/OnBackPressedCallback;)Lkotlin/Unit;
    .registers 5
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "$this$addCallback"    # Landroidx/activity/OnBackPressedCallback;

    const-string v0, "$this$addCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    nop

    .line 184
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->collapseGlassToMenu$default(Lio/nekohasekai/sagernet/ui/MainActivity;ZILjava/lang/Object;)V

    goto :goto_46

    .line 185
    :cond_11
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_46

    .line 187
    :cond_27
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v0

    .line 188
    .local v0, "fragment":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    instance-of v2, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-eqz v2, :cond_33

    .line 189
    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->moveTaskToBack(Z)Z

    goto :goto_45

    :cond_33
    instance-of v2, v0, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeController:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->backToHome()V

    goto :goto_45

    .line 194
    :cond_3f
    const v1, 0x7f0a01e3

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragmentWithId(I)Z

    .end local v0    # "fragment":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    :goto_45
    nop

    .line 195
    :goto_46
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onCreate$lambda$5(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->applyNavDrawerWidth(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$NavSizeLayoutListener;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$NavSizeLayoutListener;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    sget-object v1, Lio/nekohasekai/sagernet/widget/GlassTones;->INSTANCE:Lio/nekohasekai/sagernet/widget/GlassTones;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/widget/GlassTones;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    return-void
.end method

.method private static final onCreate$lambda$7$lambda$6(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/view/View;)V
    .registers 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 204
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    return-void
.end method

.method private static final onCreate$lambda$8(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 6
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 210
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 209
    invoke-static {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    const-string v1, "toWindowInsetsCompat(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .local v0, "insets":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    .line 213
    .local v1, "top":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->jjNavButton:Lio/nekohasekai/sagernet/ui/JJNavButton;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/JJNavButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 215
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->jjNavButton:Lio/nekohasekai/sagernet/ui/JJNavButton;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v4}, Lio/nekohasekai/sagernet/ui/JJNavButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method private static final onPreferenceDataStoreChanged$lambda$91(Landroid/view/View;)V
    .registers 2
    .param p0, "it"    # Landroid/view/View;

    .line 1457
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->reloadService()V

    .line 1458
    return-void
.end method

.method private final openNavRow(I)V
    .registers 3
    .param p1, "id"    # I

    .line 330
    sparse-switch p1, :sswitch_data_1e

    .line 335
    iget v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->currentNavId:I

    if-ne p1, v0, :cond_19

    .line 336
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_1c

    .line 333
    :sswitch_11
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->enterGlassFragmentPage(I)V

    goto :goto_1c

    .line 331
    :sswitch_15
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->enterGlassPage(I)V

    goto :goto_1c

    .line 338
    :cond_19
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragmentWithId(I)Z

    .line 341
    :goto_1c
    return-void

    nop

    :sswitch_data_1e
    .sparse-switch
        0x7f0a01de -> :sswitch_15
        0x7f0a01e6 -> :sswitch_15
        0x7f0a01e7 -> :sswitch_11
        0x7f0a01e8 -> :sswitch_11
    .end sparse-switch
.end method

.method private final prepareGlassExpansion()V
    .registers 15

    .line 402
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_5

    return-void

    .line 403
    :cond_5
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_27

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 404
    :cond_27
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 405
    :cond_36
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    const-string v1, "navLightContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const-string v2, "navGlassLight"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .local v1, "capsule":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, v0, :cond_53

    return-void

    .line 409
    :cond_53
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 410
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRectReady:Z

    const/4 v3, 0x1

    if-nez v2, :cond_a0

    .line 411
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getWidth()I

    move-result v2

    if-lez v2, :cond_9f

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getHeight()I

    move-result v2

    if-gtz v2, :cond_72

    goto :goto_9f

    .line 412
    :cond_72
    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 413
    .local v5, "capLoc":[I
    new-array v2, v2, [I

    .line 414
    .local v2, "ovLoc":[I
    invoke-virtual {v1, v5}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLocationInWindow([I)V

    .line 415
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v6

    iget-object v6, v6, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 416
    aget v6, v5, v4

    aget v7, v2, v4

    sub-int/2addr v6, v7

    .line 417
    .local v6, "x":I
    aget v7, v5, v3

    aget v8, v2, v3

    sub-int/2addr v7, v8

    .line 418
    .local v7, "y":I
    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getWidth()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 419
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRectReady:Z

    goto :goto_a0

    .line 411
    .end local v2    # "ovLoc":[I
    .end local v5    # "capLoc":[I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_9f
    :goto_9f
    return-void

    .line 421
    :cond_a0
    :goto_a0
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 422
    .local v2, "menuW":I
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 423
    .local v5, "menuH":I
    if-lez v2, :cond_1a2

    if-gtz v5, :cond_b2

    goto/16 :goto_1a2

    .line 425
    :cond_b2
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const v7, 0x800033

    invoke-direct {v6, v2, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object v7, v6

    .local v7, "$this$prepareGlassExpansion_u24lambda_u2420":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x0

    .line 426
    .local v8, "$i$a$-apply-MainActivity$prepareGlassExpansion$olp$1":I
    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 427
    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 428
    nop

    .line 425
    .end local v7    # "$this$prepareGlassExpansion_u24lambda_u2420":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "$i$a$-apply-MainActivity$prepareGlassExpansion$olp$1":I
    nop

    .line 429
    .local v6, "olp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v7, v1

    check-cast v7, Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 430
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    move-object v8, v1

    check-cast v8, Landroid/view/View;

    move-object v9, v6

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 433
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v8, 0x800003

    invoke-virtual {v7, v3, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 434
    iput-boolean v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    .line 447
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v7}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 1540
    .local v8, "it":I
    const/4 v9, 0x0

    .line 447
    .local v9, "$i$a$-takeIf-MainActivity$prepareGlassExpansion$dw$1":I
    if-lez v8, :cond_11c

    const/4 v8, 0x1

    goto :goto_11d

    :cond_11c
    const/4 v8, 0x0

    .end local v8    # "it":I
    .end local v9    # "$i$a$-takeIf-MainActivity$prepareGlassExpansion$dw$1":I
    :goto_11d
    const/4 v9, 0x0

    if-eqz v8, :cond_121

    goto :goto_122

    :cond_121
    move-object v7, v9

    :goto_122
    if-eqz v7, :cond_129

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_133

    .line 448
    :cond_129
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 447
    :goto_133
    nop

    .line 449
    .local v7, "dw":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v8

    iget-object v8, v8, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v8}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 1540
    .local v10, "it":I
    const/4 v11, 0x0

    .line 449
    .local v11, "$i$a$-takeIf-MainActivity$prepareGlassExpansion$dh$1":I
    if-lez v10, :cond_14d

    const/4 v4, 0x1

    .end local v10    # "it":I
    .end local v11    # "$i$a$-takeIf-MainActivity$prepareGlassExpansion$dh$1":I
    :cond_14d
    if-eqz v4, :cond_150

    move-object v9, v8

    :cond_150
    if-eqz v9, :cond_157

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_161

    .line 450
    :cond_157
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    .line 449
    :goto_161
    nop

    .line 451
    .local v3, "dh":I
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 452
    .local v4, "topInset":I
    const/high16 v8, 0x41400000    # 12.0f

    invoke-direct {p0, v8}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 453
    .local v9, "bottomInset":I
    invoke-direct {p0, v8}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 454
    .local v8, "sideInset":I
    new-instance v10, Landroid/graphics/Rect;

    .line 455
    nop

    .line 456
    mul-int/lit8 v11, v8, 0x2

    sub-int v11, v7, v11

    mul-int/lit8 v12, v8, 0x2

    invoke-static {v11, v12}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    .line 457
    sub-int v12, v3, v4

    sub-int/2addr v12, v9

    add-int v13, v4, v9

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v12

    .line 454
    invoke-direct {v10, v8, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 459
    .local v10, "target":Landroid/graphics/Rect;
    new-instance v11, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v11, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda22;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-wide/16 v12, 0x17c

    invoke-direct {p0, v10, v12, v13, v11}, Lio/nekohasekai/sagernet/ui/MainActivity;->morphGlassCapsule(Landroid/graphics/Rect;JLkotlin/jvm/functions/Function0;)V

    .line 466
    return-void

    .line 423
    .end local v3    # "dh":I
    .end local v4    # "topInset":I
    .end local v6    # "olp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "dw":I
    .end local v8    # "sideInset":I
    .end local v9    # "bottomInset":I
    .end local v10    # "target":Landroid/graphics/Rect;
    :cond_1a2
    :goto_1a2
    return-void
.end method

.method private static final prepareGlassExpansion$lambda$21(Lio/nekohasekai/sagernet/ui/MainActivity;)V
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 442
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_16

    .line 443
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    :cond_d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 446
    :cond_16
    return-void
.end method

.method private static final prepareGlassExpansion$lambda$24(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 3

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final rebuildPageCache()V
    .registers 11

    .line 1354
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1355
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1612
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    .local v4, "frag":Landroidx/fragment/app/Fragment;
    const/4 v5, 0x0

    .line 1356
    .local v5, "$i$a$-forEach-MainActivity$rebuildPageCache$1":I
    nop

    .line 1357
    instance-of v6, v4, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-eqz v6, :cond_30

    const v6, 0x7f0a01e3

    goto :goto_59

    .line 1358
    :cond_30
    instance-of v6, v4, Lio/nekohasekai/sagernet/ui/RouteFragment;

    if-eqz v6, :cond_38

    const v6, 0x7f0a01e6

    goto :goto_59

    .line 1359
    :cond_38
    instance-of v6, v4, Lio/nekohasekai/sagernet/ui/SettingsFragment;

    if-eqz v6, :cond_40

    const v6, 0x7f0a01e7

    goto :goto_59

    .line 1360
    :cond_40
    instance-of v6, v4, Lio/nekohasekai/sagernet/ui/ToolsFragment;

    if-eqz v6, :cond_48

    const v6, 0x7f0a01e8

    goto :goto_59

    .line 1361
    :cond_48
    instance-of v6, v4, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    if-eqz v6, :cond_50

    const v6, 0x7f0a02e5

    goto :goto_59

    :cond_50
    instance-of v6, v4, Lio/nekohasekai/sagernet/ui/AboutFragment;

    if-eqz v6, :cond_58

    const v6, 0x7f0a01de

    goto :goto_59

    .line 1362
    :cond_58
    const/4 v6, 0x0

    .line 1356
    :goto_59
    nop

    .line 1364
    .local v6, "id":I
    if-eqz v6, :cond_6f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    check-cast v8, Ljava/util/Map;

    const-string v9, "null cannot be cast to non-null type io.nekohasekai.sagernet.ui.ToolbarFragment"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    :cond_6f
    nop

    .line 1612
    .end local v4    # "frag":Landroidx/fragment/app/Fragment;
    .end local v5    # "$i$a$-forEach-MainActivity$rebuildPageCache$1":I
    .end local v6    # "id":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_19

    .line 1613
    :cond_72
    nop

    .line 1366
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final renderRouteRules(Landroid/widget/LinearLayout;)V
    .registers 4
    .param p1, "column"    # Landroid/widget/LinearLayout;

    .line 813
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 909
    return-void
.end method

.method private final restoreMenuCapsule()V
    .registers 12

    .line 556
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const-string v1, "navGlassLight"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    .local v0, "capsule":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    const-string v2, "navLightContainer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    .local v1, "container":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 559
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 560
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    if-eqz v2, :cond_34

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 561
    :cond_34
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassRows:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3d

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 562
    :cond_3d
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRectReady:Z

    if-eqz v2, :cond_50

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_50

    .line 563
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto :goto_51

    :cond_50
    const/4 v2, -0x2

    .line 562
    :goto_51
    nop

    .line 564
    .local v2, "menuH":I
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 565
    iget v7, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuCapsuleWidth:I

    .line 566
    nop

    .line 567
    nop

    .line 564
    const/16 v8, 0x10

    invoke-direct {v6, v7, v2, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 568
    move-object v7, v6

    .local v7, "$this$restoreMenuCapsule_u24lambda_u2430":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v8, 0x0

    .line 569
    .local v8, "$i$a$-apply-MainActivity$restoreMenuCapsule$mlp$1":I
    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 570
    invoke-direct {p0, v9}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 571
    nop

    .line 568
    .end local v7    # "$this$restoreMenuCapsule_u24lambda_u2430":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "$i$a$-apply-MainActivity$restoreMenuCapsule$mlp$1":I
    nop

    .line 564
    nop

    .line 572
    .local v6, "mlp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    move-object v8, v0

    check-cast v8, Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 573
    move-object v7, v0

    check-cast v7, Landroid/view/View;

    move-object v8, v6

    check-cast v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v7

    iget-object v7, v7, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 575
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v5, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 576
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    invoke-virtual {v3, v7, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    .line 577
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method private final setNavRowVisible(IZ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .line 1070
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navRowViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_17

    if-eqz p2, :cond_12

    const/4 v1, 0x0

    goto :goto_14

    :cond_12
    const/16 v1, 0x8

    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_17
    return-void
.end method

.method private final setupGlassDrawer()V
    .registers 3

    .line 321
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$setupGlassDrawer$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 326
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->install(Landroid/app/Activity;)V

    return-void
.end method

.method private final showDownloadDialog(Lio/nekohasekai/sagernet/fmt/PluginEntry;)V
    .registers 15
    .param p1, "pluginEntry"    # Lio/nekohasekai/sagernet/fmt/PluginEntry;

    .line 1227
    const/4 v0, 0x0

    .line 1228
    .local v0, "index":I
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .local v1, "playIndex":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v2, -0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1229
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v8, v3

    .local v8, "fdroidIndex":Lkotlin/jvm/internal/Ref$IntRef;
    iput v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 1232
    .local v9, "items":Ljava/util/List;
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->getDownloadSource()Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;->getPlayStore()Z

    move-result v2

    const-string v3, "getString(...)"

    if-eqz v2, :cond_37

    .line 1233
    const v2, 0x7f130136

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1234
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    iput v0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move v0, v2

    .line 1236
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_37
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->getDownloadSource()Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    move-result-object v2

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;->getFdroid()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1237
    const v2, 0x7f130135

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1238
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .restart local v2    # "index":I
    iput v0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move v0, v2

    .line 1241
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_53
    const v2, 0x7f1300d5

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    move v7, v0

    .line 1244
    .local v7, "downloadIndex":I
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->name()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v10

    .line 1245
    move-object v2, v9

    check-cast v2, Ljava/util/Collection;

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 1549
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    .line 1550
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    move-object v11, v2

    check-cast v11, [Ljava/lang/CharSequence;

    .line 1245
    new-instance v12, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda8;

    move-object v2, v12

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Lkotlin/jvm/internal/Ref$IntRef;I)V

    invoke-virtual {v10, v11, v12}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 1252
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1253
    return-void
.end method

.method private static final showDownloadDialog$lambda$78(Lkotlin/jvm/internal/Ref$IntRef;Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;Lkotlin/jvm/internal/Ref$IntRef;ILandroid/content/DialogInterface;I)V
    .registers 9
    .param p0, "$playIndex"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;
    .param p2, "$pluginEntry"    # Lio/nekohasekai/sagernet/fmt/PluginEntry;
    .param p3, "$fdroidIndex"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p4, "$downloadIndex"    # I
    .param p6, "which"    # I

    .line 1246
    nop

    .line 1247
    iget p5, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p6, p5, :cond_23

    move-object p5, p1

    check-cast p5, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    .line 1248
    :cond_23
    iget p5, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne p6, p5, :cond_4b

    move-object p5, p1

    check-cast p5, Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://f-droid.org/packages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5b

    .line 1249
    :cond_4b
    if-ne p6, p4, :cond_5b

    move-object p5, p1

    check-cast p5, Landroid/content/Context;

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->getDownloadSource()Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/PluginEntry$DownloadSource;->getDownloadLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lio/nekohasekai/sagernet/ktx/BrowsersKt;->launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V

    .line 1251
    :cond_5b
    :goto_5b
    return-void
.end method

.method private final showRouteEditor(Lio/nekohasekai/sagernet/database/RuleEntity;)V
    .registers 31
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 912
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    .line 913
    invoke-virtual/range {p0 .. p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    const-string v1, "navGlassPageHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    .line 914
    .local v8, "root":Landroid/widget/FrameLayout;
    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v6, v9}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v0

    float-to-int v10, v0

    .line 915
    .local v10, "pad":I
    new-instance v0, Landroid/widget/ScrollView;

    move-object v1, v6

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$showRouteEditor_u24lambda_u2456":Landroid/widget/ScrollView;
    const/4 v2, 0x0

    .line 916
    .local v2, "$i$a$-apply-MainActivity$showRouteEditor$scroll$1":I
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 917
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 918
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 919
    nop

    .line 920
    nop

    .line 918
    const/4 v13, -0x1

    invoke-direct {v3, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    nop

    .line 915
    .end local v1    # "$this$showRouteEditor_u24lambda_u2456":Landroid/widget/ScrollView;
    .end local v2    # "$i$a$-apply-MainActivity$showRouteEditor$scroll$1":I
    move-object v14, v0

    .line 923
    .local v14, "scroll":Landroid/widget/ScrollView;
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, v6

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$showRouteEditor_u24lambda_u2457":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 924
    .local v2, "$i$a$-apply-MainActivity$showRouteEditor$column$1":I
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 925
    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 926
    nop

    .line 923
    .end local v1    # "$this$showRouteEditor_u24lambda_u2457":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-MainActivity$showRouteEditor$column$1":I
    move-object v5, v0

    .line 927
    .local v5, "column":Landroid/widget/LinearLayout;
    nop

    .line 928
    move-object v0, v5

    check-cast v0, Landroid/view/View;

    .line 929
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 930
    nop

    .line 931
    nop

    .line 929
    const/4 v4, -0x2

    invoke-direct {v1, v13, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 927
    invoke-virtual {v14, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    move-object v0, v14

    check-cast v0, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 936
    if-nez v7, :cond_6a

    const-string v0, "\u65b0\u589e\u89c4\u5219"

    goto :goto_6c

    :cond_6a
    const-string v0, "\u7f16\u8f91\u89c4\u5219"

    :goto_6c
    move-object v2, v0

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    const/4 v9, -0x2

    move/from16 v4, v16

    move-object/from16 v19, v5

    .end local v5    # "column":Landroid/widget/LinearLayout;
    .local v19, "column":Landroid/widget/LinearLayout;
    move-object/from16 v5, v17

    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader$default(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 938
    nop

    .line 939
    nop

    .line 938
    nop

    .line 939
    const-string v27, "protocol"

    const-string v20, "\u540d\u79f0"

    const-string v21, "domain"

    const-string v22, "dst ip"

    const-string v23, "dst port"

    const-string v24, "src ip"

    const-string v25, "src port"

    const-string v26, "network"

    filled-new-array/range {v20 .. v27}, [Ljava/lang/String;

    move-result-object v0

    .line 938
    nop

    .line 937
    move-object/from16 v16, v0

    .line 941
    .local v16, "fields":[Ljava/lang/String;
    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x8

    if-nez v7, :cond_b7

    .line 942
    new-array v5, v5, [Ljava/lang/String;

    const-string v17, ""

    aput-object v17, v5, v11

    aput-object v17, v5, v15

    aput-object v17, v5, v12

    aput-object v17, v5, v4

    aput-object v17, v5, v3

    aput-object v17, v5, v2

    aput-object v17, v5, v1

    aput-object v17, v5, v0

    goto :goto_ec

    .line 945
    :cond_b7
    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v11

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getDomains()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v15

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getIp()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v12

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getPort()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v4

    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSource()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    .line 946
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getSourcePort()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 945
    nop

    .line 946
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getNetwork()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 945
    nop

    .line 946
    invoke-virtual/range {p1 .. p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getProtocol()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 945
    nop

    .line 941
    :goto_ec
    move-object v12, v5

    .line 949
    .local v12, "values":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v0

    .line 950
    .local v5, "inputs":Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->getIndices([Ljava/lang/Object;)Lkotlin/ranges/IntRange;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Iterable;

    .local v17, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v20, 0x0

    .line 1547
    .local v20, "$i$f$forEach":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_101
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/high16 v4, 0x40c00000    # 6.0f

    if-eqz v0, :cond_1b8

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v22

    .local v22, "element$iv":I
    move/from16 v23, v22

    .local v23, "i":I
    const/16 v24, 0x0

    .line 951
    .local v24, "$i$a$-forEach-MainActivity$showRouteEditor$1":I
    nop

    .line 952
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aget-object v2, v16, v23

    const/16 v25, 0x0

    const-string v26, "#B8B8C0"

    const/high16 v3, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    const/high16 v11, 0x40c00000    # 6.0f

    move/from16 v4, v25

    move-object/from16 v28, v5

    .end local v5    # "inputs":Ljava/util/HashMap;
    .local v28, "inputs":Ljava/util/HashMap;
    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 953
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 954
    nop

    .line 955
    nop

    .line 953
    invoke-direct {v1, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 956
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$showRouteEditor_u24lambda_u2461_u24lambda_u2458":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 956
    .local v3, "$i$a$-apply-MainActivity$showRouteEditor$1$1":I
    invoke-direct {v6, v11}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v2    # "$this$showRouteEditor_u24lambda_u2461_u24lambda_u2458":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$showRouteEditor$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 951
    move-object/from16 v5, v19

    .end local v19    # "column":Landroid/widget/LinearLayout;
    .local v5, "column":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    new-instance v0, Landroid/widget/EditText;

    move-object v1, v6

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$showRouteEditor_u24lambda_u2461_u24lambda_u2459":Landroid/widget/EditText;
    const/4 v2, 0x0

    .line 959
    .local v2, "$i$a$-apply-MainActivity$showRouteEditor$1$edit$1":I
    aget-object v3, v12, v23

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 960
    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 961
    const-string v3, "#8B8B96"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    .line 962
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 963
    const-string v3, "#A6A6B0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 964
    invoke-virtual {v1, v15}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 965
    nop

    .line 958
    .end local v1    # "$this$showRouteEditor_u24lambda_u2461_u24lambda_u2459":Landroid/widget/EditText;
    .end local v2    # "$i$a$-apply-MainActivity$showRouteEditor$1$edit$1":I
    nop

    .line 966
    .local v0, "edit":Landroid/widget/EditText;
    move-object/from16 v4, v28

    .end local v28    # "inputs":Ljava/util/HashMap;
    .local v4, "inputs":Ljava/util/HashMap;
    move-object v1, v4

    check-cast v1, Ljava/util/Map;

    aget-object v2, v16, v23

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    nop

    .line 968
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 969
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 970
    nop

    .line 971
    nop

    .line 969
    invoke-direct {v2, v13, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 972
    nop

    .line 1540
    move-object v3, v2

    .local v3, "$this$showRouteEditor_u24lambda_u2461_u24lambda_u2460":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    .line 972
    .local v11, "$i$a$-apply-MainActivity$showRouteEditor$1$2":I
    const/high16 v15, 0x40800000    # 4.0f

    invoke-direct {v6, v15}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v15

    float-to-int v15, v15

    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .end local v3    # "$this$showRouteEditor_u24lambda_u2461_u24lambda_u2460":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "$i$a$-apply-MainActivity$showRouteEditor$1$2":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 967
    invoke-virtual {v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    nop

    .line 1547
    .end local v0    # "edit":Landroid/widget/EditText;
    .end local v23    # "i":I
    .end local v24    # "$i$a$-forEach-MainActivity$showRouteEditor$1":I
    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object v5, v4

    .end local v22    # "element$iv":I
    goto/16 :goto_101

    .line 1548
    .end local v4    # "inputs":Ljava/util/HashMap;
    .local v5, "inputs":Ljava/util/HashMap;
    .restart local v19    # "column":Landroid/widget/LinearLayout;
    :cond_1b8
    move-object v4, v5

    move-object/from16 v5, v19

    const/high16 v11, 0x40c00000    # 6.0f

    .line 975
    .end local v17    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v19    # "column":Landroid/widget/LinearLayout;
    .end local v20    # "$i$f$forEach":I
    .restart local v4    # "inputs":Ljava/util/HashMap;
    .local v5, "column":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout;

    move-object v1, v6

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$showRouteEditor_u24lambda_u2462":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .line 976
    .local v2, "$i$a$-apply-MainActivity$showRouteEditor$bottom$1":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 977
    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 978
    nop

    .line 975
    .end local v1    # "$this$showRouteEditor_u24lambda_u2462":Landroid/widget/LinearLayout;
    .end local v2    # "$i$a$-apply-MainActivity$showRouteEditor$bottom$1":I
    move-object v15, v0

    .line 979
    .local v15, "bottom":Landroid/widget/LinearLayout;
    nop

    .line 980
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v0, v6}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda28;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-string v1, "\u53d6\u6d88"

    invoke-direct {v6, v1, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v0

    .line 981
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 982
    nop

    .line 983
    nop

    .line 981
    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 979
    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 986
    nop

    .line 987
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, v7, v4, v6}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda29;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;Ljava/util/HashMap;Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const-string v1, "\u4fdd\u5b58"

    invoke-direct {v6, v1, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuButton(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroid/view/View;

    move-result-object v0

    .line 1006
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1007
    nop

    .line 1008
    nop

    .line 1006
    invoke-direct {v1, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1009
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$showRouteEditor_u24lambda_u2466":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 1009
    .local v3, "$i$a$-apply-MainActivity$showRouteEditor$4":I
    invoke-direct {v6, v11}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .end local v2    # "$this$showRouteEditor_u24lambda_u2466":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$showRouteEditor$4":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 986
    invoke-virtual {v15, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1011
    nop

    .line 1012
    move-object v0, v15

    check-cast v0, Landroid/view/View;

    .line 1013
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1014
    nop

    .line 1015
    nop

    .line 1013
    const/4 v2, -0x2

    invoke-direct {v1, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1016
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$showRouteEditor_u24lambda_u2467":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 1016
    .local v3, "$i$a$-apply-MainActivity$showRouteEditor$5":I
    const/high16 v9, 0x41200000    # 10.0f

    invoke-direct {v6, v9}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v9

    float-to-int v9, v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v2    # "$this$showRouteEditor_u24lambda_u2467":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$showRouteEditor$5":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 1011
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    nop

    .line 1019
    new-instance v1, Landroid/widget/TextView;

    move-object v0, v6

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1020
    nop

    .line 1021
    nop

    .line 1019
    const-string v2, "\u63d0\u793a: \u51fa\u7ad9\u65b9\u5f0f\u4fdd\u7559\u539f\u503c(\u65b0\u589e\u89c4\u5219\u9ed8\u8ba4\u4e3a \u4ee3\u7406)\u3002\u5e94\u7528\u89c4\u5219\u7b49\u9ad8\u7ea7\u9009\u9879\u540e\u7eed\u7248\u672c\u8865\u4e0a\u3002"

    const/high16 v3, 0x41300000    # 11.0f

    const/4 v9, 0x0

    const-string v18, "#8A8A92"

    move-object/from16 v0, p0

    move-object/from16 v19, v4

    .end local v4    # "inputs":Ljava/util/HashMap;
    .local v19, "inputs":Ljava/util/HashMap;
    move v4, v9

    move-object v9, v5

    .end local v5    # "column":Landroid/widget/LinearLayout;
    .local v9, "column":Landroid/widget/LinearLayout;
    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->glassText(Landroid/widget/TextView;Ljava/lang/String;FZLjava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1023
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1024
    nop

    .line 1025
    nop

    .line 1023
    const/4 v2, -0x2

    invoke-direct {v1, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1026
    nop

    .line 1540
    move-object v2, v1

    .local v2, "$this$showRouteEditor_u24lambda_u2468":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    .line 1026
    .local v3, "$i$a$-apply-MainActivity$showRouteEditor$6":I
    invoke-direct {v6, v11}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .end local v2    # "$this$showRouteEditor_u24lambda_u2468":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "$i$a$-apply-MainActivity$showRouteEditor$6":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 1018
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    return-void
.end method

.method private static final showRouteEditor$lambda$63(Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 980
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final showRouteEditor$lambda$65(Lio/nekohasekai/sagernet/database/RuleEntity;Ljava/util/HashMap;Lio/nekohasekai/sagernet/ui/MainActivity;)Lkotlin/Unit;
    .registers 25
    .param p0, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .param p1, "$inputs"    # Ljava/util/HashMap;
    .param p2, "this$0"    # Lio/nekohasekai/sagernet/ui/MainActivity;

    .line 988
    move-object/from16 v0, p0

    if-nez v0, :cond_27

    new-instance v21, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v1, v21

    const/16 v19, 0x3fff

    const/16 v20, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v20}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1540
    .local v1, "$this$showRouteEditor_u24lambda_u2465_u24lambda_u2464":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v2, 0x0

    .line 988
    .local v2, "$i$a$-apply-MainActivity$showRouteEditor$3$base$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/database/RuleEntity;->setEnabled(Z)V

    .end local v1    # "$this$showRouteEditor_u24lambda_u2465_u24lambda_u2464":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v2    # "$i$a$-apply-MainActivity$showRouteEditor$3$base$1":I
    goto :goto_29

    :cond_27
    move-object/from16 v21, v0

    :goto_29
    move-object/from16 v1, v21

    .line 989
    .local v1, "base":Lio/nekohasekai/sagernet/database/RuleEntity;
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "\u540d\u79f0"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setName(Ljava/lang/String;)V

    .line 990
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "domain"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setDomains(Ljava/lang/String;)V

    .line 991
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "dst ip"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setIp(Ljava/lang/String;)V

    .line 992
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "dst port"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setPort(Ljava/lang/String;)V

    .line 993
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "src ip"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setSource(Ljava/lang/String;)V

    .line 994
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "src port"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setSourcePort(Ljava/lang/String;)V

    .line 995
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "network"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setNetwork(Ljava/lang/String;)V

    .line 996
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    const-string v3, "protocol"

    invoke-static {v2, v3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/database/RuleEntity;->setProtocol(Ljava/lang/String;)V

    .line 997
    new-instance v2, Lio/nekohasekai/sagernet/ui/MainActivity$showRouteEditor$3$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lio/nekohasekai/sagernet/ui/MainActivity$showRouteEditor$3$1;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1004
    invoke-direct/range {p2 .. p2}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildRoutePanel()V

    .line 1005
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method private final syncFloatingNav(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/FullScreenBackdrop;->sceneChanged(Landroid/app/Activity;)V

    .line 1317
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->jjNavButton:Lio/nekohasekai/sagernet/ui/JJNavButton;

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-nez v1, :cond_11

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    if-eqz v1, :cond_17

    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJNavButton;->setVisibility(I)V

    return-void

    .line 1318
    :cond_17
    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-nez v1, :cond_33

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    if-nez v1, :cond_33

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/RouteFragment;

    if-nez v1, :cond_33

    .line 1319
    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/SettingsFragment;

    if-nez v1, :cond_33

    .line 1320
    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/ToolsFragment;

    if-nez v1, :cond_33

    instance-of v1, p1, Lio/nekohasekai/sagernet/ui/AboutFragment;

    if-eqz v1, :cond_30

    goto :goto_33

    .line 1321
    :cond_30
    const/16 v1, 0x8

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x0

    .line 1317
    :goto_34
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJNavButton;->setVisibility(I)V

    .line 1322
    return-void
.end method


# virtual methods
.method public final attachConnectionListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/nekohasekai/sagernet/bg/BaseService$State;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1376
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connectionListener:Lkotlin/jvm/functions/Function1;

    .line 1377
    return-void
.end method

.method public canSwipe(Z)Z
    .registers 5

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpanded:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v0

    if-eqz p1, :cond_26

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    goto :goto_28

    :cond_26
    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    return v1
.end method

.method public cbSelectorUpdate(J)V
    .registers 12
    .param p1, "id"    # J

    .line 1442
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v7

    .line 1443
    .local v7, "old":J
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, p1, p2}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 1444
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0, p1, p2}, Lio/nekohasekai/sagernet/database/DataStore;->setCurrentProfile(J)V

    .line 1445
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$cbSelectorUpdate$1;

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v2, v7

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/MainActivity$cbSelectorUpdate$1;-><init>(JJLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1449
    return-void
.end method

.method public cbSpeedUpdate(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V
    .registers 5
    .param p1, "stats"    # Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    const-string v0, "stats"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->latestDashboardStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->updateHome(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    const v1, 0x7f0a02e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJBlankFragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v1, :cond_28

    check-cast v0, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    .line 1433
    :cond_28
    return-void
.end method

.method public cbTrafficUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;)V
    .registers 4
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$cbTrafficUpdate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/ui/MainActivity$cbTrafficUpdate$1;-><init>(Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1439
    return-void
.end method

.method public final detachConnectionListener()V
    .registers 2

    .line 1380
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connectionListener:Lkotlin/jvm/functions/Function1;

    .line 1381
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeController:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->onTouch(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    return v2

    :cond_c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_1e
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final displayFragment(Lio/nekohasekai/sagernet/ui/ToolbarFragment;)V
    .registers 8
    .param p1, "fragment"    # Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    .local v0, "fm":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1268
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v1

    .line 1269
    .local v1, "old":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    if-ne v1, p1, :cond_26

    .line 1270
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1271
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->syncFloatingNav(Landroidx/fragment/app/Fragment;)V

    .line 1272
    return-void

    .line 1276
    :cond_26
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_44

    .line 1277
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 1278
    const v3, 0x7f0a0136

    move-object v4, p1

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 1279
    move-object v3, p1

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 1280
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1285
    :cond_44
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5d

    .local v2, "it":Landroid/view/View;
    const/4 v3, 0x0

    .line 1286
    .local v3, "$i$a$-let-MainActivity$displayFragment$1":I
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1287
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 1288
    nop

    .line 1285
    .end local v2    # "it":Landroid/view/View;
    .end local v3    # "$i$a$-let-MainActivity$displayFragment$1":I
    nop

    .line 1290
    :cond_5d
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$displayFragment_u24lambda_u2480":Landroidx/fragment/app/FragmentTransaction;
    const/4 v4, 0x0

    .line 1291
    .local v4, "$i$a$-apply-MainActivity$displayFragment$2":I
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_71

    move-object v5, v1

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1292
    :cond_71
    move-object v5, p1

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 1293
    nop

    .line 1290
    .end local v3    # "$this$displayFragment_u24lambda_u2480":Landroidx/fragment/app/FragmentTransaction;
    .end local v4    # "$i$a$-apply-MainActivity$displayFragment$2":I
    nop

    .line 1293
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1295
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1296
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->syncFloatingNav(Landroidx/fragment/app/Fragment;)V

    .line 1298
    nop

    .line 1302
    nop

    .line 1301
    nop

    .line 1300
    nop

    .line 1299
    nop

    .line 1298
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_bc

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AppMotion;->animate(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1299
    if-eqz v2, :cond_bc

    .line 1298
    nop

    .line 1299
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1300
    if-eqz v2, :cond_bc

    .line 1298
    nop

    .line 1300
    const-wide/16 v3, 0x21c

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1301
    if-eqz v2, :cond_bc

    .line 1298
    nop

    .line 1301
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const v4, 0x3fcccccd    # 1.6f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/AppMotion;->interpolate(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1302
    if-eqz v2, :cond_bc

    .line 1298
    nop

    .line 1302
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_bd

    .line 1298
    :cond_bc
    nop

    .line 1303
    :goto_bd
    return-void
.end method

.method public final displayFragmentWithId(I)Z
    .registers 8
    .param p1, "id"    # I

    .line 1325
    sparse-switch p1, :sswitch_data_c6

    .line 1334
    const/4 v0, 0x0

    return v0

    .line 1332
    :sswitch_5
    const/4 v0, 0x0

    return v0

    .line 1329
    :sswitch_7
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$getOrPut$iv":Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "key$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1585
    .local v2, "$i$f$getOrPut":I
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1586
    .local v3, "value$iv":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 1587
    const/4 v4, 0x0

    .line 1329
    .local v4, "$i$a$-getOrPut-MainActivity$displayFragmentWithId$4":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/ToolsFragment;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/ToolsFragment;-><init>()V

    check-cast v5, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1587
    .end local v4    # "$i$a$-getOrPut-MainActivity$displayFragmentWithId$4":I
    move-object v4, v5

    .line 1588
    .local v4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    nop

    .end local v4    # "answer$iv":Ljava/lang/Object;
    goto :goto_25

    .line 1591
    :cond_24
    move-object v4, v3

    .line 1586
    :goto_25
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$getOrPut":I
    .end local v3    # "value$iv":Ljava/lang/Object;
    check-cast v4, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1329
    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragment(Lio/nekohasekai/sagernet/ui/ToolbarFragment;)V

    goto/16 :goto_c1

    .line 1328
    :sswitch_2d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .restart local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "key$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1578
    .restart local v2    # "$i$f$getOrPut":I
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1579
    .restart local v3    # "value$iv":Ljava/lang/Object;
    if-nez v3, :cond_4a

    .line 1580
    const/4 v4, 0x0

    .line 1328
    .local v4, "$i$a$-getOrPut-MainActivity$displayFragmentWithId$3":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/SettingsFragment;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/SettingsFragment;-><init>()V

    check-cast v5, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1580
    .end local v4    # "$i$a$-getOrPut-MainActivity$displayFragmentWithId$3":I
    move-object v4, v5

    .line 1581
    .local v4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    nop

    .end local v4    # "answer$iv":Ljava/lang/Object;
    goto :goto_4b

    .line 1584
    :cond_4a
    move-object v4, v3

    .line 1579
    :goto_4b
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$getOrPut":I
    .end local v3    # "value$iv":Ljava/lang/Object;
    check-cast v4, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1328
    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragment(Lio/nekohasekai/sagernet/ui/ToolbarFragment;)V

    goto/16 :goto_c1

    .line 1327
    :sswitch_53
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .restart local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "key$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1571
    .restart local v2    # "$i$f$getOrPut":I
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1572
    .restart local v3    # "value$iv":Ljava/lang/Object;
    if-nez v3, :cond_70

    .line 1573
    const/4 v4, 0x0

    .line 1327
    .local v4, "$i$a$-getOrPut-MainActivity$displayFragmentWithId$2":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/RouteFragment;-><init>()V

    check-cast v5, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1573
    .end local v4    # "$i$a$-getOrPut-MainActivity$displayFragmentWithId$2":I
    move-object v4, v5

    .line 1574
    .local v4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    nop

    .end local v4    # "answer$iv":Ljava/lang/Object;
    goto :goto_71

    .line 1577
    :cond_70
    move-object v4, v3

    .line 1572
    :goto_71
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$getOrPut":I
    .end local v3    # "value$iv":Ljava/lang/Object;
    check-cast v4, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1327
    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragment(Lio/nekohasekai/sagernet/ui/ToolbarFragment;)V

    goto :goto_c1

    .line 1326
    :sswitch_78
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .restart local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "key$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1564
    .restart local v2    # "$i$f$getOrPut":I
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1565
    .restart local v3    # "value$iv":Ljava/lang/Object;
    if-nez v3, :cond_95

    .line 1566
    const/4 v4, 0x0

    .line 1326
    .local v4, "$i$a$-getOrPut-MainActivity$displayFragmentWithId$1":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;-><init>()V

    check-cast v5, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1566
    .end local v4    # "$i$a$-getOrPut-MainActivity$displayFragmentWithId$1":I
    move-object v4, v5

    .line 1567
    .local v4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    nop

    .end local v4    # "answer$iv":Ljava/lang/Object;
    goto :goto_96

    .line 1570
    :cond_95
    move-object v4, v3

    .line 1565
    :goto_96
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$getOrPut":I
    .end local v3    # "value$iv":Ljava/lang/Object;
    check-cast v4, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1326
    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragment(Lio/nekohasekai/sagernet/ui/ToolbarFragment;)V

    goto :goto_c1

    .line 1330
    :sswitch_9d
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .restart local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "key$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1592
    .restart local v2    # "$i$f$getOrPut":I
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1593
    .restart local v3    # "value$iv":Ljava/lang/Object;
    if-nez v3, :cond_ba

    .line 1594
    const/4 v4, 0x0

    .line 1330
    .local v4, "$i$a$-getOrPut-MainActivity$displayFragmentWithId$5":I
    new-instance v5, Lio/nekohasekai/sagernet/ui/AboutFragment;

    invoke-direct {v5}, Lio/nekohasekai/sagernet/ui/AboutFragment;-><init>()V

    check-cast v5, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1594
    .end local v4    # "$i$a$-getOrPut-MainActivity$displayFragmentWithId$5":I
    move-object v4, v5

    .line 1595
    .local v4, "answer$iv":Ljava/lang/Object;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    nop

    .end local v4    # "answer$iv":Ljava/lang/Object;
    goto :goto_bb

    .line 1598
    :cond_ba
    move-object v4, v3

    .line 1593
    :goto_bb
    nop

    .end local v0    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$getOrPut":I
    .end local v3    # "value$iv":Ljava/lang/Object;
    check-cast v4, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1330
    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragment(Lio/nekohasekai/sagernet/ui/ToolbarFragment;)V

    .line 1336
    :goto_c1
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->checkNavItem(I)V

    .line 1337
    const/4 v0, 0x1

    return v0

    :sswitch_data_c6
    .sparse-switch
        0x7f0a01de -> :sswitch_9d
        0x7f0a01e3 -> :sswitch_78
        0x7f0a01e6 -> :sswitch_53
        0x7f0a01e7 -> :sswitch_2d
        0x7f0a01e8 -> :sswitch_7
        0x7f0a01e9 -> :sswitch_5
    .end sparse-switch
.end method

.method public finishSwipe(ZZ)V
    .registers 7

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeFrom:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeTo:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    if-eqz p2, :cond_14

    move-object v3, v0

    goto :goto_15

    :cond_14
    move-object v3, v1

    :goto_15
    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    if-eqz p2, :cond_1f

    move-object v3, v1

    goto :goto_20

    :cond_1f
    move-object v3, v0

    :goto_20
    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    if-eqz p2, :cond_2c

    move-object v0, v1

    :cond_2c
    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->syncFloatingNav(Landroidx/fragment/app/Fragment;)V

    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeFrom:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeTo:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    return-void
.end method

.method public final getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;
    .registers 2

    .line 87
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConnection()Lio/nekohasekai/sagernet/bg/SagerConnection;
    .registers 2

    .line 1410
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    return-object v0
.end method

.method public final getNavigation()Landroid/view/View;
    .registers 2

    .line 88
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navigation:Landroid/view/View;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "navigation"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final importProfile(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 1163
    iget v3, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_ae

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7b

    :pswitch_31
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ab

    :pswitch_36
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/ui/MainActivity;

    .local p1, "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    :try_start_3a
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_40

    move-object v3, p1

    move-object p1, v1

    goto :goto_5c

    .line 1166
    :catch_40
    move-exception v3

    goto :goto_98

    .line 1163
    .end local p1    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    :pswitch_42
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 1164
    .local v3, "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    .local p1, "uri":Landroid/net/Uri;
    nop

    .line 1165
    :try_start_47
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .end local p1    # "uri":Landroid/net/Uri;
    const-string p1, "toString(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    invoke-static {v5, v0}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->parseProxies(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5c

    .line 1163
    return-object v2

    .line 1165
    :cond_5c
    :goto_5c
    check-cast p1, Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/nekohasekai/sagernet/fmt/AbstractBean;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_65} :catch_94

    if-eqz p1, :cond_7e

    .line 1164
    nop

    .line 1173
    .local p1, "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$2;

    invoke-direct {v5, v3, p1, v4}, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$2;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    invoke-static {v5, v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    .end local p1    # "profile":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    if-ne p1, v2, :cond_7b

    .line 1163
    return-object v2

    .line 1185
    :cond_7b
    :goto_7b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1165
    .restart local v3    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    :cond_7e
    const p1, 0x7f1301f6

    :try_start_81
    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v5, "getString(...)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    .end local p2    # "$completion":Lkotlin/coroutines/Continuation;
    throw v5
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_94} :catch_94

    .line 1166
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    .restart local p2    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_94
    move-exception p1

    move-object v6, v3

    move-object v3, p1

    move-object p1, v6

    .line 1167
    .local v3, "e":Ljava/lang/Exception;
    .local p1, "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    :goto_98
    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$profile$1;

    invoke-direct {v5, p1, v3, v4}, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$profile$1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Lio/nekohasekai/sagernet/ui/MainActivity$importProfile$1;->label:I

    invoke-static {v5, v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "e":Ljava/lang/Exception;
    .end local p1    # "this":Lio/nekohasekai/sagernet/ui/MainActivity;
    if-ne p1, v2, :cond_ab

    .line 1163
    return-object v2

    .line 1170
    :cond_ab
    :goto_ab
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_42
        :pswitch_36
        :pswitch_31
        :pswitch_2d
    .end packed-switch
.end method

.method public final importSubscription(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1104
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 1106
    .local v4, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1107
    .local v5, "url":Ljava/lang/String;
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    const/4 v8, 0x0

    if-nez v0, :cond_51

    .line 1108
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v9, v0

    const/16 v24, 0x3ef

    const/16 v25, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    invoke-direct/range {v9 .. v25}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1109
    .end local v4    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v0, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    new-instance v4, Lio/nekohasekai/sagernet/database/SubscriptionBean;

    invoke-direct {v4}, Lio/nekohasekai/sagernet/database/SubscriptionBean;-><init>()V

    .line 1110
    .local v4, "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    invoke-virtual {v0, v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setSubscription(Lio/nekohasekai/sagernet/database/SubscriptionBean;)V

    .line 1113
    iput-object v5, v4, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    .line 1114
    const-string v9, "name"

    invoke-virtual {v2, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setName(Ljava/lang/String;)V

    .end local v4    # "subscription":Lio/nekohasekai/sagernet/database/SubscriptionBean;
    goto :goto_b1

    .line 1116
    .end local v0    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v4, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_51
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1540
    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1116
    .local v10, "$i$a$-takeIf-MainActivity$importSubscription$data$1":I
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_65

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_63

    goto :goto_65

    :cond_63
    const/4 v11, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v11, 0x1

    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-takeIf-MainActivity$importSubscription$data$1":I
    :goto_66
    if-nez v11, :cond_69

    goto :goto_6a

    :cond_69
    move-object v0, v8

    :goto_6a
    if-nez v0, :cond_6f

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_6f
    move-object v9, v0

    .line 1117
    .local v9, "data":Ljava/lang/String;
    nop

    .line 1120
    nop

    .line 1119
    :try_start_72
    new-instance v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    const/16 v25, 0x3ff

    const/16 v26, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v26}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v0

    .line 1540
    .local v10, "$this$importSubscription_u24lambda_u2472":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v11, 0x0

    .line 1119
    .local v11, "$i$a$-apply-MainActivity$importSubscription$2":I
    invoke-virtual {v10, v7}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setExport(Z)V

    .end local v10    # "$this$importSubscription_u24lambda_u2472":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v11    # "$i$a$-apply-MainActivity$importSubscription$2":I
    check-cast v0, Lio/nekohasekai/sagernet/fmt/Serializable;

    sget-object v10, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    sget-object v11, Lmoe/matsuri/nb4a/utils/Util;->INSTANCE:Lmoe/matsuri/nb4a/utils/Util;

    invoke-virtual {v11, v9}, Lmoe/matsuri/nb4a/utils/Util;->b64Decode(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lmoe/matsuri/nb4a/utils/Util;->zlibDecompress([B)[B

    move-result-object v10

    .line 1118
    invoke-static {v0, v10}, Lio/nekohasekai/sagernet/fmt/KryoConverters;->deserialize(Lio/nekohasekai/sagernet/fmt/Serializable;[B)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v0

    .line 1120
    move-object v10, v0

    check-cast v10, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v10, "$this$importSubscription_u24lambda_u2473":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v11, 0x0

    .line 1121
    .local v11, "$i$a$-apply-MainActivity$importSubscription$3":I
    invoke-virtual {v10, v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setExport(Z)V

    .line 1122
    nop

    .line 1120
    .end local v10    # "$this$importSubscription_u24lambda_u2473":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v11    # "$i$a$-apply-MainActivity$importSubscription$3":I
    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_b0} :catch_13e

    .line 1118
    nop

    .line 1131
    .end local v4    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v9    # "data":Ljava/lang/String;
    .restart local v0    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :goto_b1
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 1540
    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1131
    .local v10, "$i$a$-takeIf-MainActivity$importSubscription$name$1":I
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_c5

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c3

    goto :goto_c5

    :cond_c3
    const/4 v11, 0x0

    goto :goto_c6

    :cond_c5
    :goto_c5
    const/4 v11, 0x1

    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-takeIf-MainActivity$importSubscription$name$1":I
    :goto_c6
    if-nez v11, :cond_c9

    goto :goto_ca

    :cond_c9
    move-object v4, v8

    :goto_ca
    if-nez v4, :cond_e2

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v4

    if-eqz v4, :cond_d5

    iget-object v4, v4, Lio/nekohasekai/sagernet/database/SubscriptionBean;->link:Ljava/lang/String;

    goto :goto_d6

    :cond_d5
    move-object v4, v8

    :goto_d6
    if-nez v4, :cond_e2

    .line 1132
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getSubscription()Lio/nekohasekai/sagernet/database/SubscriptionBean;

    move-result-object v4

    if-eqz v4, :cond_e1

    iget-object v4, v4, Lio/nekohasekai/sagernet/database/SubscriptionBean;->token:Ljava/lang/String;

    goto :goto_e2

    :cond_e1
    move-object v4, v8

    .line 1131
    :cond_e2
    :goto_e2
    nop

    .line 1133
    .local v4, "name":Ljava/lang/String;
    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_f1

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_ef

    goto :goto_f1

    :cond_ef
    const/4 v9, 0x0

    goto :goto_f2

    :cond_f1
    :goto_f1
    const/4 v9, 0x1

    :goto_f2
    if-eqz v9, :cond_f7

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v6

    .line 1135
    :cond_f7
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1540
    move-object v10, v9

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1135
    .local v11, "$i$a$-takeIf-MainActivity$importSubscription$5":I
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_108

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_109

    :cond_108
    const/4 v6, 0x1

    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-takeIf-MainActivity$importSubscription$5":I
    :cond_109
    if-nez v6, :cond_10c

    goto :goto_10d

    :cond_10c
    move-object v9, v8

    :goto_10d
    if-nez v9, :cond_126

    .line 1136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscription #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1135
    :cond_126
    invoke-virtual {v0, v9}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setName(Ljava/lang/String;)V

    .line 1138
    new-instance v6, Lio/nekohasekai/sagernet/ui/MainActivity$importSubscription$6;

    invoke-direct {v6, v1, v4, v0, v8}, Lio/nekohasekai/sagernet/ui/MainActivity$importSubscription$6;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/String;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_13b

    return-object v6

    :cond_13b
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1156
    return-object v6

    .line 1123
    .end local v0    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v4, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .local v9, "data":Ljava/lang/String;
    :catch_13e
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Lio/nekohasekai/sagernet/ui/MainActivity$importSubscription$4;

    invoke-direct {v6, v1, v0, v8}, Lio/nekohasekai/sagernet/ui/MainActivity$importSubscription$4;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_151

    return-object v6

    .line 1127
    :cond_151
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v6
.end method

.method public missingPlugin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "pluginName"    # Ljava/lang/String;

    const-string v0, "profileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    sget-object v0, Lio/nekohasekai/sagernet/fmt/PluginEntry;->Companion:Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;

    invoke-virtual {v0, p2}, Lio/nekohasekai/sagernet/fmt/PluginEntry$Companion;->find(Ljava/lang/String;)Lio/nekohasekai/sagernet/fmt/PluginEntry;

    move-result-object v0

    .line 1203
    .local v0, "pluginEntity":Lio/nekohasekai/sagernet/fmt/PluginEntry;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2e

    .line 1204
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const v2, 0x7f13021d

    invoke-virtual {p0, v2, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 1205
    return-void

    .line 1210
    :cond_2e
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1301a4

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    .line 1212
    nop

    .line 1213
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/fmt/PluginEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v4, v5, v1

    .line 1212
    const v1, 0x7f13022c

    invoke-virtual {p0, v1, v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1211
    invoke-virtual {v3, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1216
    new-instance v2, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda24;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/fmt/PluginEntry;)V

    const v3, 0x7f130024

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1219
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1220
    new-instance v2, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda25;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const v3, 0x7f130031

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1223
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1224
    return-void
.end method

.method public onBinderDied()V
    .registers 4

    .line 1421
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->disconnect(Landroid/content/Context;)V

    .line 1422
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/bg/SagerConnection;->connect(Landroid/content/Context;Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    .line 1423
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 120
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    sget-object v0, Lio/nekohasekai/sagernet/CpuPin;->INSTANCE:Lio/nekohasekai/sagernet/CpuPin;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/CpuPin;->pinRenderThreadNow()Z

    .line 125
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 126
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 128
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->inflate(Landroid/view/LayoutInflater;)Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->setBinding(Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;-><init>(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/HomeSwipeController$Host;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeController:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    const/4 v1, 0x0

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->applySystemBars(Landroid/app/Activity;)V

    .line 130
    sget-object v0, Lio/nekohasekai/sagernet/widget/GlassTones;->INSTANCE:Lio/nekohasekai/sagernet/widget/GlassTones;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/widget/GlassTones;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 131
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    sget v2, Lio/nekohasekai/sagernet/widget/GlassTones;->HomeBackground:I

    invoke-virtual {v0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setBackgroundColor(I)V

    .line 133
    :cond_49
    nop

    .line 134
    const v0, 0x7f140287

    filled-new-array {v0}, [I

    move-result-object v0

    .line 133
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getThemeResId()I

    move-result v2

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-nez v0, :cond_128

    .line 138
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    .local v0, "$this$onCreate_u24lambda_u240":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$a$-apply-MainActivity$onCreate$1":I
    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 140
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setShowShadow(Z)V

    .line 141
    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 142
    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 143
    nop

    .line 138
    .end local v0    # "$this$onCreate_u24lambda_u240":Lio/nekohasekai/sagernet/ui/JJGlassCapsule;
    .end local v2    # "$i$a$-apply-MainActivity$onCreate$1":I
    nop

    .line 145
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    .local v0, "$this$onCreate_u24lambda_u242":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    .line 146
    .local v2, "$i$a$-apply-MainActivity$onCreate$2":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 148
    new-instance v4, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda31;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    nop

    .line 145
    .end local v0    # "$this$onCreate_u24lambda_u242":Landroid/widget/FrameLayout;
    .end local v2    # "$i$a$-apply-MainActivity$onCreate$2":I
    nop

    .line 153
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->disableLiveBackdrop()V

    .line 155
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 156
    .local v0, "navLp":Landroid/view/ViewGroup$MarginLayoutParams;
    nop

    .line 157
    const/high16 v2, 0x43960000    # 300.0f

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->dp(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 158
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 156
    iput v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuCapsuleWidth:I

    .line 160
    iget v2, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassMenuCapsuleWidth:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 161
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->setupGlassDrawer()V

    .line 163
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassOverlay:Landroid/widget/FrameLayout;

    new-instance v4, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v4, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda32;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    .line 169
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const-string v4, "navGlassLight"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->buildGlassNavRows(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V

    .line 170
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassLight:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->setNavigation(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 172
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v3

    iget-object v3, v3, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navViewBlack:Lcom/google/android/material/navigation/NavigationView;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->removeView(Landroid/view/View;)V

    .end local v0    # "navLp":Landroid/view/ViewGroup$MarginLayoutParams;
    goto :goto_155

    .line 174
    :cond_128
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navViewBlack:Lcom/google/android/material/navigation/NavigationView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->setNavigation(Landroid/view/View;)V

    .line 175
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.google.android.material.navigation.NavigationView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    move-object v2, p0

    check-cast v2, Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 176
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v2

    iget-object v2, v2, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navLightContainer:Landroid/widget/FrameLayout;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->removeView(Landroid/view/View;)V

    .line 179
    :goto_155
    if-nez p1, :cond_15d

    .line 180
    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragmentWithId(I)Z

    .line 182
    :cond_15d
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    new-instance v5, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/activity/OnBackPressedDispatcherKt;->addCallback$default(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/activity/OnBackPressedCallback;

    .line 197
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->setContentView(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    new-instance v2, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 203
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->jjNavButton:Lio/nekohasekai/sagernet/ui/JJNavButton;

    .local v0, "$this$onCreate_u24lambda_u247":Lio/nekohasekai/sagernet/ui/JJNavButton;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-apply-MainActivity$onCreate$6":I
    new-instance v3, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/JJNavButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const-string v3, "#141416"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/JJNavButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 206
    const v3, 0x7f130154

    invoke-virtual {p0, v3}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lio/nekohasekai/sagernet/ui/JJNavButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    nop

    .line 203
    .end local v0    # "$this$onCreate_u24lambda_u247":Lio/nekohasekai/sagernet/ui/JJNavButton;
    .end local v2    # "$i$a$-apply-MainActivity$onCreate$6":I
    nop

    .line 208
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->getRoot()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    new-instance v2, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/MainActivity;)V

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 217
    sget-object v4, Lio/nekohasekai/sagernet/bg/BaseService$State;->Idle:Lio/nekohasekai/sagernet/bg/BaseService$State;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lio/nekohasekai/sagernet/ui/MainActivity;->changeState$default(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;

    invoke-virtual {v0, v2, v3}, Lio/nekohasekai/sagernet/bg/SagerConnection;->connect(Landroid/content/Context;Lio/nekohasekai/sagernet/bg/SagerConnection$Callback;)V

    .line 219
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->registerChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 220
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    new-instance v2, Lio/nekohasekai/sagernet/group/GroupInterfaceAdapter;

    move-object v3, p0

    check-cast v3, Lio/nekohasekai/sagernet/ui/ThemedActivity;

    invoke-direct {v2, v3}, Lio/nekohasekai/sagernet/group/GroupInterfaceAdapter;-><init>(Lio/nekohasekai/sagernet/ui/ThemedActivity;)V

    check-cast v2, Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/database/GroupManager;->setUserInterface(Lio/nekohasekai/sagernet/database/GroupManager$Interface;)V

    .line 222
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1ff

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_200

    :cond_1ff
    const/4 v0, 0x0

    :goto_200
    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_214

    .line 223
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "getIntent(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 226
    :cond_214
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getEnableClashAPI()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->refreshNavMenu(Z)V

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_239

    .line 231
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 230
    nop

    .line 232
    .local v0, "checkPermission":I
    if-eqz v0, :cond_239

    .line 235
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v3, v2, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 240
    .end local v0    # "checkPermission":I
    :cond_239
    nop

    .line 247
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NestedToolsController;->dismiss(Landroid/app/Activity;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->destroy(Landroid/app/Activity;)V

    .line 1508
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onDestroy()V

    .line 1509
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/GroupManager;->setUserInterface(Lio/nekohasekai/sagernet/database/GroupManager$Interface;)V

    .line 1510
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getConfigurationStore()Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/database/preference/RoomPreferenceDataStore;->unregisterChangeListener(Lio/nekohasekai/sagernet/database/preference/OnPreferenceDataStoreChangeListener;)V

    .line 1511
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->disconnect(Landroid/content/Context;)V

    .line 1512
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_5c

    goto :goto_37

    .line 1523
    :pswitch_a
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1524
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->close()V

    .line 1525
    return v0

    .line 1517
    :pswitch_20
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v0

    .line 1518
    :cond_27
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->open()V

    .line 1519
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1530
    :cond_37
    :goto_37
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3e

    return v0

    .line 1531
    :cond_3e
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v1

    iget-object v1, v1, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    return v2

    .line 1533
    :cond_4c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v1

    .line 1534
    .local v1, "fragment":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    if-eqz v1, :cond_59

    invoke-virtual {v1, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    return v0

    nop

    :pswitch_data_5c
    .packed-switch 0x15
        :pswitch_20
        :pswitch_a
    .end packed-switch
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1259
    const/4 v0, 0x1

    return v0

    .line 1257
    :cond_16
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragmentWithId(I)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1085
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_f

    return-void

    .line 1087
    .local v0, "uri":Landroid/net/Uri;
    :cond_f
    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$onNewIntent$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lio/nekohasekai/sagernet/ui/MainActivity$onNewIntent$1;-><init>(Landroid/net/Uri;Lio/nekohasekai/sagernet/ui/MainActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 1094
    return-void
.end method

.method public onPreferenceDataStoreChanged(Landroidx/preference/PreferenceDataStore;Ljava/lang/String;)V
    .registers 6
    .param p1, "store"    # Landroidx/preference/PreferenceDataStore;
    .param p2, "key"    # Ljava/lang/String;

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    :goto_11
    goto :goto_67

    :sswitch_12
    const-string v0, "individual"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_11

    :sswitch_1b
    const-string v0, "proxyApps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_11

    :sswitch_24
    const-string v0, "bypassMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_11

    .line 1455
    :cond_2d
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getCanStop()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1456
    const v0, 0x7f1301f0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->snackbar(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    const v2, 0x7f13005e

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_67

    .line 1452
    :sswitch_5b
    const-string v0, "serviceMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_11

    .line 1453
    :cond_64
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->onBinderDied()V

    .line 1462
    :cond_67
    :goto_67
    return-void

    :sswitch_data_68
    .sparse-switch
        -0x72f3ee08 -> :sswitch_5b
        -0x1f139955 -> :sswitch_24
        -0x1c67de00 -> :sswitch_1b
        -0x2c25d67 -> :sswitch_12
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1}, Lmoe/matsuri/nb4a/ui/AppListPermission;->result(Landroid/app/Activity;I)V

    return-void
.end method

.method public onServiceConnected(Lio/nekohasekai/sagernet/aidl/ISagerNetService;)V
    .registers 10
    .param p1, "service"    # Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1411
    nop

    .line 1412
    nop

    .line 1413
    :try_start_7
    invoke-static {}, Lio/nekohasekai/sagernet/bg/BaseService$State;->values()[Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-interface {p1}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->getState()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    move-object v3, v0

    goto :goto_17

    .line 1414
    :catch_13
    move-exception v0

    .line 1415
    .local v0, "<unused var>":Landroid/os/RemoteException;
    sget-object v1, Lio/nekohasekai/sagernet/bg/BaseService$State;->Idle:Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-object v3, v1

    .line 1411
    .end local v0    # "<unused var>":Landroid/os/RemoteException;
    :goto_17
    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lio/nekohasekai/sagernet/ui/MainActivity;->changeState$default(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 1417
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 7

    .line 1419
    sget-object v1, Lio/nekohasekai/sagernet/bg/BaseService$State;->Idle:Lio/nekohasekai/sagernet/bg/BaseService$State;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/MainActivity;->changeState$default(Lio/nekohasekai/sagernet/ui/MainActivity;Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .registers 15

    .line 1465
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->updateConnectionId(I)V

    .line 1466
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onStart()V

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->pagesInitialized:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->syncFloatingNav(Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->pagesInitialized:Z

    .line 1468
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1469
    nop

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1614
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 1615
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_36
    :goto_36
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v7

    check-cast v10, Landroidx/fragment/app/Fragment;

    .local v10, "it":Landroidx/fragment/app/Fragment;
    const/4 v11, 0x0

    .line 1469
    .local v11, "$i$a$-filter-MainActivity$onStart$1":I
    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    if-eqz v12, :cond_55

    const-string v13, "glass_drawer_page"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-ne v12, v9, :cond_55

    const/4 v8, 0x1

    .line 1615
    .end local v10    # "it":Landroidx/fragment/app/Fragment;
    .end local v11    # "$i$a$-filter-MainActivity$onStart$1":I
    :cond_55
    if-eqz v8, :cond_36

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 1616
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_5b
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 1614
    nop

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    check-cast v3, Ljava/lang/Iterable;

    .line 1470
    move-object v0, v3

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 1617
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/fragment/app/Fragment;

    .local v5, "it":Landroidx/fragment/app/Fragment;
    const/4 v6, 0x0

    .line 1471
    .local v6, "$i$a$-forEach-MainActivity$onStart$2":I
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 1472
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 1473
    invoke-virtual {v7, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v7

    .line 1474
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1476
    :cond_8a
    nop

    .line 1617
    .end local v5    # "it":Landroidx/fragment/app/Fragment;
    .end local v6    # "$i$a$-forEach-MainActivity$onStart$2":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_67

    .line 1618
    :cond_8d
    nop

    .line 1477
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassPageFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1479
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->rebuildPageCache()V

    .line 1481
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v0

    instance-of v0, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    if-eqz v0, :cond_a4

    .line 1482
    const v0, 0x7f0a01e3

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragmentWithId(I)Z

    .line 1485
    :cond_a4
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1486
    nop

    .local v0, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1619
    .local v1, "$i$f$filterIsInstance":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1628
    .local v4, "$i$f$filterIsInstanceTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c0
    :goto_c0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    instance-of v7, v6, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    if-eqz v7, :cond_c0

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c0

    .line 1629
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_d2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterIsInstanceTo":I
    check-cast v2, Ljava/util/List;

    .line 1619
    nop

    .end local v0    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filterIsInstance":I
    check-cast v2, Ljava/lang/Iterable;

    .line 1487
    move-object v0, v2

    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1630
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 1631
    .local v4, "$i$f$filterTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e7
    :goto_e7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .local v7, "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    const/4 v10, 0x0

    .line 1487
    .local v10, "$i$a$-filter-MainActivity$onStart$visible$1":I
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isAdded()Z

    move-result v11

    if-eqz v11, :cond_103

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isHidden()Z

    move-result v11

    if-nez v11, :cond_103

    const/4 v7, 0x1

    goto :goto_104

    :cond_103
    const/4 v7, 0x0

    .line 1631
    .end local v7    # "it":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    .end local v10    # "$i$a$-filter-MainActivity$onStart$visible$1":I
    :goto_104
    if-eqz v7, :cond_e7

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 1632
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    :cond_10a
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterTo":I
    check-cast v2, Ljava/util/List;

    .line 1630
    nop

    .line 1487
    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    nop

    .line 1485
    move-object v0, v2

    .line 1488
    .local v0, "visible":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_14e

    .line 1489
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1490
    .local v1, "top":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->dropLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 1633
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_127
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .local v6, "oldFrag":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    const/4 v7, 0x0

    .line 1491
    .local v7, "$i$a$-forEach-MainActivity$onStart$3":I
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    .line 1492
    move-object v9, v6

    check-cast v9, Landroidx/fragment/app/Fragment;

    invoke-virtual {v8, v9}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    .line 1493
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 1494
    nop

    .line 1633
    .end local v6    # "oldFrag":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    .end local v7    # "$i$a$-forEach-MainActivity$onStart$3":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_127

    .line 1634
    :cond_14a
    nop

    .line 1495
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .end local v1    # "top":Lio/nekohasekai/sagernet/ui/ToolbarFragment;
    goto :goto_15c

    .line 1496
    :cond_14e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v9, :cond_15c

    .line 1497
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->activeFragment:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    .line 1499
    :cond_15c
    :goto_15c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->syncFloatingNav(Landroidx/fragment/app/Fragment;)V

    .line 1500
    return-void
.end method

.method protected onStop()V
    .registers 3

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeController:Lio/nekohasekai/sagernet/ui/HomeSwipeController;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/HomeSwipeController;->reset()V

    .line 1503
    :cond_7
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/bg/SagerConnection;->updateConnectionId(I)V

    .line 1504
    invoke-super {p0}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onStop()V

    .line 1505
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lio/nekohasekai/sagernet/ui/ThemedActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_8

    invoke-static {p0}, Lmoe/matsuri/nb4a/ui/AppListPermission;->check(Landroid/app/Activity;)V

    :cond_8
    return-void
.end method

.method public final openProxyTraffic()V
    .registers 5

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->clearGlassHost()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->navGlassPageHost:Landroid/widget/FrameLayout;

    invoke-static {p0, v0}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->buildPage(Landroid/content/Context;Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "\u4ee3\u7406\u6d41\u91cf\u7edf\u8ba1"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/nekohasekai/sagernet/ui/MainActivity;->addGlassHeader(Landroid/widget/LinearLayout;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const v3, 0xf001

    iput v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->glassExpandedNavId:I

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->prepareGlassExpansion()V

    return-void
.end method

.method public final openSettingsTools()V
    .registers 2

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NestedToolsController;->open(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_c

    const v0, 0x7f0a01e8

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->displayFragmentWithId(I)Z

    :cond_c
    return-void
.end method

.method public prepareSwipe(Z)[Landroid/view/View;
    .registers 10

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->canSwipe(Z)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->currentFragment()Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeFrom:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    if-eqz p1, :cond_14

    const v2, 0x7f0a02e5

    goto :goto_17

    :cond_14
    const v2, 0x7f0a01e3

    :goto_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    if-nez v3, :cond_37

    if-eqz p1, :cond_2b

    new-instance v3, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/JJBlankFragment;-><init>()V

    goto :goto_30

    :cond_2b
    new-instance v3, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {v3}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;-><init>()V

    :goto_30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeTo:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const v4, 0x7f0a0136

    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_54
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    move-object v2, v3

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    if-eqz p1, :cond_72

    goto :goto_73

    :cond_72
    neg-float v4, v4

    :goto_73
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_ab

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    move-object v4, v3

    check-cast v4, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v4}, Lio/nekohasekai/sagernet/ui/MainActivity;->syncFloatingNav(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_9d

    instance-of v4, v3, Lio/nekohasekai/sagernet/ui/JJBlankFragment;

    if-eqz v4, :cond_9d

    instance-of v4, v2, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    if-eqz v4, :cond_9d

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->latestDashboardStats:Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;

    if-eqz v4, :cond_9d

    check-cast v2, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;

    invoke-virtual {v2, v4}, Lio/nekohasekai/sagernet/ui/TrafficDashboardView;->update(Lio/nekohasekai/sagernet/aidl/SpeedDisplayData;)V

    :cond_9d
    if-eqz v1, :cond_ab

    if-eqz v2, :cond_ab

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    return-object v4

    :cond_ab
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->swipeFrom:Lio/nekohasekai/sagernet/ui/ToolbarFragment;

    if-eqz v0, :cond_b3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lio/nekohasekai/sagernet/ui/MainActivity;->finishSwipe(ZZ)V

    :cond_b3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final refreshHomeList()V
    .registers 3

    .line 1370
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->cachedPages:Ljava/util/HashMap;

    const v1, 0x7f0a01e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-eqz v1, :cond_14

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->refreshList()V

    .line 1371
    :cond_1a
    return-void
.end method

.method public final refreshNavMenu(Z)V
    .registers 5
    .param p1, "clashApi"    # Z

    const/4 p1, 0x0

    .line 1074
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navigation:Landroid/view/View;

    if-nez v0, :cond_6

    return-void

    .line 1075
    :cond_6
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/navigation/NavigationView;

    const v1, 0x7f0a01e9

    if-eqz v0, :cond_2a

    .line 1076
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getNavigation()Landroid/view/View;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.google.android.material.navigation.NavigationView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2d

    .line 1078
    :cond_2a
    invoke-direct {p0, v1, p1}, Lio/nekohasekai/sagernet/ui/MainActivity;->setNavRowVisible(IZ)V

    .line 1080
    :cond_2d
    :goto_2d
    return-void
.end method

.method public final requestVpn()V
    .registers 3

    .line 1384
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connect:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 1385
    return-void
.end method

.method public final setBinding(Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;)V
    .registers 3
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->binding:Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    return-void
.end method

.method public final setNavigation(Landroid/view/View;)V
    .registers 3
    .param p1, "<set-?>"    # Landroid/view/View;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->navigation:Landroid/view/View;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/SettingsTools;->hideTopLevel(Landroid/view/View;)V

    return-void
.end method

.method public snackbarInternal$app_ossDebug(Ljava/lang/CharSequence;)Lcom/google/android/material/snackbar/Snackbar;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MainActivity;->getBinding()Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/databinding/LayoutMainBinding;->coordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "make(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->snackbar(Ljava/lang/Object;)V

    return-object v0
.end method

.method public stateChanged(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "state"    # Lio/nekohasekai/sagernet/bg/BaseService$State;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1407
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lio/nekohasekai/sagernet/ui/MainActivity;->changeState(Lio/nekohasekai/sagernet/bg/BaseService$State;Ljava/lang/String;Z)V

    .line 1408
    return-void
.end method

.method public final stopVpn()V
    .registers 2

    .line 1388
    sget-object v0, Lio/nekohasekai/sagernet/SagerNet;->Companion:Lio/nekohasekai/sagernet/SagerNet$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/SagerNet$Companion;->stopService()V

    .line 1389
    return-void
.end method

.method public final urlTest()I
    .registers 3

    .line 1097
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getServiceState()Lio/nekohasekai/sagernet/bg/BaseService$State;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/BaseService$State;->getConnected()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->getService()Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1100
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MainActivity;->connection:Lio/nekohasekai/sagernet/bg/SagerConnection;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/bg/SagerConnection;->getService()Lio/nekohasekai/sagernet/aidl/ISagerNetService;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lio/nekohasekai/sagernet/aidl/ISagerNetService;->urlTest()I

    move-result v0

    return v0

    .line 1097
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1098
    const-string v1, "not started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
