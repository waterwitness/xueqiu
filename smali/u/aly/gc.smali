.class public final Lu/aly/gc;
.super Ljava/lang/Object;
.source "IdTracker.java"


# instance fields
.field a:Lu/aly/bh;

.field b:J

.field c:J

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lu/aly/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "umeng_it.cache"

    iput-object v0, p0, Lu/aly/gc;->e:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/gc;->a:Lu/aly/bh;

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/aly/gc;->d:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/aly/gc;->f:Ljava/io/File;

    .line 38
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lu/aly/gc;->c:J

    .line 39
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    .line 79
    new-instance v1, Lu/aly/bh;

    invoke-direct {v1}, Lu/aly/bh;-><init>()V

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4238
    iput-object v3, v1, Lu/aly/bh;->b:Ljava/util/List;

    .line 5199
    iput-object v2, v1, Lu/aly/bh;->a:Ljava/util/Map;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iput-object v1, p0, Lu/aly/gc;->a:Lu/aly/bh;

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 83
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 84
    invoke-virtual {v0}, Lu/aly/a;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    iget-object v5, v0, Lu/aly/a;->c:Lu/aly/bb;

    .line 86
    if-eqz v5, :cond_2

    .line 2027
    iget-object v5, v0, Lu/aly/a;->a:Ljava/lang/String;

    .line 2076
    iget-object v6, v0, Lu/aly/a;->c:Lu/aly/bb;

    .line 87
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    :cond_2
    iget-object v5, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 90
    if-eqz v5, :cond_0

    .line 3084
    iget-object v5, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 90
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4084
    iget-object v0, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 91
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lu/aly/a;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 108
    .line 109
    iget-object v0, p0, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    if-eqz v1, :cond_1

    .line 119
    iget-object v0, p0, Lu/aly/gc;->a:Lu/aly/bh;

    invoke-virtual {v0, v2}, Lu/aly/bh;->a(Z)V

    .line 120
    invoke-virtual {p0}, Lu/aly/gc;->c()V

    .line 122
    :cond_1
    return-void

    .line 109
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 110
    invoke-virtual {v0}, Lu/aly/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6084
    iget-object v4, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 112
    if-eqz v4, :cond_0

    .line 7084
    iget-object v4, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 112
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7088
    const/4 v1, 0x0

    iput-object v1, v0, Lu/aly/a;->b:Ljava/util/List;

    .line 114
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lu/aly/gc;->a:Lu/aly/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/gc;->a:Lu/aly/bh;

    .line 7176
    if-eqz v0, :cond_0

    .line 7179
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7180
    :try_start_1
    new-instance v1, Lu/aly/fh;

    invoke-direct {v1}, Lu/aly/fh;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/fh;->a(Lu/aly/fa;)[B

    move-result-object v0

    .line 7179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7183
    if-eqz v0, :cond_0

    .line 7184
    :try_start_2
    iget-object v1, p0, Lu/aly/gc;->f:Ljava/io/File;

    invoke-static {v1, v0}, Lu/aly/ex;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7186
    :cond_0
    :goto_0
    return-void

    .line 7179
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 7187
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method final d()Lu/aly/bh;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p0, Lu/aly/gc;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    :goto_0
    return-object v0

    .line 159
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lu/aly/gc;->f:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    invoke-static {v2}, Lu/aly/ex;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 162
    new-instance v1, Lu/aly/bh;

    invoke-direct {v1}, Lu/aly/bh;-><init>()V

    .line 163
    new-instance v4, Lu/aly/fe;

    invoke-direct {v4}, Lu/aly/fe;-><init>()V

    invoke-virtual {v4, v1, v3}, Lu/aly/fe;->a(Lu/aly/fa;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    invoke-static {v2}, Lu/aly/ex;->c(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 169
    invoke-static {v2}, Lu/aly/ex;->c(Ljava/io/InputStream;)V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 169
    :goto_2
    invoke-static {v2}, Lu/aly/ex;->c(Ljava/io/InputStream;)V

    .line 170
    throw v0

    .line 168
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 167
    :catch_1
    move-exception v1

    goto :goto_1
.end method
