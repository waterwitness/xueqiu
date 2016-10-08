.class final Lcom/xueqiu/android/message/client/MessageService$21;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/MessageService;->onDestroy()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$21;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$21;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$21;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/h;->d()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$21;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->f(Lcom/xueqiu/android/message/client/MessageService;)Lrx/h;

    move-result-object v0

    invoke-virtual {v0}, Lrx/h;->b()V

    .line 192
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$21;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->g(Lcom/xueqiu/android/message/client/MessageService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 193
    return-void
.end method
