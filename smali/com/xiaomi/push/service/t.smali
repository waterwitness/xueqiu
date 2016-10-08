.class public final Lcom/xiaomi/push/service/t;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/xiaomi/push/service/t;


# instance fields
.field a:Lcom/xiaomi/push/b/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/push/service/u;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaomi/a/a/c/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 0
    new-instance v2, Lcom/xiaomi/push/service/t;

    invoke-direct {v2}, Lcom/xiaomi/push/service/t;-><init>()V

    sput-object v2, Lcom/xiaomi/push/service/t;->d:Lcom/xiaomi/push/service/t;

    .line 10000
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v2, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    .line 11000
    sget-object v0, Lcom/xiaomi/e/e/h;->a:Landroid/content/Context;

    .line 10000
    const-string v3, "XMCloudCfg"

    invoke-virtual {v0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12000
    :try_start_1
    new-instance v1, Lcom/google/a/a/a;

    invoke-direct {v1, v0}, Lcom/google/a/a/a;-><init>(Ljava/io/InputStream;)V

    .line 10000
    invoke-static {v1}, Lcom/xiaomi/push/b/b;->b(Lcom/google/a/a/a;)Lcom/xiaomi/push/b/b;

    move-result-object v1

    iput-object v1, v2, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/a/a/a/a;->a(Ljava/io/InputStream;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save config failure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/t;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/t;Lcom/xiaomi/push/b/b;)Lcom/xiaomi/push/b/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/push/service/t;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/t;->d:Lcom/xiaomi/push/service/t;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/t;)V
    .locals 3

    .prologue
    .line 5000
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_1

    .line 6000
    sget-object v0, Lcom/xiaomi/e/e/h;->a:Landroid/content/Context;

    .line 5000
    const-string v1, "XMCloudCfg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8000
    new-instance v0, Lcom/google/a/a/b;

    const/16 v2, 0x1000

    new-array v2, v2, [B

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/b;-><init>(Ljava/io/OutputStream;[B)V

    .line 5000
    iget-object v2, p0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/b/b;->a(Lcom/google/a/a/b;)V

    .line 9000
    iget-object v2, v0, Lcom/google/a/a/b;->d:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/a/a/b;->a()V

    .line 5000
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save config failure: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/push/service/t;)Lcom/xiaomi/a/a/c/d;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/t;->c:Lcom/xiaomi/a/a/c/d;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/push/service/t;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/t;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/push/service/t;)Lcom/xiaomi/push/b/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/xiaomi/push/b/d;)V
    .locals 4

    .prologue
    .line 0
    .line 2000
    iget-boolean v0, p1, Lcom/xiaomi/push/b/d;->c:Z

    .line 0
    if-eqz v0, :cond_0

    .line 3000
    iget v0, p1, Lcom/xiaomi/push/b/d;->d:I

    .line 0
    invoke-virtual {p0}, Lcom/xiaomi/push/service/t;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4000
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->c:Lcom/xiaomi/a/a/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/v;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/v;-><init>(Lcom/xiaomi/push/service/t;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/t;->c:Lcom/xiaomi/a/a/c/d;

    iget-object v0, p0, Lcom/xiaomi/push/service/t;->c:Lcom/xiaomi/a/a/c/d;

    invoke-static {v0}, Lcom/xiaomi/e/e/i;->a(Lcom/xiaomi/a/a/c/d;)V

    .line 0
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/push/service/t;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/xiaomi/push/service/u;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/u;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Lcom/xiaomi/push/service/u;->a(Lcom/xiaomi/push/b/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/xiaomi/push/service/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/t;->a:Lcom/xiaomi/push/b/b;

    .line 1000
    iget v0, v0, Lcom/xiaomi/push/b/b;->a:I

    .line 0
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
