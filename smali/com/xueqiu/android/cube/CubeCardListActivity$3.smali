.class final Lcom/xueqiu/android/cube/CubeCardListActivity$3;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeCardListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeCardListActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/Topic;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeCardListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeCardListActivity;Lcom/xueqiu/android/base/b/q;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$3;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$3;->a:Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 199
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 196
    check-cast p1, Ljava/util/List;

    .line 1205
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$3;->a:Lorg/json/JSONArray;

    invoke-static {p1, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Ljava/util/List;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1206
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$3;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->b(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$3;->b:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->b(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    move-result-object v1

    .line 2071
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->removeAllViews()V

    .line 2072
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1210
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
