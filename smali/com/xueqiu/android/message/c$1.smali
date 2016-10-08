.class final Lcom/xueqiu/android/message/c$1;
.super Ljava/lang/Object;
.source "RecentTalkFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/xueqiu/android/message/c$1;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 165
    iget-object v1, p0, Lcom/xueqiu/android/message/c$1;->a:Lcom/xueqiu/android/message/c;

    check-cast p2, Lcom/xueqiu/android/message/client/b;

    .line 1022
    iget-object v0, p2, Lcom/xueqiu/android/message/client/b;->a:Ljava/lang/Object;

    .line 165
    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    check-cast v0, Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v1, v0}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/message/c$1;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->b(Lcom/xueqiu/android/message/c;)Lrx/h;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/c$1$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/c$1$1;-><init>(Lcom/xueqiu/android/message/c$1;)V

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 176
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/message/c$1;->a:Lcom/xueqiu/android/message/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/c;->a(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/message/client/MessageService;)Lcom/xueqiu/android/message/client/MessageService;

    .line 181
    return-void
.end method
