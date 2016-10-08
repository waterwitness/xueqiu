.class final Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$7;
.super Lcom/xueqiu/android/base/b/p;
.source "VerifyPhoneNumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$7;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 591
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 592
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 588
    check-cast p1, Lcom/xueqiu/android/common/model/LoginResult;

    .line 1596
    iget-object v0, p0, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity$7;->a:Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;->c(Lcom/xueqiu/android/common/account/VerifyPhoneNumActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    return-void
.end method
