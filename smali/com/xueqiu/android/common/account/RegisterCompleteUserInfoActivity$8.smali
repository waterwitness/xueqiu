.class final Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;
.super Lcom/xueqiu/android/base/b/p;
.source "RegisterCompleteUserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->j()V
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
.field final synthetic a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i()V

    .line 247
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 243
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1252
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->i()V

    .line 1253
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity$8;->a:Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;->g(Lcom/xueqiu/android/common/account/RegisterCompleteUserInfoActivity;)V

    :goto_0
    return-void

    .line 1256
    :cond_0
    const v0, 0x7f070246

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method
