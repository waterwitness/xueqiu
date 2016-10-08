.class final Lcom/xueqiu/android/stock/a/u$1;
.super Ljava/lang/Object;
.source "QuoteRankListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/u;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/m;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/stock/a/u;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/u;Lcom/xueqiu/android/stock/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/u$1;->a:Lcom/xueqiu/android/stock/m;

    iput-object p3, p0, Lcom/xueqiu/android/stock/a/u$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u$1;->a:Lcom/xueqiu/android/stock/m;

    iget v3, v0, Lcom/xueqiu/android/stock/m;->g:I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v1, v3}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    const/16 v0, 0x49

    if-ne v3, v0, :cond_0

    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/HgtAhStockRankMoreListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 190
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xaf0

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 193
    const-string v2, "board_name"

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 195
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x2c

    if-ne v3, v0, :cond_1

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/BondBuyBackActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0

    .line 155
    :cond_1
    const/16 v0, 0x11

    if-ne v3, v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u$1;->a:Lcom/xueqiu/android/stock/m;

    instance-of v0, v0, Lcom/xueqiu/android/stock/c/ab;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u$1;->a:Lcom/xueqiu/android/stock/m;

    check-cast v0, Lcom/xueqiu/android/stock/c/ab;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2, v3}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const-string v4, "extra_rank_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v3, "extra_rank_title"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v3, "extra_etf_industry"

    iget-object v0, v0, Lcom/xueqiu/android/stock/c/ab;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    move-object v1, v2

    .line 164
    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_0

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u$1;->a:Lcom/xueqiu/android/stock/m;

    instance-of v0, v0, Lcom/xueqiu/android/stock/f;

    if-eqz v0, :cond_6

    .line 169
    const/16 v0, 0x21

    if-ne v3, v0, :cond_4

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/FundRankActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string v2, "extra_fund_type_id"

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v2, "extra_rank_title"

    iget-object v3, p0, Lcom/xueqiu/android/stock/a/u$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_0

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/u$1;->a:Lcom/xueqiu/android/stock/m;

    check-cast v0, Lcom/xueqiu/android/stock/f;

    .line 175
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v4}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v4, "extra_rank_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string v3, "extra_rank_title"

    iget-object v4, p0, Lcom/xueqiu/android/stock/a/u$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "extra_fund_type_id"

    iget v4, v0, Lcom/xueqiu/android/stock/f;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    iget v3, v0, Lcom/xueqiu/android/stock/f;->b:I

    if-eqz v3, :cond_5

    .line 180
    const-string v3, "extra_fund_parent_type_id"

    iget v0, v0, Lcom/xueqiu/android/stock/f;->b:I

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    move-object v0, v1

    move-object v1, v2

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v1, v3}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/u$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/u$1;->c:Lcom/xueqiu/android/stock/a/u;

    invoke-static {v2}, Lcom/xueqiu/android/stock/a/u;->a(Lcom/xueqiu/android/stock/a/u;)Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/xueqiu/android/stock/StockRankMoreListActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    const-string v2, "extra_rank_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v2, "extra_rank_title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method
