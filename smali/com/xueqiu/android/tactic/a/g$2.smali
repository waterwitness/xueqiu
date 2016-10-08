.class final Lcom/xueqiu/android/tactic/a/g$2;
.super Ljava/lang/Object;
.source "TacticPushAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/a/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/d/b;

.field final synthetic b:Lcom/xueqiu/android/tactic/a/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/a/g;Lcom/xueqiu/android/tactic/d/b;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/xueqiu/android/tactic/a/g$2;->b:Lcom/xueqiu/android/tactic/a/g;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/a/g$2;->a:Lcom/xueqiu/android/tactic/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/g$2;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    .line 1089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 97
    const-class v2, Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string v1, "extra_stock"

    new-instance v2, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v3, p0, Lcom/xueqiu/android/tactic/a/g$2;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 1125
    iget-object v3, v3, Lcom/xueqiu/android/tactic/d/b;->name:Ljava/lang/String;

    .line 98
    iget-object v4, p0, Lcom/xueqiu/android/tactic/a/g$2;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 1133
    iget-object v4, v4, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 98
    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/xueqiu/android/tactic/a/g$2;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v1, v1, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 99
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/tactic/a/g$2;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v0, v0, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/a/f;->a(Lcom/xueqiu/android/tactic/a/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x900

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 106
    :goto_0
    const-string v1, "product_id"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/g$2;->b:Lcom/xueqiu/android/tactic/a/g;

    iget-object v2, v2, Lcom/xueqiu/android/tactic/a/g;->g:Lcom/xueqiu/android/tactic/a/f;

    invoke-static {v2}, Lcom/xueqiu/android/tactic/a/f;->b(Lcom/xueqiu/android/tactic/a/f;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "stock_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/tactic/a/g$2;->a:Lcom/xueqiu/android/tactic/d/b;

    .line 2133
    iget-object v2, v2, Lcom/xueqiu/android/tactic/d/b;->symbol:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 109
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x901

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_0
.end method
