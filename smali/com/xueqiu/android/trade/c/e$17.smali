.class final Lcom/xueqiu/android/trade/c/e$17;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/q;


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
    .line 667
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$17;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$17;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->R(Lcom/xueqiu/android/trade/c/e;)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$17;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/e;->S(Lcom/xueqiu/android/trade/c/e;)V

    goto :goto_0
.end method
