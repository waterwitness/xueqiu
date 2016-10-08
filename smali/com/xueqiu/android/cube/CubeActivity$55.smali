.class final Lcom/xueqiu/android/cube/CubeActivity$55;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->b(I)V
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
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;Lcom/xueqiu/android/base/b/q;I)V
    .locals 0

    .prologue
    .line 2638
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$55;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iput p3, p0, Lcom/xueqiu/android/cube/CubeActivity$55;->a:I

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 2641
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 2642
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 2638
    check-cast p1, Ljava/lang/Double;

    .line 3646
    const-wide/16 v0, 0x0

    .line 3647
    if-eqz p1, :cond_0

    .line 3648
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3650
    :cond_0
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$55;->b:Lcom/xueqiu/android/cube/CubeActivity;

    iget v3, p0, Lcom/xueqiu/android/cube/CubeActivity$55;->a:I

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;ID)V

    .line 2638
    return-void
.end method
