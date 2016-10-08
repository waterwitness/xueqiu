.class final Lcom/xueqiu/android/trade/c/o$10;
.super Ljava/lang/Object;
.source "TradeFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/o;->C()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/c/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/o;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/o$10;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$10;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->i(Lcom/xueqiu/android/trade/c/o;)V

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/o$10;->a:Lcom/xueqiu/android/trade/c/o;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/o;->b(Lcom/xueqiu/android/trade/c/o;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/bd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/bd;->d()V

    .line 275
    return-void
.end method
