.class final Lcom/xueqiu/android/tactic/a/e$2;
.super Ljava/lang/Object;
.source "TacticPoolAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/b;

.field final synthetic b:Lcom/xueqiu/android/tactic/a/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/e;Lcom/xueqiu/android/tactic/d/b;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/e$2;->b:Lcom/xueqiu/android/tactic/a/e;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/e$2;->a:Lcom/xueqiu/android/tactic/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/e$2;->b:Lcom/xueqiu/android/tactic/a/e;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/e;->i:Lcom/xueqiu/android/tactic/a/d;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 123
    const-class v2, Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v1, "extra_stock"

    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v3, p0, Lcom/xueqiu/android/tactic/a/e$2;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 1125
    iget-object v3, v3, Lcom/xueqiu/android/tactic/d/b;->name:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lcom/xueqiu/android/tactic/a/e$2;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 1133
    iget-object v4, v4, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 124
    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/e$2;->b:Lcom/xueqiu/android/tactic/a/e;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/e;->i:Lcom/xueqiu/android/tactic/a/d;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 125
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v0, 0x8fd

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 127
    const-string v0, "product_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/e$2;->b:Lcom/xueqiu/android/tactic/a/e;

    iget-object v2, v2, Lcom/xueqiu/android/tactic/a/e;->i:Lcom/xueqiu/android/tactic/a/d;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/a/d;->a(Lcom/xueqiu/android/tactic/a/d;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v2

    .line 2191
    iget-wide v2, v2, Lcom/xueqiu/android/tactic/d/g;->id:J

    .line 127
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "stock_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/e$2;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 3133
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "subscription_status"

    const-string v0, "OWN"

    iget-object v3, p0, Lcom/xueqiu/android/tactic/a/e$2;->b:Lcom/xueqiu/android/tactic/a/e;

    iget-object v3, v3, Lcom/xueqiu/android/tactic/a/e;->i:Lcom/xueqiu/android/tactic/a/d;

    invoke-static {v3}, Lcom/xueqiu/android/tactic/a/d;->a(Lcom/xueqiu/android/tactic/a/d;)Lcom/xueqiu/android/tactic/d/g;

    move-result-object v3

    .line 3295
    iget-object v3, v3, Lcom/xueqiu/android/tactic/d/g;->owningStatus:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5df2\u5b9a"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 131
    return-void

    .line 129
    :cond_0
    const-string v0, "\u672a\u5b9a"

    goto :goto_0
.end method
