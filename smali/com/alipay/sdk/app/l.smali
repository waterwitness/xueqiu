.class final Lcom/alipay/sdk/app/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Lcom/alipay/sdk/app/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/a;Landroid/webkit/JsPromptResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/l;->b:Lcom/alipay/sdk/app/a;

    iput-object p2, p0, Lcom/alipay/sdk/app/l;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/app/l;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
