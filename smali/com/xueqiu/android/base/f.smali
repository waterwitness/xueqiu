.class public final Lcom/xueqiu/android/base/f;
.super Ljava/lang/Object;
.source "EnvironmentManager.java"


# instance fields
.field a:Z

.field public b:Z

.field public c:Lcom/xueqiu/android/common/model/ClientInfo;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v1, p0, Lcom/xueqiu/android/base/f;->a:Z

    .line 28
    iput-boolean v1, p0, Lcom/xueqiu/android/base/f;->b:Z

    .line 37
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v2

    .line 1105
    invoke-direct {p0, v2}, Lcom/xueqiu/android/base/f;->b(Landroid/content/Context;)V

    .line 2049
    iget-object v3, p0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v3}, Lcom/xueqiu/android/common/model/ClientInfo;->getUmengKey()Ljava/lang/String;

    move-result-object v3

    .line 2050
    const-string v4, "8.5"

    .line 2052
    const-string v5, "4f60972b527015454c000010"

    .line 2053
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "dev"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "feature"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "release"

    const-string v4, "isolate"

    .line 2054
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2055
    :cond_1
    iput-boolean v0, p0, Lcom/xueqiu/android/base/f;->a:Z

    .line 2059
    :goto_0
    iget-boolean v3, p0, Lcom/xueqiu/android/base/f;->a:Z

    sput-boolean v3, Lcom/xueqiu/android/base/util/v;->a:Z

    .line 2060
    const-string v3, "SnowBall"

    invoke-static {v3}, Lcom/android/volley/z;->a(Ljava/lang/String;)V

    .line 2061
    sget-boolean v3, Lcom/xueqiu/android/base/util/v;->a:Z

    sput-boolean v3, Lcom/android/volley/z;->b:Z

    .line 2065
    :try_start_0
    const-string v3, "developer_mode"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/xueqiu/android/base/storage/prefs/DefaultPrefs;->getBoolean(Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "release"

    const-string v3, "release"

    .line 2066
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "release"

    const-string v3, "rc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/xueqiu/android/base/f;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :goto_2
    return-void

    .line 2057
    :cond_3
    iput-boolean v1, p0, Lcom/xueqiu/android/base/f;->a:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2066
    goto :goto_1

    .line 2068
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/xueqiu/android/base/f;->b:Z

    goto :goto_2
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/xueqiu/android/base/f;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "info.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 82
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v3, Lcom/xueqiu/android/common/model/ClientInfo;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/ClientInfo;

    iput-object v0, p0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    .line 83
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v1, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 91
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    :cond_1
    :goto_1
    throw v0

    .line 91
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/xueqiu/android/common/model/ClientInfo;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/base/f;->b(Landroid/content/Context;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/f;->c:Lcom/xueqiu/android/common/model/ClientInfo;

    return-object v0
.end method
