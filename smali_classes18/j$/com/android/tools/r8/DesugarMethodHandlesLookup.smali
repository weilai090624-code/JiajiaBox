.class public final synthetic Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lj$/com/android/tools/r8/DesugarVarHandle;
    .locals 1

    new-instance v0, Lj$/com/android/tools/r8/DesugarVarHandle;

    invoke-direct {v0, p1, p2, p3}, Lj$/com/android/tools/r8/DesugarVarHandle;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public synthetic toPrivateLookupIn(Ljava/lang/Class;)Lj$/com/android/tools/r8/DesugarMethodHandlesLookup;
    .locals 0

    return-object p0
.end method
