.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$6;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v1, "tactic_des_detail"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 1167
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->detail:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "tactic_des_content"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 1303
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->content:Ljava/lang/String;

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "tactic_des_push_time"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 1311
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/g;->pushTime:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    iget-object v2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$6;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    const-class v3, Lcom/xueqiu/android/tactic/c/a;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method
