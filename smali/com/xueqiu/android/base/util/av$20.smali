.class final Lcom/xueqiu/android/base/util/av$20;
.super Lcom/xueqiu/android/base/b/p;
.source "SyncLaunchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/av;
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
.field final synthetic a:J

.field final synthetic b:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;J)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$20;->b:Lcom/xueqiu/android/base/util/av;

    iput-wide p2, p0, Lcom/xueqiu/android/base/util/av$20;->a:J

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 254
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 255
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 251
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1259
    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/av$20;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1260
    const-string v0, "updateTime"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    .line 1261
    iget-object v2, p0, Lcom/xueqiu/android/base/util/av$20;->b:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v2, v2, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1261
    const-string v3, "cube_rank_filter"

    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v2, p0, Lcom/xueqiu/android/base/util/av$20;->b:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v2, v2, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1262
    const-string v3, "cube_rank_filter_updated"

    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1263
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$20;->b:Lcom/xueqiu/android/base/util/av;

    .line 4043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1263
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent_action_cube_rank_filter_update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 251
    :cond_0
    return-void
.end method
