.class public final Lcom/xueqiu/android/base/c/b;
.super Ljava/lang/Object;
.source "IPManager.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static j:Lcom/xueqiu/android/base/c/b;

.field private static volatile k:Z


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lrx/j;

.field private i:Landroid/content/Context;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "124.250.3.79:8400"

    aput-object v1, v0, v2

    sput-object v0, Lcom/xueqiu/android/base/c/b;->a:[Ljava/lang/String;

    .line 64
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "124.250.3.100"

    aput-object v1, v0, v2

    sput-object v0, Lcom/xueqiu/android/base/c/b;->c:[Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    .line 96
    sput-boolean v2, Lcom/xueqiu/android/base/c/b;->k:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/base/c/b;->d:Z

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xueqiu/android/base/c/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xueqiu/android/base/c/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/base/c/b;->l:Ljava/util/Map;

    .line 101
    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/c/b;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z

    if-nez v0, :cond_1

    .line 164
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/xueqiu/android/base/c/b;

    invoke-direct {v0}, Lcom/xueqiu/android/base/c/b;-><init>()V

    .line 168
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Lcom/xueqiu/android/base/q;)Lcom/xueqiu/android/base/c/b;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 150
    sget-object v0, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z

    if-nez v0, :cond_2

    .line 151
    :cond_0
    new-instance v1, Lcom/xueqiu/android/base/c/b;

    invoke-direct {v1}, Lcom/xueqiu/android/base/c/b;-><init>()V

    .line 152
    sput-object v1, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    .line 1400
    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z

    if-nez v0, :cond_2

    .line 2104
    iput-object p0, v1, Lcom/xueqiu/android/base/c/b;->i:Landroid/content/Context;

    .line 2105
    iget-object v0, v1, Lcom/xueqiu/android/base/c/b;->i:Landroid/content/Context;

    const-string v2, "server_ip_address_file_name"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2106
    const-string v0, "key_qmas_servers"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2107
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2109
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 2110
    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->c(Lcom/google/gson/JsonObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :cond_1
    :goto_0
    const-string v0, "key_https"

    invoke-interface {v2, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xueqiu/android/base/c/b;->d:Z

    .line 2117
    const-string v0, "key_expired"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xueqiu/android/base/c/b;->e:J

    .line 2118
    iget-wide v2, v1, Lcom/xueqiu/android/base/c/b;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 2119
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/c/b$1;

    invoke-direct {v2, v1, p1}, Lcom/xueqiu/android/base/c/b$1;-><init>(Lcom/xueqiu/android/base/c/b;Lcom/xueqiu/android/base/q;)V

    iget-wide v4, v1, Lcom/xueqiu/android/base/c/b;->e:J

    .line 2124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2119
    invoke-virtual {v0, v2, v4, v5, v3}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/base/c/b;->h:Lrx/j;

    .line 2134
    :goto_1
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/base/c/b;->l:Ljava/util/Map;

    .line 2135
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/c/b$3;

    invoke-direct {v2, v1, p1}, Lcom/xueqiu/android/base/c/b$3;-><init>(Lcom/xueqiu/android/base/c/b;Lcom/xueqiu/android/base/q;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    .line 1404
    sput-boolean v8, Lcom/xueqiu/android/base/c/b;->k:Z

    .line 154
    :cond_2
    sget-object v0, Lcom/xueqiu/android/base/c/b;->j:Lcom/xueqiu/android/base/c/b;

    return-object v0

    .line 2113
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2126
    :cond_3
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/c/b$2;

    invoke-direct {v2, v1, p1}, Lcom/xueqiu/android/base/c/b$2;-><init>(Lcom/xueqiu/android/base/c/b;Lcom/xueqiu/android/base/q;)V

    invoke-virtual {v0, v2}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    goto :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/c/b;Lrx/j;)Lrx/j;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b;->h:Lrx/j;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/google/gson/JsonObject;)V
    .locals 8

    .prologue
    .line 173
    monitor-enter p0

    if-nez p1, :cond_0

    .line 202
    :goto_0
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xueqiu/android/base/c/b;->c(Lcom/google/gson/JsonObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->i:Landroid/content/Context;

    const-string v1, "server_ip_address_file_name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    const-string v1, "key_qmas_servers"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v1, "https"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    const-string v1, "https"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xueqiu/android/base/c/b;->d:Z

    .line 186
    const-string v1, "key_https"

    iget-boolean v2, p0, Lcom/xueqiu/android/base/c/b;->d:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    :cond_1
    const-string v1, "expires"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "expires"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "expires"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/xueqiu/android/base/c/b;->e:J

    .line 190
    const-string v1, "key_expired"

    iget-wide v2, p0, Lcom/xueqiu/android/base/c/b;->e:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 191
    iget-object v1, p0, Lcom/xueqiu/android/base/c/b;->h:Lrx/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xueqiu/android/base/c/b;->h:Lrx/j;

    invoke-interface {v1}, Lrx/j;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/xueqiu/android/base/c/b;->h:Lrx/j;

    invoke-interface {v1}, Lrx/j;->b()V

    .line 194
    :cond_2
    sget-object v1, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v2, Lcom/xueqiu/android/base/c/b$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/base/c/b$4;-><init>(Lcom/xueqiu/android/base/c/b;)V

    iget-wide v4, p0, Lcom/xueqiu/android/base/c/b;->e:J

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    invoke-virtual {v1, v2, v4, v5, v3}, Lrx/h;->a(Lrx/c/a;JLjava/util/concurrent/TimeUnit;)Lrx/j;

    .line 201
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/xueqiu/android/base/c/b;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/xueqiu/android/base/c/b;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private static b(Lcom/google/gson/JsonObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 485
    const-string v0, "routers"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "routers"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 500
    :goto_0
    return-object v0

    .line 489
    :cond_1
    const-string v0, "routers"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 491
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 500
    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/c/b;)Lrx/j;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->h:Lrx/j;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/base/c/b;Lcom/google/gson/JsonObject;)V
    .locals 4

    .prologue
    .line 6391
    const-string v0, "update"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "update"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6392
    invoke-static {p1}, Lcom/xueqiu/android/base/c/b;->b(Lcom/google/gson/JsonObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/base/c/b;->l:Ljava/util/Map;

    .line 6393
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->qmasRoutesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 6394
    const-string v0, "timestamp"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    .line 6395
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->qmasRoutesUpdateTimeKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putLong(Ljava/lang/String;JLandroid/content/Context;)V

    .line 44
    :cond_0
    return-void
.end method

.method private static c(Lcom/google/gson/JsonObject;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xueqiu/android/base/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 504
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 510
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 512
    new-instance v4, Lcom/xueqiu/android/base/c/d;

    const-string v5, "10.10.28.11"

    invoke-direct {v4, v5}, Lcom/xueqiu/android/base/c/d;-><init>(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v4, v1}, Lcom/xueqiu/android/base/c/d;->a(Lcom/google/gson/JsonArray;)V

    .line 514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 518
    :cond_1
    return-object v2
.end method

.method static synthetic c(Lcom/xueqiu/android/base/c/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    :try_start_0
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->qmasRoutesKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 441
    if-eqz v0, :cond_1

    .line 442
    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->b(Lcom/google/gson/JsonObject;)Ljava/util/Map;

    move-result-object v0

    .line 450
    :goto_0
    return-object v0

    .line 445
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->e()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 450
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/c/b;->e()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private static e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 457
    :try_start_0
    const-string v1, "routes_default"

    .line 458
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 459
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 461
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 462
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 463
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    .line 475
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 480
    :cond_0
    :goto_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_3
    return-object v0

    .line 465
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->qmasRoutesKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 469
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->qmasRoutesUpdateTimeKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putLong(Ljava/lang/String;JLandroid/content/Context;)V

    .line 470
    invoke-static {v0}, Lcom/xueqiu/android/base/c/b;->b(Lcom/google/gson/JsonObject;)Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 473
    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/base/q;)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 324
    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 5041
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 5119
    iget-boolean v0, v0, Lcom/xueqiu/android/base/f;->b:Z

    .line 330
    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    const v1, 0x7f0701d9

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "IPManager"

    const-string v1, "refresh routes from: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "https://qmas.xueqiu.com/routers.json"

    aput-object v6, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const-string v3, "https://qmas.xueqiu.com/routers.json"

    new-instance v6, Lcom/xueqiu/android/base/c/b$6;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/xueqiu/android/base/c/b$6;-><init>(Lcom/xueqiu/android/base/c/b;Ljava/lang/String;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 335
    :cond_2
    const/4 v2, 0x0

    .line 336
    const-string v0, "qmas_routes_updated_time"

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getLong(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v4

    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_1
    const-string v0, "IPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail %s host: %s isRefreshing = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/base/c/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/c/d;

    .line 255
    invoke-virtual {v0, p2}, Lcom/xueqiu/android/base/c/d;->a(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lcom/xueqiu/android/base/c/d;->a()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 258
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/base/c/b;->refresh(Lcom/xueqiu/android/base/q;)V

    .line 259
    invoke-virtual {v0}, Lcom/xueqiu/android/base/c/d;->b()V

    .line 260
    const-string v0, "IPManager"

    const-string v1, "%s server size = 0, to reset"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/c/d;

    .line 3059
    iget-object v1, v0, Lcom/xueqiu/android/base/c/d;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    const-string v0, "IPManager"

    const-string v1, "reset failed %s servers."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/c/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/c/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    const-string v1, "im"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    const-string v1, "im"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/c/d;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/c/d;->a()[Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/c/b;->a:[Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    const-string v0, "release"

    const-string v1, "isolate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "http"

    .line 229
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/xueqiu/android/base/c/b;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "https"

    goto :goto_0

    :cond_1
    const-string v0, "http"

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/xueqiu/android/base/c/b;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/xueqiu/android/base/c/b;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "api.xueqiu.com"

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 422
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/base/c/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/base/c/d;

    .line 6052
    iget-object v2, v0, Lcom/xueqiu/android/base/c/d;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "release"

    const-string v3, "isolate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6053
    iget-object v0, v0, Lcom/xueqiu/android/base/c/d;->c:Ljava/lang/String;

    .line 428
    :goto_1
    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 431
    goto :goto_0

    .line 6055
    :cond_2
    iget-object v2, v0, Lcom/xueqiu/android/base/c/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/xueqiu/android/base/c/d;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public final refresh(Lcom/xueqiu/android/base/q;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 266
    sget-boolean v0, Lcom/xueqiu/android/base/c/b;->k:Z

    if-nez v0, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "IPManager"

    const-string v1, "refresh server ip from: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "https://qmas.xueqiu.com/domains.json"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 4119
    iget-boolean v0, v0, Lcom/xueqiu/android/base/f;->b:Z

    .line 273
    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    const v1, 0x7f0701d9

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_1
    invoke-virtual {p1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const-string v2, "https://qmas.xueqiu.com/domains.json"

    new-instance v3, Lcom/xueqiu/android/base/c/b$5;

    invoke-direct {v3, p0, v0}, Lcom/xueqiu/android/base/c/b$5;-><init>(Lcom/xueqiu/android/base/c/b;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 277
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
