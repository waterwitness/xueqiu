.class final Lcom/xueqiu/android/stock/a/ah$2;
.super Ljava/lang/Object;
.source "StockReferenceByStatusAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/a/ah;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/xueqiu/android/stock/a/ah;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/ah;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/ah$2;->c:Lcom/xueqiu/android/stock/a/ah;

    iput-object p2, p0, Lcom/xueqiu/android/stock/a/ah$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/xueqiu/android/stock/a/ah$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 152
    const-string v0, "--"

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ah$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/ah$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xueqiu/android/stock/a/ah$2;->b:I

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/trade/g;->a(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 157
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x6a4

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 158
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/stock/a/ah$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0
.end method
