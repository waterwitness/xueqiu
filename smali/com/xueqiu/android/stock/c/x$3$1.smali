.class final Lcom/xueqiu/android/stock/c/x$3$1;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/x$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/x$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x$3;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$3$1;->a:Lcom/xueqiu/android/stock/c/x$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 910
    const-string v0, "http://xueqiu.com/5351390332"

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$3$1;->a:Lcom/xueqiu/android/stock/c/x$3;

    iget-object v1, v1, Lcom/xueqiu/android/stock/c/x$3;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 911
    return-void
.end method
