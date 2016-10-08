.class final Lcom/xueqiu/android/trade/c/i$11$1;
.super Ljava/lang/Object;
.source "PerformanceItemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/i$11;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/stock/model/StockIncome;

.field final synthetic c:Lcom/xueqiu/android/trade/c/i$11;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/i$11;Ljava/lang/String;Lcom/xueqiu/android/stock/model/StockIncome;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/i$11$1;->c:Lcom/xueqiu/android/trade/c/i$11;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/i$11$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/trade/c/i$11$1;->b:Lcom/xueqiu/android/stock/model/StockIncome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 692
    if-nez p2, :cond_0

    .line 693
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/i$11$1;->c:Lcom/xueqiu/android/trade/c/i$11;

    iget-object v0, v0, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$11$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/i;->b(Lcom/xueqiu/android/trade/c/i;Ljava/lang/String;)V

    .line 696
    :cond_0
    if-ne p2, v2, :cond_1

    .line 697
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/i$11$1;->c:Lcom/xueqiu/android/trade/c/i$11;

    iget-object v1, v1, Lcom/xueqiu/android/trade/c/i$11;->a:Lcom/xueqiu/android/trade/c/i;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 698
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664\u6301\u4ed3\u8bb0\u5f55"

    .line 699
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u5220\u9664%s\u7684\u6240\u6709\u6301\u4ed3\u8bb0\u5f55"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xueqiu/android/trade/c/i$11$1;->b:Lcom/xueqiu/android/stock/model/StockIncome;

    .line 700
    invoke-virtual {v4}, Lcom/xueqiu/android/stock/model/StockIncome;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07057f

    new-instance v2, Lcom/xueqiu/android/trade/c/i$11$1$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/trade/c/i$11$1$1;-><init>(Lcom/xueqiu/android/trade/c/i$11$1;)V

    .line 701
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070248

    const/4 v2, 0x0

    .line 708
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 711
    :cond_1
    return-void
.end method
