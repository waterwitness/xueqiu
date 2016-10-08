.class final Lcom/xueqiu/android/cube/CubeActivity$32;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/d;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/d;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;Lcom/xueqiu/android/cube/d;)V
    .locals 0

    .prologue
    .line 1571
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$32;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeActivity$32;->a:Lcom/xueqiu/android/cube/d;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 1574
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1575
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1571
    check-cast p1, Ljava/lang/Double;

    .line 2579
    if-nez p1, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$32;->a:Lcom/xueqiu/android/cube/d;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    .line 2584
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$32;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$32;->a:Lcom/xueqiu/android/cube/d;

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->b(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/cube/d;)V

    .line 1571
    return-void

    .line 2582
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$32;->a:Lcom/xueqiu/android/cube/d;

    iput-object p1, v0, Lcom/xueqiu/android/cube/d;->a:Ljava/lang/Double;

    goto :goto_0
.end method
