.class final Lcom/xueqiu/android/message/ChatActivity$23$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/ChatActivity$23;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity$23;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity$23;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$23$1;->a:Lcom/xueqiu/android/message/ChatActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$23$1;->a:Lcom/xueqiu/android/message/ChatActivity$23;

    iget-object v0, v0, Lcom/xueqiu/android/message/ChatActivity$23;->b:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$23$1;->a:Lcom/xueqiu/android/message/ChatActivity$23;

    iget-object v1, v1, Lcom/xueqiu/android/message/ChatActivity$23;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Ljava/util/List;)V

    .line 377
    return-void
.end method
