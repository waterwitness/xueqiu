.class final Lcom/xueqiu/android/stock/h$7;
.super Landroid/os/Handler;
.source "InvestmentCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/h;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/h;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/h;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/xueqiu/android/stock/h$7;->a:Lcom/xueqiu/android/stock/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 579
    :goto_0
    return-void

    .line 574
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/h$7;->a:Lcom/xueqiu/android/stock/h;

    invoke-static {v0}, Lcom/xueqiu/android/stock/h;->d(Lcom/xueqiu/android/stock/h;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->d()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
