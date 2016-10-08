.class final Lcom/xueqiu/android/base/util/av$15;
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
    .line 122
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$15;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 125
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 122
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1131
    :try_start_0
    const-string v0, "paid_mention"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    const-string v0, "paid_mention"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    .line 1133
    iget-object v1, p0, Lcom/xueqiu/android/base/util/av$15;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v1, v1, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1133
    const-string v2, "paid_mention_availability"

    invoke-static {v1, v2, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1139
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$15;->a:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1135
    const-string v1, "paid_mention_availability"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1138
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
