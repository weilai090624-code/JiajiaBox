.class public final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/ProfileManager$Listener;
.implements Lio/nekohasekai/sagernet/database/GroupManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GroupPagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1764:1\n1755#2,3:1765\n360#2,7:1768\n360#2,7:1775\n1755#2,3:1783\n1#3:1782\n*S KotlinDebug\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter\n*L\n1002#1:1765,3\n1019#1:1768,7\n1029#1:1775,7\n1009#1:1783,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u001d\u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 J\u0008\u0010!\u001a\u00020\u0007H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0007H\u0016J\u0010\u0010%\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0007H\u0016J\u0010\u0010&\u001a\u00020 2\u0006\u0010\'\u001a\u00020\u0016H\u0016J\u0016\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010*J\u0016\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0002\u0010-J\u0016\u0010.\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010*J\u0016\u0010.\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0002\u0010-J\u0016\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u000201H\u0096@\u00a2\u0006\u0002\u00102J\u0016\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u000205H\u0096@\u00a2\u0006\u0002\u00106J\u001e\u00103\u001a\u00020\u001e2\u0006\u00100\u001a\u0002012\u0006\u00107\u001a\u00020 H\u0096@\u00a2\u0006\u0002\u00108J\u001e\u00109\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020\u00162\u0006\u0010:\u001a\u00020\u0016H\u0096@\u00a2\u0006\u0002\u0010;R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR*\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R6\u0010\u0014\u001a\u001e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u0015j\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017`\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006<"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "Lio/nekohasekai/sagernet/database/ProfileManager$Listener;",
        "Lio/nekohasekai/sagernet/database/GroupManager$Listener;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V",
        "selectedGroupIndex",
        "",
        "getSelectedGroupIndex",
        "()I",
        "setSelectedGroupIndex",
        "(I)V",
        "groupList",
        "Ljava/util/ArrayList;",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "Lkotlin/collections/ArrayList;",
        "getGroupList",
        "()Ljava/util/ArrayList;",
        "setGroupList",
        "(Ljava/util/ArrayList;)V",
        "groupFragments",
        "Ljava/util/HashMap;",
        "",
        "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;",
        "Lkotlin/collections/HashMap;",
        "getGroupFragments",
        "()Ljava/util/HashMap;",
        "setGroupFragments",
        "(Ljava/util/HashMap;)V",
        "reload",
        "",
        "now",
        "",
        "getItemCount",
        "createFragment",
        "Landroidx/fragment/app/Fragment;",
        "position",
        "getItemId",
        "containsItem",
        "itemId",
        "groupAdd",
        "group",
        "(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "groupRemoved",
        "groupId",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "groupUpdated",
        "onAdd",
        "profile",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onUpdated",
        "data",
        "Lio/nekohasekai/sagernet/aidl/TrafficData;",
        "(Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "noTraffic",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onRemoved",
        "profileId",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private groupFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;",
            ">;"
        }
    .end annotation
.end field

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private selectedGroupIndex:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;


