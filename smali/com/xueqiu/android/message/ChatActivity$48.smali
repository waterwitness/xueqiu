.class final Lcom/xueqiu/android/message/ChatActivity$48;
.super Landroid/os/Handler;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/ChatActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/ChatActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 0

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const v6, 0x7f0e0549

    const v5, 0x7f0e02f9

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1474
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v1}, Lcom/xueqiu/android/message/ChatActivity;->F(Lcom/xueqiu/android/message/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->b(Lcom/xueqiu/android/message/ChatActivity;I)V

    .line 1475
    return-void

    .line 1453
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->D(Lcom/xueqiu/android/message/ChatActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    const v2, 0x7f0e0547

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1454
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1458
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->E(Lcom/xueqiu/android/message/ChatActivity;)I

    .line 1459
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    const v1, 0x7f0e02f6

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1464
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->F(Lcom/xueqiu/android/message/ChatActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1467
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/ChatActivity;->F(Lcom/xueqiu/android/message/ChatActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v6}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1469
    iget-object v0, p0, Lcom/xueqiu/android/message/ChatActivity$48;->a:Lcom/xueqiu/android/message/ChatActivity;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/message/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
