.class final Lcom/tencent/open/d;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field private a:Lcom/tencent/open/c;


# direct methods
.method public constructor <init>(Lcom/tencent/open/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    iput-object p1, p0, Lcom/tencent/open/d;->a:Lcom/tencent/open/c;

    .line 376
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 382
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/open/d;->a:Lcom/tencent/open/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/open/c;->a(Lcom/tencent/open/c;Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/open/d;->a:Lcom/tencent/open/c;

    invoke-virtual {v0}, Lcom/tencent/open/c;->onCancel()V

    goto :goto_0

    .line 392
    :pswitch_3
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/tencent/open/PKDialog;->showTips(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/open/PKDialog;->access$800(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :pswitch_4
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    # getter for: Lcom/tencent/open/PKDialog;->sWeakContext:Ljava/lang/ref/WeakReference;
    invoke-static {}, Lcom/tencent/open/PKDialog;->access$400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/tencent/open/PKDialog;->showProcessDialog(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tencent/open/PKDialog;->access$900(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
