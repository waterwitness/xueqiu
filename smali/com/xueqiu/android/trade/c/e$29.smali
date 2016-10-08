.class final Lcom/xueqiu/android/trade/c/e$29;
.super Ljava/lang/Object;
.source "OrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 317
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/e$29;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$29;->a:Lcom/xueqiu/android/trade/c/e;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/e$29;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/e;->g(Lcom/xueqiu/android/trade/c/e;)Lcom/xueqiu/android/common/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/trade/c/e;Lcom/xueqiu/android/common/x;)V

    .line 321
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/e$29;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-static {v0, p1}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/trade/c/e;Landroid/view/View;)V

    .line 322
    return-void
.end method
