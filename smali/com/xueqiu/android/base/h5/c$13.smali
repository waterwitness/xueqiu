.class final Lcom/xueqiu/android/base/h5/c$13;
.super Landroid/content/BroadcastReceiver;
.source "H5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/h5/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/b;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/xueqiu/android/base/h5/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V
    .locals 1

    .prologue
    .line 935
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/c$13;->d:Lcom/xueqiu/android/base/h5/c;

    iput-object p2, p0, Lcom/xueqiu/android/base/h5/c$13;->a:Lcom/xueqiu/android/base/h5/b;

    iput-wide p3, p0, Lcom/xueqiu/android/base/h5/c$13;->b:J

    iput-wide p5, p0, Lcom/xueqiu/android/base/h5/c$13;->c:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 938
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$13;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->z()V

    .line 939
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wechat_intent_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    const-string v0, "extra_wechat_result_code"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 942
    if-nez v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$13;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$13;->a:Lcom/xueqiu/android/base/h5/b;

    iget-wide v2, p0, Lcom/xueqiu/android/base/h5/c$13;->b:J

    iget-wide v4, p0, Lcom/xueqiu/android/base/h5/c$13;->c:J

    invoke-static/range {v0 .. v5}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;JJ)V

    .line 948
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$13;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/c;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 949
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$13;->d:Lcom/xueqiu/android/base/h5/c;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/c;->b(Lcom/xueqiu/android/base/h5/c;)Landroid/content/BroadcastReceiver;

    .line 951
    :cond_0
    return-void

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/c$13;->d:Lcom/xueqiu/android/base/h5/c;

    iget-object v1, p0, Lcom/xueqiu/android/base/h5/c$13;->a:Lcom/xueqiu/android/base/h5/b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/h5/c;->a(Lcom/xueqiu/android/base/h5/c;Lcom/xueqiu/android/base/h5/b;Z)V

    goto :goto_0
.end method
