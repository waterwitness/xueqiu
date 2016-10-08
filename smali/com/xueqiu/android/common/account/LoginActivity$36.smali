.class final Lcom/xueqiu/android/common/account/LoginActivity$36;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->d(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->e(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->d(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 300
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->f(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    const-string v0, "\u8bf7\u5148\u586b\u5199\u624b\u673a\u53f7"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v2, "86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->f(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    .line 1197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 304
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->f(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    .line 305
    const v0, 0x7f070275

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v3}, Lcom/xueqiu/android/common/account/LoginActivity;->a(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070409

    .line 310
    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070070

    .line 311
    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0700b1

    .line 312
    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/common/account/LoginActivity$36$1;

    invoke-direct {v4, p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity$36$1;-><init>(Lcom/xueqiu/android/common/account/LoginActivity$36;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07044e

    .line 321
    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$36;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->f(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 323
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x960

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0
.end method
