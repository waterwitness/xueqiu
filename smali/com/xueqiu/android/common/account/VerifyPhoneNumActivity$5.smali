.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 474
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 475
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 471
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1479
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1481
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)Z

    .line 1482
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)Z

    .line 1483
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)V

    .line 1484
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 1488
    :goto_0
    return-void

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->o(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->h(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    .line 1488
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    goto :goto_0

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->b(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1491
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)Z

    .line 1492
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$5;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Z)V

    goto :goto_0
.end method
