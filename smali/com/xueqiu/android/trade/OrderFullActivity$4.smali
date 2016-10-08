.class final Lcom/xueqiu/android/trade/OrderFullActivity$4;
.super Ljava/lang/Object;
.source "OrderFullActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/OrderFullActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/OrderFullActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/OrderFullActivity;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lcom/xueqiu/android/trade/OrderFullActivity$4;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 735
    iget-object v1, p0, Lcom/xueqiu/android/trade/OrderFullActivity$4;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    check-cast p2, Lcom/xueqiu/android/message/client/b;

    .line 1022
    iget-object v0, p2, Lcom/xueqiu/android/message/client/b;->a:Ljava/lang/Object;

    .line 735
    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1, v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/trade/OrderFullActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 736
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/xueqiu/android/trade/OrderFullActivity$4;->a:Lcom/xueqiu/android/trade/OrderFullActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Lcom/xueqiu/android/trade/OrderFullActivity;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 741
    return-void
.end method
