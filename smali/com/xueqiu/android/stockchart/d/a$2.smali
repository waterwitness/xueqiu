.class final Lcom/xueqiu/android/stockchart/d/a$2;
.super Lcom/xueqiu/android/stockchart/c/a;
.source "BaseChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stockchart/d/a;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/stockchart/c/a",
        "<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;Z)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iput-boolean p2, p0, Lcom/xueqiu/android/stockchart/d/a$2;->a:Z

    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 1016
    const-string v0, "stock"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1013
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 2021
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->j(Lcom/xueqiu/android/stockchart/d/a;)Z

    .line 2022
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stockchart/view/LoadingView;->setVisibility(I)V

    .line 2024
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 2025
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/google/gson/JsonObject;)V

    .line 2026
    iget-boolean v0, p0, Lcom/xueqiu/android/stockchart/d/a$2;->a:Z

    if-nez v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ay:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v0, v0, Lcom/xueqiu/android/stockchart/d/a;->ay:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2033
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2034
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v3, v1, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    invoke-static {v1, v2}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    :cond_0
    :goto_0
    return-void

    .line 2036
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2039
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2040
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->at:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->ay:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$2;->b:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
