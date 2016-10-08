.class final Lcom/xueqiu/android/cube/b/h$9;
.super Ljava/lang/Object;
.source "RebalanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/b/h;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/b/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/b/h;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v0}, Lcom/xueqiu/android/cube/b/h;->e(Lcom/xueqiu/android/cube/b/h;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string v1, "extra_id"

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    const-string v1, "extra_sell_flag"

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/b/h;->a(Landroid/content/Intent;)V

    .line 276
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x57b

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 277
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/b/h;->f()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/cube/CubeRbHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    const-string v1, "extra_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-static {v2}, Lcom/xueqiu/android/cube/b/h;->d(Lcom/xueqiu/android/cube/b/h;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "extra_page_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    iget-object v1, p0, Lcom/xueqiu/android/cube/b/h$9;->a:Lcom/xueqiu/android/cube/b/h;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/b/h;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method
