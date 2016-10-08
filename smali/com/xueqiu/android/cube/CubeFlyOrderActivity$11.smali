.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeFlyOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/cube/model/Cube;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 255
    check-cast p1, Lcom/xueqiu/android/cube/model/Cube;

    .line 1262
    if-eqz p1, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/cube/model/Cube;)V

    .line 1264
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;

    .line 1265
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->m(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 255
    :cond_0
    return-void
.end method
