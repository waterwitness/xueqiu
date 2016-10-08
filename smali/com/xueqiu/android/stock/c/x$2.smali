.class final Lcom/xueqiu/android/stock/c/x$2;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/x;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/stock/c/x;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/x;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/x$2;->b:Lcom/xueqiu/android/stock/c/x;

    iput-object p2, p0, Lcom/xueqiu/android/stock/c/x$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/x$2;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/x$2;->b:Lcom/xueqiu/android/stock/c/x;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/x;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 877
    return-void
.end method
