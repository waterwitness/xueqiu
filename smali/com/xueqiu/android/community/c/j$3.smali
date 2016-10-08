.class final Lcom/xueqiu/android/community/c/j$3;
.super Ljava/lang/Object;
.source "LiveNewsFragment.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/j;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/j;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/j;->c(Lcom/xueqiu/android/community/c/j;)Lcom/xueqiu/android/community/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/g;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-static {v0}, Lcom/xueqiu/android/community/c/j;->c(Lcom/xueqiu/android/community/c/j;)Lcom/xueqiu/android/community/a/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/g;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/LiveNews;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/LiveNews;->getId()J

    move-result-wide v0

    .line 204
    iget-object v2, p0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/c/j;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/c/j$3$1;

    iget-object v4, p0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-direct {v3, p0, v4}, Lcom/xueqiu/android/community/c/j$3$1;-><init>(Lcom/xueqiu/android/community/c/j$3;Lcom/xueqiu/android/base/b/q;)V

    .line 1695
    iget-object v2, v2, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v2, v0, v1, v3}, Lcom/xueqiu/android/base/b/aj;->f(JLcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    goto :goto_0
.end method
