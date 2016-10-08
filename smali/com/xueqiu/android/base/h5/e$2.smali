.class final Lcom/xueqiu/android/base/h5/e$2;
.super Ljava/lang/Object;
.source "H5Manager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/e;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/base/h5/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/e;Z)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/e$2;->b:Lcom/xueqiu/android/base/h5/e;

    iput-boolean p2, p0, Lcom/xueqiu/android/base/h5/e$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lcom/xueqiu/android/base/h5/e$2;->b:Lcom/xueqiu/android/base/h5/e;

    iget-boolean v3, p0, Lcom/xueqiu/android/base/h5/e$2;->a:Z

    .line 1189
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v4

    .line 1190
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "com.xueqiu.android.h5"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v2, Lcom/xueqiu/android/base/h5/e;->a:Ljava/io/File;

    .line 1191
    iget-object v0, v2, Lcom/xueqiu/android/base/h5/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/xueqiu/android/base/h5/e;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "H5Manager mk base dirs failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1194
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v5, v2, Lcom/xueqiu/android/base/h5/e;->a:Ljava/io/File;

    const-string v6, "temp"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1196
    const-string v0, "H5Manager"

    const-string v5, "create temp directory failed."

    invoke-static {v0, v5}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    :cond_1
    new-instance v5, Ljava/io/File;

    iget-object v0, v2, Lcom/xueqiu/android/base/h5/e;->a:Ljava/io/File;

    const-string v6, "modules"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v6, "mark"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    .line 1202
    :goto_0
    if-nez v0, :cond_3

    if-eqz v3, :cond_5

    .line 1203
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1204
    const-string v0, "H5Manager"

    const-string v3, "refresh h5 files start"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1207
    const-string v0, "H5Manager"

    const-string v3, "deleting h5 files"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1227
    :try_start_0
    invoke-static {v5}, Lcom/xueqiu/android/base/util/k;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    :cond_4
    :goto_1
    const-string v0, "H5Manager"

    const-string v3, "copying h5 files"

    invoke-static {v0, v3}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "h5/modules"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8}, Lcom/xueqiu/android/base/util/k;->a(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1212
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "h5/config.json"

    new-instance v4, Ljava/io/File;

    const-string v8, "config.json"

    invoke-direct {v4, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/base/util/k;->b(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1214
    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v3, "mark"

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1218
    :goto_2
    iget-object v0, v2, Lcom/xueqiu/android/base/h5/e;->b:Lcom/xueqiu/android/base/h5/k;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/k;->refresh()V

    .line 1220
    const-string v0, "H5Manager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refresh h5 files finish, waste "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$2;->b:Lcom/xueqiu/android/base/h5/e;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/h5/e;->a()Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->g()Lrx/j;

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$2;->b:Lcom/xueqiu/android/base/h5/e;

    .line 2047
    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    return-void

    :cond_6
    move v0, v1

    .line 1200
    goto/16 :goto_0

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1230
    const-string v3, "H5Manager"

    const-string v8, "clear failed."

    invoke-static {v3, v8, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1215
    :catch_1
    move-exception v0

    .line 1216
    const-string v3, "H5Manager"

    const-string v4, "create mark file failed."

    invoke-static {v3, v4, v0}, Lcom/xueqiu/android/base/util/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
