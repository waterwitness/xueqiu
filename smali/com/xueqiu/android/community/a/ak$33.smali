.class final Lcom/xueqiu/android/community/a/ak$33;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$33;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$33;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 468
    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$33;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    .line 2152
    invoke-static {v0, v4}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 482
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$33;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUserId()J

    move-result-wide v0

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 472
    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$33;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e0d\u80fd\u7ed9\u81ea\u5df1\u6253\u8d4f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$33;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$33;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->d(Lcom/xueqiu/android/community/a/ak;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u4e0d\u80fd\u6253\u8d4f\u5df2\u5220\u9664\u5e16\u5b50"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$33;->b:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$33;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V

    goto :goto_0
.end method
