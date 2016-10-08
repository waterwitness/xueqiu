.class final Lcom/xueqiu/android/community/StatusDetailActivity$6$1;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity$6;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/community/model/RewardCash;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity$6;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity$6;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity$6;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 752
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 753
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 749
    check-cast p1, Lcom/xueqiu/android/common/model/PagedList;

    .line 1757
    if-eqz p1, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6$1;->a:Lcom/xueqiu/android/community/StatusDetailActivity$6;

    iget-object v0, v0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/PagedList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Ljava/util/ArrayList;)V

    .line 749
    :cond_0
    return-void
.end method
