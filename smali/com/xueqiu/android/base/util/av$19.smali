.class final Lcom/xueqiu/android/base/util/av$19;
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
    .line 228
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$19;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 231
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 232
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 228
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1236
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    const-string v0, "buttons"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1238
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1239
    const-string v1, "timeStamp"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 1240
    const-string v1, "enter_button_config"

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/xueqiu/android/base/util/av$19;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v4, v4, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1240
    invoke-static {v1, v0, v4}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1241
    const-string v0, "enter_button_config_updated"

    iget-object v1, p0, Lcom/xueqiu/android/base/util/av$19;->a:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v1, v1, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1241
    invoke-static {v0, v2, v3, v1}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putLong(Ljava/lang/String;JLandroid/content/Context;)V

    .line 1242
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$19;->a:Lcom/xueqiu/android/base/util/av;

    .line 4043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1242
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent_action_enter_button_config_updated"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 228
    :cond_0
    return-void
.end method
