.class final Lcom/xueqiu/android/base/util/av$18;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/util/av;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/av;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/xueqiu/android/base/util/av$18;->a:Lcom/xueqiu/android/base/util/av;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 207
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 204
    check-cast p1, Lorg/json/JSONObject;

    .line 1213
    :try_start_0
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1215
    const-string v1, "pay_mention_answer_postfix"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v3, p0, Lcom/xueqiu/android/base/util/av$18;->a:Lcom/xueqiu/android/base/util/av;

    .line 2043
    iget-object v3, v3, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1215
    invoke-static {v1, v2, v3}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1216
    array-length v1, v0

    if-le v1, v4, :cond_0

    .line 1217
    const-string v1, "pay_mention_refuse_postfix"

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/xueqiu/android/base/util/av$18;->a:Lcom/xueqiu/android/base/util/av;

    .line 3043
    iget-object v2, v2, Lcom/xueqiu/android/base/util/av;->a:Landroid/content/Context;

    .line 1217
    invoke-static {v1, v0, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->putString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1220
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
