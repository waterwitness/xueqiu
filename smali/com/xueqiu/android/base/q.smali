.class public final Lcom/xueqiu/android/base/q;
.super Ljava/lang/Object;
.source "SNBClientManager.java"


# static fields
.field private static c:Lcom/xueqiu/android/base/q;

.field private static volatile e:Z


# instance fields
.field public a:Lcom/xueqiu/android/base/b/ae;

.field public b:Lcom/xueqiu/android/base/util/y;

.field private d:Lcom/xueqiu/android/base/b/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xueqiu/android/base/q;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    .line 35
    iput-object v0, p0, Lcom/xueqiu/android/base/q;->b:Lcom/xueqiu/android/base/util/y;

    .line 42
    return-void
.end method

.method public static a()Lcom/xueqiu/android/base/q;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xueqiu/android/base/q;->e:Z

    if-nez v0, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/xueqiu/android/base/q;

    invoke-direct {v0}, Lcom/xueqiu/android/base/q;-><init>()V

    .line 69
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    goto :goto_0
.end method

.method protected static final a(Landroid/content/Context;Lcom/xueqiu/android/base/f;)Lcom/xueqiu/android/base/q;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xueqiu/android/base/q;->e:Z

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance v0, Lcom/xueqiu/android/base/q;

    invoke-direct {v0}, Lcom/xueqiu/android/base/q;-><init>()V

    .line 53
    sput-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    .line 1147
    sget-boolean v1, Lcom/xueqiu/android/base/q;->e:Z

    if-nez v1, :cond_1

    .line 1150
    invoke-virtual {v0, p0, p1}, Lcom/xueqiu/android/base/q;->b(Landroid/content/Context;Lcom/xueqiu/android/base/f;)V

    .line 1151
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xueqiu/android/base/q;->e:Z

    .line 55
    :cond_1
    sget-object v0, Lcom/xueqiu/android/base/q;->c:Lcom/xueqiu/android/base/q;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/xueqiu/android/base/b/ai;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->d:Lcom/xueqiu/android/base/b/ai;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v0

    .line 2041
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v1

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/base/q;->b(Landroid/content/Context;Lcom/xueqiu/android/base/f;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->d:Lcom/xueqiu/android/base/b/ai;

    return-object v0
.end method

.method public final b(Landroid/content/Context;Lcom/xueqiu/android/base/f;)V
    .locals 8

    .prologue
    .line 80
    invoke-static {p1}, Lcom/xueqiu/android/base/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "volley"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2128
    iget-boolean v0, p2, Lcom/xueqiu/android/base/f;->a:Z

    .line 82
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/base/q;->b:Lcom/xueqiu/android/base/util/y;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/xueqiu/android/base/util/y;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "default_net_count.log"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/xueqiu/android/base/util/y;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/q;->b:Lcom/xueqiu/android/base/util/y;

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 90
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/b/af;->a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz v1, :cond_1

    .line 95
    new-instance v0, Ljava/net/Proxy;

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    const/16 v7, 0x50

    invoke-direct {v6, v1, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v5, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 97
    :cond_1
    new-instance v1, Lcom/xueqiu/android/base/b/j;

    invoke-direct {v1, v0, v4}, Lcom/xueqiu/android/base/b/j;-><init>(Ljava/net/Proxy;Ljavax/net/ssl/SSLSocketFactory;)V

    .line 99
    new-instance v4, Lcom/android/volley/toolbox/a;

    invoke-direct {v4, v1}, Lcom/android/volley/toolbox/a;-><init>(Lcom/android/volley/toolbox/g;)V

    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->b:Lcom/xueqiu/android/base/util/y;

    if-eqz v0, :cond_3

    .line 102
    new-instance v0, Lcom/xueqiu/android/base/b/ae;

    new-instance v1, Lcom/android/volley/toolbox/c;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/android/volley/toolbox/c;-><init>(Ljava/io/File;B)V

    iget-object v2, p0, Lcom/xueqiu/android/base/q;->b:Lcom/xueqiu/android/base/util/y;

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/xueqiu/android/base/b/ae;-><init>(Ljava/lang/String;Lcom/android/volley/b;Lcom/android/volley/h;Lcom/xueqiu/android/base/util/y;)V

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v1}, Lcom/xueqiu/android/base/b/ae;->b()V

    .line 109
    :cond_2
    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ae;->a()V

    .line 110
    iput-object v0, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    .line 112
    new-instance v0, Lcom/xueqiu/android/base/b/ai;

    iget-object v1, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    invoke-direct {v0, v1}, Lcom/xueqiu/android/base/b/ai;-><init>(Lcom/xueqiu/android/base/b/ae;)V

    iput-object v0, p0, Lcom/xueqiu/android/base/q;->d:Lcom/xueqiu/android/base/b/ai;

    .line 118
    :goto_1
    return-void

    .line 104
    :cond_3
    new-instance v0, Lcom/xueqiu/android/base/b/ae;

    new-instance v1, Lcom/android/volley/toolbox/c;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/android/volley/toolbox/c;-><init>(Ljava/io/File;B)V

    invoke-direct {v0, v3, v1, v4}, Lcom/xueqiu/android/base/b/ae;-><init>(Ljava/lang/String;Lcom/android/volley/b;Lcom/android/volley/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 116
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    .line 2178
    invoke-static {}, Lcom/xueqiu/android/base/b;->g()V

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/xueqiu/android/base/q;->e:Z

    if-nez v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ae;->b()V

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/xueqiu/android/base/q;->e:Z

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xueqiu/android/base/q;->a:Lcom/xueqiu/android/base/b/ae;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ae;->a()V

    goto :goto_0
.end method
