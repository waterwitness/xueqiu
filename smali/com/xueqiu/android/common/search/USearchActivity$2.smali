.class final Lcom/xueqiu/android/common/search/USearchActivity$2;
.super Ljava/lang/Object;
.source "USearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/search/USearchActivity;->a(Ljava/util/List;Lcom/xueqiu/android/cube/a/k;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Lcom/xueqiu/android/common/search/USearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/search/USearchActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 514
    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->m(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/search/b/a;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/search/b/a;->b(Ljava/lang/String;)V

    .line 517
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const-class v2, Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    const-string v1, "extra_cube_id"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 519
    const-string v1, "extra_cube_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/common/search/USearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 521
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/USearchActivity;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "click_area"

    const-string v2, "\u7ec4\u5408"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v0

    const-string v1, "click_symbol"

    iget-object v2, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/xueqiu/android/common/search/USearchActivity$2;->b:Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/search/USearchActivity;->l(Lcom/xueqiu/android/common/search/USearchActivity;)Lcom/xueqiu/android/common/model/SNBEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 525
    return-void
.end method
