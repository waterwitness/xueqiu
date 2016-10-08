.class final Lcom/xueqiu/android/cube/CubeActivity$20;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/model/Cube;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/SpCubeRelation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$20;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1226
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1223
    check-cast p1, Lcom/xueqiu/android/cube/model/SpCubeRelation;

    .line 2230
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$20;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/SpCubeRelation;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setOwner(Lcom/xueqiu/android/community/model/User;)V

    .line 2231
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$20;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/SpCubeRelation;->getFollowersCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowerCount(I)V

    .line 2232
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$20;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/SpCubeRelation;->isFollowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/model/Cube;->setFollowing(Z)V

    .line 2233
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$20;->a:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$20;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 1223
    return-void
.end method
