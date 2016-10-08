.class final Lcom/xueqiu/android/message/a/f$6$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/a/f$6;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/a/f$6;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/f$6;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Lcom/xueqiu/android/message/a/f$6$1;->a:Lcom/xueqiu/android/message/a/f$6;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 786
    iget-object v0, p0, Lcom/xueqiu/android/message/a/f$6$1;->a:Lcom/xueqiu/android/message/a/f$6;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/f$6;->c:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/a/f$6$1;->a:Lcom/xueqiu/android/message/a/f$6;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/f$6;->c:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/f$6$1;->a:Lcom/xueqiu/android/message/a/f$6;

    iget-object v0, v0, Lcom/xueqiu/android/message/a/f$6;->c:Lcom/xueqiu/android/message/model/Message;

    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/xueqiu/android/message/a/f$6$1;->a:Lcom/xueqiu/android/message/a/f$6;

    iget-object v1, v1, Lcom/xueqiu/android/message/a/f$6;->b:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 789
    :cond_1
    return v2
.end method
