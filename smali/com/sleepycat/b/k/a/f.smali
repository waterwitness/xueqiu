.class public Lcom/sleepycat/b/k/a/f;
.super Ljava/lang/Object;
.source "SyncDB.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/sleepycat/b/c/ad;

.field private final c:Lcom/sleepycat/b/i;

.field private final d:Lcom/sleepycat/b/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/sleepycat/b/k/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/k/a/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-boolean v0, Lcom/sleepycat/b/k/a/f;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/k/a/f;->b:Lcom/sleepycat/b/c/ad;

    .line 108
    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->A()Lcom/sleepycat/b/x;

    move-result-object v0

    .line 109
    sget-boolean v1, Lcom/sleepycat/b/k/a/f;->a:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3334
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/x;->a(Z)Lcom/sleepycat/b/bp;

    move-result-object v1

    .line 118
    :try_start_0
    new-instance v2, Lcom/sleepycat/b/l;

    invoke-direct {v2}, Lcom/sleepycat/b/l;-><init>()V

    .line 4142
    const/4 v3, 0x0

    .line 4151
    iput-boolean v3, v2, Lcom/sleepycat/b/l;->b:Z

    .line 4349
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sleepycat/b/l;->d:Z

    .line 123
    new-instance v3, Lcom/sleepycat/b/k/a/e;

    const-string v4, "syncTrigger"

    invoke-direct {v3, v4}, Lcom/sleepycat/b/k/a/e;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/l;->a(Ljava/util/List;)Lcom/sleepycat/b/l;

    .line 5268
    const/4 v3, 0x1

    .line 5277
    iput-boolean v3, v2, Lcom/sleepycat/b/l;->j:Z

    .line 130
    sget-object v3, Lcom/sleepycat/b/c/w;->f:Lcom/sleepycat/b/c/w;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v3

    .line 5352
    invoke-virtual {v0, v1, v3, v2}, Lcom/sleepycat/b/x;->b(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/sleepycat/b/k/a/f;->c:Lcom/sleepycat/b/i;

    .line 132
    iget-object v0, p0, Lcom/sleepycat/b/k/a/f;->c:Lcom/sleepycat/b/i;

    .line 7089
    iget-object v0, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 132
    iput-object v0, p0, Lcom/sleepycat/b/k/a/f;->d:Lcom/sleepycat/b/c/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {v1}, Lcom/sleepycat/b/bp;->b()V

    .line 140
    return-void

    .line 135
    :catchall_0
    move-exception v0

    .line 138
    invoke-virtual {v1}, Lcom/sleepycat/b/bp;->a()V

    .line 135
    throw v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/k/a/g;Lcom/sleepycat/b/x;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/k/a/g;",
            "Lcom/sleepycat/b/x;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/m;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    .line 426
    iget-object v1, p0, Lcom/sleepycat/b/k/a/f;->d:Lcom/sleepycat/b/c/i;

    if-nez v1, :cond_0

    .line 460
    :goto_0
    return-object v0

    .line 432
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 436
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/k/a/f;->d:Lcom/sleepycat/b/c/i;

    .line 7511
    iget-boolean v3, v3, Lcom/sleepycat/b/c/i;->d:Z

    .line 436
    const/4 v4, 0x0

    invoke-static {p2, v2, v3, v4}, Lcom/sleepycat/b/n/r;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 8327
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/k/a/f;->d:Lcom/sleepycat/b/c/i;

    sget-object v3, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v3

    .line 441
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 442
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 444
    :goto_1
    sget-object v5, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v0, v6}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 446
    invoke-static {v4}, Lcom/sleepycat/a/a/i;->a(Lcom/sleepycat/b/m;)Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-static {v5}, Lcom/sleepycat/b/k/a/g;->a(Ljava/lang/String;)Lcom/sleepycat/b/k/a/g;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/sleepycat/b/k/a/g;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 448
    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_1
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 455
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 456
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 455
    :cond_2
    throw v0

    .line 453
    :cond_3
    const/4 v0, 0x1

    .line 455
    if-eqz v2, :cond_4

    .line 456
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_4
    move-object v0, v1

    .line 460
    goto :goto_0

    .line 455
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2
.end method
