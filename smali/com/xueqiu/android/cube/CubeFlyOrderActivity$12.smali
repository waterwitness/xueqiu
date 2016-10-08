.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$12;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeFlyOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(D)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$12;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 274
    check-cast p1, Lorg/json/JSONObject;

    .line 1281
    if-eqz p1, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$12;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lorg/json/JSONObject;)V

    .line 274
    :cond_0
    return-void
.end method
