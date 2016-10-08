.class final Lcom/xueqiu/android/community/StatusDetailActivity$42;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x6a4

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v3

    .line 562
    invoke-virtual {v3, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 1077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 563
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 564
    :goto_0
    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    const-string v1, "\u4e0d\u80fd\u7ed9\u81ea\u5df1\u6253\u8d4f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 576
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 563
    goto :goto_0

    .line 2069
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 569
    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 3152
    invoke-static {v0, v2}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    goto :goto_1

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 575
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$42;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    const v3, 0x7f040012

    const v4, 0x7f040008

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Landroid/content/Intent;III)V

    goto :goto_1
.end method
