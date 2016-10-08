.class public final Lcom/xueqiu/android/common/widget/aj;
.super Ljava/lang/Object;
.source "ShareSheet.java"


# instance fields
.field a:Landroid/app/Activity;

.field public b:Lcom/xueqiu/android/common/widget/an;

.field c:Lcom/xueqiu/android/common/widget/am;

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/aj;->j:Z

    .line 97
    iput-boolean v1, p0, Lcom/xueqiu/android/common/widget/aj;->e:Z

    .line 125
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 126
    iput-object p2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 127
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 4043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 5043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 128
    invoke-static {v0}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/graphics/Bitmap;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    .line 5164
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const-string v1, "wx8be10642d9baf61f"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 5165
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wx8be10642d9baf61f"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 131
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)Lcom/xueqiu/android/common/widget/aj;
    .locals 3

    .prologue
    .line 264
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 14100
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xueqiu/android/common/widget/aj;->j:Z

    .line 266
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/widget/aj$2;

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/widget/aj$2;-><init>(Lcom/xueqiu/android/common/widget/aj;)V

    .line 14410
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->g:Lcom/xueqiu/android/base/b/aj;

    invoke-virtual {v1, v2}, Lcom/xueqiu/android/base/b/aj;->f(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 284
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/am;)Lcom/xueqiu/android/common/widget/aj;
    .locals 1

    .prologue
    .line 252
    :try_start_0
    new-instance v0, Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 253
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/aj;->a()V

    .line 254
    iput-object p2, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 259
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 843
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "snowball"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 844
    new-instance v2, Ljava/io/File;

    const-string v3, "share"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 845
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 846
    const-string v1, "ShareSheet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t make dir "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    :goto_0
    return-object v0

    .line 849
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "share_temp_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 851
    const-string v2, "ShareSheet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 864
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v0, v1

    .line 870
    goto :goto_0

    .line 857
    :catch_0
    move-exception v2

    move-object v3, v0

    .line 858
    :goto_2
    :try_start_3
    const-string v4, "ShareSheet"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Couldn\'t access file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " due to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xueqiu/android/base/util/v;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {v2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 862
    if-eqz v3, :cond_0

    .line 864
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_3

    .line 864
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 867
    :cond_3
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 862
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 857
    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method private a(Lcom/xueqiu/android/common/widget/al;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 790
    new-instance v0, Lcom/xueqiu/android/common/widget/ak;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v0, p0, v1, p1}, Lcom/xueqiu/android/common/widget/ak;-><init>(Lcom/xueqiu/android/common/widget/aj;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/al;)V

    .line 791
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 792
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v3}, Lcom/xueqiu/android/common/widget/ak;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 796
    :goto_0
    return-void

    .line 794
    :cond_0
    invoke-virtual {v0, v3}, Lcom/xueqiu/android/common/widget/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 153
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 155
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/widget/aj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 289
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/Boolean;)V

    .line 290
    return-void
.end method

.method public static c(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 294
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/Boolean;)V

    .line 295
    return-void
.end method

