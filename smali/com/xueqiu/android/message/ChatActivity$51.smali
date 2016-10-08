.class final Lcom/xueqiu/android/message/ChatActivity$51;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/message/model/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1576
    check-cast p1, Ljava/util/List;

    .line 2579
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/model/Talk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->c(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Talk;)V

    .line 2580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2581
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 2582
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2583
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->toPlatformMessage()Lcom/snowballfinance/messageplatform/data/Message;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2585
    :cond_0
    iget-object v3, p0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v3, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V

    goto :goto_0

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$51;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->G(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/client/MessageService;

    move-result-object v0

    invoke-static {v1}, Lcom/snowballfinance/messageplatform/a/y;->a(Ljava/util/List;)Lcom/snowballfinance/messageplatform/a/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/client/MessageService;->a(Lcom/snowballfinance/messageplatform/a/y;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/message/ChatActivity$51$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/ChatActivity$51$1;-><init>(Lcom/xueqiu/android/message/ChatActivity$51;Ljava/util/List;)V

    .line 2589
    invoke-virtual {v0, v1}, Lrx/a;->c(Lrx/c/b;)Lrx/j;

    .line 1576
    return-void
.end method
