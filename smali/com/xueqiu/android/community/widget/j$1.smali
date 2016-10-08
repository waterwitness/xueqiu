.class final Lcom/xueqiu/android/community/widget/j$1;
.super Landroid/os/Handler;
.source "TopicInputBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/j;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v1}, Lcom/xueqiu/android/community/widget/j;->e(Lcom/xueqiu/android/community/widget/j;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/widget/j;->a(Lcom/xueqiu/android/community/widget/j;I)V

    .line 66
    return-void

    .line 46
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->a(Lcom/xueqiu/android/community/widget/j;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    const v2, 0x7f0e0547

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/community/widget/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 47
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->c(Lcom/xueqiu/android/community/widget/j;)I

    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->d(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->e(Lcom/xueqiu/android/community/widget/j;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->e(Lcom/xueqiu/android/community/widget/j;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/j$1;->a:Lcom/xueqiu/android/community/widget/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/j;->b(Lcom/xueqiu/android/community/widget/j;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
