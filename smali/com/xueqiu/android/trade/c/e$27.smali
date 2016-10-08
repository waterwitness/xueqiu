.class final Lcom/xueqiu/android/trade/c/e$27;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/c/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/e;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$27;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 1

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$27;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->ah(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/base/c;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/b/b;

    invoke-interface {v0}, Lcom/xueqiu/android/trade/b/b;->m()V

    .line 1094
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$27;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$27;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c/e;->g()Landroid/support/v4/a/k;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->m()V

    .line 1097
    :cond_0
    return-void
.end method
