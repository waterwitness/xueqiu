.class final Lcom/xueqiu/android/stock/c/w$2;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/w;->D_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$2;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$2;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->c(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->dismiss()V

    .line 153
    const-string v0, "/S/P000275/subscribe-choice"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/w$2;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v1}, Lcom/xueqiu/android/stock/c/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$2;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->c(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$2;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/w;->g()Landroid/support/v4/a/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/a/k;->finish()V

    .line 160
    return-void
.end method
