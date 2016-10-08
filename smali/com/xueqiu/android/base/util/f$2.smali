.class final Lcom/xueqiu/android/base/util/f$2;
.super Ljava/lang/Object;
.source "CubeUtil.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Lcom/xueqiu/android/base/util/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/base/util/g;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/f$2;->b:Lcom/xueqiu/android/base/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 62
    check-cast p1, Ljava/lang/Throwable;

    .line 1065
    iget-object v2, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 1066
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    .line 1071
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$2;->b:Lcom/xueqiu/android/base/util/g;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/base/util/g;->c(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 1072
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 1073
    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_0
    move v0, v1

    .line 1065
    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/f$2;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    goto :goto_1

    .line 1075
    :cond_2
    const-string v0, "CubeUtil"

    const-string v1, "follow/unfollow failed."

    invoke-static {v0, v1, p1}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
