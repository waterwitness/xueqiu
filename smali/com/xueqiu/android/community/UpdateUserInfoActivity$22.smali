.class final Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;
.super Lcom/xueqiu/android/base/b/p;
.source "UpdateUserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/UpdateUserInfoActivity;
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
.field final synthetic a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 466
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 467
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 462
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1471
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1472
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v1, 0x7f07055f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->m(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    .line 1478
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->setResult(I)V

    .line 1479
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->finish()V

    .line 462
    return-void

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;->a:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    const v1, 0x7f070250

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
