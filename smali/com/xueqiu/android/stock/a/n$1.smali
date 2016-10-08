.class final Lcom/xueqiu/android/stock/a/n$1;
.super Ljava/lang/Object;
.source "PortfolioGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/n;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/a/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/n;I)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/n$1;->b:Lcom/xueqiu/android/stock/a/n;

    iput p2, p0, Lcom/xueqiu/android/stock/a/n$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n$1;->b:Lcom/xueqiu/android/stock/a/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/n;->a(Lcom/xueqiu/android/stock/a/n;)Lcom/xueqiu/android/stock/a/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/n$1;->b:Lcom/xueqiu/android/stock/a/n;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/n;->a(Lcom/xueqiu/android/stock/a/n;)Lcom/xueqiu/android/stock/a/o;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/stock/a/n$1;->a:I

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/a/o;->a(I)V

    .line 70
    :cond_0
    return-void
.end method
