.class final Lcom/xueqiu/android/common/search/StockSearchActivity$12;
.super Ljava/lang/Object;
.source "StockSearchActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/search/StockSearchActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/search/StockSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/StockSearchActivity;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$12;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;I)V
    .locals 2

    .prologue
    .line 250
    packed-switch p2, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 252
    :pswitch_0
    new-instance v0, Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Stock;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$12;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->h(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setCode(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$12;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->h(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setName(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$12;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;Lcom/xueqiu/android/stock/model/Stock;)V

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
    .end packed-switch
.end method
