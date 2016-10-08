.class final Lcom/xueqiu/android/message/a/f$6;
.super Ljava/lang/Object;
.source "ChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/f;->a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V
.end annotation


# instance fields
.field a:Landroid/view/GestureDetector;

.field final synthetic b:Lcom/xueqiu/android/message/ChatActivity;

.field final synthetic c:Lcom/xueqiu/android/message/model/Message;

.field final synthetic d:Lcom/xueqiu/android/message/a/f;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/f;Lcom/xueqiu/android/message/ChatActivity;Lcom/xueqiu/android/message/model/Message;)V
    .locals 3

    .prologue
    .line 782
    iput-object p1, p0, Lcom/xueqiu/android/message/a/f$6;->d:Lcom/xueqiu/android/message/a/f;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/f$6;->b:Lcom/xueqiu/android/message/ChatActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/a/f$6;->c:Lcom/xueqiu/android/message/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/f$6;->b:Lcom/xueqiu/android/message/ChatActivity;

    new-instance v2, Lcom/xueqiu/android/message/a/f$6$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/message/a/f$6$1;-><init>(Lcom/xueqiu/android/message/a/f$6;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/f$6;->a:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/xueqiu/android/message/a/f$6;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
