.class final Lcom/xueqiu/android/message/client/MessageService$24;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/messageplatform/a/y;

.field final synthetic b:Lrx/i/a;

.field final synthetic c:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;Lcom/snowballfinance/messageplatform/a/y;Lrx/i/a;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$24;->c:Lcom/xueqiu/android/message/client/MessageService;

    iput-object p2, p0, Lcom/xueqiu/android/message/client/MessageService$24;->a:Lcom/snowballfinance/messageplatform/a/y;

    iput-object p3, p0, Lcom/xueqiu/android/message/client/MessageService$24;->b:Lrx/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$24;->c:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService$24;->a:Lcom/snowballfinance/messageplatform/a/y;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/client/MessageService$24$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/client/MessageService$24$1;-><init>(Lcom/xueqiu/android/message/client/MessageService$24;)V

    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 266
    return-void
.end method
