.class final Lcom/xueqiu/android/stock/view/d;
.super Ljava/lang/Object;
.source "TableFixHeaders.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/widget/Scroller;

.field b:I

.field c:I

.field final synthetic d:Lcom/xueqiu/android/stock/view/TableFixHeaders;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/view/TableFixHeaders;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 839
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/d;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput v0, p0, Lcom/xueqiu/android/stock/view/d;->b:I

    .line 837
    iput v0, p0, Lcom/xueqiu/android/stock/view/d;->c:I

    .line 840
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    .line 841
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 852
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 857
    iget-object v1, p0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    .line 858
    iget-object v2, p0, Lcom/xueqiu/android/stock/view/d;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 859
    iget v3, p0, Lcom/xueqiu/android/stock/view/d;->b:I

    sub-int/2addr v3, v1

    .line 860
    iget v4, p0, Lcom/xueqiu/android/stock/view/d;->c:I

    sub-int/2addr v4, v2

    .line 861
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 862
    :cond_2
    iget-object v5, p0, Lcom/xueqiu/android/stock/view/d;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-virtual {v5, v3, v4}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->scrollBy(II)V

    .line 863
    iput v1, p0, Lcom/xueqiu/android/stock/view/d;->b:I

    .line 864
    iput v2, p0, Lcom/xueqiu/android/stock/view/d;->c:I

    .line 867
    :cond_3
    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/d;->d:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
