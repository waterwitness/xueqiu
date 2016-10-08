.class final Lcom/xueqiu/android/message/client/MessageService$20;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/client/MessageService;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$20;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$20;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$20;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    .line 1222
    iget-object v1, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/snowballfinance/message/io/c/h;->b:Lcom/snowballfinance/message/io/c/e;

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 167
    :goto_0
    if-nez v0, :cond_0

    .line 168
    const-string v0, "MessageService"

    const-string v1, "try to reconnect."

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$20;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snowballfinance/message/io/c/h;->a()V

    .line 171
    :cond_0
    return-void

    .line 1222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
