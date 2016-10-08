.class final Lcom/xueqiu/android/community/d/d$1;
.super Lcom/xueqiu/android/base/b/p;
.source "TopicFeaturedListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/d;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/TopicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/d;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/d;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/xueqiu/android/community/d/d$1;->a:Lcom/xueqiu/android/community/d/d;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$1;->a:Lcom/xueqiu/android/community/d/d;

    .line 1018
    iget-object v0, v0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 41
    invoke-interface {v0}, Lcom/xueqiu/android/community/b/l;->k()V

    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$1;->a:Lcom/xueqiu/android/community/d/d;

    .line 2018
    iget-object v0, v0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 42
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/community/b/l;->b(Z)V

    .line 43
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 37
    check-cast p1, Ljava/util/ArrayList;

    .line 2047
    if-eqz p1, :cond_0

    .line 2048
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$1;->a:Lcom/xueqiu/android/community/d/d;

    .line 3018
    iget-object v0, v0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 2048
    invoke-interface {v0}, Lcom/xueqiu/android/community/b/l;->k()V

    .line 2049
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$1;->a:Lcom/xueqiu/android/community/d/d;

    .line 4018
    iget-object v0, v0, Lcom/xueqiu/android/community/d/d;->a:Lcom/xueqiu/android/community/b/l;

    .line 2049
    invoke-interface {v0, p1}, Lcom/xueqiu/android/community/b/l;->a(Ljava/util/ArrayList;)V

    .line 2050
    iget-object v0, p0, Lcom/xueqiu/android/community/d/d$1;->a:Lcom/xueqiu/android/community/d/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/d/d;->a(Z)V

    .line 37
    :cond_0
    return-void
.end method
