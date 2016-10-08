.class final Lcom/xueqiu/android/cube/CubeActivity$24;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$24;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 1312
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1313
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$24;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const v1, 0x7f0e03d4

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1314
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1309
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 2319
    const-string v0, "sub_scores"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$24;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;Lcom/google/gson/JsonObject;)V

    :goto_0
    return-void

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$24;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const v1, 0x7f0e03d4

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