.method public static d(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V
    .locals 6

    .prologue
    .line 298
    new-instance v1, Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/common/widget/aj;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 15142
    const-string v0, "com.tencent.mobileqq"

    invoke-direct {v1, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 14761
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14762
    const v0, 0x7f07044f

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 14780
    :cond_0
    :goto_0
    return-void

    .line 14765
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14766
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14767
    iget-object v2, v1, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 14768
    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 14769
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14770
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 14771
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14772
    if-eqz v3, :cond_2

    const-string v4, "com.tencent.mobileqq"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "com.tencent.mobileqq.activity.JumpActivity"

    .line 14773
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14774
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14775
    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14777
    const-string v4, "android.intent.extra.TEXT"

    iget-object v5, v1, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 16109
    iget-object v5, v5, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 14777
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14778
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14779
    iget-object v0, v1, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 49043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 786
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 50043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 786
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 50044
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 786
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/common/widget/an;)V

    .line 304
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/aj;->c()V

    .line 305
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 544
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/xueqiu/android/common/ShareActivity;

    if-eqz v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 16320
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 17109
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 17197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 16320
    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16326
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v3, 0x7f070383

    .line 16327
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v3, 0x7f070384

    .line 16328
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v13

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v3, 0x7f070387

    .line 16329
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v3, 0x7f070386

    .line 16330
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v4, 0x7f070380

    .line 16331
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v4, 0x7f070382

    .line 16332
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v4, 0x7f0700c0

    .line 16333
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v4, 0x7f07037b

    .line 16334
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 16326
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 16338
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/xueqiu/android/common/widget/aj$3;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/widget/aj$3;-><init>(Lcom/xueqiu/android/common/widget/aj;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    .line 16353
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const-class v1, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 18577
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 19141
    iget v1, v1, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 18577
    if-nez v1, :cond_9

    .line 18578
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 19149
    iget-object v6, v1, Lcom/xueqiu/android/common/widget/an;->a:Lcom/xueqiu/android/community/model/Status;

    .line 19612
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v1, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19614
    const-string v0, "extra_write_type"

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19615
    const-string v0, "extra_status_id"

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v8

    invoke-virtual {v1, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 19616
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 19617
    const-string v7, "extra_paid_mention"

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getPaidMention()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19619
    :cond_2
    const-string v0, "extra_paid_to_user"

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19620
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getRetweetedStatus()Lcom/xueqiu/android/community/model/Status;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19621
    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    .line 19622
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "//<a href=\"/n/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" target=\"_blank\">@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "</a>:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19623
    const-string v7, "extra_retweet_text"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/Status;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    move-object v0, v1

    .line 16353
    :goto_2
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16354
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v4, Lcom/xueqiu/android/message/SelectTalkActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 23556
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23557
    iget-object v6, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 24141
    iget v6, v6, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 23557
    if-eq v6, v10, :cond_4

    .line 23558
    const-string v6, "android.intent.extra.SUBJECT"

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 25043
    iget-object v7, v7, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 23558
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23560
    :cond_4
    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23561
    iget-object v6, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 25161
    iget-boolean v6, v6, Lcom/xueqiu/android/common/widget/an;->j:Z

    .line 23561
    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 26043
    iget-object v6, v6, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 23561
    if-eqz v6, :cond_5

    .line 23562
    const-string v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23563
    iget-object v6, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 23564
    const-string v6, "android.intent.extra.STREAM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23567
    :cond_5
    iget-object v6, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 26141
    iget v6, v6, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 23567
    if-nez v6, :cond_d

    .line 23568
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 27125
    iget-object v7, v7, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 23568
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23572
    :goto_3
    const-string v6, "com.xueqiu.android"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16354
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16356
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 28125
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 16356
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 29125
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 16356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 16357
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16360
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16361
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16362
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 16363
    const/high16 v1, 0x10000

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->g:Ljava/util/List;

    .line 16364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->h:Ljava/util/List;

    .line 16366
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 16367
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 16368
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 16370
    if-eqz v6, :cond_f

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v7, "com.tencent.mobileqq.activity.JumpActivity"

    .line 16371
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 16372
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16373
    const-string v1, "text/plain"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16374
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 29161
    iget-boolean v1, v1, Lcom/xueqiu/android/common/widget/an;->j:Z

    .line 16374
    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 30043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 16374
    if-eqz v1, :cond_7

    .line 16375
    const-string v1, "image/*"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16376
    const-string v1, "android.intent.extra.STREAM"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16378
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 16378
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 31043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 16379
    :goto_5
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16381
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16382
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16383
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 16320
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 18109
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 18581
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18582
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 18584
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 20141
    iget v0, v0, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 18584
    if-eq v0, v10, :cond_a

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 21141
    iget v0, v0, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 18585
    if-eq v0, v12, :cond_a

    .line 18586
    const-string v0, "android.intent.extra.SUBJECT"

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 22043
    iget-object v7, v7, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 18586
    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18589
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 22109
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 18590
    iget-object v7, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 22141
    iget v7, v7, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 18590
    if-ne v7, v12, :cond_b

    .line 18591
    iget-object v7, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v8, 0x7f0703c9

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 18592
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_b

    .line 18593
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 18594
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u3002"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18597
    :cond_b
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18599
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 23043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 18599
    if-eqz v0, :cond_c

    .line 18600
    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 18601
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 18602
    const-string v0, "android.intent.extra.STREAM"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "file://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 18606
    :cond_c
    const-string v0, "com.xueqiu.android"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v1

    .line 18608
    goto/16 :goto_2

    .line 23570
    :cond_d
    const-string v6, "android.intent.extra.TEXT"

    iget-object v7, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 28109
    iget-object v7, v7, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 23570
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 16378
    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    .line 16385
    :cond_f
    if-eqz v6, :cond_12

    const-string v1, "com.sina.weibo"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 16386
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16387
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v8, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 32043
    iget-object v8, v8, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 16387
    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16388
    const-string v1, "text/plain"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16389
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 33043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 16389
    if-eqz v1, :cond_10

    .line 16390
    const-string v1, "image/*"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16391
    const-string v1, "android.intent.extra.STREAM"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16394
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 16394
    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 34043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 16395
    :goto_6
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16396
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16397
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16398
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 16394
    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 16402
    :cond_12
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 16403
    const-string v6, "title"

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16404
    const-string v6, "icon"

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16405
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 16408
    :cond_13
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 16409
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16410
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16413
    :cond_14
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 16415
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 16416
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const-class v3, Lcom/xueqiu/android/common/ShareActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16417
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16419
    const-string v2, "showItem"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 16420
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/aj;->j:Z

    if-eqz v0, :cond_15

    .line 16421
    const-string v0, "extra_type"

    const-string v2, "type_comment"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16424
    :cond_15
    iget-boolean v0, p0, Lcom/xueqiu/android/common/widget/aj;->e:Z

    if-eqz v0, :cond_16

    .line 16425
    const-string v0, "extra_has_share_title"

    invoke-virtual {v1, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 16428
    :cond_16
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 16429
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v1, 0x7f040009

    const v2, 0x7f040009

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 16431
    invoke-static {}, Lcom/xueqiu/android/common/w;->a()Lcom/xueqiu/android/common/w;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/widget/aj$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/widget/aj$4;-><init>(Lcom/xueqiu/android/common/widget/aj;)V

    iput-object v1, v0, Lcom/xueqiu/android/common/w;->a:Lcom/xueqiu/android/common/v;

    goto/16 :goto_0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 6133
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->e:Ljava/lang/String;

    .line 169
    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/xueqiu/android/common/widget/aj$1;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj$1;-><init>(Lcom/xueqiu/android/common/widget/aj;I)V

    .line 176
    new-instance v1, Lcom/xueqiu/android/common/widget/ak;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    invoke-direct {v1, p0, v2, v0}, Lcom/xueqiu/android/common/widget/ak;-><init>(Lcom/xueqiu/android/common/widget/aj;Lcom/xueqiu/android/common/widget/an;Lcom/xueqiu/android/common/widget/al;)V

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 178
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v3}, Lcom/xueqiu/android/common/widget/ak;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {v1, v3}, Lcom/xueqiu/android/common/widget/ak;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/common/widget/aj;->b(I)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 631
    .line 34134
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    const v0, 0x7f070450

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 717
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 34134
    goto :goto_0

    .line 636
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    new-instance v0, Lcom/xueqiu/android/common/widget/aj$5;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/common/widget/aj$5;-><init>(Lcom/xueqiu/android/common/widget/aj;Ljava/lang/Boolean;)V

    .line 643
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Lcom/xueqiu/android/common/widget/al;)V

    goto :goto_1

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 34161
    iget-boolean v0, v0, Lcom/xueqiu/android/common/widget/an;->j:Z

    .line 645
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 35043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 645
    if-eqz v0, :cond_6

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 647
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 649
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareToTimeLineUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 653
    :goto_2
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 656
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "/Camera/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 657
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 658
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 660
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 662
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 664
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 665
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 36043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 665
    invoke-static {v2, v1}, Lcom/xueqiu/android/base/util/k;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Z

    .line 666
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 37043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->g:Landroid/graphics/Bitmap;

    .line 666
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 667
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 668
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 671
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 651
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.tencent.mm"

    const-string v3, "com.tencent.mm.ui.tools.ShareImgUI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 674
    :cond_6
    new-instance v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 675
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    .line 676
    iget-object v4, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 38043
    iget-object v4, v4, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 676
    iput-object v4, v0, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 677
    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 678
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 39043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->f:Landroid/graphics/Bitmap;

    .line 678
    invoke-virtual {v3, v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 679
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v4, 0x7f070379

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 40043
    iget-object v4, v4, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 679
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 680
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 41043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 680
    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 686
    :goto_3
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 687
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 688
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    iput v2, v4, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 689
    iget v0, v4, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    if-ne v0, v1, :cond_b

    .line 691
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 42065
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 691
    const-string v1, "wx_title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 692
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 43065
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 692
    const-string v1, "wx_title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 695
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 43075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 695
    const-string v1, "wx_content_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 696
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 697
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 44043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 699
    :cond_9
    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 711
    :goto_4
    iput-object v3, v4, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 713
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->i:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v4}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    goto/16 :goto_1

    .line 682
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 42043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 682
    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    goto :goto_3

    .line 701
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 44065
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 701
    const-string v1, "wx_friend_title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 702
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 45065
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->k:Ljava/util/Map;

    .line 702
    const-string v1, "wx_friend_title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 704
    :cond_c
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 45075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->l:Ljava/util/Map;

    .line 704
    const-string v1, "wx_friend_content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 705
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 706
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 46043
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 708
    :cond_d
    iput-object v0, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 800
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    if-nez p2, :cond_0

    .line 802
    const-string p2, "\u5206\u4eab\u81ea\u96ea\u7403"

    .line 804
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:?subject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&body="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 808
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 809
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 812
    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 815
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 50045
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 817
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->g:Ljava/util/List;

    .line 50046
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/xueqiu/android/common/widget/ao;

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-direct {v4, v5, v1}, Lcom/xueqiu/android/common/widget/ao;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    new-instance v1, Lcom/xueqiu/android/common/widget/aj$7;

    invoke-direct {v1, p0, v0, v2}, Lcom/xueqiu/android/common/widget/aj$7;-><init>(Lcom/xueqiu/android/common/widget/aj;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50061
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50062
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 34125
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 551
    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method final b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v2, 0x7f070383

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 7109
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 7141
    iget v2, v2, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 194
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 195
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v3, 0x7f0703c9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    const-string v1, "extra_card_param"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "extra_card_type"

    const-string v2, "cube"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v2, 0x7f070384

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 8141
    iget v1, v1, Lcom/xueqiu/android/common/widget/an;->i:I

    .line 210
    if-nez v1, :cond_2

    .line 211
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 9125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :goto_1
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 213
    :cond_2
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 10109
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 218
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 221
    :pswitch_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 224
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v2, 0x7f070387

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 225
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 11109
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 229
    :pswitch_5
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    const v2, 0x7f070382

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 230
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 12109
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 234
    :pswitch_6
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 13109
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 13117
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 234
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :pswitch_7
    invoke-virtual {p0}, Lcom/xueqiu/android/common/widget/aj;->b()V

    goto/16 :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method final c()V
    .locals 6

    .prologue
    .line 720
    .line 46138
    const-string v0, "com.sina.weibo"

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    const v0, 0x7f070451

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/xueqiu/android/common/widget/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    new-instance v0, Lcom/xueqiu/android/common/widget/aj$6;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/widget/aj$6;-><init>(Lcom/xueqiu/android/common/widget/aj;)V

    .line 732
    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/widget/aj;->a(Lcom/xueqiu/android/common/widget/al;)V

    goto :goto_0

    .line 734
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 735
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 737
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 738
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 740
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 741
    if-eqz v2, :cond_3

    const-string v3, "com.sina.weibo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 742
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    const-string v1, "text/plain"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 745
    const-string v1, "image/*"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v1, "android.intent.extra.STREAM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xueqiu/android/common/widget/aj;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 47109
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 47197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 749
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 48043
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 750
    :goto_1
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 749
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 48109
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    goto :goto_1
.end method
