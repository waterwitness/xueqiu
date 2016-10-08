.class final Lcom/xueqiu/android/base/util/l$8;
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


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/b;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/xueqiu/android/base/util/l$8;->a:Lcom/xueqiu/android/common/b;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$8;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 295
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 296
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/xueqiu/android/common/model/RequestResult;

    .line 1300
    iget-object v0, p0, Lcom/xueqiu/android/base/util/l$8;->a:Lcom/xueqiu/android/common/b;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1301
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    :goto_0
    return-void

    .line 1304
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/RequestResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
