.class final Lcom/xueqiu/android/base/n$4;
.super Ljava/lang/Object;
.source "SNBAndFixManager.java"

# interfaces
.implements Lrx/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/n;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/n;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 241
    check-cast p1, Ljava/lang/String;

    .line 1244
    invoke-static {}, Lcom/xueqiu/android/base/n;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "return andfix result "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v2}, Lcom/xueqiu/android/base/n;->c(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v0, "result_failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "result_had_added"

    .line 1247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->d(Lcom/xueqiu/android/base/n;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    :goto_0
    return-void

    .line 1251
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1252
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->e(Lcom/xueqiu/android/base/n;)V

    .line 1253
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->f(Lcom/xueqiu/android/base/n;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "andfix_patch_load_failed"

    .line 2088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1258
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->g(Lcom/xueqiu/android/base/n;)Lcom/alipay/euler/andfix/patch/PatchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/euler/andfix/patch/PatchManager;->removeAllPatch()V

    .line 1260
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->a(Lcom/xueqiu/android/base/n;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1261
    const-string v1, "andfix_last_load"

    iget-object v2, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v2}, Lcom/xueqiu/android/base/n;->b(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1267
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    iget-object v1, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->c(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/n;->d(Lcom/xueqiu/android/base/n;Ljava/lang/String;)V

    .line 1268
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->a(Lcom/xueqiu/android/base/n;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1269
    const-string v1, "andfix_last_load"

    iget-object v2, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v2}, Lcom/xueqiu/android/base/n;->b(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1270
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1271
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->c(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/util/k;->b(Ljava/io/File;)V

    .line 1273
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->f(Lcom/xueqiu/android/base/n;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "andfix_patch_add_success"

    .line 3088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1274
    const-string v0, "andfix"

    const-string v1, "success add patch "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1276
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1277
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->e(Lcom/xueqiu/android/base/n;)V

    .line 1278
    iget-object v0, p0, Lcom/xueqiu/android/base/n$4;->a:Lcom/xueqiu/android/base/n;

    invoke-static {v0}, Lcom/xueqiu/android/base/n;->f(Lcom/xueqiu/android/base/n;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "andfix_patch_add_failed"

    .line 4088
    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
