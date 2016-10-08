.class final Lcom/xueqiu/android/cube/CubeCardListActivity$4;
.super Ljava/lang/Object;
.source "CubeCardListActivity.java"

# interfaces
.implements Lcom/xueqiu/android/cube/widget/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeCardListActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeCardListActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$4;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$4;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 2225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 241
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$4;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->a(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/common/r;

    move-result-object v0

    .line 1225
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 230
    const-string v0, "profit"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const-string v0, "profit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/cube/model/CubeCalGainType;->fromValue(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/CubeCalGainType;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity$4;->a:Lcom/xueqiu/android/cube/CubeCardListActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->c(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/a/a;

    move-result-object v1

    .line 1288
    iput-object v0, v1, Lcom/xueqiu/android/cube/a/a;->f:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 236
    :cond_0
    return-void
.end method
