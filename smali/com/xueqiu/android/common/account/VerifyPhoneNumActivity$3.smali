.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;
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
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;Z)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    iput-boolean p3, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;->a:Z

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 394
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 395
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 390
    .line 1399
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->i()V

    .line 1400
    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;->a:Z

    if-nez v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$3;->b:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;)V

    .line 1402
    const-string v0, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 390
    :cond_0
    return-void
.end method
