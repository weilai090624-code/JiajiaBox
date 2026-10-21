# Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE.
.class public final Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;
.super Ljava/lang/Object;
.implements Lio/nekohasekai/sagernet/ui/DrawerRows$Renderer;
.field private final activity:Lio/nekohasekai/sagernet/ui/MainActivity;
.field private final column:Landroid/widget/LinearLayout;
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/MainActivity;Landroid/widget/LinearLayout;)V
 .registers 3
 invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;->activity:Lio/nekohasekai/sagernet/ui/MainActivity;
 iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;->column:Landroid/widget/LinearLayout;
 return-void
.end method
.method public render(Ljava/util/List;)V
 .registers 4
 iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;->activity:Lio/nekohasekai/sagernet/ui/MainActivity;
 iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerRuleRenderer;->column:Landroid/widget/LinearLayout;
 invoke-static {v0, p1, v1}, Lio/nekohasekai/sagernet/ui/MainActivity$renderRouteRules$1;->$r8$lambda$K4_y6CNVY_fPiCDZn2Nk_NBqIk8(Lio/nekohasekai/sagernet/ui/MainActivity;Ljava/util/List;Landroid/widget/LinearLayout;)V
 return-void
.end method
