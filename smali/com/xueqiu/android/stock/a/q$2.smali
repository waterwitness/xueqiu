.class final Lcom/xueqiu/android/stock/a/q$2;
.super Ljava/lang/Object;
.source "PortfolioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/a/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/q;I)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q$2;->b:Lcom/xueqiu/android/stock/a/q;

    iput p2, p0, Lcom/xueqiu/android/stock/a/q$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$2;->b:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$2;->b:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/a/q$2;->a:I

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/a/t;->b(I)V

    .line 277
    :cond_0
    return-void
.end method
