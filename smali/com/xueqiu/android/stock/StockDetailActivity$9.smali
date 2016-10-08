.class final Lcom/xueqiu/android/stock/StockDetailActivity$9;
.super Ljava/lang/Object;
.source "StockDetailActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/StockDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/StockDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/StockDetailActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$9;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 470
    iget-object v1, p0, Lcom/xueqiu/android/stock/StockDetailActivity$9;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    check-cast p2, Lcom/xueqiu/android/message/client/b;

    .line 1022
    iget-object v0, p2, Lcom/xueqiu/android/message/client/b;->a:Ljava/lang/Object;

    .line 470
    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 471
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/stock/StockDetailActivity$9;->a:Lcom/xueqiu/android/stock/StockDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/StockDetailActivity;->a(Lcom/xueqiu/android/stock/StockDetailActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 476
    return-void
.end method
