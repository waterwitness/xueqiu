.class final Lcom/xueqiu/android/community/WriteStatusActivity$28;
.super Landroid/os/Handler;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const v5, 0x7f0e0322

    const/16 v4, 0x8

    const v3, 0x7f0e0326

    const/4 v2, 0x0

    .line 1565
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1584
    :goto_0
    :pswitch_0
    return-void

    .line 1567
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const v1, 0x7f0e0318

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1569
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1, v5}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1571
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->z(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 1574
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1575
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 1578
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$28;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
