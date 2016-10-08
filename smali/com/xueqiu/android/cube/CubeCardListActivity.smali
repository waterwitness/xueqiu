.class public Lcom/xueqiu/android/cube/CubeCardListActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeCardListActivity.java"


# instance fields
.field private j:Lcom/xueqiu/android/cube/model/Industry;

.field private k:Lcom/xueqiu/android/cube/model/Editorial;

.field private p:I

.field private q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

.field private r:Lcom/xueqiu/android/cube/a/a;

.field private s:Lcom/xueqiu/android/common/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xueqiu/android/common/r",
            "<",
            "Lcom/xueqiu/android/cube/model/Cube;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeCardListActivity;ILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;
    .locals 4

    .prologue
    .line 8295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8296
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    if-eqz v1, :cond_0

    .line 8297
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getFilterConditions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8298
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getSiftParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8299
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getSiftParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 8303
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    if-eqz v1, :cond_1

    .line 9180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 8304
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Industry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9527
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/xueqiu/android/base/b/c;->a(Ljava/lang/String;ILjava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 8308
    :goto_0
    return-object v0

    .line 8305
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->k:Lcom/xueqiu/android/cube/model/Editorial;

    if-eqz v1, :cond_2

    .line 10180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 8306
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->k:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Editorial;->getId()J

    move-result-wide v2

    .line 10515
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/xueqiu/android/base/b/c;->a(JILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 8307
    :cond_2
    iget v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    if-lez v1, :cond_3

    .line 11180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 8308
    iget v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    .line 11507
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/xueqiu/android/base/b/c;->a(IILjava/util/Map;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    goto :goto_0

    .line 8310
    :cond_3
    const/4 v0, 0x0

    .line 48
    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/common/r;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->s:Lcom/xueqiu/android/common/r;

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/xueqiu/android/cube/CubeCardListActivity;->b(Ljava/util/List;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeCardListActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 2

    .prologue
    .line 12273
    new-instance v0, Lcom/xueqiu/android/cube/CubeCardListActivity$5;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeCardListActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V

    .line 13025
    const/4 v1, 0x1

    invoke-static {p1, p0, v0, v1}, Lcom/xueqiu/android/base/util/f;->a(Lcom/xueqiu/android/cube/model/Cube;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/g;Z)V

    .line 48
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    return-object v0
.end method

.method private static b(Ljava/util/List;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/model/Topic;",
            ">;",
            "Lorg/json/JSONArray;",
            ")",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 318
    const-string v0, "param"

    const-string v3, "topic_name"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 320
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Topic;

    .line 321
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 322
    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Topic;->getName()Ljava/lang/String;

    move-result-object v0

    .line 323
    const-string v6, "name"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v6, "value"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 335
    :goto_1
    return-object p1

    .line 327
    :cond_0
    :try_start_1
    const-string v0, "filter_values"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    const/4 v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeCardListActivity;)Lcom/xueqiu/android/cube/a/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 263
    const-string v0, "extra_cube"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Cube;

    .line 264
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/a/a;->a(Lcom/xueqiu/android/cube/model/Cube;)V

    .line 266
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/a/a;->notifyDataSetChanged()V

    .line 269
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 90
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f0e0175

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    .line 93
    new-instance v0, Lcom/xueqiu/android/cube/a/a;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    .line 94
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_topic"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Industry;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    .line 95
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_exitorial"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Editorial;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->k:Lcom/xueqiu/android/cube/model/Editorial;

    .line 96
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_rank_category"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Industry;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->u:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v0, Lcom/xueqiu/android/common/r;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->q:Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;

    new-instance v3, Lcom/xueqiu/android/cube/CubeCardListActivity$1;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/cube/CubeCardListActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V

    invoke-direct {v0, v2, v3}, Lcom/xueqiu/android/common/r;-><init>(Lcom/xueqiu/android/common/widget/SNBPullToRefreshListView;Lcom/xueqiu/android/common/t;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->s:Lcom/xueqiu/android/common/r;

    .line 136
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->s:Lcom/xueqiu/android/common/r;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/common/r;->a(Lcom/xueqiu/android/common/a/d;)V

    .line 137
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->r:Lcom/xueqiu/android/cube/a/a;

    new-instance v2, Lcom/xueqiu/android/cube/CubeCardListActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeCardListActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V

    .line 3304
    iput-object v2, v0, Lcom/xueqiu/android/cube/a/a;->e:Lcom/xueqiu/android/cube/a/b;

    .line 4166
    const-string v0, "cube_rank_filter"

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4172
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4176
    iget v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    sget-object v2, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_POPULAR:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 4177
    const-string v0, "10"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4178
    const-string v0, "1001"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4179
    const-string v0, "1001"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v2

    .line 4218
    :goto_1
    new-instance v2, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    .line 6066
    iget-object v3, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v3}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v3

    .line 4218
    invoke-virtual {v3}, Landroid/support/v7/a/a;->e()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    .line 4219
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Lorg/json/JSONArray;)V

    .line 4221
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 4222
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    .line 6246
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a()V

    .line 6248
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ef

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 6249
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 6250
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6251
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$3;

    invoke-direct {v4, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$3;-><init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)V

    .line 6252
    invoke-virtual {v4}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 6251
    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6253
    new-instance v3, Landroid/support/v7/internal/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x10102d7

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/internal/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6254
    new-instance v4, Lcom/xueqiu/android/cube/widget/c;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/xueqiu/android/cube/widget/c;-><init>(Landroid/content/Context;Ljava/util/List;B)V

    .line 6255
    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 6430
    const/4 v5, -0x1

    iput v5, v3, Landroid/support/v7/internal/widget/ListPopupWindow;->c:I

    .line 7377
    iput-object v2, v3, Landroid/support/v7/internal/widget/ListPopupWindow;->g:Landroid/view/View;

    .line 6258
    invoke-virtual {v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(Landroid/graphics/drawable/Drawable;)V

    .line 6259
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v7/internal/widget/ListPopupWindow;->a(I)V

    .line 6260
    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ListPopupWindow;->a()V

    .line 6262
    new-instance v5, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$4;

    invoke-direct {v5, v1, v3}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$4;-><init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/support/v7/internal/widget/ListPopupWindow;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6269
    new-instance v5, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;

    invoke-direct {v5, v1, v3, v4, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$5;-><init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/support/v7/internal/widget/ListPopupWindow;Lcom/xueqiu/android/cube/widget/c;Ljava/util/ArrayList;)V

    .line 7472
    iput-object v5, v3, Landroid/support/v7/internal/widget/ListPopupWindow;->h:Landroid/widget/AdapterView$OnItemClickListener;

    .line 6281
    invoke-virtual {v1, v2}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->addView(Landroid/view/View;)V

    .line 4225
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    new-instance v1, Lcom/xueqiu/android/cube/CubeCardListActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeCardListActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeCardListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->setOnFilterChangedListener(Lcom/xueqiu/android/cube/widget/b;)V

    .line 4244
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4245
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4246
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->t:Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4248
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4249
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4250
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4251
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4252
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->s:Lcom/xueqiu/android/common/r;

    .line 8225
    invoke-virtual {v0, v7}, Lcom/xueqiu/android/common/r;->a(Z)V

    .line 163
    return-void

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->k:Lcom/xueqiu/android/cube/model/Editorial;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->k:Lcom/xueqiu/android/cube/model/Editorial;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Editorial;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 102
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    sget-object v2, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_POPULAR:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 103
    const v0, 0x7f07022f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 104
    :cond_5
    iget v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    sget-object v2, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_VALUABLE:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 105
    const v0, 0x7f070230

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 4181
    :cond_6
    :try_start_1
    iget v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->p:I

    sget-object v2, Lcom/xueqiu/android/cube/model/CubeRankCategory;->MOST_VALUABLE:Lcom/xueqiu/android/cube/model/CubeRankCategory;

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/CubeRankCategory;->value()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 4182
    const-string v0, "12"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4183
    const-string v0, "1201"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4184
    const-string v0, "1201"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v1, v2

    goto/16 :goto_1

    .line 4186
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    if-eqz v0, :cond_2

    .line 4187
    const-string v0, "13"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4188
    new-instance v0, Lcom/xueqiu/android/cube/model/Topic;

    invoke-direct {v0}, Lcom/xueqiu/android/cube/model/Topic;-><init>()V

    .line 4189
    const v3, 0x7f0700d5

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeCardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/cube/model/Topic;->setName(Ljava/lang/String;)V

    .line 4190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4191
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4192
    invoke-static {v3, v2}, Lcom/xueqiu/android/cube/CubeCardListActivity;->b(Ljava/util/List;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    .line 4195
    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeCardListActivity;->j:Lcom/xueqiu/android/cube/model/Industry;

    invoke-virtual {v4}, Lcom/xueqiu/android/cube/model/Industry;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/cube/CubeCardListActivity$3;

    invoke-direct {v5, p0, p0, v2}, Lcom/xueqiu/android/cube/CubeCardListActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeCardListActivity;Lcom/xueqiu/android/base/b/q;Lorg/json/JSONArray;)V

    .line 5495
    iget-object v2, v3, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    invoke-virtual {v2, v4, v5}, Lcom/xueqiu/android/base/b/c;->e(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 4214
    goto/16 :goto_1

    .line 4255
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1
.end method