# direct methods
.method public static synthetic $r8$lambda$BoFtOm8QuYl--CwuXYpyxFMs76Q(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;I)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupRemoved$lambda$6(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MyC4uihO01XtQODR10ubfcyduHU(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupAdd$lambda$4(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kGXxum3orm_y4Vj5Ro7JOWp4-_E(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;ILio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupUpdated$lambda$8(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;ILio/nekohasekai/sagernet/database/ProxyGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zyvFOVBQqU5lkzsmr78tOA8-8jo(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupAdd$lambda$4$lambda$3(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 1
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 923
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    .line 929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupFragments:Ljava/util/HashMap;

    .line 979
    nop

    .line 980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->reload(Z)V

    .line 981
    nop

    .line 923
    return-void
.end method

.method private static final groupAdd$lambda$4(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 9
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;
    .param p1, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p2, "this$1"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 1007
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1783
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1784
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 1009
    .local v7, "$i$a$-any-ConfigurationFragment$GroupPagerAdapter$groupAdd$2$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUngrouped()Z

    move-result v8

    .line 1784
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-any-ConfigurationFragment$GroupPagerAdapter$groupAdd$2$1":I
    if-nez v8, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 1785
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 1009
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 1013
    :cond_3
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->notifyItemInserted(I)V

    .line 1014
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 1015
    :cond_4
    return-void
.end method

.method private static final groupAdd$lambda$4$lambda$3(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 1010
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 1011
    return-void
.end method

.method private static final groupRemoved$lambda$6(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;I)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;
    .param p1, "$index"    # I

    .line 1023
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1024
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->notifyItemRemoved(I)V

    .line 1025
    return-void
.end method

.method private static final groupUpdated$lambda$8(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;ILio/nekohasekai/sagernet/database/ProxyGroup;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;
    .param p1, "$index"    # I
    .param p2, "$group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 1033
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/nekohasekai/sagernet/database/ProxyGroup;->displayName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 1034
    :cond_0
    return-void
.end method

.method public static synthetic reload$default(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;ZILjava/lang/Object;)V
    .locals 0

    .line 931
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->reload(Z)V

    return-void
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 11
    .param p1, "itemId"    # J

    .line 1002
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 1765
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1766
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v5, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v6, 0x0

    .line 1002
    .local v6, "$i$a$-any-ConfigurationFragment$GroupPagerAdapter$containsItem$1":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v7

    const/4 v9, 0x1

    cmp-long v10, v7, p1

    if-nez v10, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1766
    .end local v5    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v6    # "$i$a$-any-ConfigurationFragment$GroupPagerAdapter$containsItem$1":I
    :goto_0
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 1767
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .line 1002
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_1
    return v3
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    .line 988
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;-><init>()V

    move-object v1, v0

    .local v1, "$this$createFragment_u24lambda_u240":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    const/4 v2, 0x0

    .line 989
    .local v2, "$i$a$-apply-ConfigurationFragment$GroupPagerAdapter$createFragment$1":I
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->setProxyGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .line 990
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupFragments:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->getProxyGroup()Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v4

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->selectedGroupIndex:I

    if-ne p1, v3, :cond_0

    .line 992
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;->setSelected(Z)V

    .line 994
    :cond_0
    nop

    .line 988
    .end local v1    # "$this$createFragment_u24lambda_u240":Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;
    .end local v2    # "$i$a$-apply-ConfigurationFragment$GroupPagerAdapter$createFragment$1":I
    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final getGroupFragments()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;",
            ">;"
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupFragments:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation

    .line 928
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 984
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 998
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSelectedGroupIndex()I
    .locals 1

    .line 927
    iget v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->selectedGroupIndex:I

    return v0
.end method

.method public groupAdd(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
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

    .line 1006
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lio/nekohasekai/sagernet/database/ProxyGroup;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 1016
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public groupRemoved(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .param p1, "groupId"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1768
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 1769
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1770
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 1019
    .local v7, "$i$a$-indexOfFirst-ConfigurationFragment$GroupPagerAdapter$groupRemoved$index$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v8

    cmp-long v10, v8, p1

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 1770
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-indexOfFirst-ConfigurationFragment$GroupPagerAdapter$groupRemoved$index$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 1771
    goto :goto_2

    .line 1772
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1774
    :cond_2
    const/4 v2, -0x1

    .line 1019
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 1020
    .local v0, "index":I
    if-ne v0, v5, :cond_3

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1022
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    new-instance v2, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 1026
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public groupUpdated(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "groupId"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1037
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public groupUpdated(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
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

    .line 1029
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1775
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 1776
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1777
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 1029
    .local v7, "$i$a$-indexOfFirst-ConfigurationFragment$GroupPagerAdapter$groupUpdated$index$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v8

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 1777
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-indexOfFirst-ConfigurationFragment$GroupPagerAdapter$groupUpdated$index$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 1778
    goto :goto_2

    .line 1779
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1781
    :cond_2
    const/4 v2, -0x1

    .line 1029
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 1030
    .local v0, "index":I
    if-ne v0, v5, :cond_3

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 1032
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    new-instance v3, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0, p1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;ILio/nekohasekai/sagernet/database/ProxyGroup;)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout;->post(Ljava/lang/Runnable;)Z

    .line 1035
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public onAdd(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1040
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 1782
    .local v5, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v6, 0x0

    .line 1040
    .local v6, "$i$a$-find-ConfigurationFragment$GroupPagerAdapter$onAdd$2":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v7

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .end local v5    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v6    # "$i$a$-find-ConfigurationFragment$GroupPagerAdapter$onAdd$2":I
    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    if-nez v1, :cond_3

    .line 1041
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 1042
    invoke-static {p0, v3, v2, v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->reload$default(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;ZILjava/lang/Object;)V

    .line 1044
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public onRemoved(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p1, "groupId"    # J
    .param p3, "profileId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 1782
    .local v5, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v6, 0x0

    .line 1051
    .local v6, "$i$a$-find-ConfigurationFragment$GroupPagerAdapter$onRemoved$group$1":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v7

    cmp-long v9, v7, p1

    if-nez v9, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .end local v5    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v6    # "$i$a$-find-ConfigurationFragment$GroupPagerAdapter$onRemoved$group$1":I
    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    if-nez v1, :cond_3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_3
    move-object v0, v1

    .line 1052
    .local v0, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUngrouped()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->countByGroup(J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    .line 1053
    invoke-static {p0, v3, v2, v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->reload$default(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;ZILjava/lang/Object;)V

    .line 1055
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public onUpdated(Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/aidl/TrafficData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1046
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public onUpdated(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "noTraffic"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1048
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final reload(Z)V
    .locals 3
    .param p1, "now"    # Z

    .line 933
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getUpdateSelectedCallback()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 937
    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 977
    return-void
.end method

.method public final setGroupFragments(Ljava/util/HashMap;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupFragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupFragments:Ljava/util/HashMap;

    return-void
.end method

.method public final setGroupList(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->groupList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSelectedGroupIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 927
    iput p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->selectedGroupIndex:I

    return-void
.end method
