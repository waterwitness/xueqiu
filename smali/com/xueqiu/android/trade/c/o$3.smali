.class final Lcom/xueqiu/android/trade/c/o$3;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->I()V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/o$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07053f

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    .line 653
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    new-instance v1, Lcom/xueqiu/android/common/widget/m;

    iget-object v2, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/c/o;->f()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/trade/c/o$3;->a:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/widget/m;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/o;->a(Lcom/xueqiu/android/trade/c/o;Lcom/xueqiu/android/common/widget/m;)Lcom/xueqiu/android/common/widget/m;

    .line 654
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->m(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/m;

    move-result-object v0

    .line 2073
    new-instance v1, Landroid/support/v7/internal/view/d;

    iget-object v2, v0, Lcom/xueqiu/android/common/widget/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/internal/view/d;-><init>(Landroid/content/Context;)V

    .line 1083
    const v2, 0x7f0f0004

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/m;->b:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 655
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->m(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/o;->n(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/n;

    move-result-object v1

    .line 2110
    iput-object v1, v0, Lcom/xueqiu/android/common/widget/m;->d:Lcom/xueqiu/android/common/widget/n;

    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$3;->b:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->m(Lcom/xueqiu/android/trade/c/o;)Lcom/xueqiu/android/common/widget/m;

    move-result-object v0

    .line 3092
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/m;->c:Landroid/support/v7/internal/view/menu/ab;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ab;->a()V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 658
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5de

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 659
    return-void
.end method
