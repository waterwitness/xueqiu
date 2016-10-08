.class final Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;
.super Lcom/xueqiu/android/base/b/p;
.source "CubeRbAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->b:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    iput-object p3, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 200
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1208
    const-string v0, "turnover"

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->b:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 1210
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->b:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0, p1, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V

    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    const-string v0, "liquidity"

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->b:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 1213
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$2;->b:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0, p1, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V

    goto :goto_0
.end method
