.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;
.super Ljava/lang/Object;
.source "RegisterCompleteUserInfoActivity.java"

# interfaces
.implements Lcom/tencent/tauth/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    new-instance v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;

    invoke-direct {v1, p0, p2}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$2;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    new-instance v1, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13$1;-><init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$13;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 546
    return-void
.end method
