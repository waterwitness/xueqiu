.class final Lcom/xueqiu/android/common/account/LoginActivity$4;
.super Lcom/xueqiu/android/base/b/p;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/account/LoginActivity;
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
.field final synthetic a:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$4;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$4;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 368
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 369
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 364
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1373
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$4;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->i()V

    .line 1374
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    const v0, 0x7f070246

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 364
    :cond_0
    return-void
.end method
