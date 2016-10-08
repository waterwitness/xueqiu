.class final Lcom/xueqiu/android/message/ChatActivity$47;
.super Landroid/os/ResultReceiver;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 1

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$47;->a:Lcom/xueqiu/android/message/ChatActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 1386
    const/4 v0, 0x0

    .line 1387
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1388
    const/16 v0, 0xa

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$47;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->i(Lcom/xueqiu/android/message/ChatActivity;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1391
    return-void
.end method
