.class final Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;
.super Ljava/lang/Object;
.source "StockMoreInfoActivity.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/StockMoreInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->a(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)[Landroid/support/v4/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->a(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    .line 67
    instance-of v0, v0, Lcom/xueqiu/android/community/c/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->b(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->b(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    const v1, 0x7f07052b

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/StockMoreInfoActivity;->b(Lcom/xueqiu/android/stock/StockMoreInfoActivity;)Lcom/xueqiu/android/stock/model/StockQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockMoreInfoActivity$1;->a:Lcom/xueqiu/android/stock/StockMoreInfoActivity;

    const v1, 0x7f07052e

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public final b_(I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
