.class final Lcom/xueqiu/android/base/util/l$2;
.super Lcom/xueqiu/android/base/b/p;
.source "GroupUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/l;
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
.field final synthetic a:Lcom/xueqiu/android/common/b;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/b;I)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$2;->a:Lcom/xueqiu/android/common/b;

    iput p2, p0, Lcom/xueqiu/android/base/util/l$2;->b:I

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$2;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 173
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 174
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 169
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1178
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$2;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1179
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.refreshPortfolio"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    const-string v1, "extra_portfolio_category"

    iget v2, p0, Lcom/xueqiu/android/base/util/l$2;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    iget-object v1, p0, Lcom/xueqiu/android/base/util/l$2;->a:Lcom/xueqiu/android/common/b;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1183
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 1184
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
