.class final Lcom/xueqiu/android/base/util/f$1;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/model/Cube;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/xueqiu/android/common/b;

.field final synthetic e:Lcom/xueqiu/android/base/util/g;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/model/Cube;ZLandroid/content/Context;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iput-boolean p2, p0, Lcom/xueqiu/android/base/util/f$1;->b:Z

    iput-object p3, p0, Lcom/xueqiu/android/base/util/f$1;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/xueqiu/android/base/util/f$1;->d:Lcom/xueqiu/android/common/b;

    iput-object p5, p0, Lcom/xueqiu/android/base/util/f$1;->e:Lcom/xueqiu/android/base/util/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1047
    iget-object v2, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v3, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 1048
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    .line 1060
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$1;->e:Lcom/xueqiu/android/base/util/g;

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/base/util/g;->b(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 43
    return-void

    :cond_1
    move v0, v1

    .line 1047
    goto :goto_0

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    iget-object v2, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getFollowerCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    goto :goto_1

    .line 1054
    :cond_3
    iget-object v2, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->isFollowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/xueqiu/android/base/util/f$1;->b:Z

    if-eqz v2, :cond_0

    .line 1055
    iget-object v2, p0, Lcom/xueqiu/android/base/util/f$1;->c:Landroid/content/Context;

    const v3, 0x7f07037f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/base/util/f$1;->c:Landroid/content/Context;

    const v4, 0x7f070444

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    .line 1056
    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getNetValue()Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$1;->a:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cube"

    .line 1055
    invoke-static {v2, v0, v1, v3}, Lcom/xueqiu/android/community/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xueqiu/android/community/c/q;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/base/util/f$1;->d:Lcom/xueqiu/android/common/b;

    .line 1057
    invoke-virtual {v1}, Lcom/xueqiu/android/common/b;->c()Landroid/support/v4/a/q;

    move-result-object v1

    sget-object v2, Lcom/xueqiu/android/community/c/q;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/c/q;->a(Landroid/support/v4/a/q;Ljava/lang/String;)V

    goto :goto_1
.end method
