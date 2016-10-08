.class final Lcom/xueqiu/android/message/ChatActivity$13;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/ptr/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->n()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$13;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 742
    iget-object v2, p0, Lcom/xueqiu/android/message/ChatActivity$13;->a:Lcom/xueqiu/android/message/ChatActivity;

    .line 1362
    iget-object v0, v2, Lcom/xueqiu/android/message/ChatActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    iget-object v0, v2, Lcom/xueqiu/android/message/ChatActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1367
    iget-object v0, v2, Lcom/xueqiu/android/message/ChatActivity;->j:Lcom/xueqiu/android/message/a/d;

    .line 2184
    iget-object v3, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v1

    .line 1367
    :goto_0
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/model/Message;)Ljava/util/List;

    move-result-object v0

    .line 1369
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1370
    iget-object v1, v2, Lcom/xueqiu/android/message/ChatActivity;->u:Lrx/h;

    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$23;

    invoke-direct {v3, v2, v0}, Lcom/xueqiu/android/message/ChatActivity$23;-><init>(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)V

    const-wide/16 v4, 0x1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5, v0}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    :cond_1
    :goto_1
    return-void

    .line 2187
    :cond_2
    iget-object v0, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Message;

    .line 2188
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 2192
    goto :goto_0

    .line 1382
    :cond_5
    iget-object v1, v2, Lcom/xueqiu/android/message/ChatActivity;->u:Lrx/h;

    new-instance v3, Lcom/xueqiu/android/message/ChatActivity$34;

    invoke-direct {v3, v2, v0}, Lcom/xueqiu/android/message/ChatActivity$34;-><init>(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)V

    const-wide/16 v4, 0x3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5, v0}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    goto :goto_1
.end method
