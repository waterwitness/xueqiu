.class final Lcom/xueqiu/android/base/n$3;
.super Ljava/lang/Object;
.source "SNBAndFixManager.java"

# interfaces
.implements Lrx/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/n;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/JsonObject;

.field final synthetic b:Lcom/xueqiu/android/base/n;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/n;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    iput-object p2, p0, Lcom/xueqiu/android/base/n$3;->a:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 198
    check-cast p1, Lrx/i;

    .line 1201
    iget-object v0, p0, Lcom/xueqiu/android/base/n$3;->a:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/n$3;->a:Lcom/google/gson/JsonObject;

    const-string v1, "url"

    .line 1202
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/n$3;->a:Lcom/google/gson/JsonObject;

    const-string v1, "checksum"

    .line 1203
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    :cond_0
    const-string v0, "result_failed"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1205
    invoke-virtual {p1}, Lrx/i;->a()V

    .line 1206
    invoke-static {}, Lcom/xueqiu/android/base/n;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request patch config failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    iget-object v1, p0, Lcom/xueqiu/android/base/n$3;->a:Lcom/google/gson/JsonObject;

    const-string v2, "checksum"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/n;->a(Lcom/xueqiu/android/base/n;Ljava/lang/String;)Ljava/lang/String;

    .line 1211
    iget-object v0, p0, Lcom/xueqiu/android/base/n$3;->a:Lcom/google/gson/JsonObject;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1213
    iget-object v1, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    invoke-static {v1}, Lcom/xueqiu/android/base/n;->a(Lcom/xueqiu/android/base/n;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "andfix_last_load"

    const-string v3, "andfix_last_load_default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    iget-object v2, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    invoke-static {v2}, Lcom/xueqiu/android/base/n;->b(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1215
    const-string v0, "result_had_added"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1216
    invoke-virtual {p1}, Lrx/i;->a()V

    goto :goto_0

    .line 1220
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1221
    const-string v0, ""

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1222
    invoke-virtual {p1}, Lrx/i;->a()V

    goto :goto_0

    .line 1226
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/n;->b(Lcom/xueqiu/android/base/n;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1227
    if-eqz v0, :cond_4

    .line 1228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    .line 1229
    invoke-static {v1}, Lcom/xueqiu/android/base/n;->b(Lcom/xueqiu/android/base/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/n;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1230
    iget-object v1, p0, Lcom/xueqiu/android/base/n$3;->b:Lcom/xueqiu/android/base/n;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/n;->c(Lcom/xueqiu/android/base/n;Ljava/lang/String;)Ljava/lang/String;

    .line 1231
    const-string v0, "result_has_new"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {p1}, Lrx/i;->a()V

    goto/16 :goto_0

    .line 1234
    :cond_4
    const-string v0, "result_failed"

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 1235
    invoke-virtual {p1}, Lrx/i;->a()V

    goto/16 :goto_0
.end method
