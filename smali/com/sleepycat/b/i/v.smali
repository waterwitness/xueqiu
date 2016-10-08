.class public final Lcom/sleepycat/b/i/v;
.super Ljava/lang/Object;
.source "ReplicatedEnvironmentStats.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/sleepycat/b/p/ai;

.field private b:Lcom/sleepycat/b/p/ai;

.field private c:Lcom/sleepycat/b/p/ai;

.field private d:Lcom/sleepycat/b/p/ai;

.field private e:Lcom/sleepycat/b/p/ai;

.field private f:Lcom/sleepycat/b/p/ai;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/v;->g:Ljava/util/Map;

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/bn;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/v;->g:Ljava/util/Map;

    .line 1887
    iget-object v0, p1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 2394
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 3150
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/m;->h:Lcom/sleepycat/b/p/ai;

    .line 4103
    iget-boolean v3, p2, Lcom/sleepycat/b/bn;->c:Z

    .line 3150
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 138
    iput-object v2, p0, Lcom/sleepycat/b/i/v;->a:Lcom/sleepycat/b/p/ai;

    .line 4536
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 4811
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->al:Lcom/sleepycat/b/i/e/i;

    .line 5210
    iget-object v2, v2, Lcom/sleepycat/b/i/e/i;->c:Lcom/sleepycat/b/p/ai;

    .line 6103
    iget-boolean v3, p2, Lcom/sleepycat/b/bn;->c:Z

    .line 5210
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 139
    iput-object v2, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    .line 6406
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 6957
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ag;->b:Lcom/sleepycat/b/i/c/b/ac;

    .line 7115
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/ac;->n:Lcom/sleepycat/b/p/ai;

    .line 8103
    iget-boolean v3, p2, Lcom/sleepycat/b/bn;->c:Z

    .line 7115
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 142
    iput-object v2, p0, Lcom/sleepycat/b/i/v;->c:Lcom/sleepycat/b/p/ai;

    .line 8976
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    invoke-static {v2, p2}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/i/c/b/ai;Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 143
    iput-object v2, p0, Lcom/sleepycat/b/i/v;->d:Lcom/sleepycat/b/p/ai;

    .line 144
    invoke-virtual {v1, p2}, Lcom/sleepycat/b/i/c/b/m;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    .line 9807
    iget-object v1, p1, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 10784
    iget-object v1, v1, Lcom/sleepycat/b/i/i/f;->j:Lcom/sleepycat/b/p/ai;

    .line 11103
    iget-boolean v2, p2, Lcom/sleepycat/b/bn;->c:Z

    .line 10784
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    .line 145
    iput-object v1, p0, Lcom/sleepycat/b/i/v;->f:Lcom/sleepycat/b/p/ai;

    .line 147
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    .line 11962
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ag;->f:Lcom/sleepycat/b/p/ai;

    .line 12103
    iget-boolean v3, p2, Lcom/sleepycat/b/bn;->c:Z

    .line 11962
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 11965
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ag;->e:Lcom/sleepycat/b/i/e/t;

    .line 11966
    if-eqz v0, :cond_0

    .line 11968
    invoke-virtual {v0, p2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 147
    :cond_0
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 12240
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->d:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v4, v8

    .line 12242
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->a:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_2

    move-wide v6, v8

    .line 12245
    :goto_1
    new-instance v1, Lcom/sleepycat/b/p/q;

    iget-object v2, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/p/q;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJ)V

    .line 12253
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->f:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_3

    move-wide v4, v8

    .line 12255
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_4

    move-wide v6, v8

    .line 12258
    :goto_3
    new-instance v1, Lcom/sleepycat/b/p/q;

    iget-object v2, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/p/q;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJ)V

    .line 12271
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->c:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_5

    move-wide v4, v8

    .line 12273
    :goto_4
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->a:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_6

    move-wide v6, v8

    .line 12276
    :goto_5
    new-instance v1, Lcom/sleepycat/b/p/q;

    iget-object v2, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->i:Lcom/sleepycat/b/p/ag;

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/p/q;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJ)V

    .line 12284
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->e:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_7

    move-wide v4, v8

    .line 12286
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    if-nez v0, :cond_8

    move-wide v6, v8

    .line 12289
    :goto_7
    new-instance v1, Lcom/sleepycat/b/p/q;

    iget-object v2, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->j:Lcom/sleepycat/b/p/ag;

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/p/q;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJ)V

    .line 150
    return-void

    .line 12240
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->d:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_0

    .line 12242
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->a:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_1

    .line 12253
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->f:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_2

    .line 12255
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_3

    .line 12271
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->c:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_4

    .line 12273
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->a:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_5

    .line 12284
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->e:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_6

    .line 12286
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->b(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_7
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->a:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->c:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->d:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sleepycat/b/i/v;->f:Lcom/sleepycat/b/p/ai;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sleepycat/b/p/ai;

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->a:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->c:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->d:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sleepycat/b/i/v;->f:Lcom/sleepycat/b/p/ai;

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/p/ai;)V
    .locals 2

    .prologue
    .line 201
    .line 19161
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 201
    const-string v1, "FeederManager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iput-object p1, p0, Lcom/sleepycat/b/i/v;->a:Lcom/sleepycat/b/p/ai;

    .line 213
    :goto_0
    return-void

    .line 20161
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 203
    const-string v1, "Replay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iput-object p1, p0, Lcom/sleepycat/b/i/v;->c:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 21161
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 205
    const-string v1, "ConsistencyTracker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iput-object p1, p0, Lcom/sleepycat/b/i/v;->d:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 22161
    :cond_2
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 207
    const-string v1, "BinaryProtocol"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iput-object p1, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 23161
    :cond_3
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 210
    const-string v1, "VLSNIndex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    iput-object p1, p0, Lcom/sleepycat/b/i/v;->f:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 24161
    :cond_4
    iget-object v0, p1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 212
    const-string v1, "FeederTxns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    iput-object p1, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    goto :goto_0

    .line 215
    :cond_5
    const-string v0, "Internal error stat context is not registered"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->a:Lcom/sleepycat/b/p/ai;

    .line 13161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/sleepycat/b/i/v;->a:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->c:Lcom/sleepycat/b/p/ai;

    .line 14161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 185
    iget-object v2, p0, Lcom/sleepycat/b/i/v;->c:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->d:Lcom/sleepycat/b/p/ai;

    .line 15161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/sleepycat/b/i/v;->d:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    .line 16161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/sleepycat/b/i/v;->e:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->f:Lcom/sleepycat/b/p/ai;

    .line 17161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 188
    iget-object v2, p0, Lcom/sleepycat/b/i/v;->f:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    .line 18161
    iget-object v1, v1, Lcom/sleepycat/b/p/ai;->a:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/sleepycat/b/i/v;->b:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    invoke-virtual {p0}, Lcom/sleepycat/b/i/v;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ai;

    .line 721
    invoke-virtual {v0}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 724
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
