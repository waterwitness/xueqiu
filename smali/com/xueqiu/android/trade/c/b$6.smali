.class final Lcom/xueqiu/android/trade/c/b$6;
.super Ljava/lang/Object;
.source "InputPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/b;-><init>(Lcom/xueqiu/android/common/b;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/b;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/b$6;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$6;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/b;->c(Lcom/xueqiu/android/trade/c/b;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/b$6;->a:Lcom/xueqiu/android/trade/c/b;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/b$6;->a:Lcom/xueqiu/android/trade/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/b;->c(Lcom/xueqiu/android/trade/c/b;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1363
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1364
    iget-object v2, v0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    if-eqz v2, :cond_0

    .line 1365
    iget-object v2, v0, Lcom/xueqiu/android/trade/c/b;->k:Lcom/xueqiu/android/common/widget/p;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/widget/p;->b()V

    .line 1367
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1368
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/b;->dismiss()V

    .line 1370
    :cond_1
    new-instance v2, Lcom/xueqiu/android/trade/c/b$2;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/trade/c/b$2;-><init>(Lcom/xueqiu/android/trade/c/b;)V

    .line 1388
    new-instance v3, Lcom/xueqiu/android/trade/view/a;

    iget-object v4, v0, Lcom/xueqiu/android/trade/c/b;->h:Lcom/xueqiu/android/common/b;

    iget-object v5, v0, Lcom/xueqiu/android/trade/c/b;->l:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/xueqiu/android/trade/view/a;-><init>(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/util/ArrayList;Lcom/xueqiu/android/trade/view/b;)V

    iput-object v3, v0, Lcom/xueqiu/android/trade/c/b;->n:Lcom/xueqiu/android/trade/view/a;

    .line 1389
    iget-object v0, v0, Lcom/xueqiu/android/trade/c/b;->n:Lcom/xueqiu/android/trade/view/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/view/a;->a()V

    .line 188
    :cond_2
    return-void
.end method
