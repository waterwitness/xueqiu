.class final Lcom/xueqiu/android/community/a/ak$8;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/ak;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 850
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$8;->c:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xueqiu/android/community/a/ak$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 853
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$8;->c:Lcom/xueqiu/android/community/a/ak;

    .line 1089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 853
    new-instance v1, Lcom/xueqiu/android/stock/model/StockQuote;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$8;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/community/a/ak$8;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$8;->c:Lcom/xueqiu/android/community/a/ak;

    .line 2089
    iget-object v1, v1, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 854
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 856
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x514

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 857
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 858
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 859
    return-void
.end method
