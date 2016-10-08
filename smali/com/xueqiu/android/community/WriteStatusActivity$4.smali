.class final Lcom/xueqiu/android/community/WriteStatusActivity$4;
.super Landroid/os/ResultReceiver;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 1

    .prologue
    .line 655
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$4;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 659
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 660
    const/16 v0, 0xa

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$4;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->v(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 663
    return-void
.end method
