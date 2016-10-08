.class public final Lcom/alipay/a/a/c;
.super Ljava/lang/Object;
.source "DeviceIdModel.java"


# instance fields
.field a:Lcom/alipay/a/a/d;

.field private b:Lcom/alipay/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/alipay/a/a/d;

    invoke-direct {v0}, Lcom/alipay/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 54
    new-instance v0, Lcom/alipay/a/a/g;

    invoke-direct {v0}, Lcom/alipay/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/alipay/a/a/c;->b:Lcom/alipay/a/a/g;

    .line 22
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 267
    const-string v1, "profiles"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "deviceid"

    .line 1159
    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v0

    .line 271
    :cond_1
    invoke-static {}, Lcom/alipay/a/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    new-instance v0, Lcom/alipay/a/a/g;

    invoke-direct {v0}, Lcom/alipay/a/a/g;-><init>()V

    .line 278
    invoke-static {v1}, Lcom/alipay/a/a/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/alipay/a/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 294
    const-string v2, "deviceid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "profiles"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/a/a/g;->a(Landroid/content/SharedPreferences;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 255
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-gez v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "deviceId"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "checkcode"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const-string v1, "apdtk"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "time"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, "rule"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Lcom/alipay/a/a/e;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 596
    new-instance v0, Lcom/alipay/a/a/e;

    invoke-direct {v0}, Lcom/alipay/a/a/e;-><init>()V

    .line 20051
    iput-boolean v1, v0, Lcom/alipay/a/a/e;->h:Z

    .line 20158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 20160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20161
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 21093
    iget-object v3, v3, Lcom/alipay/a/a/d;->a:Ljava/lang/String;

    .line 20161
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 20162
    const-string v3, "AH1"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 22093
    iget-object v4, v4, Lcom/alipay/a/a/d;->a:Ljava/lang/String;

    .line 20162
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20165
    :goto_0
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 22101
    iget-object v3, v3, Lcom/alipay/a/a/d;->b:Ljava/lang/String;

    .line 20165
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 20166
    const-string v3, "AH2"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 23101
    iget-object v4, v4, Lcom/alipay/a/a/d;->b:Ljava/lang/String;

    .line 20166
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20169
    :goto_1
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 23109
    iget-object v3, v3, Lcom/alipay/a/a/d;->c:Ljava/lang/String;

    .line 20169
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 20170
    const-string v3, "AH3"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 24109
    iget-object v4, v4, Lcom/alipay/a/a/d;->c:Ljava/lang/String;

    .line 20170
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20173
    :goto_2
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 24117
    iget-object v3, v3, Lcom/alipay/a/a/d;->d:Ljava/lang/String;

    .line 20173
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 20174
    const-string v3, "AH4"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 25117
    iget-object v4, v4, Lcom/alipay/a/a/d;->d:Ljava/lang/String;

    .line 20174
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20177
    :goto_3
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 25125
    iget-object v3, v3, Lcom/alipay/a/a/d;->e:Ljava/lang/String;

    .line 20177
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 20178
    const-string v3, "AH5"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 26125
    iget-object v4, v4, Lcom/alipay/a/a/d;->e:Ljava/lang/String;

    .line 20178
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20181
    :goto_4
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 26133
    iget-object v3, v3, Lcom/alipay/a/a/d;->f:Ljava/lang/String;

    .line 20181
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 20182
    const-string v3, "AH6"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 27133
    iget-object v4, v4, Lcom/alipay/a/a/d;->f:Ljava/lang/String;

    .line 20182
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20185
    :goto_5
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 27141
    iget-object v3, v3, Lcom/alipay/a/a/d;->g:Ljava/lang/String;

    .line 20185
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 20186
    const-string v3, "AH7"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 28141
    iget-object v4, v4, Lcom/alipay/a/a/d;->g:Ljava/lang/String;

    .line 20186
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20189
    :goto_6
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 28149
    iget-object v3, v3, Lcom/alipay/a/a/d;->h:Ljava/lang/String;

    .line 20189
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 20190
    const-string v3, "AH8"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 29149
    iget-object v4, v4, Lcom/alipay/a/a/d;->h:Ljava/lang/String;

    .line 20190
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20193
    :goto_7
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 29157
    iget-object v3, v3, Lcom/alipay/a/a/d;->i:Ljava/lang/String;

    .line 20193
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 20194
    const-string v3, "AH9"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 30157
    iget-object v4, v4, Lcom/alipay/a/a/d;->i:Ljava/lang/String;

    .line 20194
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20197
    :goto_8
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 30165
    iget-object v3, v3, Lcom/alipay/a/a/d;->j:Ljava/lang/String;

    .line 20197
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 20198
    const-string v3, "AH10"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 31165
    iget-object v4, v4, Lcom/alipay/a/a/d;->j:Ljava/lang/String;

    .line 20198
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20201
    :goto_9
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 31189
    iget-object v3, v3, Lcom/alipay/a/a/d;->k:Ljava/lang/String;

    .line 20201
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 20202
    const-string v3, "AS1"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 32189
    iget-object v4, v4, Lcom/alipay/a/a/d;->k:Ljava/lang/String;

    .line 20202
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20205
    :goto_a
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 32197
    iget-object v3, v3, Lcom/alipay/a/a/d;->l:Ljava/lang/String;

    .line 20205
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 20206
    const-string v3, "AS2"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 33197
    iget-object v4, v4, Lcom/alipay/a/a/d;->l:Ljava/lang/String;

    .line 20206
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20209
    :goto_b
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 33205
    iget-object v3, v3, Lcom/alipay/a/a/d;->m:Ljava/lang/String;

    .line 20209
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 20210
    const-string v3, "AS3"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 34205
    iget-object v4, v4, Lcom/alipay/a/a/d;->m:Ljava/lang/String;

    .line 20210
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20213
    :goto_c
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 34213
    iget-object v3, v3, Lcom/alipay/a/a/d;->n:Ljava/lang/String;

    .line 20213
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 20214
    const-string v3, "AS4"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 35213
    iget-object v4, v4, Lcom/alipay/a/a/d;->n:Ljava/lang/String;

    .line 20214
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20217
    :goto_d
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 36077
    iget-object v3, v3, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 20217
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 20218
    const-string v3, "AC1"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 37077
    iget-object v4, v4, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 20218
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20221
    :goto_e
    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 37085
    iget-object v3, v3, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 20221
    invoke-static {v3}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 20222
    const-string v3, "AC2"

    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 38085
    iget-object v4, v4, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 20222
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20226
    :goto_f
    const-string v3, "deviceInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20227
    iget-object v2, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 39039
    iget-object v2, v2, Lcom/alipay/a/a/d;->s:Ljava/lang/String;

    .line 20227
    invoke-static {v2}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20228
    const-string v2, "deviceId"

    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 40039
    iget-object v3, v3, Lcom/alipay/a/a/d;->s:Ljava/lang/String;

    .line 20228
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20229
    :cond_0
    iget-object v2, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 40047
    iget-object v2, v2, Lcom/alipay/a/a/d;->t:Ljava/lang/String;

    .line 20229
    invoke-static {v2}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20230
    const-string v2, "priDeviceId"

    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 41047
    iget-object v3, v3, Lcom/alipay/a/a/d;->t:Ljava/lang/String;

    .line 20230
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20231
    :cond_1
    iget-object v2, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 42031
    iget-object v2, v2, Lcom/alipay/a/a/d;->r:Ljava/lang/String;

    .line 20231
    invoke-static {v2}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20232
    const-string v2, "appId"

    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 43031
    iget-object v3, v3, Lcom/alipay/a/a/d;->r:Ljava/lang/String;

    .line 20232
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20233
    :cond_2
    iget-object v2, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 43173
    iget-object v2, v2, Lcom/alipay/a/a/d;->o:Ljava/lang/String;

    .line 20233
    invoke-static {v2}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20234
    const-string v2, "time"

    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 44173
    iget-object v3, v3, Lcom/alipay/a/a/d;->o:Ljava/lang/String;

    .line 20234
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20235
    :cond_3
    iget-object v2, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 44181
    iget-object v2, v2, Lcom/alipay/a/a/d;->u:Ljava/lang/String;

    .line 20235
    invoke-static {v2}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20236
    const-string v2, "apdtk"

    iget-object v3, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 45181
    iget-object v3, v3, Lcom/alipay/a/a/d;->u:Ljava/lang/String;

    .line 20236
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_4
    invoke-static {v1}, Lcom/alipay/a/a/g;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 599
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gez v2, :cond_16

    .line 620
    :cond_5
    :goto_10
    return-object v0

    .line 20164
    :cond_6
    const-string v3, "AH1"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 20168
    :cond_7
    const-string v3, "AH2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 20172
    :cond_8
    const-string v3, "AH3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 20176
    :cond_9
    const-string v3, "AH4"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 20180
    :cond_a
    const-string v3, "AH4"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 20184
    :cond_b
    const-string v3, "AH6"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 20188
    :cond_c
    const-string v3, "AH7"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 20192
    :cond_d
    const-string v3, "AH8"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 20196
    :cond_e
    const-string v3, "AH9"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 20200
    :cond_f
    const-string v3, "AH10"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 20204
    :cond_10
    const-string v3, "AS1"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 20208
    :cond_11
    const-string v3, "AS2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 20212
    :cond_12
    const-string v3, "AS3"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 20216
    :cond_13
    const-string v3, "AS4"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 20220
    :cond_14
    const-string v3, "AC1"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 20224
    :cond_15
    const-string v3, "AC2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 603
    :cond_16
    :try_start_0
    new-instance v2, La/a;

    invoke-direct {v2}, La/a;-><init>()V

    .line 605
    const-string v2, "https://seccliprod.alipay.com/api/do.htm"

    const-string v3, "deviceFingerprint"

    .line 606
    const-string v4, "1"

    const/4 v5, 0x0

    .line 604
    invoke-static {v2, v3, v1, v4, v5}, La/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 608
    if-eqz v1, :cond_17

    .line 609
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_17

    .line 610
    new-instance v2, Lcom/alipay/a/a/g;

    invoke-direct {v2}, Lcom/alipay/a/a/g;-><init>()V

    .line 612
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 611
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/a/a/g;->a(Ljava/lang/String;)Lcom/alipay/a/a/e;

    move-result-object v0

    goto/16 :goto_10

    .line 46051
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/a/a/e;->h:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    .line 616
    :catch_0
    move-exception v1

    .line 617
    invoke-static {v1}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    goto/16 :goto_10
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 307
    const-string v0, "deviceid"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 315
    const-string v0, "device"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    :goto_0
    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-static {}, Lcom/alipay/a/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    :cond_0
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 329
    invoke-static {p1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-static {}, Lcom/alipay/a/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 337
    const-string v2, "device"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 338
    const-string v0, "deviceid"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 388
    :try_start_0
    invoke-static {}, Lcom/alipay/a/c/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 390
    const-string v3, ".SystemConfig"

    .line 389
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 396
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/a/c/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    :cond_1
    :goto_0
    return-object v0

    .line 403
    :cond_2
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 405
    const-string v1, "device"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 411
    :goto_1
    :try_start_2
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    invoke-static {}, Lcom/alipay/a/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/a/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 408
    invoke-static {v1}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_1

    .line 414
    :catch_1
    move-exception v1

    .line 415
    invoke-static {v1}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/alipay/a/a/c;->d()Lcom/alipay/a/a/e;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_0

    .line 47048
    :try_start_0
    iget-boolean v1, v0, Lcom/alipay/a/a/e;->h:Z

    .line 627
    if-eqz v1, :cond_0

    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47066
    iget-object v2, v0, Lcom/alipay/a/a/e;->b:Ljava/lang/String;

    .line 628
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48039
    iget-object v2, v0, Lcom/alipay/a/a/e;->e:Ljava/lang/String;

    .line 628
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 630
    const-string v3, "deviceId"

    .line 48066
    iget-object v4, v0, Lcom/alipay/a/a/e;->b:Ljava/lang/String;

    .line 630
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v3, "priDeviceId"

    .line 49066
    iget-object v4, v0, Lcom/alipay/a/a/e;->b:Ljava/lang/String;

    .line 631
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v3, "time"

    .line 50039
    iget-object v4, v0, Lcom/alipay/a/a/e;->e:Ljava/lang/String;

    .line 632
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v3, "checkcode"

    .line 50040
    iget-object v4, v0, Lcom/alipay/a/a/e;->f:Ljava/lang/String;

    .line 633
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v3, "rule"

    .line 50041
    iget-object v4, v0, Lcom/alipay/a/a/e;->d:Ljava/lang/String;

    .line 634
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string v3, "apdtk"

    .line 50042
    iget-object v4, v0, Lcom/alipay/a/a/e;->c:Ljava/lang/String;

    .line 635
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    new-instance v3, Lcom/alipay/a/a/g;

    invoke-direct {v3}, Lcom/alipay/a/a/g;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50043
    :try_start_1
    invoke-static {v2}, Lcom/alipay/a/a/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-static {p1, v2}, Lcom/alipay/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 643
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/alipay/a/a/c;->a(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v1}, Lcom/alipay/a/a/c;->b(Ljava/lang/String;)V

    .line 50044
    iget-object v0, v0, Lcom/alipay/a/a/e;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 651
    :goto_1
    return-object v0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    .line 651
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 351
    :try_start_0
    invoke-static {}, Lcom/alipay/a/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-static {}, Lcom/alipay/a/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 355
    const-string v3, ".SystemConfig"

    .line 354
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 361
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    :try_start_1
    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1263
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1264
    const/4 v2, 0x0

    .line 1267
    :try_start_3
    new-instance v1, Ljava/io/FileWriter;

    const/4 v0, 0x0

    invoke-direct {v1, v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1268
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1272
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_1
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    :try_start_6
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 381
    :catch_1
    move-exception v0

    .line 382
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 1269
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 1270
    :goto_2
    :try_start_7
    const-string v2, "ConfigNameEnum.CONFIGS.getValue()"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1272
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 376
    :catch_3
    move-exception v0

    .line 377
    :try_start_9
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 1271
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1272
    :goto_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 1273
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 1271
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1269
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method final c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 2069
    iget-object v0, v0, Lcom/alipay/a/a/d;->v:Ljava/lang/String;

    .line 452
    invoke-static {v0}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 581
    :cond_0
    :goto_0
    return-object v0

    .line 455
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 3069
    iget-object v2, v2, Lcom/alipay/a/a/d;->v:Ljava/lang/String;

    .line 455
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 456
    const-string v2, "params"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 457
    if-nez v3, :cond_2

    move-object v0, v1

    .line 458
    goto :goto_0

    .line 459
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 460
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v2

    move v2, v6

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 462
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AC1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 463
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 3077
    iget-object v4, v4, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 463
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 4077
    iget-object v0, v0, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 464
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    :cond_3
    :goto_2
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AC2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 471
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 4085
    iget-object v4, v4, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 471
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 5085
    iget-object v0, v0, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 472
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_4
    :goto_3
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 478
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 5093
    iget-object v4, v4, Lcom/alipay/a/a/d;->a:Ljava/lang/String;

    .line 478
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 6093
    iget-object v0, v0, Lcom/alipay/a/a/d;->a:Ljava/lang/String;

    .line 479
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    :cond_5
    :goto_4
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 485
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 6101
    iget-object v4, v4, Lcom/alipay/a/a/d;->b:Ljava/lang/String;

    .line 485
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 7101
    iget-object v0, v0, Lcom/alipay/a/a/d;->b:Ljava/lang/String;

    .line 486
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_6
    :goto_5
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 492
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 7109
    iget-object v4, v4, Lcom/alipay/a/a/d;->c:Ljava/lang/String;

    .line 492
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 8109
    iget-object v0, v0, Lcom/alipay/a/a/d;->c:Ljava/lang/String;

    .line 493
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_7
    :goto_6
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 499
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 8117
    iget-object v4, v4, Lcom/alipay/a/a/d;->d:Ljava/lang/String;

    .line 499
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 9117
    iget-object v0, v0, Lcom/alipay/a/a/d;->d:Ljava/lang/String;

    .line 500
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    :cond_8
    :goto_7
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 506
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 9125
    iget-object v4, v4, Lcom/alipay/a/a/d;->e:Ljava/lang/String;

    .line 506
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 10125
    iget-object v0, v0, Lcom/alipay/a/a/d;->e:Ljava/lang/String;

    .line 507
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    :cond_9
    :goto_8
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 513
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 10133
    iget-object v4, v4, Lcom/alipay/a/a/d;->f:Ljava/lang/String;

    .line 513
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 514
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 11133
    iget-object v0, v0, Lcom/alipay/a/a/d;->f:Ljava/lang/String;

    .line 514
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_a
    :goto_9
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH7"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 520
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 11141
    iget-object v4, v4, Lcom/alipay/a/a/d;->g:Ljava/lang/String;

    .line 520
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 12141
    iget-object v0, v0, Lcom/alipay/a/a/d;->g:Ljava/lang/String;

    .line 521
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    :cond_b
    :goto_a
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 527
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 12149
    iget-object v4, v4, Lcom/alipay/a/a/d;->h:Ljava/lang/String;

    .line 527
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 13149
    iget-object v0, v0, Lcom/alipay/a/a/d;->h:Ljava/lang/String;

    .line 528
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    :cond_c
    :goto_b
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 534
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 13157
    iget-object v4, v4, Lcom/alipay/a/a/d;->i:Ljava/lang/String;

    .line 534
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 14157
    iget-object v0, v0, Lcom/alipay/a/a/d;->i:Ljava/lang/String;

    .line 535
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_d
    :goto_c
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AH10"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 541
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 14165
    iget-object v4, v4, Lcom/alipay/a/a/d;->j:Ljava/lang/String;

    .line 541
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 15165
    iget-object v0, v0, Lcom/alipay/a/a/d;->j:Ljava/lang/String;

    .line 542
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    :cond_e
    :goto_d
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 548
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 15189
    iget-object v4, v4, Lcom/alipay/a/a/d;->k:Ljava/lang/String;

    .line 548
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 16189
    iget-object v0, v0, Lcom/alipay/a/a/d;->k:Ljava/lang/String;

    .line 549
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    :cond_f
    :goto_e
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 555
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 16197
    iget-object v4, v4, Lcom/alipay/a/a/d;->l:Ljava/lang/String;

    .line 555
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 17197
    iget-object v0, v0, Lcom/alipay/a/a/d;->l:Ljava/lang/String;

    .line 556
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    :cond_10
    :goto_f
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 562
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 17205
    iget-object v4, v4, Lcom/alipay/a/a/d;->m:Ljava/lang/String;

    .line 562
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 18205
    iget-object v0, v0, Lcom/alipay/a/a/d;->m:Ljava/lang/String;

    .line 563
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    :cond_11
    :goto_10
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 569
    iget-object v4, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 18213
    iget-object v4, v4, Lcom/alipay/a/a/d;->n:Ljava/lang/String;

    .line 569
    invoke-static {v4}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 19213
    iget-object v0, v0, Lcom/alipay/a/a/d;->n:Ljava/lang/String;

    .line 570
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_12
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 466
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 474
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 481
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 488
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 495
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 502
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 509
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 516
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 523
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 530
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 537
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 544
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 551
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 558
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 565
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 572
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_11

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/a/a/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 581
    goto/16 :goto_0
.end method

.method final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    iget-object v1, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 50045
    iget-object v1, v1, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 656
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 50046
    iget-object v1, v1, Lcom/alipay/a/a/d;->p:Ljava/lang/String;

    .line 657
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_0
    iget-object v1, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 50047
    iget-object v1, v1, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 658
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 50048
    iget-object v1, v1, Lcom/alipay/a/a/d;->q:Ljava/lang/String;

    .line 659
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_1
    iget-object v1, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 50049
    iget-object v1, v1, Lcom/alipay/a/a/d;->r:Ljava/lang/String;

    .line 660
    invoke-static {v1}, Lcom/alipay/a/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/alipay/a/a/c;->a:Lcom/alipay/a/a/d;

    .line 50050
    iget-object v1, v1, Lcom/alipay/a/a/d;->r:Ljava/lang/String;

    .line 661
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-static {v0}, Lcom/alipay/a/a/f;->a(Ljava/util/List;)V

    .line 664
    return-void
.end method
