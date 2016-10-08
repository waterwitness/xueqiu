.class final Lcom/xueqiu/android/message/ChatActivity$49;
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
        "Lcom/xueqiu/android/message/model/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 1

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$49;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity$49;->b:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1531
    check-cast p1, Lcom/xueqiu/android/message/model/Message;

    .line 2536
    iget-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity$49;->b:Z

    if-eqz v0, :cond_0

    .line 2537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/ChatActivity$49;->b:Z

    .line 2538
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$49;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/message/a/d;->a(Lcom/xueqiu/android/message/model/Message;)V

    .line 2539
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$49;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;)Lcom/xueqiu/android/message/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/d;->notifyDataSetChanged()V

    .line 1531
    :cond_0
    return-void
.end method
