.class final Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeGainAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;
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
.field final synthetic a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 130
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->e(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V

    .line 131
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 126
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1135
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$2;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Lcom/google/gson/JsonObject;)V

    .line 126
    return-void
.end method
