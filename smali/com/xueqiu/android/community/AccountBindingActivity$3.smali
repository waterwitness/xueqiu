.class final Lcom/xueqiu/android/community/AccountBindingActivity$3;
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
        "Lcom/xueqiu/android/common/model/OAuthBindResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/AccountBindingActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/xueqiu/android/community/AccountBindingActivity$3;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 393
    check-cast p1, Lcom/xueqiu/android/common/model/OAuthBindResult;

    .line 1406
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/OAuthBindResult;->getExpiresIn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity$3;->a:Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->n(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    .line 1408
    const v0, 0x7f070412

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 393
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 401
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 402
    return-void
.end method
