.class public final Lcom/xiaomi/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/e/a/a;


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lcom/xiaomi/e/a;

.field private d:Lcom/xiaomi/e/g;

.field private e:Lcom/xiaomi/e/e;

.field private f:Ljava/io/Writer;

.field private g:Ljava/io/Reader;

.field private h:Lcom/xiaomi/e/e/f;

.field private i:Lcom/xiaomi/e/e/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/c/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/e/a;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/c/a/a;->b:Ljava/text/SimpleDateFormat;

    iput-object v2, p0, Lcom/xiaomi/c/a/a;->c:Lcom/xiaomi/e/a;

    iput-object v2, p0, Lcom/xiaomi/c/a/a;->d:Lcom/xiaomi/e/g;

    iput-object v2, p0, Lcom/xiaomi/c/a/a;->e:Lcom/xiaomi/e/e;

    iput-object p1, p0, Lcom/xiaomi/c/a/a;->c:Lcom/xiaomi/e/a;

    iput-object p2, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    iput-object p3, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    .line 1000
    new-instance v0, Lcom/xiaomi/e/e/a;

    iget-object v1, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    invoke-direct {v0, v1}, Lcom/xiaomi/e/e/a;-><init>(Ljava/io/Reader;)V

    new-instance v1, Lcom/xiaomi/c/a/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/c/a/b;-><init>(Lcom/xiaomi/c/a/a;)V

    iput-object v1, p0, Lcom/xiaomi/c/a/a;->h:Lcom/xiaomi/e/e/f;

    iget-object v1, p0, Lcom/xiaomi/c/a/a;->h:Lcom/xiaomi/e/e/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/e/a;->a(Lcom/xiaomi/e/e/f;)V

    new-instance v1, Lcom/xiaomi/e/e/b;

    iget-object v2, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lcom/xiaomi/e/e/b;-><init>(Ljava/io/Writer;)V

    new-instance v2, Lcom/xiaomi/c/a/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/c/a/c;-><init>(Lcom/xiaomi/c/a/a;)V

    iput-object v2, p0, Lcom/xiaomi/c/a/a;->i:Lcom/xiaomi/e/e/n;

    iget-object v2, p0, Lcom/xiaomi/c/a/a;->i:Lcom/xiaomi/e/e/n;

    invoke-virtual {v1, v2}, Lcom/xiaomi/e/e/b;->a(Lcom/xiaomi/e/e/n;)V

    iput-object v0, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    iput-object v1, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    new-instance v0, Lcom/xiaomi/c/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/c/a/d;-><init>(Lcom/xiaomi/c/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/c/a/a;->d:Lcom/xiaomi/e/g;

    new-instance v0, Lcom/xiaomi/c/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/c/a/e;-><init>(Lcom/xiaomi/c/a/a;)V

    iput-object v0, p0, Lcom/xiaomi/c/a/a;->e:Lcom/xiaomi/e/e;

    .line 0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/c/a/a;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/c/a/a;)Lcom/xiaomi/e/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->c:Lcom/xiaomi/e/a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/Reader;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    return-object v0
.end method

.method public final a(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    check-cast v0, Lcom/xiaomi/e/e/a;

    iget-object v1, p0, Lcom/xiaomi/c/a/a;->h:Lcom/xiaomi/e/e/f;

    .line 2000
    iget-object v2, v0, Lcom/xiaomi/e/e/a;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/xiaomi/e/e/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    new-instance v0, Lcom/xiaomi/e/e/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/e/e/a;-><init>(Ljava/io/Reader;)V

    iget-object v1, p0, Lcom/xiaomi/c/a/a;->h:Lcom/xiaomi/e/e/f;

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/e/a;->a(Lcom/xiaomi/e/e/f;)V

    iput-object v0, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->g:Ljava/io/Reader;

    return-object v0

    .line 2000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    check-cast v0, Lcom/xiaomi/e/e/b;

    iget-object v1, p0, Lcom/xiaomi/c/a/a;->i:Lcom/xiaomi/e/e/n;

    .line 3000
    iget-object v2, v0, Lcom/xiaomi/e/e/b;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/xiaomi/e/e/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    new-instance v0, Lcom/xiaomi/e/e/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/e/e/b;-><init>(Ljava/io/Writer;)V

    iget-object v1, p0, Lcom/xiaomi/c/a/a;->i:Lcom/xiaomi/e/e/n;

    invoke-virtual {v0, v1}, Lcom/xiaomi/e/e/b;->a(Lcom/xiaomi/e/e/n;)V

    iput-object v0, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    return-object v0

    .line 3000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->f:Ljava/io/Writer;

    return-object v0
.end method

.method public final c()Lcom/xiaomi/e/g;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/c/a/a;->d:Lcom/xiaomi/e/g;

    return-object v0
.end method
