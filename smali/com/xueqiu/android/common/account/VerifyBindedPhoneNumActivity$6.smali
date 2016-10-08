.class final Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$6;
.super Lcom/xueqiu/android/base/b/p;
.source "VerifyBindedPhoneNumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 152
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 149
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1157
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->i()V

    .line 1159
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1162
    :cond_0
    const-string v0, "\u9a8c\u8bc1\u6210\u529f\uff01"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->j()V

    .line 1164
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity$6;->a:Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/VerifyBindedPhoneNumActivity;->finish()V

    goto :goto_0
.end method
