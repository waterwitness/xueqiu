.class public Lcom/xueqiu/android/common/search/b/a;
.super Ljava/lang/Object;
.source "USearchPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/search/a/b;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/xueqiu/android/common/search/a/c;

.field public b:Lcom/xueqiu/android/stock/a/ad;

.field private d:Lcom/xueqiu/android/cube/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/xueqiu/android/common/search/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/common/search/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xueqiu/android/common/search/a/c;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    .line 54
    iput-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->d:Lcom/xueqiu/android/cube/a/k;

    .line 57
    iput-object p1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/b/a;)Lcom/xueqiu/android/common/search/a/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/search/b/a;Lorg/json/JSONObject;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 46
    .line 6200
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->d(Z)V

    .line 6201
    if-nez p1, :cond_1

    .line 6202
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 6278
    :cond_0
    :goto_0
    return-void

    .line 6208
    :cond_1
    :try_start_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6209
    sget-object v1, Lcom/xueqiu/android/common/search/b/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDoSearchComplete key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyword in EditText = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v3}, Lcom/xueqiu/android/common/search/a/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6211
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v1}, Lcom/xueqiu/android/common/search/a/c;->k()Ljava/lang/String;

    move-result-object v1

    .line 8197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6211
    if-eqz v1, :cond_0

    .line 9197
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 6214
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v1}, Lcom/xueqiu/android/common/search/a/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6215
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/common/search/a/c;->k()Ljava/lang/String;

    move-result-object v0

    .line 10197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6215
    if-eqz v0, :cond_0

    .line 6217
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/common/search/a/c;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6221
    :catch_0
    move-exception v0

    .line 6222
    sget-object v1, Lcom/xueqiu/android/common/search/b/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDOSearchComplete exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6227
    :cond_3
    :try_start_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 6229
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 6230
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/xueqiu/android/common/search/a/c;->e(Z)V

    .line 6231
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/common/search/b/a$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/b/a$3;-><init>(Lcom/xueqiu/android/common/search/b/a;)V

    .line 6232
    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/b/a$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 6231
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6233
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/search/a/c;->b(Ljava/util/List;)V

    .line 6239
    :goto_1
    const-string v0, "2"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "stocks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 6241
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 6242
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/xueqiu/android/common/search/a/c;->g(Z)V

    .line 6243
    new-instance v1, Lcom/xueqiu/android/common/model/parser/GroupParser;

    new-instance v2, Lcom/xueqiu/android/common/model/parser/StockParser;

    invoke-direct {v2}, Lcom/xueqiu/android/common/model/parser/StockParser;-><init>()V

    invoke-direct {v1, v2}, Lcom/xueqiu/android/common/model/parser/GroupParser;-><init>(Lcom/xueqiu/android/common/model/parser/Parser;)V

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/model/parser/GroupParser;->parse(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6245
    new-instance v2, Lcom/xueqiu/android/stock/a/ad;

    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    check-cast v0, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/stock/a/ad;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    .line 6246
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/a/ad;->a(Ljava/util/ArrayList;)V

    .line 6248
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/b/a;->b:Lcom/xueqiu/android/stock/a/ad;

    invoke-interface {v0, v2}, Lcom/xueqiu/android/common/search/a/c;->a(Lcom/xueqiu/android/stock/a/ad;)V

    .line 6250
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    .line 6251
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->h(Z)V

    .line 6260
    :goto_2
    const-string v0, "3"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 6262
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 6263
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/xueqiu/android/common/search/a/c;->f(Z)V

    .line 6265
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xueqiu/android/common/search/b/a$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/search/b/a$4;-><init>(Lcom/xueqiu/android/common/search/b/a;)V

    .line 6266
    invoke-virtual {v2}, Lcom/xueqiu/android/common/search/b/a$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 6265
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6268
    new-instance v2, Lcom/xueqiu/android/cube/a/k;

    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    check-cast v1, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v2, v1}, Lcom/xueqiu/android/cube/a/k;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/xueqiu/android/common/search/b/a;->d:Lcom/xueqiu/android/cube/a/k;

    .line 6269
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->d:Lcom/xueqiu/android/cube/a/k;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/cube/a/k;->a(Ljava/util/ArrayList;)V

    .line 6271
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    iget-object v2, p0, Lcom/xueqiu/android/common/search/b/a;->d:Lcom/xueqiu/android/cube/a/k;

    invoke-interface {v1, v0, v2}, Lcom/xueqiu/android/common/search/a/c;->a(Ljava/util/List;Lcom/xueqiu/android/cube/a/k;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 6277
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 6235
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->e(Z)V

    goto/16 :goto_1

    .line 6253
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->h(Z)V

    goto :goto_2

    .line 6256
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->g(Z)V

    goto :goto_2

    .line 6274
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->f(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/xueqiu/android/common/search/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/xueqiu/android/common/search/a;->a()Lcom/xueqiu/android/common/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/a;->c()Ljava/util/List;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->b(Z)V

    .line 179
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 182
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 184
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/xueqiu/android/common/search/a/c;->b(Z)V

    .line 188
    iget-object v1, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v1, v0}, Lcom/xueqiu/android/common/search/a/c;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 285
    .line 5111
    new-instance v1, Lcom/xueqiu/android/common/search/b/a$2;

    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    check-cast v0, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/search/b/a$2;-><init>(Lcom/xueqiu/android/common/search/b/a;Lcom/xueqiu/android/base/b/q;)V

    .line 5128
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 5243
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/an;->h(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 287
    invoke-direct {p0}, Lcom/xueqiu/android/common/search/b/a;->d()Ljava/util/List;

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/search/b/a;->a(Z)V

    .line 290
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    new-instance v1, Lcom/xueqiu/android/common/search/b/a$1;

    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    check-cast v0, Lcom/xueqiu/android/common/search/USearchActivity;

    invoke-direct {v1, p0, v0, p1}, Lcom/xueqiu/android/common/search/b/a$1;-><init>(Lcom/xueqiu/android/common/search/b/a;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/base/b/ai;->g(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/search/a/c;->d(Z)V

    .line 79
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 133
    if-eqz p1, :cond_4

    .line 134
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->h()Z

    move-result v1

    .line 138
    :goto_0
    const-wide/16 v4, 0x0

    .line 139
    if-eqz v1, :cond_3

    .line 142
    invoke-static {}, Lcom/xueqiu/android/base/a;->a()Lcom/xueqiu/android/base/a;

    invoke-static {}, Lcom/xueqiu/android/base/a;->i()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 143
    const-string v0, "image"

    invoke-virtual {v3, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const-string v0, "image"

    .line 2106
    invoke-static {v3, v0, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 146
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/d/a/b/f;->d()Lcom/d/a/a/a/b;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 149
    :goto_1
    const-string v4, "link"

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const-string v4, "link"

    .line 3106
    invoke-static {v3, v4, v2}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    :cond_0
    const-string v4, "promotion_id"

    invoke-static {v3, v4}, Lcom/xueqiu/android/base/util/r;->c(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 157
    if-nez v0, :cond_1

    .line 164
    :goto_2
    return-void

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 163
    :goto_3
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface/range {v0 .. v5}, Lcom/xueqiu/android/common/search/a/c;->a(ZLandroid/graphics/Bitmap;Ljava/lang/String;J)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v3, v2

    goto :goto_3

    :cond_4
    move v1, p1

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Lcom/xueqiu/android/common/search/a;->a()Lcom/xueqiu/android/common/search/a;

    move-result-object v0

    .line 4197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4050
    if-nez v1, :cond_1

    .line 4053
    iget-object v1, v0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4054
    iget-object v1, v0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4060
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4061
    invoke-virtual {v0}, Lcom/xueqiu/android/common/search/a;->b()V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/search/b/a;->a:Lcom/xueqiu/android/common/search/a/c;

    invoke-interface {v0}, Lcom/xueqiu/android/common/search/a/c;->j()V

    .line 171
    invoke-direct {p0}, Lcom/xueqiu/android/common/search/b/a;->d()Ljava/util/List;

    .line 172
    return-void

    .line 4056
    :cond_2
    iget-object v1, v0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 4057
    iget-object v1, v0, Lcom/xueqiu/android/common/search/a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
