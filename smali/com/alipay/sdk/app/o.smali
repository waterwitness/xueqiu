.class final Lcom/alipay/sdk/app/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/n;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/n;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/o;->a:Lcom/alipay/sdk/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/sdk/app/o;->a:Lcom/alipay/sdk/app/n;

    iget-object v0, v0, Lcom/alipay/sdk/app/n;->b:Lcom/alipay/sdk/app/b;

    iget-object v0, v0, Lcom/alipay/sdk/app/b;->a:Lcom/alipay/sdk/app/H5PayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/sdk/app/H5PayActivity;->a(Lcom/alipay/sdk/app/H5PayActivity;Z)Z

    iget-object v0, p0, Lcom/alipay/sdk/app/o;->a:Lcom/alipay/sdk/app/n;

    iget-object v0, v0, Lcom/alipay/sdk/app/n;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
