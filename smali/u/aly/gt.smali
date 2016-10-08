.class public final Lu/aly/gt;
.super Ljava/lang/Object;
.source "SDKContext.java"


# static fields
.field private static a:Lu/aly/gc;

.field private static b:Lu/aly/gr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lu/aly/gt;->a:Lu/aly/gc;

    .line 7
    sput-object v0, Lu/aly/gt;->b:Lu/aly/gr;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/gc;
    .locals 6

    .prologue
    .line 11
    const-class v1, Lu/aly/gt;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/gt;->a:Lu/aly/gc;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lu/aly/gc;

    invoke-direct {v0, p0}, Lu/aly/gc;-><init>(Landroid/content/Context;)V

    .line 14
    sput-object v0, Lu/aly/gt;->a:Lu/aly/gc;

    new-instance v2, Lu/aly/gq;

    invoke-direct {v2, p0}, Lu/aly/gq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/gc;->a(Lu/aly/a;)V

    .line 15
    sget-object v0, Lu/aly/gt;->a:Lu/aly/gc;

    new-instance v2, Lu/aly/gs;

    invoke-direct {v2, p0}, Lu/aly/gs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/gc;->a(Lu/aly/a;)V

    .line 16
    sget-object v0, Lu/aly/gt;->a:Lu/aly/gc;

    new-instance v2, Lu/aly/cz;

    invoke-direct {v2, p0}, Lu/aly/cz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/gc;->a(Lu/aly/a;)V

    .line 17
    sget-object v0, Lu/aly/gt;->a:Lu/aly/gc;

    new-instance v2, Lu/aly/gu;

    invoke-direct {v2, p0}, Lu/aly/gu;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/gc;->a(Lu/aly/a;)V

    .line 19
    sget-object v2, Lu/aly/gt;->a:Lu/aly/gc;

    .line 1125
    invoke-virtual {v2}, Lu/aly/gc;->d()Lu/aly/bh;

    move-result-object v0

    .line 1127
    if-eqz v0, :cond_1

    .line 1129
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1131
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1132
    :try_start_1
    iput-object v0, v2, Lu/aly/gc;->a:Lu/aly/bh;

    .line 1134
    iget-object v0, v2, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1142
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1131
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    :try_start_2
    invoke-virtual {v2}, Lu/aly/gc;->a()V

    .line 22
    :cond_1
    sget-object v0, Lu/aly/gt;->a:Lu/aly/gc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 1134
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 1135
    iget-object v5, v2, Lu/aly/gc;->a:Lu/aly/bh;

    invoke-virtual {v0, v5}, Lu/aly/a;->a(Lu/aly/bh;)V

    .line 1137
    invoke-virtual {v0}, Lu/aly/a;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1138
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1142
    :cond_3
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/a;

    .line 1143
    iget-object v4, v2, Lu/aly/gc;->d:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu/aly/gr;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 26
    const-class v3, Lu/aly/gt;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lu/aly/gt;->b:Lu/aly/gr;

    if-nez v0, :cond_0

    .line 27
    new-instance v4, Lu/aly/gr;

    invoke-direct {v4, p0}, Lu/aly/gr;-><init>(Landroid/content/Context;)V

    .line 28
    sput-object v4, Lu/aly/gt;->b:Lu/aly/gr;

    .line 2137
    new-instance v0, Ljava/io/File;

    iget-object v1, v4, Lu/aly/gr;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v5, ".imprint"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2146
    :try_start_1
    iget-object v0, v4, Lu/aly/gr;->c:Landroid/content/Context;

    const-string v1, ".imprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 2147
    :try_start_2
    invoke-static {v1}, Lu/aly/ex;->b(Ljava/io/InputStream;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 2151
    :try_start_3
    invoke-static {v1}, Lu/aly/ex;->c(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2154
    :goto_0
    if-eqz v2, :cond_0

    .line 2156
    :try_start_4
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0}, Lu/aly/bn;-><init>()V

    .line 2157
    new-instance v1, Lu/aly/fe;

    invoke-direct {v1}, Lu/aly/fe;-><init>()V

    invoke-virtual {v1, v0, v2}, Lu/aly/fe;->a(Lu/aly/fa;[B)V

    .line 2158
    iput-object v0, v4, Lu/aly/gr;->b:Lu/aly/bn;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    :cond_0
    :goto_1
    :try_start_5
    sget-object v0, Lu/aly/gt;->b:Lu/aly/gr;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v3

    return-object v0

    .line 2149
    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2151
    :try_start_7
    invoke-static {v1}, Lu/aly/ex;->c(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 2150
    :catchall_1
    move-exception v0

    .line 2151
    :goto_3
    :try_start_8
    invoke-static {v2}, Lu/aly/ex;->c(Ljava/io/InputStream;)V

    .line 2152
    throw v0

    .line 2160
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 2150
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 2149
    :catch_2
    move-exception v0

    goto :goto_2
.end method
