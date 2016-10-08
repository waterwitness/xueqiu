.class final Lcom/xueqiu/android/message/client/MessageService$1;
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
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$1;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$1;->a:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$1;->a:Lcom/xueqiu/android/message/client/MessageService;

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 3193
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->c:Z

    .line 2316
    if-eqz v1, :cond_0

    .line 2317
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/message/client/MessageService$7;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/message/client/MessageService$7;-><init>(Lcom/xueqiu/android/message/client/MessageService;)V

    .line 3259
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/b/d;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 126
    :cond_0
    return-void
.end method
