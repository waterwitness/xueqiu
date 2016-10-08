.class public final Lcom/xueqiu/android/base/util/f;
.super Ljava/lang/Object;
.source "CubeUtil.java"


# direct methods
.method public static a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/xueqiu/android/common/b;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 30
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/s;->b(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    .line 41
    :goto_2
    invoke-static {}, Lrx/a/d/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    .line 42
    invoke-static {}, Lrx/h/p;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/g;)Lrx/a;

    move-result-object v6

    new-instance v0, Lcom/xueqiu/android/base/util/f$1;

    move-object v1, p0

    move v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/base/util/f$1;-><init>(Lcom/xueqiu/android/cube/model/Cube;ZLandroid/content/Context;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;)V

    new-instance v1, Lcom/xueqiu/android/base/util/f$2;

    invoke-direct {v1, p0, p2}, Lcom/xueqiu/android/base/util/f$2;-><init>(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/base/util/g;)V

    .line 43
    invoke-virtual {v6, v0, v1}, Lrx/a;->a(Lrx/c/b;Lrx/c/b;)Lrx/j;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/xueqiu/android/common/b;->a(Lrx/j;)V

    .line 80
    invoke-interface {p2, p0}, Lcom/xueqiu/android/base/util/g;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 81
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/common/b;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/b/s;->a(Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 35
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
