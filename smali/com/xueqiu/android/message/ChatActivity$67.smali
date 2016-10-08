.class final Lcom/xueqiu/android/message/ChatActivity$67;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity;->a(Ljava/util/List;)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;J)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$67;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-wide p2, p0, Lcom/xueqiu/android/message/ChatActivity$67;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 442
    check-cast p1, Ljava/util/List;

    .line 1445
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$67;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$67;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1, p1}, Lcom/xueqiu/android/message/ChatActivity;->a(Lcom/xueqiu/android/message/ChatActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2176
    iput-object v1, v0, Lcom/xueqiu/android/message/a/d;->a:Ljava/util/List;

    .line 1446
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$67;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    .line 1447
    const-string v0, "ChatActivity"

    const-string v1, "onMessage:%dms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xueqiu/android/message/ChatActivity$67;->a:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method
