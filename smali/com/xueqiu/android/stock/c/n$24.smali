.class final Lcom/xueqiu/android/stock/c/n$24;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Landroid/support/v4/view/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$24;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IFI)V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public final b_(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 319
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$24;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->j(Lcom/xueqiu/android/stock/c/n;)[Lcom/xueqiu/android/stock/c/p;

    move-result-object v0

    aget-object v0, v0, p1

    .line 320
    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$24;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->k(Lcom/xueqiu/android/stock/c/n;)Lcom/xueqiu/android/stock/c/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/stock/c/o;->a(I)Landroid/support/v4/a/i;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/c/p;

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/p;->C_()V

    .line 324
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$24;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->l(Lcom/xueqiu/android/stock/c/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/p;->b(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$24;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/n;->m(Lcom/xueqiu/android/stock/c/n;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Portfolio;

    .line 329
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$24;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 330
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x578

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 334
    :goto_0
    const-string v2, "group_name"

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 336
    return-void

    .line 332
    :cond_1
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x4b0

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Portfolio;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
