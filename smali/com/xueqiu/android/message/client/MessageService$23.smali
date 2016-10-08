.class final Lcom/xueqiu/android/message/client/MessageService$23;
.super Ljava/lang/Object;
.source "MessageService.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/snowballfinance/messageplatform/a/a;

.field final synthetic b:Lcom/xueqiu/android/message/client/MessageService;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/client/MessageService;Lcom/snowballfinance/messageplatform/a/a;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/xueqiu/android/message/client/MessageService$23;->b:Lcom/xueqiu/android/message/client/MessageService;

    iput-object p2, p0, Lcom/xueqiu/android/message/client/MessageService$23;->a:Lcom/snowballfinance/messageplatform/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$23;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$23;->a:Lcom/snowballfinance/messageplatform/a/a;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$23;->a:Lcom/snowballfinance/messageplatform/a/a;

    invoke-static {}, Lcom/snowballfinance/messageplatform/a/a;->a()Ljava/lang/Integer;

    move-result-object v1

    .line 1125
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->a:Ljava/lang/Integer;

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$23;->a:Lcom/snowballfinance/messageplatform/a/a;

    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v1

    .line 1133
    iput-object v1, v0, Lcom/snowballfinance/messageplatform/a/a;->b:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/xueqiu/android/message/client/MessageService$23;->b:Lcom/xueqiu/android/message/client/MessageService;

    invoke-static {v0}, Lcom/xueqiu/android/message/client/MessageService;->e(Lcom/xueqiu/android/message/client/MessageService;)Lcom/snowballfinance/message/io/c/h;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/client/MessageService$23;->a:Lcom/snowballfinance/messageplatform/a/a;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/message/io/c/h;->a(Lcom/snowballfinance/messageplatform/a/a;)Lrx/a;

    .line 247
    :cond_0
    return-void
.end method
