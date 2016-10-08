.class final Lcom/xueqiu/android/common/search/StockSearchActivity$11;
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
    .line 222
    iput-object p1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$11;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;I)V
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 226
    sparse-switch p2, :sswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 228
    :sswitch_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "600"

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 231
    :sswitch_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "300"

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 234
    :sswitch_2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string v2, "000"

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 237
    :sswitch_3
    new-instance v0, Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {v0}, Lcom/xueqiu/android/stock/model/Stock;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$11;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->h(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setName(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$11;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/StockSearchActivity;->h(Lcom/xueqiu/android/common/search/StockSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/model/Stock;->setCode(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/xueqiu/android/common/search/StockSearchActivity$11;->a:Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-static {v1, v0}, Lcom/xueqiu/android/common/search/StockSearchActivity;->a(Lcom/xueqiu/android/common/search/StockSearchActivity;Lcom/xueqiu/android/stock/model/Stock;)V

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_3
        0x186aa -> :sswitch_0
        0x186ab -> :sswitch_1
        0x186ac -> :sswitch_2
    .end sparse-switch
.end method
