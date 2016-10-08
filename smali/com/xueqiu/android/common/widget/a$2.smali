.class final Lcom/xueqiu/android/common/widget/a$2;
.super Ljava/lang/Object;
.source "AddLinkDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/widget/a;-><init>(Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/a;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/a$2;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a$2;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-static {v0}, Lcom/xueqiu/android/common/widget/a;->a(Lcom/xueqiu/android/common/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/a$2;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-static {v1}, Lcom/xueqiu/android/common/widget/a;->b(Lcom/xueqiu/android/common/widget/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 2197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 57
    if-nez v2, :cond_0

    const-string v2, "((?:ftp://|https://|http://|www\\.)[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*\\.[a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;\\*]*?(?=(\\/\\/[@\uff20][\\u4E00-\\u9FFFa-zA-Z0-9_-]+( )?)|[^a-zA-Z0-9?%&=#./_!+:\\-\\[\\]~,@;]|(&nbsp;)|$))"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/a$2;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u683c\u5f0f\u4e0d\u6b63\u786e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    :cond_1
    :goto_0
    return-void

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/a$2;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-static {v2}, Lcom/xueqiu/android/common/widget/a;->c(Lcom/xueqiu/android/common/widget/a;)Lcom/xueqiu/android/common/widget/b;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/a$2;->a:Lcom/xueqiu/android/common/widget/a;

    invoke-static {v2}, Lcom/xueqiu/android/common/widget/a;->c(Lcom/xueqiu/android/common/widget/a;)Lcom/xueqiu/android/common/widget/b;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/xueqiu/android/common/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
