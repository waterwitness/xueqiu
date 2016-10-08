.class final Lcom/xueqiu/android/community/StatusDetailActivity$18;
.super Lcom/xueqiu/android/base/b/p;
.source "StatusDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->t(Lcom/xueqiu/android/community/StatusDetailActivity;)I

    .line 1301
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 1302
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1297
    check-cast p1, Lorg/json/JSONObject;

    .line 2307
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2363
    :cond_0
    :goto_0
    return-void

    .line 2311
    :cond_1
    :try_start_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2312
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "comments"

    new-instance v3, Lcom/xueqiu/android/community/StatusDetailActivity$18$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$18$1;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity$18;)V

    .line 2313
    invoke-virtual {v3}, Lcom/xueqiu/android/community/StatusDetailActivity$18$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 2314
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GPagedParser;->parse(Ljava/lang/String;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v1

    .line 2315
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedGroup;->size()I

    move-result v0

    if-ltz v0, :cond_4

    .line 2316
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Ljava/util/ArrayList;)V

    .line 2321
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const-string v2, "2"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 2323
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->u(Lcom/xueqiu/android/community/StatusDetailActivity;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 2324
    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->u(Lcom/xueqiu/android/community/StatusDetailActivity;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    .line 2325
    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->u(Lcom/xueqiu/android/community/StatusDetailActivity;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 2326
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->u(Lcom/xueqiu/android/community/StatusDetailActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;Lorg/json/JSONObject;)V

    .line 2339
    :cond_2
    :goto_2
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2340
    if-eqz v0, :cond_3

    .line 2341
    new-instance v2, Lcom/xueqiu/android/common/model/parser/ResultParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/ResultParser;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/common/model/parser/ResultParser;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2342
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xueqiu/android/community/model/Status;->setFavorited(Z)V

    .line 2343
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->b(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 2346
    :cond_3
    const-string v0, "4"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2347
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xueqiu/android/common/model/PagedGroup;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 2348
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GPagedParser;

    const-string v2, "comments"

    new-instance v3, Lcom/xueqiu/android/community/StatusDetailActivity$18$2;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/StatusDetailActivity$18$2;-><init>(Lcom/xueqiu/android/community/StatusDetailActivity$18;)V

    .line 2349
    invoke-virtual {v3}, Lcom/xueqiu/android/community/StatusDetailActivity$18$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/parser/GPagedParser;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;)V

    .line 2350
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GPagedParser;->parse(Ljava/lang/String;)Lcom/xueqiu/android/common/model/PagedGroup;

    move-result-object v0

    .line 2351
    invoke-virtual {v0}, Lcom/xueqiu/android/common/model/PagedGroup;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 2352
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    new-instance v2, Lcom/xueqiu/android/community/a/a;

    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v2, v3}, Lcom/xueqiu/android/community/a/a;-><init>(Landroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/a/a;)Lcom/xueqiu/android/community/a/a;

    .line 2353
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->c(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/a/a;->a(Ljava/util/ArrayList;)V

    .line 2354
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->c(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    .line 2367
    iput-wide v2, v0, Lcom/xueqiu/android/community/a/a;->e:J

    .line 2355
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->v(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2356
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->d(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2362
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2318
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const v3, 0x7f070134

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/StatusDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    iget-boolean v0, v0, Lcom/xueqiu/android/community/StatusDetailActivity;->k:Z

    if-eqz v0, :cond_5

    const v0, 0x7f02019b

    :goto_3
    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f02019a

    goto :goto_3

    .line 2327
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    iget-object v0, v0, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2328
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;)Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    iget-object v0, v0, Lcom/xueqiu/android/community/model/Status;->card:Lcom/xueqiu/android/community/model/Card;

    iget-object v0, v0, Lcom/xueqiu/android/community/model/Card;->data:Ljava/lang/String;

    .line 2329
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 2330
    const-string v2, "quotes"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "quotes"

    .line 2331
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "quotes"

    .line 2332
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2333
    const-string v2, "quotes"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 2334
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    const v3, 0x7f0e02b0

    invoke-virtual {v2, v3}, Lcom/xueqiu/android/community/StatusDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2335
    iget-object v2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v2, v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->a(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/google/gson/JsonArray;)V

    goto/16 :goto_2

    .line 2358
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$18;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->v(Lcom/xueqiu/android/community/StatusDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
