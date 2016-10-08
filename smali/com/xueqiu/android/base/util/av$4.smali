.class final Lcom/xueqiu/android/base/util/av$4;
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
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$4;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 338
    check-cast p1, Lcom/google/gson/JsonObject;

    .line 1345
    if-eqz p1, :cond_2

    .line 1348
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$4;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->b:Landroid/content/SharedPreferences;

    .line 1348
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1349
    const-string v1, "st_color"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "st_color"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1352
    :cond_0
    const-string v1, "comment"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1353
    const v1, 0x7f0701d8

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1355
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1356
    iget-object v0, p0, Lcom/xueqiu/android/base/util/av$4;->a:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v0, v0, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1356
    invoke-static {v0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.stockColorChanged"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 338
    :cond_2
    return-void
.end method
