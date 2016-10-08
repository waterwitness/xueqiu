.class final Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3$1;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeGainAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/cube/model/NavDailyList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 159
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 156
    check-cast p1, Ljava/util/List;

    .line 1164
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3$1;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;

    iget-object v0, v0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/util/List;)V

    .line 156
    return-void
.end method
