.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;
.super Lrx/i;
.source "VerifyPhoneNumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/common/model/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iput-object p2, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 624
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1638
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 1639
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1640
    const-string v0, "\u4fee\u6539\u6210\u529f\uff01"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->d(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1642
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 632
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 633
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$8;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 634
    return-void
.end method
