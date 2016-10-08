.class final Lcom/xueqiu/android/stock/a/k;
.super Ljava/lang/Object;
.source "LHBListAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/xueqiu/android/stock/a/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/j;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/k;->c:Lcom/xueqiu/android/stock/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/stock/model/F10Table;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/xueqiu/android/common/widget/ag;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/k;->c:Lcom/xueqiu/android/stock/a/j;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 68
    invoke-direct {v0, v1}, Lcom/xueqiu/android/common/widget/ag;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v1, p0, Lcom/xueqiu/android/stock/a/k;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/F10Table;->getRowdata()[[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    new-array v1, v1, [[Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xueqiu/android/stock/model/F10Table;->setRowdata([[Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/F10Table;->getWidth()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ag;->setColumnsWidth([I)V

    .line 75
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/F10Table;->getHeader()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ag;->setHeadNames([Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/F10Table;->getRowdata()[[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ag;->setData([[Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/xueqiu/android/stock/model/F10Table;->getAlign()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/ag;->setColumnsAlign([Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ag;->postInvalidate()V

    .line 79
    return-void
.end method
