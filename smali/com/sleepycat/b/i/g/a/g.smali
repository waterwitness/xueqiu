.class final Lcom/sleepycat/b/i/g/a/g;
.super Ljava/lang/Object;
.source "LDiffService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/nio/channels/SocketChannel;

.field final synthetic b:Lcom/sleepycat/b/i/g/a/f;

.field private c:Lcom/sleepycat/b/i/t;

.field private d:Lcom/sleepycat/b/l;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/g/a/f;Ljava/nio/channels/SocketChannel;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/g;->b:Lcom/sleepycat/b/i/g/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/sleepycat/b/l;

    invoke-direct {v0}, Lcom/sleepycat/b/l;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->d:Lcom/sleepycat/b/l;

    .line 87
    iput-object p2, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    .line 88
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->d:Lcom/sleepycat/b/l;

    .line 3375
    const/4 v1, 0x1

    .line 3384
    iput-boolean v1, v0, Lcom/sleepycat/b/l;->e:Z

    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->d:Lcom/sleepycat/b/l;

    .line 4142
    const/4 v1, 0x0

    .line 4151
    iput-boolean v1, v0, Lcom/sleepycat/b/l;->b:Z

    .line 90
    return-void
.end method

.method private a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/i/g/a/u;Lcom/sleepycat/b/i/g/a/i;)V
    .locals 20

    .prologue
    .line 163
    .line 4350
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/i/g/a/u;->a:[B

    .line 4354
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sleepycat/b/i/g/a/u;->b:[B

    .line 4358
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/sleepycat/b/i/g/a/u;->c:J

    .line 5210
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 5211
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/e;->a()Lcom/sleepycat/b/i;

    move-result-object v4

    .line 5998
    iget-object v4, v4, Lcom/sleepycat/b/i;->b:Lcom/sleepycat/b/x;

    .line 6206
    iget-object v4, v4, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 6371
    iget-object v10, v4, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 5214
    new-instance v11, Lcom/sleepycat/b/m;

    invoke-direct {v11, v2}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 5215
    new-instance v12, Lcom/sleepycat/b/m;

    invoke-direct {v12, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 5216
    const-wide/16 v2, -0x1

    cmp-long v2, v8, v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v6, v2

    .line 5217
    :goto_0
    const-wide/16 v2, 0x1

    .line 5219
    sget-object v4, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v4}, Lcom/sleepycat/b/e;->g(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v4

    move-wide/from16 v18, v2

    move-object v2, v4

    move-wide/from16 v4, v18

    .line 5221
    :goto_1
    sget-object v3, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v2, v3, :cond_3

    .line 5224
    if-nez v6, :cond_0

    cmp-long v2, v4, v8

    if-gtz v2, :cond_3

    .line 5227
    :cond_0
    new-instance v3, Lcom/sleepycat/b/i/g/a/w;

    .line 7197
    iget-object v13, v11, Lcom/sleepycat/b/m;->a:[B

    .line 8197
    iget-object v14, v12, Lcom/sleepycat/b/m;->a:[B

    .line 9391
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 10382
    iget-object v15, v2, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 11374
    iget v2, v2, Lcom/sleepycat/b/c/c;->b:I

    .line 8320
    invoke-virtual {v15, v2}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v16

    .line 11903
    const/4 v2, 0x1

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1, v2}, Lcom/sleepycat/b/g/am;->a(JZ)Lcom/sleepycat/b/g/ay;

    move-result-object v2

    .line 12026
    iget-object v2, v2, Lcom/sleepycat/b/g/ay;->a:Lcom/sleepycat/b/g/ae;

    .line 12295
    iget-object v2, v2, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 8325
    if-nez v2, :cond_1

    .line 8326
    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 5227
    :cond_1
    invoke-direct {v3, v13, v14, v2}, Lcom/sleepycat/b/i/g/a/w;-><init>([B[BLcom/sleepycat/b/p/au;)V

    invoke-virtual {v7, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5229
    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    .line 5222
    sget-object v4, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v4}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-wide/from16 v18, v2

    move-object v2, v4

    move-wide/from16 v4, v18

    goto :goto_1

    .line 5216
    :cond_2
    const/4 v2, 0x0

    move v6, v2

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    new-instance v3, Lcom/sleepycat/b/i/g/a/t;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/b/i/g/a/t;-><init>(Lcom/sleepycat/b/i/g/a/i;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    .line 166
    new-instance v3, Lcom/sleepycat/b/i/g/a/e;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/sleepycat/b/i/g/a/e;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_3
    new-instance v2, Lcom/sleepycat/b/i/g/a/p;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/sleepycat/b/i/g/a/p;-><init>(Lcom/sleepycat/b/i/g/a/i;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    .line 171
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/i/g/a/w;

    .line 172
    new-instance v4, Lcom/sleepycat/b/i/g/a/v;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v2}, Lcom/sleepycat/b/i/g/a/v;-><init>(Lcom/sleepycat/b/i/g/a/i;Lcom/sleepycat/b/i/g/a/w;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_2

    .line 174
    :cond_4
    new-instance v2, Lcom/sleepycat/b/i/g/a/o;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/sleepycat/b/i/g/a/o;-><init>(Lcom/sleepycat/b/i/g/a/i;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    .line 175
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->b:Lcom/sleepycat/b/i/g/a/f;

    .line 13040
    iget-object v0, v0, Lcom/sleepycat/b/i/g/a/f;->b:Lcom/sleepycat/b/i/c/aj;

    .line 13361
    new-instance v2, Lcom/sleepycat/b/i/t;

    .line 13629
    iget-object v3, v0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    .line 13361
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->Y()Lcom/sleepycat/b/i/w;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->z()Lcom/sleepycat/b/z;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/b/i/t;-><init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;)V

    .line 188
    iput-object v2, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    .line 189
    new-instance v3, Lcom/sleepycat/b/i/g/a/i;

    new-instance v0, Lcom/sleepycat/b/i/c/b/x;

    const-string v2, "Ldiff"

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/g;->b:Lcom/sleepycat/b/i/g/a/f;

    .line 14040
    iget-object v2, v2, Lcom/sleepycat/b/i/g/a/f;->b:Lcom/sleepycat/b/i/c/aj;

    .line 189
    invoke-direct {v3, v0, v2}, Lcom/sleepycat/b/i/g/a/i;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 192
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v2

    sget-object v4, Lcom/sleepycat/b/i/g/a/i;->a:Lcom/sleepycat/b/i/h/e;

    if-ne v2, v4, :cond_e

    .line 194
    check-cast v0, Lcom/sleepycat/b/i/g/a/m;
    :try_end_1
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14098
    :try_start_2
    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    const/4 v4, 0x0

    .line 14158
    iget-object v5, v0, Lcom/sleepycat/b/i/g/a/m;->a:Ljava/lang/String;

    .line 14098
    iget-object v6, p0, Lcom/sleepycat/b/i/g/a/g;->d:Lcom/sleepycat/b/l;

    invoke-virtual {v2, v4, v5, v6}, Lcom/sleepycat/b/i/t;->a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;
    :try_end_2
    .catch Lcom/sleepycat/b/p; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v2

    .line 14100
    :try_start_3
    new-instance v4, Lcom/sleepycat/b/i/g/a/l;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v3}, Lcom/sleepycat/b/i/g/a/l;-><init>(Lcom/sleepycat/b/i/g/a/i;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    .line 14101
    new-instance v4, Lcom/sleepycat/b/i/g/a/d;

    invoke-direct {v4}, Lcom/sleepycat/b/i/g/a/d;-><init>()V

    .line 14162
    iget v0, v0, Lcom/sleepycat/b/i/g/a/m;->b:I

    .line 15113
    iput v0, v4, Lcom/sleepycat/b/i/g/a/d;->a:I

    .line 14103
    new-instance v0, Lcom/sleepycat/b/i/g/a/b;

    invoke-direct {v0, v4}, Lcom/sleepycat/b/i/g/a/b;-><init>(Lcom/sleepycat/b/i/g/a/d;)V

    .line 15674
    new-instance v4, Lcom/sleepycat/b/i/g/a/c;

    invoke-direct {v4, v0, v2}, Lcom/sleepycat/b/i/g/a/c;-><init>(Lcom/sleepycat/b/i/g/a/b;Lcom/sleepycat/b/i;)V

    .line 14106
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14107
    new-instance v5, Lcom/sleepycat/b/i/g/a/j;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/g/a/a;

    invoke-direct {v5, v3, v0}, Lcom/sleepycat/b/i/g/a/j;-><init>(Lcom/sleepycat/b/i/g/a/i;Lcom/sleepycat/b/i/g/a/a;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v5, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_3
    .catch Lcom/sleepycat/b/p; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 14122
    :catch_0
    move-exception v0

    .line 14123
    :goto_1
    :try_start_4
    new-instance v4, Lcom/sleepycat/b/i/g/a/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/sleepycat/b/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/sleepycat/b/i/g/a/n;-><init>(Lcom/sleepycat/b/i/g/a/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14126
    if-eqz v1, :cond_0

    .line 14127
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 14129
    :cond_0
    if-eqz v2, :cond_1

    .line 14130
    invoke-virtual {v2}, Lcom/sleepycat/b/i;->close()V
    :try_end_5
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 204
    :cond_1
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 215
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/t;->close()V

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->b:Lcom/sleepycat/b/i/g/a/f;

    .line 17040
    iget-object v0, v0, Lcom/sleepycat/b/i/g/a/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 219
    const-string v0, "Service is not busy"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 14110
    :cond_4
    :try_start_7
    new-instance v0, Lcom/sleepycat/b/i/g/a/k;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/sleepycat/b/i/g/a/k;-><init>(Lcom/sleepycat/b/i/g/a/i;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v0, v4}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    .line 14113
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 14114
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/b/i/g/a/i;->h:Lcom/sleepycat/b/i/h/e;

    if-ne v4, v5, :cond_d

    .line 14115
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 14116
    check-cast v0, Lcom/sleepycat/b/i/g/a/u;

    invoke-direct {p0, v1, v0, v3}, Lcom/sleepycat/b/i/g/a/g;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/i/g/a/u;Lcom/sleepycat/b/i/g/a/i;)V

    .line 16141
    :goto_4
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 16142
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/b/i/g/a/i;->h:Lcom/sleepycat/b/i/h/e;

    if-ne v4, v5, :cond_8

    .line 16143
    check-cast v0, Lcom/sleepycat/b/i/g/a/u;

    invoke-direct {p0, v1, v0, v3}, Lcom/sleepycat/b/i/g/a/g;->a(Lcom/sleepycat/b/e;Lcom/sleepycat/b/i/g/a/u;Lcom/sleepycat/b/i/g/a/i;)V
    :try_end_7
    .catch Lcom/sleepycat/b/p; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 14126
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_5

    .line 14127
    :try_start_8
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 14129
    :cond_5
    if-eqz v2, :cond_6

    .line 14130
    invoke-virtual {v2}, Lcom/sleepycat/b/i;->close()V

    .line 14126
    :cond_6
    throw v0
    :try_end_8
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 198
    :catch_1
    move-exception v0

    .line 200
    :try_start_9
    new-instance v1, Lcom/sleepycat/b/i/h/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/sleepycat/b/i/h/f;-><init>(Lcom/sleepycat/b/i/h/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v1, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 204
    :try_start_a
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 215
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    if-eqz v0, :cond_7

    .line 216
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/t;->close()V

    .line 218
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->b:Lcom/sleepycat/b/i/g/a/f;

    .line 17040
    iget-object v0, v0, Lcom/sleepycat/b/i/g/a/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_10

    .line 219
    const-string v0, "Service is not busy"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 16145
    :cond_8
    :try_start_b
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/b/i/g/a/i;->l:Lcom/sleepycat/b/i/h/e;

    if-eq v4, v5, :cond_9

    .line 16146
    new-instance v4, Lcom/sleepycat/b/i/h/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/sleepycat/b/i/h/f;-><init>(Lcom/sleepycat/b/i/h/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_b
    .catch Lcom/sleepycat/b/p; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 14126
    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 14127
    :try_start_c
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 14129
    :cond_a
    if-eqz v2, :cond_1

    .line 14130
    invoke-virtual {v2}, Lcom/sleepycat/b/i;->close()V
    :try_end_c
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    .line 204
    :catchall_1
    move-exception v0

    :try_start_d
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 205
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 204
    :cond_b
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 215
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    if-eqz v1, :cond_c

    .line 216
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/t;->close()V

    .line 218
    :cond_c
    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->b:Lcom/sleepycat/b/i/g/a/f;

    .line 17040
    iget-object v1, v1, Lcom/sleepycat/b/i/g/a/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_f

    .line 219
    const-string v0, "Service is not busy"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 14118
    :cond_d
    :try_start_e
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/b/i/g/a/i;->l:Lcom/sleepycat/b/i/h/e;

    if-eq v4, v5, :cond_9

    .line 14119
    new-instance v4, Lcom/sleepycat/b/i/h/f;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/sleepycat/b/i/h/f;-><init>(Lcom/sleepycat/b/i/h/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v4, v0}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_e
    .catch Lcom/sleepycat/b/p; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 195
    :cond_e
    :try_start_f
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/d;->a()Lcom/sleepycat/b/i/h/e;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/b/i/g/a/i;->f:Lcom/sleepycat/b/i/h/e;

    if-ne v0, v1, :cond_1

    .line 16180
    new-instance v0, Lcom/sleepycat/b/i/g/a/s;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->c:Lcom/sleepycat/b/i/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/t;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/sleepycat/b/i/g/a/s;-><init>(Lcom/sleepycat/b/i/g/a/i;I)V

    iget-object v1, p0, Lcom/sleepycat/b/i/g/a/g;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/i/g/a/i;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_f
    .catch Lcom/sleepycat/b/i/h/g; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_2

    .line 215
    :cond_f
    throw v0

    .line 222
    :cond_10
    return-void

    .line 14126
    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    .line 14122
    :catch_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1
.end method
