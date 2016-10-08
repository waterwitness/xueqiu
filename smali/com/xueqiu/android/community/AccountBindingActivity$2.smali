.class final Lcom/xueqiu/android/community/AccountBindingActivity$2;
.super Lrx/i;
.source "AccountBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/AccountBindingActivity;
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
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 338
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1352
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->i()V

    .line 1353
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->n(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    .line 1355
    const-string v0, "\u6210\u529f\u53d6\u6d88\u7ed1\u5b9a!"

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 1356
    :cond_1
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$2;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->i()V

    .line 347
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 348
    return-void
.end method
