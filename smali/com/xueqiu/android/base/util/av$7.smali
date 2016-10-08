.class final Lcom/xueqiu/android/base/util/av$7;
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
.field final synthetic a:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$7;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 418
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1425
    if-eqz p1, :cond_0

    .line 1428
    const-string v0, "has_update"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "has_update"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    const-string v0, "updated"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 1430
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 2186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 1433
    if-eqz v0, :cond_1

    .line 1434
    const-string v1, "profile_menu_config_anonymous"

    .line 1435
    const-string v0, "profile_menu_config_updated_anonymous"

    .line 1441
    :goto_0
    iget-object v5, p0, Lcom/xueqiu/android/base/util/av$7;->a:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v5, v5, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1441
    invoke-static {v5, v1, v4}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v1, p0, Lcom/xueqiu/android/base/util/av$7;->a:Lcom/xueqiu/android/base/util/av;

    .line 4043
    iget-object v1, v1, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1442
    invoke-static {v1, v0, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1443
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$7;->a:Lcom/xueqiu/android/base/util/av;

    .line 5043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1443
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent_action_profile_menu_config_updated"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 418
    :cond_0
    return-void

    .line 1437
    :cond_1
    const-string v1, "profile_menu_config"

    .line 1438
    const-string v0, "profile_menu_config_updated"

    goto :goto_0
.end method
