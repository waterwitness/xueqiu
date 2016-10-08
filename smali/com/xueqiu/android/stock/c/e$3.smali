.class final Lcom/xueqiu/android/stock/c/e$3;
.super Ljava/lang/Object;
.source "IndustryIndexFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/c/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/c/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/c/e;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    .line 167
    check-cast p1, Lcom/google/gson/JsonObject;

    check-cast p2, Lcom/google/gson/JsonObject;

    .line 1173
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1174
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    .line 1177
    :goto_0
    iget-object v6, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v6}, Lcom/xueqiu/android/stock/c/e;->j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1178
    iget-object v2, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v2}, Lcom/xueqiu/android/stock/c/e;->j(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    .line 1180
    :cond_0
    cmpl-double v6, v0, v2

    if-lez v6, :cond_2

    .line 1181
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->k(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "order_desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 1190
    :goto_1
    return v0

    :cond_1
    move v0, v5

    .line 1184
    goto :goto_1

    .line 1186
    :cond_2
    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 1187
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/e$3;->a:Lcom/xueqiu/android/stock/c/e;

    invoke-static {v0}, Lcom/xueqiu/android/stock/c/e;->k(Lcom/xueqiu/android/stock/c/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "order_desc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    .line 1188
    goto :goto_1

    :cond_3
    move v0, v4

    .line 1190
    goto :goto_1

    .line 1193
    :cond_4
    const/4 v0, 0x0

    .line 167
    goto :goto_1

    :cond_5
    move-wide v0, v2

    goto :goto_0
.end method
