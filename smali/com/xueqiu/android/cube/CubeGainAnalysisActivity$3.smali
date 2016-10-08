.class final Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;
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
    .line 141
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->f(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V

    .line 145
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 141
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 3150
    const-string v0, "begin_date"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "end_date"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "max_draw"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    const-string v1, "begin_date"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3152
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    const-string v1, "end_date"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3153
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    const-string v1, "max_draw"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;D)D

    .line 3155
    invoke-static {}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->g(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3$1;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3$1;-><init>(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;Lcom/xueqiu/android/base/b/q;)V

    .line 3430
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/base/b/c;->c(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 3155
    :goto_0
    return-void

    .line 3168
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity$3;->a:Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;->f(Lcom/xueqiu/android/cube/CubeGainAnalysisActivity;)V

    goto :goto_0
.end method
