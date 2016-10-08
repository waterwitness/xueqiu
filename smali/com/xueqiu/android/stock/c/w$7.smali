.class final Lcom/xueqiu/android/stock/c/w$7;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/w;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$7;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 299
    const-string v0, "/broker/specialPage?tag=us"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w$7;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/w;->g()Landroid/support/v4/a/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 300
    return-void
.end method
