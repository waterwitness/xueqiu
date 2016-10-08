.class final Lcom/xueqiu/android/trade/c/s$21;
.super Ljava/lang/Object;
.source "TradeItemAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/c/s;->a(Lcom/xueqiu/android/trade/model/SemiTradeAccount;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/trade/c/s;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/c/s;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/s$21;->b:Lcom/xueqiu/android/trade/c/s;

    iput-object p2, p0, Lcom/xueqiu/android/trade/c/s$21;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/s$21;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/s$21;->b:Lcom/xueqiu/android/trade/c/s;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/c/s;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 1054
    return-void
.end method
