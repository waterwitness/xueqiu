.class final Lcom/xueqiu/android/stock/c/e$1;
.super Lcom/xueqiu/android/base/b/p;
.source "IndustryIndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/e;->C()V
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
.field final synthetic a:Lcom/xueqiu/android/stock/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/e;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/e;->z()V

    .line 115
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 116
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 111
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1120
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->a(Lcom/xueqiu/android/stock/c/e;)Z

    .line 1121
    const-string v0, "industryList"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/stock/c/e;->a(Lcom/xueqiu/android/stock/c/e;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    .line 1124
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/e;->b(Lcom/xueqiu/android/stock/c/e;)Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "indCode"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/e;->a(Lcom/xueqiu/android/stock/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->c(Lcom/xueqiu/android/stock/c/e;)V

    :goto_0
    return-void

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$1;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->d(Lcom/xueqiu/android/stock/c/e;)V

    goto :goto_0
.end method
