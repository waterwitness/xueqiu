.class final Lcom/xueqiu/android/stock/c/c$2;
.super Lcom/xueqiu/android/base/b/p;
.source "FinancialDataPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/c/c;->C()Lcom/xueqiu/android/base/b/p;
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
.field final synthetic a:Lcom/xueqiu/android/stock/c/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/c;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;Z)V

    .line 157
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 153
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1161
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->a(Lcom/xueqiu/android/stock/c/c;)Z

    .line 1162
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    const-string v1, "comptype"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/c;->a(Lcom/xueqiu/android/stock/c/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1163
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/c;->b(Lcom/xueqiu/android/stock/c/c;Ljava/lang/String;)Ljava/lang/String;

    .line 1164
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/c/c;->a(Lcom/xueqiu/android/stock/c/c;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    .line 1165
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->b(Lcom/xueqiu/android/stock/c/c;)V

    .line 1167
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->c(Lcom/xueqiu/android/stock/c/c;)Lcom/xueqiu/android/stock/view/TableFixHeaders;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setVisibility(I)V

    .line 1168
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->c(Lcom/xueqiu/android/stock/c/c;)Lcom/xueqiu/android/stock/view/TableFixHeaders;

    move-result-object v1

    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/c/c;->f()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/FinancialDataActivity;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setTouchListener(Lcom/xueqiu/android/stock/q;)V

    .line 1169
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/c;->c(Lcom/xueqiu/android/stock/c/c;)Lcom/xueqiu/android/stock/view/TableFixHeaders;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/stock/c/d;

    iget-object v2, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    iget-object v3, p0, Lcom/xueqiu/android/stock/c/c$2;->a:Lcom/xueqiu/android/stock/c/c;

    invoke-virtual {v3}, Lcom/xueqiu/android/stock/c/c;->f()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/stock/c/d;-><init>(Lcom/xueqiu/android/stock/c/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->setAdapter(Lcom/xueqiu/android/stock/a/ai;)V

    .line 153
    return-void
.end method
