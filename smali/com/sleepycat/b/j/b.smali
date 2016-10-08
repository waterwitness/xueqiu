.class public final Lcom/sleepycat/b/j/b;
.super Lcom/sleepycat/b/p/h;
.source "StatCapture.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# instance fields
.field private a:Lcom/sleepycat/b/c/ad;

.field private final b:Lcom/sleepycat/b/bn;

.field private c:Lcom/sleepycat/d/a;

.field private final d:Ljava/lang/StringBuffer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Integer;

.field private final g:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/sleepycat/b/h;

.field private i:[Ljava/lang/String;

.field private j:Z

.field private final k:Ljava/util/logging/Logger;

.field private t:Lcom/sleepycat/b/j/d;

.field private u:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;JLcom/sleepycat/b/h;Ljava/util/SortedSet;Lcom/sleepycat/b/j/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "Ljava/lang/String;",
            "J",
            "Lcom/sleepycat/b/h;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sleepycat/b/j/d;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p3, p4, p2, p1}, Lcom/sleepycat/b/p/h;-><init>(JLjava/lang/String;Lcom/sleepycat/b/c/ad;)V

    .line 40
    iput-object v1, p0, Lcom/sleepycat/b/j/b;->c:Lcom/sleepycat/d/a;

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    .line 47
    iput-object v1, p0, Lcom/sleepycat/b/j/b;->e:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    .line 51
    iput-object v1, p0, Lcom/sleepycat/b/j/b;->i:[Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/sleepycat/b/j/b;->u:Ljava/lang/Exception;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->k:Ljava/util/logging/Logger;

    .line 71
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 75
    iput-object p1, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    .line 76
    iput-object p7, p0, Lcom/sleepycat/b/j/b;->t:Lcom/sleepycat/b/j/d;

    .line 77
    invoke-virtual {p7}, Lcom/sleepycat/b/j/d;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    .line 78
    new-instance v0, Lcom/sleepycat/b/bn;

    invoke-direct {v0}, Lcom/sleepycat/b/bn;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->b:Lcom/sleepycat/b/bn;

    .line 79
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->b:Lcom/sleepycat/b/bn;

    .line 3059
    iput-boolean v2, v0, Lcom/sleepycat/b/bn;->b:Z

    .line 80
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->b:Lcom/sleepycat/b/bn;

    .line 3092
    iput-boolean v2, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 81
    iput-object p5, p0, Lcom/sleepycat/b/j/b;->h:Lcom/sleepycat/b/h;

    .line 82
    iput-object p6, p0, Lcom/sleepycat/b/j/b;->g:Ljava/util/SortedSet;

    .line 83
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 83
    sget-object v1, Lcom/sleepycat/b/b/d;->bw:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    .line 4392
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 85
    sget-object v2, Lcom/sleepycat/b/b/d;->bs:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/j/b;->j:Z

    .line 88
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    .line 4629
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    .line 94
    :goto_0
    :try_start_0
    new-instance v0, Lcom/sleepycat/d/a;

    const-string v2, "je.stat"

    const-string v3, "csv"

    iget-object v4, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    .line 5392
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 94
    sget-object v5, Lcom/sleepycat/b/b/d;->bu:Lcom/sleepycat/b/b/e;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v4

    iget-object v5, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    .line 6392
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 94
    sget-object v6, Lcom/sleepycat/b/b/d;->bt:Lcom/sleepycat/b/b/e;

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/d/a;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->c:Lcom/sleepycat/d/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    if-eqz p5, :cond_2

    .line 110
    invoke-interface {p5}, Lcom/sleepycat/b/h;->a()[Ljava/lang/String;

    move-result-object v1

    .line 111
    array-length v0, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->i:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->i:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Custom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 114
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->i:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p6, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Error accessing statistics capture file je.stat.csv IO Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    return-void
.end method

.method private declared-synchronized g()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 166
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/sleepycat/b/j/b;->j:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 7217
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sleepycat/b/j/b;->t:Lcom/sleepycat/b/j/d;

    iget-object v4, p0, Lcom/sleepycat/b/j/b;->b:Lcom/sleepycat/b/bn;

    iget-object v6, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v6}, Lcom/sleepycat/b/j/d;->b(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Lcom/sleepycat/b/ae;

    move-result-object v3

    .line 8218
    const/16 v4, 0x8

    new-array v4, v4, [Lcom/sleepycat/b/p/ai;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, v3, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    iget-object v7, v3, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, v3, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    iget-object v7, v3, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x5

    iget-object v7, v3, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x6

    iget-object v7, v3, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    aput-object v7, v4, v6

    const/4 v6, 0x7

    iget-object v3, v3, Lcom/sleepycat/b/ae;->h:Lcom/sleepycat/b/p/ai;

    aput-object v3, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 7217
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7219
    iget-object v3, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7220
    iget-object v3, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    iget-object v4, p0, Lcom/sleepycat/b/j/b;->b:Lcom/sleepycat/b/bn;

    iget-object v6, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v6}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Ljava/util/Collection;

    move-result-object v3

    .line 7222
    if-eqz v3, :cond_2

    .line 7223
    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 7228
    :cond_2
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 7229
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/b/p/ai;

    move-object v4, v0

    .line 9082
    iget-object v2, v4, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 7231
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 7232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9161
    iget-object v9, v4, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 7232
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/ag;

    .line 10060
    iget-object v2, v2, Lcom/sleepycat/b/p/ag;->a:Ljava/lang/String;

    .line 7232
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 7234
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/af;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/af;->c()Ljava/lang/Object;

    move-result-object v2

    .line 7236
    instance-of v10, v2, Ljava/lang/Number;

    if-eqz v10, :cond_6

    .line 7237
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 202
    :catch_0
    move-exception v2

    .line 203
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/b/j/b;->u:Ljava/lang/Exception;

    if-nez v3, :cond_5

    .line 204
    iget-object v3, p0, Lcom/sleepycat/b/j/b;->k:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error accessing statistics capture file je.stat.csv IO Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 209
    :cond_5
    iput-object v2, p0, Lcom/sleepycat/b/j/b;->u:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 166
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 7239
    :cond_6
    :try_start_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sleepycat/b/p/an;

    if-eqz v3, :cond_4

    .line 7240
    if-eqz v2, :cond_7

    .line 7241
    check-cast v2, Ljava/lang/String;

    invoke-interface {v6, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 7243
    :cond_7
    const-string v2, " "

    invoke-interface {v6, v9, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 7248
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->h:Lcom/sleepycat/b/h;

    if-eqz v2, :cond_9

    .line 7249
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->h:Lcom/sleepycat/b/h;

    invoke-interface {v2}, Lcom/sleepycat/b/h;->b()[Ljava/lang/String;

    move-result-object v3

    move v2, v5

    .line 7250
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 7251
    iget-object v4, p0, Lcom/sleepycat/b/j/b;->i:[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v5, v3, v2

    invoke-interface {v6, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7250
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->e:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 174
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 175
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->g:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 177
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 178
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    iget-object v4, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 181
    :cond_a
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->c:Lcom/sleepycat/d/a;

    iget-object v3, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/d/a;->a(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/j/b;->e:Ljava/lang/String;

    .line 184
    :cond_b
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 185
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/j/h;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->g:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 188
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    invoke-interface {v6, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    if-eqz v2, :cond_c

    .line 192
    iget-object v4, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 194
    :cond_c
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 197
    :cond_d
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->c:Lcom/sleepycat/d/a;

    iget-object v3, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/d/a;->b(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/sleepycat/b/j/b;->d:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 199
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sleepycat/b/j/b;->u:Ljava/lang/Exception;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final b()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/b/j/b;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/sleepycat/b/j/b;->g()V

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/j/b;->t:Lcom/sleepycat/b/j/d;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->t:Lcom/sleepycat/b/j/d;

    iget-object v1, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/j/d;->a(Ljava/lang/Integer;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->f:Ljava/lang/Integer;

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->t:Lcom/sleepycat/b/j/d;

    .line 125
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/ad;->b(Lcom/sleepycat/b/c/ab;)V

    .line 128
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c_()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/sleepycat/b/p/h;->c_()V

    .line 158
    iget-boolean v0, p0, Lcom/sleepycat/b/j/b;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/j/b;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/sleepycat/b/j/b;->g()V

    goto :goto_0
.end method
