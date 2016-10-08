.class final Lcom/xueqiu/android/common/account/UpdatePasswordActivity$5;
.super Lrx/i;
.source "UpdatePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/UpdatePasswordActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/UpdatePasswordActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$5;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1122
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$5;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->i()V

    .line 1123
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1124
    const-string v0, "\u4fee\u6539\u6210\u529f\uff01"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 116
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/common/account/UpdatePasswordActivity$5;->a:Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;->i()V

    .line 118
    return-void
.end method
