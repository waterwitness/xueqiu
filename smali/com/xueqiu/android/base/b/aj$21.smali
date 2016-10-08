.class final Lcom/xueqiu/android/base/b/aj$21;
.super Ljava/lang/Object;
.source "StatusClient.java"

# interfaces
.implements Lcom/xueqiu/android/common/model/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/b/aj;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
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
    .line 490
    iput-object p1, p0, Lcom/xueqiu/android/base/b/aj$21;->a:Lcom/xueqiu/android/base/b/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 490
    .line 1493
    new-instance v1, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;

    invoke-direct {v1}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;-><init>()V

    .line 1494
    new-instance v0, Lcom/xueqiu/android/base/b/aj$21$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/base/b/aj$21$1;-><init>(Lcom/xueqiu/android/base/b/aj$21;)V

    .line 1495
    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/aj$21$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1497
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-string v3, "list"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1498
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;->addAll(Ljava/util/Collection;)Z

    .line 1501
    invoke-static {v1, p1}, Lcom/xueqiu/android/base/util/ap;->a(Lcom/xueqiu/android/community/model/HomeTimelineStatusGroup;Lorg/json/JSONObject;)V

    .line 490
    return-object v1
.end method

.method public final parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    const/4 v0, 0x0

    return-object v0
.end method
