.class final Lcom/xueqiu/android/stock/c/w$1;
.super Ljava/lang/Object;
.source "QuotesCenterItemFragment.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/w;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/w;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/w;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/w$1;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 111
    .line 1114
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$1;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->a(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/stock/a/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$1;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->a(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/stock/a/x;

    move-result-object v0

    .line 2057
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/a/x;->c:Lcom/xueqiu/android/base/util/ar;

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$1;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->b(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/stock/a/u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/w$1;->a:Lcom/xueqiu/android/stock/c/w;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/w;->b(Lcom/xueqiu/android/stock/c/w;)Lcom/xueqiu/android/stock/a/u;

    move-result-object v0

    .line 2084
    invoke-static {}, Lcom/xueqiu/android/base/util/ar;->a()Lcom/xueqiu/android/base/util/ar;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/stock/a/u;->d:Lcom/xueqiu/android/base/util/ar;

    .line 2085
    invoke-virtual {v0}, Lcom/xueqiu/android/stock/a/u;->a()V

    .line 111
    :cond_1
    return-void
.end method
