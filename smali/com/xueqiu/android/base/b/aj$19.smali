.class final Lcom/xueqiu/android/base/b/aj$19;
.super Ljava/lang/Object;
.source "StatusClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/aj;->a(JJLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xueqiu/android/common/model/parser/Parser",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/b/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/b/aj;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aj$19;->a:Lcom/xueqiu/android/base/b/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 278
    .line 1282
    const-string v0, "statuses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statuses"

    .line 1283
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1284
    new-instance v0, Lcom/xueqiu/android/base/b/aj$19$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/aj$19$1;-><init>(Lcom/xueqiu/android/base/b/aj$19;)V

    .line 1285
    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/aj$19$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1286
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-string v2, "statuses"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    .line 1288
    :cond_0
    const/4 v0, 0x0

    .line 278
    goto :goto_0
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method
