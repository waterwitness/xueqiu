.class final Lcom/xueqiu/android/stock/a/q$3$1;
.super Ljava/lang/Object;
.source "PortfolioListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/q$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/a/q$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/q$3;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q$3$1;->a:Lcom/xueqiu/android/stock/a/q$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$3$1;->a:Lcom/xueqiu/android/stock/a/q$3;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q$3;->b:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/stock/a/q$3$1;->a:Lcom/xueqiu/android/stock/a/q$3;

    iget-object v0, v0, Lcom/xueqiu/android/stock/a/q$3;->b:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v0}, Lcom/xueqiu/android/stock/a/q;->c(Lcom/xueqiu/android/stock/a/q;)Lcom/xueqiu/android/stock/a/t;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$3$1;->a:Lcom/xueqiu/android/stock/a/q$3;

    iget v1, v1, Lcom/xueqiu/android/stock/a/q$3;->a:I

    invoke-interface {v0, v1}, Lcom/xueqiu/android/stock/a/t;->a(I)V

    .line 290
    :cond_0
    return-void
.end method
