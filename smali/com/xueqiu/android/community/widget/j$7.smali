.class final Lcom/xueqiu/android/community/widget/j$7;
.super Landroid/os/ResultReceiver;
.source "TopicInputBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/j;)V
    .locals 1

    .prologue
    .line 190
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/j$7;->a:Lcom/xueqiu/android/community/widget/j;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 195
    const/16 v0, 0xa

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/j$7;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/j;->g(Lcom/xueqiu/android/community/widget/j;)Landroid/os/Handler;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 198
    return-void
.end method
