.class final Lcom/xueqiu/android/stockchart/view/EventView$1;
.super Landroid/os/Handler;
.source "EventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/view/EventView;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stockchart/view/EventView;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/view/EventView;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    return-void

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->a(Lcom/xueqiu/android/stockchart/view/EventView;)Z

    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->b(Lcom/xueqiu/android/stockchart/view/EventView;)Z

    .line 213
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->c(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->c(Lcom/xueqiu/android/stockchart/view/EventView;)Lcom/xueqiu/android/stockchart/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v1}, Lcom/xueqiu/android/stockchart/view/EventView;->d(Lcom/xueqiu/android/stockchart/view/EventView;)F

    move-result v1

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-static {v2}, Lcom/xueqiu/android/stockchart/view/EventView;->e(Lcom/xueqiu/android/stockchart/view/EventView;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xueqiu/android/stockchart/a/c;->a(FF)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/view/EventView$1;->a:Lcom/xueqiu/android/stockchart/view/EventView;

    invoke-virtual {v0}, Lcom/xueqiu/android/stockchart/view/EventView;->invalidate()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
