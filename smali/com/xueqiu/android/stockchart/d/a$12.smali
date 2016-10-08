.class final Lcom/xueqiu/android/stockchart/d/a$12;
.super Lcom/xueqiu/android/stockchart/c/a;
.source "BaseChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stockchart/d/a;->a(Z)V
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
.field final synthetic a:Lcom/xueqiu/android/stockchart/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stockchart/d/a;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$12;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 876
    const-string v0, "stock"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 873
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 1881
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1882
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$12;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->aG:Lcom/xueqiu/android/stockchart/view/LoadingView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/view/LoadingView;->setVisibility(I)V

    .line 1883
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$12;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->ax:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xueqiu/android/stockchart/d/a$12;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v2, v2, Lcom/xueqiu/android/stockchart/d/a;->aq:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$12;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/d/a;->c(Lcom/google/gson/JsonObject;)V

    .line 873
    return-void
.end method
