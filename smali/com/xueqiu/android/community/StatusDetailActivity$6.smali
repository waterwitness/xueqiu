.class final Lcom/xueqiu/android/community/StatusDetailActivity$6;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;J)V
    .locals 1

    .prologue
    .line 738
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-wide p3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->a:J

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 741
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 742
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 738
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 1746
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)Lcom/xueqiu/android/community/model/Status;

    .line 1747
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/Status;)Lcom/xueqiu/android/community/model/Status;

    .line 1749
    invoke-static {}, Lcom/xueqiu/android/community/StatusDetailActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-wide v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->a:J

    new-instance v1, Lcom/xueqiu/android/community/StatusDetailActivity$6$1;

    iget-object v4, p0, Lcom/xueqiu/android/community/StatusDetailActivity$6;->b:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v1, p0, v4}, Lcom/xueqiu/android/community/StatusDetailActivity$6$1;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity$6;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 738
    return-void
.end method
