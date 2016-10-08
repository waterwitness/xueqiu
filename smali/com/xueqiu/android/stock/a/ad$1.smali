.class final Lcom/xueqiu/android/stock/a/ad$1;
.super Ljava/lang/Object;
.source "StockListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/ad;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/Stock;

.field final synthetic b:Lcom/xueqiu/android/stock/a/ae;

.field final synthetic c:Lcom/xueqiu/android/stock/a/ad;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/ad;Lcom/xueqiu/android/stock/model/Stock;Lcom/xueqiu/android/stock/a/ae;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    iput-object p3, p0, Lcom/xueqiu/android/stock/a/ad$1;->b:Lcom/xueqiu/android/stock/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/ad;->a(Lcom/xueqiu/android/stock/a/ad;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    new-instance v0, Lcom/xueqiu/android/stock/a/ad$1$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/stock/a/ad$1$1;-><init>(Lcom/xueqiu/android/stock/a/ad$1;)V

    .line 119
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/model/Stock;->isHasExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    .line 1153
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/ad;->e:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xueqiu/android/stock/a/ad;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1154
    :cond_0
    :goto_1
    return-void

    .line 122
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 1156
    :cond_2
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    if-eqz v1, :cond_3

    .line 1157
    iget-object v1, v0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1159
    :cond_3
    new-instance v1, Lcom/xueqiu/android/common/widget/ae;

    iget-object v2, v0, Lcom/xueqiu/android/stock/a/ad;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/widget/ae;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    .line 1160
    iget-object v0, v0, Lcom/xueqiu/android/stock/a/ad;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->isHasExist()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/model/Stock;->setHasExist(Z)V

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/ad$1;->c:Lcom/xueqiu/android/stock/a/ad;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/ad;->notifyDataSetChanged()V

    goto :goto_1

    .line 127
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method
