.class final Lcom/xueqiu/android/stockchart/d/a$3;
.super Lcom/xueqiu/android/stockchart/c/a;
.source "BaseChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stockchart/d/a;
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
    .line 1122
    iput-object p1, p0, Lcom/xueqiu/android/stockchart/d/a$3;->a:Lcom/xueqiu/android/stockchart/d/a;

    invoke-direct {p0}, Lcom/xueqiu/android/stockchart/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1125
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1126
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1122
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 2131
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 2132
    invoke-static {v0}, Lcom/xueqiu/android/stockchart/d/a;->a(Lcom/google/gson/JsonObject;)Ljava/util/List;

    move-result-object v0

    .line 2133
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$3;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    const-string v2, "wudang"

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/stockchart/view/PankouView;->setType(Ljava/lang/String;)V

    .line 2134
    iget-object v1, p0, Lcom/xueqiu/android/stockchart/d/a$3;->a:Lcom/xueqiu/android/stockchart/d/a;

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/d/a;->aD:Lcom/xueqiu/android/stockchart/view/PankouView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stockchart/view/PankouView;->setPanKouList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2137
    :goto_0
    return-void

    .line 2136
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
