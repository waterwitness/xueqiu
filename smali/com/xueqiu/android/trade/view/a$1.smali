.class final Lcom/xueqiu/android/trade/view/a$1;
.super Ljava/lang/Object;
.source "BrokerListDialog.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/view/a;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/view/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/view/a;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/trade/view/a$1;->a:Lcom/xueqiu/android/trade/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/trade/view/a$1;->a:Lcom/xueqiu/android/trade/view/a;

    .line 1018
    iget-object v0, v0, Lcom/xueqiu/android/trade/view/a;->c:Lcom/xueqiu/android/trade/view/b;

    .line 41
    iget-object v1, p0, Lcom/xueqiu/android/trade/view/a$1;->a:Lcom/xueqiu/android/trade/view/a;

    .line 2018
    iget-object v1, v1, Lcom/xueqiu/android/trade/view/a;->a:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 41
    invoke-interface {v0, v1}, Lcom/xueqiu/android/trade/view/b;->a(Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 42
    return-void
.end method
