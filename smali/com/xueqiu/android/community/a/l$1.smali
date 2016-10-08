.class final Lcom/xueqiu/android/community/a/l$1;
.super Ljava/lang/Object;
.source "PaidQuestionListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/l;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/l;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/xueqiu/android/community/a/l$1;->b:Lcom/xueqiu/android/community/a/l;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/l$1;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/xueqiu/android/community/a/l$1;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/xueqiu/android/community/a/l$1;->b:Lcom/xueqiu/android/community/a/l;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 255
    const-class v2, Lcom/xueqiu/android/community/UserProfileActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const-string v1, "extra_user"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/l$1;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/a/l$1;->b:Lcom/xueqiu/android/community/a/l;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 3089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 265
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/l$1;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_0

    .line 262
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/xueqiu/android/community/a/l$1;->b:Lcom/xueqiu/android/community/a/l;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/l;->n:Lcom/xueqiu/android/community/a/k;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 263
    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
