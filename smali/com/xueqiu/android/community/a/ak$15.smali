.class final Lcom/xueqiu/android/community/a/ak$15;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->b(Landroid/widget/LinearLayout;Lcom/xueqiu/android/community/model/Card;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$15;->a:Lcom/xueqiu/android/community/a/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1230
    const v0, 0x7f0e0437

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1231
    const v1, 0x7f0e0438

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1233
    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$15;->a:Lcom/xueqiu/android/community/a/ak;

    .line 2089
    iget-object v2, v2, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1233
    new-instance v3, Lcom/xueqiu/android/stock/model/StockQuote;

    invoke-direct {v3, v0, v1}, Lcom/xueqiu/android/stock/model/StockQuote;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/q;->a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Landroid/content/Intent;

    move-result-object v0

    .line 1235
    iget-object v2, p0, Lcom/xueqiu/android/community/a/ak$15;->a:Lcom/xueqiu/android/community/a/ak;

    .line 3089
    iget-object v2, v2, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 1235
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1237
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x514

    const/16 v3, 0xd

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1238
    const-string v2, "symbol"

    invoke-virtual {v0, v2, v1}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 1239
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1240
    return-void
.end method
