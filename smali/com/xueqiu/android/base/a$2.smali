.class final Lcom/xueqiu/android/base/a$2;
.super Lcom/xueqiu/android/base/b/p;
.source "AdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/a;->b()V
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/base/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/a;Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/xueqiu/android/base/a$2;->c:Lcom/xueqiu/android/base/a;

    iput-object p2, p0, Lcom/xueqiu/android/base/a$2;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/xueqiu/android/base/a$2;->b:J

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 161
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 158
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/xueqiu/android/base/a$2;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1168
    const-string v1, "result_code"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 1169
    const-string v3, "data"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 1170
    if-nez v1, :cond_3

    if-eqz v3, :cond_3

    .line 1172
    iget-wide v4, p0, Lcom/xueqiu/android/base/a$2;->b:J

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 1173
    iget-wide v4, p0, Lcom/xueqiu/android/base/a$2;->b:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/h;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 1177
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1179
    invoke-virtual {v3, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    .line 1178
    invoke-static {v2, v5, v1}, Lcom/xueqiu/android/base/a;->a(Landroid/content/SharedPreferences;Lcom/google/gson/JsonArray;Ljava/lang/String;)Z

    move-result v1

    .line 1181
    :goto_0
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1183
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1182
    invoke-static {v2, v0, v4}, Lcom/xueqiu/android/base/a;->a(Landroid/content/SharedPreferences;Lcom/google/gson/JsonArray;Ljava/lang/String;)Z

    move-result v0

    .line 1186
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 1187
    :cond_1
    const-string v0, "ad_launch_json"

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 1187
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1196
    :cond_2
    :goto_1
    return-void

    .line 1190
    :cond_3
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 1191
    const-string v0, "ad_launch_json"

    const-string v1, ""

    .line 1192
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 1191
    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1195
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_0
.end method
