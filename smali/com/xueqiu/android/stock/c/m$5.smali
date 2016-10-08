.class final Lcom/xueqiu/android/stock/c/m$5;
.super Ljava/lang/Object;
.source "PortfolioContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/m;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/m;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/m;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x578

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0501

    if-ne v0, v1, :cond_2

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 3186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 264
    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    .line 4152
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 5053
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v4, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 310
    :cond_0
    :goto_1
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/m;->c(Lcom/xueqiu/android/stock/c/m;)V

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0014

    if-ne v0, v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/m;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f040010

    const v3, 0x7f040008

    invoke-virtual {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/c/m;->a(Landroid/content/Intent;II)V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e04a8

    if-ne v0, v1, :cond_4

    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/common/MainActivity;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/m;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/MainActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/MainActivity;->k()V

    goto :goto_1

    .line 279
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0010

    if-ne v0, v1, :cond_5

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v2}, Lcom/xueqiu/android/stock/c/m;->f()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/stock/StockSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/m;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 281
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0502

    if-ne v0, v1, :cond_6

    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/m;->d(Lcom/xueqiu/android/stock/c/m;)V

    goto :goto_1

    .line 283
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0503

    if-ne v0, v1, :cond_7

    .line 284
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/m;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CreateCubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/c/m;->a(Landroid/content/Intent;)V

    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/m;->d(Lcom/xueqiu/android/stock/c/m;)V

    goto/16 :goto_1

    .line 287
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0504

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/m$5;->a:Lcom/xueqiu/android/stock/c/m;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/m;->d(Lcom/xueqiu/android/stock/c/m;)V

    .line 289
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const-string v1, "PAMID"

    new-instance v2, Lcom/xueqiu/android/stock/c/m$5$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/c/m$5$1;-><init>(Lcom/xueqiu/android/stock/c/m$5;)V

    .line 6483
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_1
.end method
