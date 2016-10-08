.class final Lcom/tencent/tauth/TAuthView$1;
.super Landroid/os/Handler;
.source "TAuthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tauth/TAuthView;
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tauth/TAuthView;


# direct methods
.method constructor <init>(Lcom/tencent/tauth/TAuthView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 55
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tencent/tauth/TAuthView;->access$1(Lcom/tencent/tauth/TAuthView;Landroid/app/ProgressDialog;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u4e2d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    invoke-virtual {v0}, Lcom/tencent/tauth/TAuthView;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    # getter for: Lcom/tencent/tauth/TAuthView;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/tencent/tauth/TAuthView;->access$0(Lcom/tencent/tauth/TAuthView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 51
    iget-object v0, p0, Lcom/tencent/tauth/TAuthView$1;->a:Lcom/tencent/tauth/TAuthView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tauth/TAuthView;->access$1(Lcom/tencent/tauth/TAuthView;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
