.class public final Lcom/alipay/sdk/j/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/sdk/j/a;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/j/a;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/sdk/j/a;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const-string v0, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {p0}, Lcom/alipay/sdk/j/a;->c()V

    new-instance v1, Lcom/alipay/sdk/j/b;

    invoke-direct {v1, p0, v0}, Lcom/alipay/sdk/j/b;-><init>(Lcom/alipay/sdk/j/a;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/sdk/j/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    new-instance v0, Lcom/alipay/sdk/j/c;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/j/c;-><init>(Lcom/alipay/sdk/j/a;)V

    iget-object v1, p0, Lcom/alipay/sdk/j/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
