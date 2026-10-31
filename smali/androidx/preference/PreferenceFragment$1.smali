.class Landroidx/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/preference/PreferenceFragment;

    .line 129
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$1;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    goto :goto_b

    .line 134
    :pswitch_6
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$1;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragment;->bindPreferences()V

    .line 137
    :goto_b
    return-void

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
