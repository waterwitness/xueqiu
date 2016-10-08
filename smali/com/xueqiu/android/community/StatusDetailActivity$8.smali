.class final Lcom/xueqiu/android/community/StatusDetailActivity$8;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$8;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 825
    const-string v1, "extra_status_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$8;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->i(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 826
    const-string v1, "extra_is_status_reward"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 827
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$8;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$8;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const-class v3, Lcom/xueqiu/android/community/c/p;

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 829
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x6a4

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 830
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 831
    return-void
.end method
