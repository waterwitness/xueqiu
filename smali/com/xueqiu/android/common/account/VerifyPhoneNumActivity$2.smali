.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "VerifyPhoneNumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iput-object p3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 379
    instance-of v0, p1, Lcom/xueqiu/android/base/a/a;

    if-eqz v0, :cond_0

    const-string v1, "20060"

    move-object v0, p1

    check-cast v0, Lcom/xueqiu/android/base/a/a;

    .line 1064
    iget-object v0, v0, Lcom/xueqiu/android/base/a/a;->errorCode:Ljava/lang/String;

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/android/volley/y;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 359
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1363
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 1364
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    const v0, 0x7f070412

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1367
    const-string v1, "extra_phone_number"

    iget-object v2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1368
    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->setResult(ILandroid/content/Intent;)V

    .line 1369
    invoke-static {}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->j()V

    .line 1370
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$2;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->finish()V

    .line 1371
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
