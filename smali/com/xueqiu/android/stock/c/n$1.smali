.class final Lcom/xueqiu/android/stock/c/n$1;
.super Ljava/lang/Object;
.source "PortfolioFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/n;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/n;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/n$1;->a:Lcom/xueqiu/android/stock/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/n$1;->a:Lcom/xueqiu/android/stock/c/n;

    check-cast p2, Lcom/xueqiu/android/message/client/b;

    .line 1022
    iget-object v0, p2, Lcom/xueqiu/android/message/client/b;->a:Ljava/lang/Object;

    .line 126
    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 127
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/n$1;->a:Lcom/xueqiu/android/stock/c/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/n;->a(Lcom/xueqiu/android/stock/c/n;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 132
    return-void
.end method
