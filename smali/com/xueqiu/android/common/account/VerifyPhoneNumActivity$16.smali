.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;
.super Ljava/lang/Object;
.source "VerifyPhoneNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->g(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->h(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 286
    const-string v0, "\u8bf7\u8f93\u51654\u4f4d\u6570\u9a8c\u8bc1\u7801"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->e(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    .line 290
    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->e(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 1538
    iget-boolean v0, v0, Lcom/android/volley/n;->i:Z

    .line 290
    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)Z

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$16;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const v2, 0x7f070361

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
