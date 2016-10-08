.class public final Lcom/xiaomi/e/p;
.super Lcom/xiaomi/e/a;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private volatile D:J

.field private E:I

.field public r:Ljava/lang/Exception;

.field protected s:Ljava/net/Socket;

.field t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field v:Lcom/xiaomi/e/j;

.field w:Lcom/xiaomi/e/h;

.field x:Lcom/xiaomi/push/service/XMPushService;

.field volatile y:J

.field public volatile z:J


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/e/a;-><init>(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/e/c;)V

    iput-object v0, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/xiaomi/e/p;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/e/p;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/e/p;->u:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/e/p;->y:J

    iput-wide v2, p0, Lcom/xiaomi/e/p;->z:J

    const-string v0, "<pf><p>t:%1$d</p></pf>"

    iput-object v0, p0, Lcom/xiaomi/e/p;->C:Ljava/lang/String;

    iput-wide v2, p0, Lcom/xiaomi/e/p;->D:J

    iput-object p1, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/e/p;)Lcom/xiaomi/push/service/XMPushService;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/xiaomi/d/b;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Z)Lcom/xiaomi/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/e/s;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/e/s;-><init>(Lcom/xiaomi/e/p;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/e/e/i;->a(Ljava/lang/Runnable;)V

    :cond_0
    iput v2, p0, Lcom/xiaomi/e/p;->d:I

    :try_start_0
    iget-object v1, v0, Lcom/xiaomi/d/b;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/xiaomi/e/p;->d:I

    iget v2, p0, Lcom/xiaomi/e/p;->d:I

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/e/p;->d:I

    iget v2, p0, Lcom/xiaomi/e/p;->d:I

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lcom/xiaomi/e/p;->d:I

    iget v2, p0, Lcom/xiaomi/e/p;->d:I

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/e/p;->d:I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized b(ILjava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 0
    monitor-enter p0

    .line 8000
    :try_start_0
    iget v0, p0, Lcom/xiaomi/e/a;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    if-ne v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/e/p;->a(IILjava/lang/Exception;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/e/p;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/e/p;->w:Lcom/xiaomi/e/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/e/p;->w:Lcom/xiaomi/e/h;

    .line 9000
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/e/h;->b:Z

    .line 0
    iget-object v0, p0, Lcom/xiaomi/e/p;->w:Lcom/xiaomi/e/h;

    invoke-virtual {v0}, Lcom/xiaomi/e/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/e/p;->w:Lcom/xiaomi/e/h;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    .line 10000
    iget-object v1, v0, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v0, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    const-string v3, "</stream:stream>"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 0
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    invoke-virtual {v0}, Lcom/xiaomi/e/j;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/xiaomi/e/p;->j:Ljava/io/Reader;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_3

    :try_start_7
    iget-object v0, p0, Lcom/xiaomi/e/p;->j:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Lcom/xiaomi/e/p;->j:Ljava/io/Reader;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/e/p;->k:Ljava/io/Writer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_4

    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/e/p;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/xiaomi/e/p;->k:Ljava/io/Writer;

    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/e/p;->y:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/e/p;->z:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 10000
    :catchall_1
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_d
    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private declared-synchronized o()V
    .locals 5

    .prologue
    .line 0
    monitor-enter p0

    .line 14000
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/xiaomi/e/p;->j:Ljava/io/Reader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/xiaomi/e/p;->k:Ljava/io/Writer;

    iget-object v0, p0, Lcom/xiaomi/e/p;->j:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/e/p;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/e/p;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    :cond_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/e/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/e/j;-><init>(Lcom/xiaomi/e/p;)V

    iput-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    new-instance v0, Lcom/xiaomi/e/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/e/h;-><init>(Lcom/xiaomi/e/p;)V

    iput-object v0, p0, Lcom/xiaomi/e/p;->w:Lcom/xiaomi/e/h;

    iget-object v0, p0, Lcom/xiaomi/e/p;->o:Lcom/xiaomi/e/c;

    .line 15000
    iget-boolean v0, v0, Lcom/xiaomi/e/c;->g:Z

    .line 0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/e/p;->i:Lcom/xiaomi/e/a/a;

    invoke-interface {v0}, Lcom/xiaomi/e/a/a;->c()Lcom/xiaomi/e/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/g;Lcom/xiaomi/e/b/a;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    .line 16000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<stream:stream"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " xmlns=\"xm\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " xmlns:stream=\"xm\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/e/j;->b:Lcom/xiaomi/e/p;

    invoke-virtual {v3}, Lcom/xiaomi/e/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version=\"105\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " model=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " os=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/e/e/h;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, " uid=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, " sdk=\"8\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connpt=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/e/j;->b:Lcom/xiaomi/e/p;

    invoke-virtual {v3}, Lcom/xiaomi/e/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " host=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/xiaomi/e/j;->b:Lcom/xiaomi/e/p;

    .line 17000
    iget-object v3, v3, Lcom/xiaomi/e/p;->B:Ljava/lang/String;

    .line 16000
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " locale=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/e/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaomi/e/j;->b:Lcom/xiaomi/e/p;

    invoke-virtual {v2}, Lcom/xiaomi/e/p;->a()Lcom/xiaomi/e/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/e/c;->a()[B

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, " ps=\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 0
    iget-object v0, p0, Lcom/xiaomi/e/p;->w:Lcom/xiaomi/e/h;

    .line 18000
    iget-object v0, v0, Lcom/xiaomi/e/h;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    monitor-exit p0

    return-void

    .line 14000
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/xiaomi/e/t;

    const-string v2, "Error to init reader and writer"

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/e/p;->b(ILjava/lang/Exception;)V

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/xiaomi/e/p;->D:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 11000
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/xiaomi/e/p;->D:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/a/a/d/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaomi/e/p;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/e/p;->E:I

    iget v0, p0, Lcom/xiaomi/e/p;->E:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 12000
    iget-object v1, p0, Lcom/xiaomi/e/p;->B:Ljava/lang/String;

    .line 11000
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "max short conn time reached, sink down current host:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    .line 13000
    invoke-static {}, Lcom/xiaomi/e/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lcom/xiaomi/d/f;->a(Ljava/lang/String;Z)Lcom/xiaomi/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    move-wide v4, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/d/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->h()V

    .line 11000
    :cond_0
    iput v7, p0, Lcom/xiaomi/e/p;->E:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v7, p0, Lcom/xiaomi/e/p;->E:I

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/e/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    invoke-virtual {v0, p1}, Lcom/xiaomi/e/j;->a(Lcom/xiaomi/e/c/e;)V

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "the writer is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized a(Lcom/xiaomi/push/service/bd;)V
    .locals 3

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/e/l;

    invoke-direct {v0}, Lcom/xiaomi/e/l;-><init>()V

    .line 4000
    iget-object v1, p0, Lcom/xiaomi/e/p;->l:Ljava/lang/String;

    .line 5000
    new-instance v2, Lcom/xiaomi/e/m;

    invoke-direct {v2, v0, p1, v1, p0}, Lcom/xiaomi/e/m;-><init>(Lcom/xiaomi/e/l;Lcom/xiaomi/push/service/bd;Ljava/lang/String;Lcom/xiaomi/e/a;)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/e/a;->a(Lcom/xiaomi/e/c/e;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMACK: bind id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/e/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/xiaomi/e/c/g;

    sget-object v1, Lcom/xiaomi/e/c/i;->b:Lcom/xiaomi/e/c/i;

    invoke-direct {v0, v1}, Lcom/xiaomi/e/c/g;-><init>(Lcom/xiaomi/e/c/i;)V

    .line 6000
    iput-object p1, v0, Lcom/xiaomi/e/c/e;->t:Ljava/lang/String;

    .line 7000
    iput-object p2, v0, Lcom/xiaomi/e/c/e;->s:Ljava/lang/String;

    .line 0
    iget-object v1, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    invoke-virtual {v1, v0}, Lcom/xiaomi/e/j;->a(Lcom/xiaomi/e/c/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([Lcom/xiaomi/e/c/e;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/e/p;->a(Lcom/xiaomi/e/c/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/e/p;->B:Ljava/lang/String;

    return-object v0
.end method

.method public final m()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    .line 0
    iget-object v0, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/xiaomi/e/p;->v:Lcom/xiaomi/e/j;

    .line 1000
    iget-object v3, v2, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/xiaomi/e/j;->b:Lcom/xiaomi/e/p;

    .line 2000
    iget-wide v0, v6, Lcom/xiaomi/e/p;->z:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iget-wide v0, v6, Lcom/xiaomi/e/p;->y:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/xiaomi/f/j;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<q>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "</q>"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v6, v6, Lcom/xiaomi/e/p;->u:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v0, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/xiaomi/e/j;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-object v0, v2, Lcom/xiaomi/e/j;->b:Lcom/xiaomi/e/p;

    .line 3000
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/xiaomi/e/p;->y:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    new-instance v3, Lcom/xiaomi/e/q;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaomi/e/q;-><init>(Lcom/xiaomi/e/p;J)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/f;J)V

    return-void

    .line 2000
    :cond_1
    :try_start_2
    const-string v0, "<pf><p>t:%1$d</p></pf>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v6, Lcom/xiaomi/e/p;->z:J

    iget-wide v10, v6, Lcom/xiaomi/e/p;->y:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1000
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/xiaomi/e/t;

    invoke-direct {v1, v0}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 0
    :cond_3
    new-instance v0, Lcom/xiaomi/e/t;

    const-string v1, "the packetwriter is null."

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized n()V
    .locals 14

    .prologue
    .line 0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/e/p;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/e/p;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "WARNING: current xmpp has connected"

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/e/p;->a(IILjava/lang/Exception;)V

    iget-object v0, p0, Lcom/xiaomi/e/p;->o:Lcom/xiaomi/e/c;

    .line 20000
    iget-object v2, v0, Lcom/xiaomi/e/c;->e:Ljava/lang/String;

    .line 21000
    iget v8, v0, Lcom/xiaomi/e/c;->f:I

    .line 22000
    const/4 v7, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "get bucket for host : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2}, Lcom/xiaomi/e/p;->b(Ljava/lang/String;)Lcom/xiaomi/d/b;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Integer;)V

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/d/b;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/e/p;->D:J

    iget-object v2, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget v2, p0, Lcom/xiaomi/e/p;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xiaomi/e/p;->b:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "begin to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V

    .line 23000
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 22000
    iput-object v2, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    iget-object v2, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    invoke-static {v1, v8}, Lcom/xiaomi/d/d;->b(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    const/16 v4, 0x1388

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    iget-object v2, p0, Lcom/xiaomi/e/p;->s:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iput-object v1, p0, Lcom/xiaomi/e/p;->B:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/e/p;->o()V

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    iput-wide v2, p0, Lcom/xiaomi/e/p;->c:J

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/xiaomi/e/p;->c:J

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/d/b;->a(Ljava/lang/String;JJ)V

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/e/p;->D:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connected to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/xiaomi/e/p;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/e/t; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/xiaomi/d/f;->a()Lcom/xiaomi/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/d/f;->h()V

    if-nez v7, :cond_1

    new-instance v0, Lcom/xiaomi/e/t;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 0
    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/xiaomi/e/t;

    invoke-direct {v1, v0}, Lcom/xiaomi/e/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 22000
    :catch_1
    move-exception v6

    if-eqz v0, :cond_7

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/d/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_7
    iput-object v6, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: Could not connect to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const-string v2, "SMACK: Could not connect to "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v7, :cond_8

    :try_start_6
    iget-object v2, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/xiaomi/f/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :cond_8
    move v1, v7

    :goto_2
    move v7, v1

    goto/16 :goto_0

    :catch_2
    move-exception v6

    if-eqz v0, :cond_9

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/d/b;->b(Ljava/lang/String;JJLjava/lang/Exception;)V

    :cond_9
    iput-object v6, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SMACK: Could not connect to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/a/a/b/c;->d(Ljava/lang/String;)V

    const-string v2, "SMACK: Could not connect to "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/xiaomi/e/t;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v7, :cond_8

    :try_start_8
    iget-object v2, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/xiaomi/f/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v3, v2

    move v2, v7

    :try_start_9
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "abnormal exception"

    invoke-direct {v4, v5, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    invoke-static {v3}, Lcom/xiaomi/a/a/b/c;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-nez v2, :cond_b

    :try_start_a
    iget-object v3, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    invoke-static {v1, v3}, Lcom/xiaomi/f/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move v7, v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :goto_3
    if-nez v7, :cond_a

    iget-object v2, p0, Lcom/xiaomi/e/p;->r:Ljava/lang/Exception;

    invoke-static {v1, v2}, Lcom/xiaomi/f/j;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/xiaomi/e/p;->x:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/a/a/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_2
    move-exception v0

    move v7, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto/16 :goto_2
.end method
