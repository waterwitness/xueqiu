.class final Lcom/xueqiu/android/cube/CubeActivity$51;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeActivity;->o()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xueqiu/android/cube/model/Holding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$51;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 2282
    check-cast p1, Lcom/xueqiu/android/cube/model/Holding;

    check-cast p2, Lcom/xueqiu/android/cube/model/Holding;

    .line 3285
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 3286
    const/4 v0, -0x1

    .line 3289
    :goto_0
    return v0

    .line 3288
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/xueqiu/android/cube/model/Holding;->getWeight()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 3289
    const/4 v0, 0x1

    goto :goto_0

    .line 3291
    :cond_1
    const/4 v0, 0x0

    .line 2282
    goto :goto_0
.end method
