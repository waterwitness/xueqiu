.class final Lcom/xueqiu/android/community/StatusDetailActivity$17;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Comment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$17;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1276
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1277
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$17;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->s(Lcom/xueqiu/android/community/StatusDetailActivity;)I

    .line 1278
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$17;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->i()V

    .line 1279
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1273
    check-cast p1, Ljava/util/ArrayList;

    .line 2283
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$17;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$17;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2284
    :cond_0
    :goto_0
    return-void

    .line 2286
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$17;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
