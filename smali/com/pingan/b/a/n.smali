.class public final Lcom/pingan/b/a/n;
.super Ljava/lang/Object;
.source "StatReport.java"

# interfaces
.implements Lcom/pingan/b/a/g;


# instance fields
.field private a:Lcom/pingan/b/a/m;

.field private b:Lcom/pingan/b/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;

    .line 11
    iput-object v0, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/pingan/b/a/m;)V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([Lorg/apache/http/Header;)[Lorg/apache/http/Header;
    .locals 12

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 48
    :goto_0
    monitor-exit p0

    return-object p1

    .line 24
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    if-eqz v2, :cond_5

    move v3, v0

    .line 29
    :goto_1
    array-length v0, p1

    add-int/2addr v0, v3

    new-array v0, v0, [Lorg/apache/http/Header;

    .line 30
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v4, p1

    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v1, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;

    if-eqz v1, :cond_1

    .line 33
    iget-object v4, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;

    .line 34
    iget-object v1, v4, Lcom/pingan/b/a/m;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/pingan/b/a/m;->b:Ljava/lang/String;

    move-object v2, v1

    .line 35
    :goto_2
    iget-object v1, v4, Lcom/pingan/b/a/m;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/pingan/b/a/m;->d:Ljava/lang/String;

    .line 36
    :goto_3
    array-length v5, p1

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "X-Estat"

    const-string v8, "e1;%d;%s;%s;%s;%f"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/pingan/b/a/m;->a:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v2, 0x2

    aput-object v1, v9, v2

    const/4 v1, 0x3

    iget-object v2, v4, Lcom/pingan/b/a/m;->h:Ljava/lang/String;

    aput-object v2, v9, v1

    const/4 v1, 0x4

    iget-wide v10, v4, Lcom/pingan/b/a/m;->f:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v0, v5

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pingan/b/a/n;->a:Lcom/pingan/b/a/m;

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    if-eqz v1, :cond_2

    .line 43
    array-length v1, p1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "X-Stat"

    const-string v4, "v1;%s;%f;%s;%s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    iget-object v7, v7, Lcom/pingan/b/a/m;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    iget-wide v8, v7, Lcom/pingan/b/a/m;->f:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    iget-object v7, v7, Lcom/pingan/b/a/m;->d:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;

    iget-object v7, v7, Lcom/pingan/b/a/m;->h:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    :cond_2
    move-object p1, v0

    .line 48
    goto/16 :goto_0

    .line 34
    :cond_3
    const-string v1, ""

    move-object v2, v1

    goto :goto_2

    .line 35
    :cond_4
    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v3, v1

    goto/16 :goto_1
.end method

.method public final declared-synchronized b(Lcom/pingan/b/a/m;)V
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/pingan/b/a/n;->b:Lcom/pingan/b/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
