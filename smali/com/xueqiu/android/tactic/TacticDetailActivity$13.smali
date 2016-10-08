.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$13;
.super Lcom/xueqiu/android/base/b/p;
.source "TacticDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/tactic/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 377
    :try_start_0
    iget-object v0, p1, Lcom/android/volley/y;->a:Lcom/android/volley/k;

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/a;->a(Lcom/android/volley/k;)Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-static {v3}, Lcom/xueqiu/android/base/util/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 380
    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "error_description"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 381
    :goto_0
    const-string v4, "data"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 384
    const-string v1, "prompt_parameter"

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 385
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v2, v1

    .line 380
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 381
    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 372
    check-cast p1, Lcom/xueqiu/android/tactic/d/d;

    .line 1395
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    .line 2080
    iget-object v1, p1, Lcom/xueqiu/android/tactic/d/d;->product:Lcom/xueqiu/android/tactic/d/g;

    .line 1395
    invoke-static {v0, v1}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->a(Lcom/xueqiu/android/tactic/TacticDetailActivity;Lcom/xueqiu/android/tactic/d/g;)Lcom/xueqiu/android/tactic/d/g;

    .line 1396
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->k(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    .line 1397
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    const-string v1, "cache_dialog"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 1398
    if-nez v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$13;->a:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/tactic/TacticDetailActivity;->m(Lcom/xueqiu/android/tactic/TacticDetailActivity;)V

    .line 372
    :cond_0
    return-void
.end method
