.class final Lcom/xueqiu/android/trade/c/s$11;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$11;->b:Lcom/xueqiu/android/trade/c/s;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/s$11;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$11;->b:Lcom/xueqiu/android/trade/c/s;

    .line 2240
    iget-object v0, v0, Landroid/support/v4/a/i;->T:Landroid/view/View;

    .line 899
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$11;->b:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/s;->n(Lcom/xueqiu/android/trade/c/s;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    .line 900
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 901
    iget-object v2, p0, Lcom/xueqiu/android/trade/c/s$11;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 902
    if-ge v1, v0, :cond_0

    .line 905
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$11;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 906
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$11;->b:Lcom/xueqiu/android/trade/c/s;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/s;->n(Lcom/xueqiu/android/trade/c/s;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 907
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
