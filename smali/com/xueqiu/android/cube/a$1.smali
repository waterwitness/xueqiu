.class final Lcom/xueqiu/android/cube/a$1;
.super Ljava/lang/Object;
.source "AddStockActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/model/Stock;

.field final synthetic b:Lcom/xueqiu/android/cube/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/xueqiu/android/cube/a$1;->b:Lcom/xueqiu/android/cube/a;

    iput-object p2, p0, Lcom/xueqiu/android/cube/a$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/xueqiu/android/cube/a$1;->b:Lcom/xueqiu/android/cube/a;

    iget-object v0, v0, Lcom/xueqiu/android/cube/a;->a:Lcom/xueqiu/android/cube/AddStockActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/AddStockActivity;->b(Lcom/xueqiu/android/cube/AddStockActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 253
    const v0, 0x7f070416

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/a$1;->b:Lcom/xueqiu/android/cube/a;

    iget-object v1, p0, Lcom/xueqiu/android/cube/a$1;->a:Lcom/xueqiu/android/stock/model/Stock;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/a;->a(Lcom/xueqiu/android/cube/a;Lcom/xueqiu/android/stock/model/Stock;)V

    goto :goto_0
.end method
