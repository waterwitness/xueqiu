.class public Lcom/sleepycat/b/h/m;
.super Ljava/lang/Object;
.source "RecoveryManager.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/sleepycat/b/c/ad;

.field private final c:I

.field private final d:Lcom/sleepycat/b/h/l;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/n/s;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/sleepycat/b/h/p;

.field private final m:Lcom/sleepycat/b/a/y;

.field private final n:Lcom/sleepycat/b/c/bd;

.field private final o:Ljava/util/logging/Logger;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const-class v0, Lcom/sleepycat/b/h/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/h/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 4392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 267
    sget-object v1, Lcom/sleepycat/b/b/d;->L:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/h/m;->c:I

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->e:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->f:Ljava/util/Set;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->g:Ljava/util/Map;

    .line 272
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->h:Ljava/util/Set;

    .line 273
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->i:Ljava/util/Set;

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->j:Ljava/util/Set;

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->k:Ljava/util/Set;

    .line 276
    new-instance v0, Lcom/sleepycat/b/a/y;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/a/y;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    .line 278
    new-instance v0, Lcom/sleepycat/b/h/p;

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/h/p;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    .line 279
    new-instance v0, Lcom/sleepycat/b/h/l;

    invoke-direct {v0}, Lcom/sleepycat/b/h/l;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->p:Ljava/util/Set;

    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 283
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 4622
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 283
    iput-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    .line 284
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 5156
    iput-object v1, v0, Lcom/sleepycat/b/c/bd;->b:Lcom/sleepycat/b/h/l;

    .line 285
    return-void
.end method

.method private a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJLcom/sleepycat/b/h/n;)J
    .locals 21

    .prologue
    .line 2098
    const/4 v11, 0x0

    .line 2099
    const/4 v12, 0x0

    .line 2100
    const/4 v13, 0x0

    .line 2101
    const/4 v9, 0x0

    .line 2107
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/l/al;->a()V

    .line 51173
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 2108
    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z

    move-result v11

    .line 2112
    if-nez v11, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2118
    const/4 v6, 0x1

    .line 2205
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_0

    .line 2206
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 2208
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v5, "LNRedo:"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/sleepycat/b/l/al;->d:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v16, v0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v16}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V

    .line 2119
    const-wide/16 v18, -0x1

    .line 2203
    :goto_0
    return-wide v18

    .line 2125
    :cond_1
    if-eqz v11, :cond_8

    .line 2130
    :try_start_1
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/sleepycat/b/l/al;->d:J

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-lez v2, :cond_2

    .line 2131
    const/4 v12, 0x1

    .line 2146
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    const/4 v4, 0x0

    move-wide/from16 v0, p5

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;J)V

    .line 2150
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->c(I)V

    .line 2151
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->n(I)V

    .line 2159
    :cond_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/sleepycat/b/l/al;->d:J

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2161
    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    if-eqz v2, :cond_6

    .line 2168
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->m(I)V

    .line 2177
    :goto_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->q()V

    .line 2191
    :cond_3
    if-nez v13, :cond_4

    .line 2199
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/l/y;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2202
    :cond_4
    const/4 v6, 0x1

    .line 2203
    if-eqz v11, :cond_d

    :try_start_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/sleepycat/b/l/al;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v18, v2

    .line 2205
    :goto_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_5

    .line 2206
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 2208
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v5, "LNRedo:"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/sleepycat/b/l/al;->d:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v16, v0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v16}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V

    goto/16 :goto_0

    .line 2170
    :cond_6
    :try_start_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2205
    :catchall_0
    move-exception v2

    move v6, v9

    :goto_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-eqz v3, :cond_7

    .line 2206
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/a;->C()V

    .line 2208
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v5, "LNRedo:"

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/sleepycat/b/l/al;->d:J

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v16, v0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-static/range {v3 .. v16}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V

    .line 2205
    throw v2

    .line 2184
    :cond_8
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2185
    const/4 v13, 0x1

    .line 51174
    new-instance v2, Lcom/sleepycat/b/l/e;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sleepycat/b/l/al;->c:[B

    move-wide/from16 v0, p5

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    .line 51177
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    .line 51178
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/l/a;->b(Lcom/sleepycat/b/l/e;)I

    move-result v2

    .line 51180
    const/high16 v4, 0x20000

    and-int/2addr v4, v2

    if-nez v4, :cond_c

    .line 51185
    const v4, -0x10001

    and-int/2addr v4, v2

    .line 51187
    const/4 v5, 0x0

    .line 51188
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51189
    const/4 v2, 0x1

    .line 51211
    :goto_4
    if-eqz v2, :cond_b

    .line 51218
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sleepycat/b/l/al;->c:[B

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;J[B)V

    .line 51220
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->c(I)V

    .line 51221
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->n(I)V

    .line 51222
    move-object/from16 v0, p2

    iput v4, v0, Lcom/sleepycat/b/l/al;->b:I

    .line 51223
    const/4 v2, 0x1

    .line 2187
    :goto_5
    sget-boolean v3, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 51197
    :cond_9
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    .line 51199
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 51200
    :cond_a
    const/4 v2, 0x1

    .line 51207
    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;[B)V

    goto :goto_4

    .line 51225
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 51228
    :cond_c
    const v3, -0x20001

    and-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Lcom/sleepycat/b/l/al;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51229
    const/4 v2, 0x1

    goto :goto_5

    .line 2203
    :cond_d
    const-wide/16 v2, -0x1

    move-wide/from16 v18, v2

    goto/16 :goto_2

    .line 2205
    :catchall_1
    move-exception v2

    goto/16 :goto_3

    :cond_e
    move v2, v5

    goto :goto_6
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/l/ag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 1833
    if-eqz p0, :cond_1

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1835
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1836
    const-string v2, "Trace list:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1838
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1839
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1840
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1842
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1844
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 538
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 539
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v1, Lcom/sleepycat/b/bb;->b:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 540
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v1, Lcom/sleepycat/b/h/l;->e:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_2

    .line 554
    new-instance v1, Lcom/sleepycat/b/g/b;

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    iget v3, p0, Lcom/sleepycat/b/h/m;->c:I

    iget-object v4, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->a:J

    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v6, Lcom/sleepycat/b/h/l;->b:J

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/g/b;-><init>(Lcom/sleepycat/b/c/ad;IJJ)V

    .line 559
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/b/g/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    invoke-virtual {v0}, Lcom/sleepycat/b/c/be;->a()V

    .line 561
    invoke-virtual {v0}, Lcom/sleepycat/b/c/be;->b()V

    .line 25084
    iget-boolean v2, v1, Lcom/sleepycat/b/g/b;->b:Z

    .line 568
    if-eqz v2, :cond_3

    .line 574
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/b;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sleepycat/b/h/l;->e:J

    .line 26201
    :cond_1
    iget-object v1, v1, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 26258
    iget-wide v2, v1, Lcom/sleepycat/b/g/u;->g:J

    .line 26583
    iput-wide v2, v0, Lcom/sleepycat/b/c/be;->a:J

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->e:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_5

    .line 602
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iput-wide v8, v0, Lcom/sleepycat/b/h/l;->d:J

    .line 603
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iput-wide v8, v0, Lcom/sleepycat/b/h/l;->c:J

    .line 630
    :goto_1
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v1, Lcom/sleepycat/b/h/l;->d:J

    .line 32274
    iput-wide v2, v0, Lcom/sleepycat/b/h/p;->b:J

    .line 632
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->d:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 634
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->f:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_7

    .line 635
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v2, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    const-string v3, "This environment\'s log file has no root. Since the root is the first entry written into a log at environment creation, this should only happen if the initial creation of the environment was never checkpointed or synced. Please move aside the existing log files to allow the creation of a new environment"

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0

    .line 25091
    :cond_3
    iget-boolean v2, v1, Lcom/sleepycat/b/g/b;->c:Z

    .line 576
    if-eqz v2, :cond_4

    .line 581
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/b;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sleepycat/b/h/l;->g:J

    goto :goto_0

    .line 26077
    :cond_4
    iget-boolean v2, v1, Lcom/sleepycat/b/g/b;->a:Z

    .line 583
    if-eqz v2, :cond_0

    .line 589
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v2, Lcom/sleepycat/b/h/l;->f:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    .line 590
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/b;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sleepycat/b/h/l;->f:J

    goto :goto_0

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 27371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 606
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v1, Lcom/sleepycat/b/h/l;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/am;->d(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/a;

    check-cast v0, Lcom/sleepycat/b/h/a;

    .line 608
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iput-object v0, v1, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    .line 609
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 28302
    iget-wide v2, v0, Lcom/sleepycat/b/h/a;->b:J

    .line 609
    iput-wide v2, v1, Lcom/sleepycat/b/h/l;->d:J

    .line 610
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 28310
    iget-wide v2, v0, Lcom/sleepycat/b/h/a;->d:J

    .line 610
    iput-wide v2, v1, Lcom/sleepycat/b/h/l;->c:J

    .line 29306
    iget-wide v2, v0, Lcom/sleepycat/b/h/a;->c:J

    .line 616
    cmp-long v1, v2, v8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v1, Lcom/sleepycat/b/h/l;->f:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_6

    .line 618
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 30306
    iget-wide v2, v0, Lcom/sleepycat/b/h/a;->c:J

    .line 618
    iput-wide v2, v1, Lcom/sleepycat/b/h/l;->f:J

    .line 622
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 30500
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 31338
    iget-wide v2, v0, Lcom/sleepycat/b/h/a;->k:J

    .line 622
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/h/d;->a(J)V

    goto/16 :goto_1

    .line 645
    :cond_7
    return-void
.end method

.method private a(JLcom/sleepycat/b/h/j;Lcom/sleepycat/b/c/be;)V
    .locals 17

    .prologue
    .line 825
    new-instance v2, Lcom/sleepycat/b/g/w;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/h/m;->c:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v7, v5, Lcom/sleepycat/b/h/l;->b:J

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v10, v5, Lcom/sleepycat/b/h/l;->g:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v12, v5, Lcom/sleepycat/b/h/l;->e:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sleepycat/b/h/m;->p:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sleepycat/b/h/m;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v16}, Lcom/sleepycat/b/g/w;-><init>(Lcom/sleepycat/b/c/ad;IJJZJJLcom/sleepycat/b/a/y;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 837
    sget-object v3, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/w;->a(Lcom/sleepycat/b/g/af;)V

    .line 838
    sget-object v3, Lcom/sleepycat/b/g/af;->m:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/w;->a(Lcom/sleepycat/b/g/af;)V

    .line 839
    sget-object v3, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/w;->a(Lcom/sleepycat/b/g/af;)V

    .line 37190
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sleepycat/b/g/s;->q:Z

    .line 845
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 37379
    iget-object v4, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 848
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/b/g/w;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 849
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/b/c/be;->a()V

    .line 850
    invoke-virtual {v2}, Lcom/sleepycat/b/g/w;->b()Lcom/sleepycat/b/c/h;

    move-result-object v3

    .line 851
    sget-object v5, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v3, v5}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 852
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 854
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/b/g/w;->h()Z

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v5, v3, v1}, Lcom/sleepycat/b/h/m;->a(Lcom/sleepycat/b/g/w;Lcom/sleepycat/b/c/i;ZLcom/sleepycat/b/h/j;)V

    .line 857
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/b/c/be;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 859
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 918
    :catch_0
    move-exception v3

    .line 919
    invoke-virtual {v2}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    const-string v2, "readMapIns"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/sleepycat/b/h/m;->a(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 921
    :goto_1
    return-void

    .line 859
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v3

    .line 38201
    :cond_1
    iget-object v3, v2, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 38258
    iget-wide v4, v3, Lcom/sleepycat/b/g/u;->g:J

    .line 38583
    move-object/from16 v0, p4

    iput-wide v4, v0, Lcom/sleepycat/b/c/be;->a:J

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 39541
    iget-wide v4, v2, Lcom/sleepycat/b/g/w;->b:J

    .line 870
    iput-wide v4, v3, Lcom/sleepycat/b/h/l;->i:J

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 40537
    iget-wide v4, v2, Lcom/sleepycat/b/g/w;->c:J

    .line 871
    iput-wide v4, v3, Lcom/sleepycat/b/h/l;->j:J

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 40552
    iget-wide v4, v2, Lcom/sleepycat/b/g/w;->d:J

    .line 873
    iput-wide v4, v3, Lcom/sleepycat/b/h/l;->k:J

    .line 874
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 41548
    iget-wide v4, v2, Lcom/sleepycat/b/g/w;->t:J

    .line 874
    iput-wide v4, v3, Lcom/sleepycat/b/h/l;->l:J

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 41563
    iget-wide v4, v2, Lcom/sleepycat/b/g/w;->u:J

    .line 876
    iput-wide v4, v3, Lcom/sleepycat/b/h/l;->m:J

    .line 877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 42559
    iget-wide v4, v2, Lcom/sleepycat/b/g/w;->v:J

    .line 877
    iput-wide v4, v3, Lcom/sleepycat/b/h/l;->n:J

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v3, v3, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    if-eqz v3, :cond_7

    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v3, v3, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    .line 882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->i:J

    .line 43318
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->f:J

    .line 882
    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 44318
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->f:J

    .line 884
    iput-wide v6, v4, Lcom/sleepycat/b/h/l;->i:J

    .line 887
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->j:J

    .line 45314
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->e:J

    .line 887
    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 46314
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->e:J

    .line 888
    iput-wide v6, v4, Lcom/sleepycat/b/h/l;->j:J

    .line 891
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->k:J

    .line 46326
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->h:J

    .line 891
    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 47326
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->h:J

    .line 893
    iput-wide v6, v4, Lcom/sleepycat/b/h/l;->k:J

    .line 896
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->l:J

    .line 48322
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->g:J

    .line 896
    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 49322
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->g:J

    .line 897
    iput-wide v6, v4, Lcom/sleepycat/b/h/l;->l:J

    .line 900
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->m:J

    .line 49334
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->j:J

    .line 900
    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 50334
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->j:J

    .line 902
    iput-wide v6, v4, Lcom/sleepycat/b/h/l;->m:J

    .line 905
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->n:J

    .line 50335
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->i:J

    .line 905
    cmp-long v4, v4, v6

    if-gez v4, :cond_7

    .line 906
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 50336
    iget-wide v6, v3, Lcom/sleepycat/b/h/a;->i:J

    .line 906
    iput-wide v6, v4, Lcom/sleepycat/b/h/l;->n:J

    .line 910
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50337
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->i:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v6, Lcom/sleepycat/b/h/l;->j:J

    .line 50338
    iget-object v8, v3, Lcom/sleepycat/b/c/as;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50339
    iget-object v3, v3, Lcom/sleepycat/b/c/as;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50341
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 912
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->k:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v6, Lcom/sleepycat/b/h/l;->l:J

    .line 50342
    iget-object v8, v3, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50343
    iget-object v3, v3, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 914
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50345
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v4, Lcom/sleepycat/b/h/l;->m:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v6, Lcom/sleepycat/b/h/l;->n:J

    .line 50346
    iget-object v8, v3, Lcom/sleepycat/b/n/aj;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50347
    iget-object v3, v3, Lcom/sleepycat/b/n/aj;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 917
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    .line 50349
    iget-object v4, v2, Lcom/sleepycat/b/g/w;->w:Lcom/sleepycat/b/h/u;

    .line 917
    iput-object v4, v3, Lcom/sleepycat/b/h/l;->o:Lcom/sleepycat/b/h/u;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method private a(JLjava/lang/String;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    .line 2959
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    .line 2960
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    const-string v2, "RecoveryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "last LSN = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, p3, v3, p4}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2963
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "last LSN="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0, p4}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(JLjava/util/Set;Lcom/sleepycat/b/h/j;Lcom/sleepycat/b/c/be;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;",
            "Lcom/sleepycat/b/h/j;",
            "Lcom/sleepycat/b/c/be;",
            ")V"
        }
    .end annotation

    .prologue
    .line 934
    new-instance v3, Lcom/sleepycat/b/g/w;

    iget-object v4, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    iget v5, p0, Lcom/sleepycat/b/h/m;->c:I

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v8, v2, Lcom/sleepycat/b/h/l;->b:J

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v10, v2, Lcom/sleepycat/b/h/l;->g:J

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v12, v2, Lcom/sleepycat/b/h/l;->e:J

    iget-object v14, p0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v14}, Lcom/sleepycat/b/g/w;-><init>(Lcom/sleepycat/b/c/ad;IJJJJLcom/sleepycat/b/a/y;)V

    .line 945
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/g/af;

    .line 946
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/w;->a(Lcom/sleepycat/b/g/af;)V

    goto :goto_0

    .line 955
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50350
    iget-object v4, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 956
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 957
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->b()Lcom/sleepycat/b/c/h;

    move-result-object v5

    .line 958
    sget-object v2, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v5, v2}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 959
    const/4 v2, 0x0

    .line 960
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/c/be;->a()V

    .line 964
    if-nez v6, :cond_2

    .line 965
    const/4 v2, 0x1

    .line 968
    :cond_2
    if-eqz v2, :cond_1

    .line 969
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 971
    if-nez v6, :cond_3

    .line 973
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/c/be;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    :goto_2
    :try_start_2
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 996
    :catch_0
    move-exception v2

    .line 997
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    const-string v3, "readNonMapIns"

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/sleepycat/b/h/m;->a(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 999
    :goto_3
    return-void

    .line 975
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->h()Z

    move-result v2

    move-object/from16 v0, p4

    invoke-direct {p0, v3, v6, v2, v0}, Lcom/sleepycat/b/h/m;->a(Lcom/sleepycat/b/g/w;Lcom/sleepycat/b/c/i;ZLcom/sleepycat/b/h/j;)V

    .line 979
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/c/be;->b()V

    .line 987
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->i:Ljava/util/Set;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 990
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v2

    .line 50351
    :cond_4
    iget-object v2, v3, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 50352
    iget-wide v4, v2, Lcom/sleepycat/b/g/u;->g:J

    .line 50353
    move-object/from16 v0, p5

    iput-wide v4, v0, Lcom/sleepycat/b/c/be;->a:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method private a(JLjava/util/Set;Ljava/util/Set;Lcom/sleepycat/b/c/be;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;",
            "Lcom/sleepycat/b/c/be;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1011
    new-instance v3, Lcom/sleepycat/b/g/w;

    iget-object v4, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    iget v5, p0, Lcom/sleepycat/b/h/m;->c:I

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v8, v2, Lcom/sleepycat/b/h/l;->b:J

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v10, v2, Lcom/sleepycat/b/h/l;->g:J

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v12, v2, Lcom/sleepycat/b/h/l;->e:J

    iget-object v14, p0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v14}, Lcom/sleepycat/b/g/w;-><init>(Lcom/sleepycat/b/c/ad;IJJJJLcom/sleepycat/b/a/y;)V

    .line 1022
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/g/af;

    .line 1023
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/g/w;->a(Lcom/sleepycat/b/g/af;)V

    goto :goto_0

    .line 1029
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50355
    iget-object v4, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1030
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1031
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/c/be;->a()V

    .line 1032
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->b()Lcom/sleepycat/b/c/h;

    move-result-object v2

    .line 1033
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1034
    invoke-virtual {v4, v2}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1036
    if-nez v5, :cond_2

    .line 1038
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/c/be;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1047
    :goto_2
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1053
    :catch_0
    move-exception v2

    .line 1054
    invoke-virtual {v3}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    const-string v3, "readNonMapIns"

    invoke-direct {p0, v4, v5, v3, v2}, Lcom/sleepycat/b/h/m;->a(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1056
    :goto_3
    return-void

    .line 1040
    :cond_2
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Lcom/sleepycat/b/c/be;->b()V

    .line 1041
    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v2, v6}, Lcom/sleepycat/b/h/m;->a(Lcom/sleepycat/b/g/w;Lcom/sleepycat/b/c/i;ZLcom/sleepycat/b/h/j;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1047
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v2

    .line 50356
    :cond_3
    iget-object v2, v3, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 50357
    iget-wide v4, v2, Lcom/sleepycat/b/g/u;->g:J

    .line 50358
    move-object/from16 v0, p5

    iput-wide v4, v0, Lcom/sleepycat/b/c/be;->a:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method private a(Lcom/sleepycat/b/g/w;Lcom/sleepycat/b/c/i;ZLcom/sleepycat/b/h/j;)V
    .locals 27

    .prologue
    .line 1074
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v10

    .line 50360
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v2, Lcom/sleepycat/b/g/a/i;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/sleepycat/b/g/a/i;->b(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;

    move-result-object v3

    .line 50361
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v10, v11}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/c/i;J)V

    .line 1077
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->B()V

    .line 1083
    if-eqz p4, :cond_3

    .line 50363
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 50364
    iget v5, v3, Lcom/sleepycat/b/l/j;->j:I

    .line 50365
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/sleepycat/b/h/j;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/h/k;

    .line 50366
    if-nez v2, :cond_0

    .line 50367
    new-instance v2, Lcom/sleepycat/b/h/k;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/sleepycat/b/h/k;-><init>(B)V

    .line 50368
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/sleepycat/b/h/j;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50372
    :cond_0
    iget-boolean v4, v2, Lcom/sleepycat/b/h/k;->c:Z

    if-nez v4, :cond_3

    .line 50373
    iget v4, v2, Lcom/sleepycat/b/h/k;->b:I

    if-ge v5, v4, :cond_1

    .line 50374
    iput v5, v2, Lcom/sleepycat/b/h/k;->b:I

    .line 50376
    :cond_1
    iget v4, v2, Lcom/sleepycat/b/h/k;->a:I

    if-le v5, v4, :cond_2

    .line 50377
    iput v5, v2, Lcom/sleepycat/b/h/k;->a:I

    .line 50379
    :cond_2
    iget v4, v2, Lcom/sleepycat/b/h/k;->a:I

    iget v5, v2, Lcom/sleepycat/b/h/k;->b:I

    if-le v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v2, Lcom/sleepycat/b/h/k;->c:Z

    .line 50382
    :cond_3
    const/4 v4, 0x0

    .line 50392
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 50425
    const/4 v8, 0x1

    .line 50464
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 50427
    new-instance v6, Lcom/sleepycat/b/h/o;

    invoke-direct {v6, v2, v3, v10, v11}, Lcom/sleepycat/b/h/o;-><init>(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/j;J)V
    :try_end_0
    .catch Lcom/sleepycat/b/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50430
    :try_start_1
    invoke-virtual {v2, v6}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;

    .line 50465
    iget-boolean v2, v6, Lcom/sleepycat/b/h/o;->a:Z

    if-nez v2, :cond_4

    iget-boolean v2, v6, Lcom/sleepycat/b/h/o;->b:Z

    if-eqz v2, :cond_8

    :cond_4
    const/4 v2, 0x1

    .line 50433
    :goto_1
    if-eqz v2, :cond_5

    .line 50466
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/sleepycat/b/c/i;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50468
    :cond_5
    :try_start_2
    iget-boolean v2, v6, Lcom/sleepycat/b/h/o;->d:Z

    .line 50448
    if-eqz v2, :cond_6

    .line 50449
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 50452
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v7, "RootRecover:"

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 50469
    iget-boolean v14, v6, Lcom/sleepycat/b/h/o;->b:Z

    .line 50470
    iget-boolean v15, v6, Lcom/sleepycat/b/h/o;->a:Z

    .line 50471
    iget-wide v0, v6, Lcom/sleepycat/b/h/o;->c:J

    move-wide/from16 v16, v0

    .line 50452
    const/16 v18, -0x1

    move-object/from16 v6, p2

    move-object v9, v3

    invoke-static/range {v5 .. v18}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    :try_end_2
    .catch Lcom/sleepycat/b/aa; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50420
    :goto_2
    sget-boolean v2, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v2, :cond_11

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LSN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inFromLog = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50552
    iget-wide v6, v3, Lcom/sleepycat/b/l/j;->c:J

    .line 50420
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 50379
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 50465
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 50442
    :catch_0
    move-exception v2

    .line 50443
    const/4 v8, 0x0

    .line 50444
    :try_start_3
    new-instance v5, Lcom/sleepycat/b/aa;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v9, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "lsnFromLog="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v7, v9, v12, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50448
    :catchall_0
    move-exception v2

    .line 50468
    :try_start_4
    iget-boolean v5, v6, Lcom/sleepycat/b/h/o;->d:Z

    .line 50448
    if-eqz v5, :cond_9

    .line 50449
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 50452
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v7, "RootRecover:"

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 50469
    iget-boolean v14, v6, Lcom/sleepycat/b/h/o;->b:Z

    .line 50470
    iget-boolean v15, v6, Lcom/sleepycat/b/h/o;->a:Z

    .line 50471
    iget-wide v0, v6, Lcom/sleepycat/b/h/o;->c:J

    move-wide/from16 v16, v0

    .line 50452
    const/16 v18, -0x1

    move-object/from16 v6, p2

    move-object v9, v3

    invoke-static/range {v5 .. v18}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V

    .line 50448
    throw v2
    :try_end_4
    .catch Lcom/sleepycat/b/aa; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50406
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 50420
    :catchall_1
    move-exception v2

    sget-boolean v4, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v4, :cond_10

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v4

    if-eqz v4, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LSN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " inFromLog = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 50552
    iget-wide v6, v3, Lcom/sleepycat/b/l/j;->c:J

    .line 50420
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 50400
    :cond_a
    :try_start_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catch Lcom/sleepycat/b/aa; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 50473
    const/16 v22, 0x0

    .line 50474
    const-wide/16 v24, -0x1

    .line 50475
    const/16 v16, 0x0

    .line 50476
    :try_start_7
    new-instance v8, Lcom/sleepycat/b/l/ae;

    invoke-direct {v8}, Lcom/sleepycat/b/l/ae;-><init>()V
    :try_end_7
    .catch Lcom/sleepycat/b/aa; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 50550
    :try_start_8
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 50478
    sget-object v5, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    const/4 v6, -0x1

    move/from16 v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;ILjava/util/List;)Lcom/sleepycat/b/l/ae;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v4

    .line 50499
    :try_start_9
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v2, :cond_c

    .line 50500
    const/16 v16, 0x1

    .line 50539
    :try_start_a
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    if-eqz v2, :cond_b

    .line 50540
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 50543
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v15, "INRecover:"

    iget-object v0, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    move-object/from16 v20, v0

    iget-boolean v0, v4, Lcom/sleepycat/b/l/ae;->a:Z

    move/from16 v21, v0

    const/16 v23, 0x0

    iget v0, v4, Lcom/sleepycat/b/l/ae;->e:I

    move/from16 v26, v0

    move-object/from16 v14, p2

    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    invoke-static/range {v13 .. v26}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    :try_end_a
    .catch Lcom/sleepycat/b/aa; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_2

    .line 50407
    :catch_2
    move-exception v2

    .line 50408
    :goto_3
    :try_start_b
    invoke-static {v7}, Lcom/sleepycat/b/h/m;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 50551
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 50409
    const-string v6, "RecoveryManager"

    const-string v7, "recoverIN"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " lsnFromLog: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v7, v4, v2}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50415
    new-instance v4, Lcom/sleepycat/b/aa;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lsnFromLog="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 50505
    :cond_c
    :try_start_c
    iget v2, v4, Lcom/sleepycat/b/l/ae;->e:I

    if-ltz v2, :cond_d

    .line 50506
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v5, v4, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_d

    .line 50514
    iget-boolean v2, v4, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v2, :cond_d

    .line 50515
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v5, v4, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v2, v5}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v24

    .line 50518
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v10, v11}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-gez v2, :cond_d

    .line 50525
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    iget v5, v4, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v2, v5, v3, v10, v11}, Lcom/sleepycat/b/l/j;->a(ILcom/sleepycat/b/l/ac;J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 50529
    const/16 v22, 0x1

    .line 50537
    :cond_d
    const/16 v16, 0x1

    .line 50539
    :try_start_d
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    if-eqz v2, :cond_e

    .line 50540
    iget-object v2, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 50543
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v15, "INRecover:"

    iget-object v0, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    move-object/from16 v20, v0

    iget-boolean v0, v4, Lcom/sleepycat/b/l/ae;->a:Z

    move/from16 v21, v0

    const/16 v23, 0x0

    iget v0, v4, Lcom/sleepycat/b/l/ae;->e:I

    move/from16 v26, v0

    move-object/from16 v14, p2

    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    invoke-static/range {v13 .. v26}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V

    goto/16 :goto_2

    .line 50539
    :catchall_2
    move-exception v2

    move-object v4, v8

    :goto_4
    iget-object v5, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    if-eqz v5, :cond_f

    .line 50540
    iget-object v5, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    invoke-virtual {v5}, Lcom/sleepycat/b/l/j;->C()V

    .line 50543
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    const-string v15, "INRecover:"

    iget-object v0, v4, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    move-object/from16 v20, v0

    iget-boolean v0, v4, Lcom/sleepycat/b/l/ae;->a:Z

    move/from16 v21, v0

    const/16 v23, 0x0

    iget v0, v4, Lcom/sleepycat/b/l/ae;->e:I

    move/from16 v26, v0

    move-object/from16 v14, p2

    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    invoke-static/range {v13 .. v26}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V

    .line 50539
    throw v2
    :try_end_d
    .catch Lcom/sleepycat/b/aa; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 50420
    :cond_10
    throw v2

    .line 50423
    :cond_11
    return-void

    .line 50407
    :catch_3
    move-exception v2

    move-object v7, v4

    goto/16 :goto_3

    .line 50539
    :catchall_3
    move-exception v2

    goto :goto_4
.end method

.method private a(Ljava/util/Set;Lcom/sleepycat/b/c/be;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;",
            "Lcom/sleepycat/b/c/be;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v10, v2, Lcom/sleepycat/b/h/l;->b:J

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v5, v2, Lcom/sleepycat/b/h/l;->c:J

    .line 1418
    new-instance v2, Lcom/sleepycat/b/g/y;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/h/m;->c:I

    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v12, v12, Lcom/sleepycat/b/h/l;->e:J

    invoke-direct/range {v2 .. v13}, Lcom/sleepycat/b/g/y;-><init>(Lcom/sleepycat/b/c/ad;IJZJJJ)V

    .line 1423
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/g/af;

    .line 1424
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/y;->a(Lcom/sleepycat/b/g/af;)V

    goto :goto_0

    .line 1427
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50868
    iget-object v0, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    move-object/from16 v20, v0

    .line 1428
    new-instance v9, Lcom/sleepycat/b/l/al;

    invoke-direct {v9}, Lcom/sleepycat/b/l/al;-><init>()V

    .line 1435
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->e()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1436
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/c/be;->a()V

    .line 50869
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 50916
    iget-object v3, v2, Lcom/sleepycat/b/g/y;->k:Lcom/sleepycat/b/g/ae;

    .line 50917
    iget-boolean v3, v3, Lcom/sleepycat/b/g/ae;->i:Z

    .line 50873
    if-nez v3, :cond_7

    .line 50885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v3, Lcom/sleepycat/b/h/l;->d:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/4 v3, 0x1

    move v5, v3

    .line 50894
    :goto_2
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->k()Ljava/lang/Long;

    move-result-object v6

    .line 50895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->g:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/n/z;

    .line 50896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v4, v4, Lcom/sleepycat/b/h/l;->p:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/n/z;

    .line 50898
    if-eqz v3, :cond_4

    .line 50899
    new-instance v14, Lcom/sleepycat/b/h/n;

    invoke-direct {v14, v3}, Lcom/sleepycat/b/h/n;-><init>(Lcom/sleepycat/b/n/z;)V

    .line 1439
    :goto_3
    iget-boolean v3, v14, Lcom/sleepycat/b/h/n;->a:Z

    if-eqz v3, :cond_1

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->u()V

    .line 1449
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->j()Lcom/sleepycat/b/c/h;

    move-result-object v15

    .line 1450
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v8

    .line 1456
    if-nez v8, :cond_8

    .line 1457
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/c/be;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1488
    :catch_0
    move-exception v3

    .line 1489
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    const-string v2, "redoLns"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/sleepycat/b/h/m;->a(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1491
    :goto_4
    return-void

    .line 50885
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v3, Lcom/sleepycat/b/h/l;->d:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v3

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    move v5, v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    move v5, v3

    goto :goto_2

    .line 50900
    :cond_4
    if-eqz v4, :cond_5

    .line 50901
    new-instance v14, Lcom/sleepycat/b/h/n;

    invoke-direct {v14, v4}, Lcom/sleepycat/b/h/n;-><init>(Lcom/sleepycat/b/n/z;)V

    goto :goto_3

    .line 50903
    :cond_5
    if-eqz v5, :cond_7

    .line 50904
    if-nez v6, :cond_6

    .line 50906
    sget-object v14, Lcom/sleepycat/b/h/n;->e:Lcom/sleepycat/b/h/n;

    goto :goto_3

    .line 50908
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->e:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 50909
    if-eqz v3, :cond_7

    .line 50911
    new-instance v14, Lcom/sleepycat/b/h/n;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v14, v4, v5}, Lcom/sleepycat/b/h/n;-><init>(J)V

    goto :goto_3

    .line 50915
    :cond_7
    sget-object v14, Lcom/sleepycat/b/h/n;->d:Lcom/sleepycat/b/h/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1461
    :cond_8
    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->h()Lcom/sleepycat/b/g/a/k;

    move-result-object v3

    .line 1462
    invoke-virtual {v3, v8}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 1463
    invoke-virtual {v3}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v10

    .line 1465
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    .line 1468
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/b/c/be;->b()V

    .line 1469
    invoke-virtual {v3}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v11

    .line 50918
    invoke-virtual {v10, v8, v4, v5}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/i;J)V

    .line 50920
    iget-object v3, v14, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    if-eqz v3, :cond_b

    .line 50927
    iget-object v3, v14, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->v()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->w()Z

    move-result v16

    .line 50991
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/n/z;->e(J)V

    .line 50998
    sget-object v6, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/n/z;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v6

    .line 51023
    iget-object v7, v6, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 51000
    sget-object v17, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_9

    .line 51001
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Resurrected lock denied txn="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51024
    iget-wide v10, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 51001
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " logLsn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " abortLsn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12, v13}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1484
    :catchall_0
    move-exception v3

    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 51025
    :cond_9
    const/4 v7, 0x0

    :try_start_4
    move/from16 v0, v16

    invoke-virtual {v6, v12, v13, v0, v7}, Lcom/sleepycat/b/n/m;->a(JZZ)V

    .line 51027
    iget-object v6, v6, Lcom/sleepycat/b/n/m;->b:Lcom/sleepycat/b/n/am;

    .line 51014
    if-nez v6, :cond_a

    .line 51015
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Resurrected lock has no write info txn="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51028
    iget-wide v10, v3, Lcom/sleepycat/b/n/q;->k:J

    .line 51015
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " logLsn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " abortLsn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12, v13}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v3

    throw v3

    .line 51021
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v6, v8, v3}, Lcom/sleepycat/b/n/am;->a(Lcom/sleepycat/b/c/i;I)V

    :cond_b
    move-object/from16 v7, p0

    move-wide v12, v4

    .line 50931
    invoke-direct/range {v7 .. v14}, Lcom/sleepycat/b/h/m;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJLcom/sleepycat/b/h/n;)J

    move-result-wide v6

    .line 50937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->i:Ljava/util/Set;

    invoke-interface {v3, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50943
    const/4 v3, 0x0

    .line 50944
    instance-of v11, v10, Lcom/sleepycat/b/l/aa;

    if-eqz v11, :cond_1b

    .line 50945
    move-object v0, v10

    check-cast v0, Lcom/sleepycat/b/l/aa;

    move-object v3, v0

    .line 51029
    iget-object v11, v3, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 50946
    invoke-virtual {v11}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 50947
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/h/m;->j:Ljava/util/Set;

    .line 51030
    iget-object v12, v3, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 51031
    iget-object v12, v12, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 50947
    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object v11, v3

    .line 50955
    :goto_5
    if-eqz v11, :cond_d

    .line 51032
    iget-boolean v3, v11, Lcom/sleepycat/b/l/aa;->b:Z

    .line 50955
    if-eqz v3, :cond_d

    .line 51033
    iget-object v3, v11, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 50956
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    invoke-virtual {v3, v12, v4, v5}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/a/b;J)V

    .line 50968
    :cond_d
    iget-object v3, v14, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    if-nez v3, :cond_e

    .line 50969
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->i()Lcom/sleepycat/b/g/a/o;

    move-result-object v3

    .line 50970
    if-eqz v3, :cond_e

    .line 50971
    sget-object v12, Lcom/sleepycat/b/h/m$1;->a:[I

    .line 51034
    iget-object v13, v3, Lcom/sleepycat/b/g/a/o;->h:Lcom/sleepycat/b/g/a/f;

    .line 50971
    invoke-virtual {v13}, Lcom/sleepycat/b/g/a/f;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 50986
    :cond_e
    :goto_6
    if-eqz v11, :cond_f

    .line 51037
    iget-boolean v3, v11, Lcom/sleepycat/b/l/aa;->b:Z

    .line 50986
    if-eqz v3, :cond_f

    .line 50987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->k:Ljava/util/Set;

    .line 51038
    iget-object v11, v11, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 51039
    iget-object v11, v11, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 50987
    invoke-interface {v3, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1476
    :cond_f
    iget-wide v0, v14, Lcom/sleepycat/b/h/n;->c:J

    move-wide/from16 v22, v0

    .line 51040
    iget-wide v12, v14, Lcom/sleepycat/b/h/n;->c:J

    const-wide/16 v16, -0x1

    cmp-long v3, v12, v16

    if-nez v3, :cond_10

    .line 51041
    iget-boolean v3, v14, Lcom/sleepycat/b/h/n;->a:Z

    if-eqz v3, :cond_16

    iget-wide v12, v14, Lcom/sleepycat/b/h/n;->c:J

    const-wide/16 v16, -0x1

    cmp-long v3, v12, v16

    if-nez v3, :cond_16

    iget-object v3, v14, Lcom/sleepycat/b/h/n;->b:Lcom/sleepycat/b/n/z;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    .line 51040
    :goto_7
    if-eqz v3, :cond_17

    :cond_10
    const/4 v3, 0x1

    .line 1476
    :goto_8
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->v()J

    move-result-wide v24

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->w()Z

    move-result v21

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->d()I

    move-result v17

    .line 51042
    invoke-virtual {v10}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 51043
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    const/16 v16, 0x0

    .line 51158
    iget-object v0, v8, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object/from16 v18, v0

    .line 51043
    const/16 v19, 0x0

    move-wide v12, v4

    move-wide v14, v4

    invoke-virtual/range {v11 .. v19}, Lcom/sleepycat/b/a/y;->a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z

    .line 51049
    :cond_11
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_13

    .line 51050
    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v10

    .line 51075
    if-eqz v10, :cond_12

    .line 51082
    if-gez v10, :cond_19

    .line 51101
    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->h:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    :goto_9
    move/from16 v19, v3

    move-wide v12, v4

    move-wide v14, v6

    .line 51120
    :goto_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    move/from16 v0, v17

    invoke-virtual {v3, v0, v12, v13}, Lcom/sleepycat/b/a/y;->a(IJ)I

    move-result v17

    .line 51159
    iget-object v0, v8, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object/from16 v18, v0

    .line 51120
    invoke-virtual/range {v11 .. v19}, Lcom/sleepycat/b/a/y;->a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z

    .line 51148
    :cond_12
    if-gtz v10, :cond_13

    const-wide/16 v4, -0x1

    cmp-long v3, v24, v4

    if-eqz v3, :cond_13

    if-nez v21, :cond_13

    const-wide/16 v4, -0x1

    cmp-long v3, v22, v4

    if-eqz v3, :cond_13

    .line 51152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 51160
    iget-object v0, v8, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object/from16 v18, v0

    .line 51152
    const/16 v19, 0x0

    move-wide/from16 v12, v24

    move-wide/from16 v14, v22

    invoke-virtual/range {v11 .. v19}, Lcom/sleepycat/b/a/y;->a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1484
    :cond_13
    :try_start_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 50973
    :pswitch_0
    :try_start_6
    sget-boolean v12, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v12, :cond_14

    invoke-virtual {v3}, Lcom/sleepycat/b/g/a/o;->f()Z

    move-result v12

    if-nez v12, :cond_14

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 50974
    :cond_14
    invoke-virtual {v3}, Lcom/sleepycat/b/g/a/o;->j()Lcom/sleepycat/b/l/y;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/l/ab;

    .line 50975
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/h/m;->k:Ljava/util/Set;

    .line 51035
    iget-object v3, v3, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 50975
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 51036
    :pswitch_1
    iget-object v3, v3, Lcom/sleepycat/b/g/a/o;->i:Lcom/sleepycat/b/c/h;

    .line 50980
    sget-boolean v12, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v12, :cond_15

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 50981
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/h/m;->k:Ljava/util/Set;

    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 51041
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 51040
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 51101
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 51111
    :cond_19
    const/16 v17, 0x0

    move/from16 v19, v3

    move-wide v12, v6

    move-wide v14, v4

    .line 51117
    goto/16 :goto_a

    .line 51161
    :cond_1a
    :try_start_7
    iget-object v3, v2, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 51162
    iget-wide v4, v3, Lcom/sleepycat/b/g/u;->g:J

    .line 51163
    move-object/from16 v0, p2

    iput-wide v4, v0, Lcom/sleepycat/b/c/be;->a:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    :cond_1b
    move-object v11, v3

    goto/16 :goto_5

    .line 50971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/Set;ZLcom/sleepycat/b/c/be;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;Z",
            "Lcom/sleepycat/b/c/be;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v10, v2, Lcom/sleepycat/b/h/l;->c:J

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v5, v2, Lcom/sleepycat/b/h/l;->a:J

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v8, v2, Lcom/sleepycat/b/h/l;->b:J

    .line 1122
    new-instance v2, Lcom/sleepycat/b/g/y;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sleepycat/b/h/m;->c:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v12, v12, Lcom/sleepycat/b/h/l;->e:J

    invoke-direct/range {v2 .. v13}, Lcom/sleepycat/b/g/y;-><init>(Lcom/sleepycat/b/c/ad;IJZJJJ)V

    .line 1127
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/g/af;

    .line 1128
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/y;->a(Lcom/sleepycat/b/g/af;)V

    goto :goto_0

    .line 1131
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50553
    iget-object v0, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    move-object/from16 v19, v0

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    .line 50554
    move/from16 v0, p2

    iput-boolean v0, v3, Lcom/sleepycat/b/h/p;->c:Z

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    .line 50556
    iget-boolean v3, v4, Lcom/sleepycat/b/h/p;->c:Z

    if-eqz v3, :cond_5

    .line 50564
    new-instance v3, Lcom/sleepycat/b/h/t;

    invoke-direct {v3, v4}, Lcom/sleepycat/b/h/t;-><init>(Lcom/sleepycat/b/h/p;)V

    move-object/from16 v18, v3

    .line 1157
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->e()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1158
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->a()V

    .line 1159
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->b()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1162
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->k()Ljava/lang/Long;

    move-result-object v9

    .line 1165
    if-eqz v9, :cond_1

    .line 1169
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sleepycat/b/h/s;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    .line 50568
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/h/s;->c:Lcom/sleepycat/b/h/r;

    .line 50614
    iget-boolean v3, v3, Lcom/sleepycat/b/h/r;->d:Z

    .line 50568
    if-nez v3, :cond_1

    .line 50572
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v14

    .line 50574
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/h/s;->d:Lcom/sleepycat/b/h/p;

    invoke-static {v3}, Lcom/sleepycat/b/h/p;->a(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/c/ad;

    move-result-object v3

    .line 50615
    iget-object v13, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 50616
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->h()Lcom/sleepycat/b/g/a/k;

    move-result-object v4

    .line 50628
    iget-object v3, v4, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 50618
    invoke-virtual {v13, v3}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v8

    .line 50619
    if-nez v8, :cond_6

    .line 50620
    const/4 v3, 0x0

    move-object v11, v3

    .line 50576
    :goto_2
    if-eqz v11, :cond_1

    .line 50582
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sleepycat/b/h/s;->c:Lcom/sleepycat/b/h/r;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/h/s;->d:Lcom/sleepycat/b/h/p;

    invoke-static {v3}, Lcom/sleepycat/b/h/p;->a(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/c/ad;

    move-result-object v10

    .line 50629
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sleepycat/b/h/r;->f:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/n/ad;

    .line 50630
    if-nez v3, :cond_2

    .line 50631
    new-instance v3, Lcom/sleepycat/b/n/ad;

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/sleepycat/b/h/r;->b:J

    move-wide v4, v14

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/b/n/ad;-><init>(JJJLcom/sleepycat/b/c/ad;)V

    .line 50635
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sleepycat/b/h/r;->f:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50585
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/b/n/ad;->a()Lcom/sleepycat/b/n/af;

    move-result-object v6

    .line 50591
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/h/s;->d:Lcom/sleepycat/b/h/p;

    invoke-static {v3}, Lcom/sleepycat/b/h/p;->a(Lcom/sleepycat/b/h/p;)Lcom/sleepycat/b/c/ad;

    move-result-object v3

    .line 50638
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 50591
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v7, Lcom/sleepycat/b/l/al;

    invoke-direct {v7}, Lcom/sleepycat/b/l/al;-><init>()V

    move-object v5, v11

    move-wide v8, v14

    invoke-static/range {v3 .. v9}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/n/al;Lcom/sleepycat/b/n/af;Lcom/sleepycat/b/l/al;J)V

    .line 50598
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/h/s;->c:Lcom/sleepycat/b/h/r;

    .line 50639
    iget-wide v4, v3, Lcom/sleepycat/b/h/r;->c:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 50598
    :goto_3
    if-nez v3, :cond_3

    .line 50640
    iget-object v3, v2, Lcom/sleepycat/b/g/y;->k:Lcom/sleepycat/b/g/ae;

    .line 50641
    iget-boolean v3, v3, Lcom/sleepycat/b/g/ae;->i:Z

    .line 50604
    if-nez v3, :cond_3

    .line 50605
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sleepycat/b/h/s;->d:Lcom/sleepycat/b/h/p;

    invoke-static {v3}, Lcom/sleepycat/b/h/p;->b(Lcom/sleepycat/b/h/p;)Ljava/util/List;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50609
    :cond_3
    :try_start_2
    iget-object v3, v11, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v13, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 50612
    invoke-static {v14, v15, v11, v12}, Lcom/sleepycat/b/h/p;->a(JLcom/sleepycat/b/n/al;Lcom/sleepycat/b/a/y;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1247
    :catch_0
    move-exception v3

    .line 1248
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    const-string v2, "undoLNs"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/sleepycat/b/h/m;->a(JLjava/lang/String;Ljava/lang/Exception;)V

    .line 1250
    :cond_4
    :goto_4
    return-void

    .line 50567
    :cond_5
    new-instance v3, Lcom/sleepycat/b/h/q;

    invoke-direct {v3, v4}, Lcom/sleepycat/b/h/q;-><init>(Lcom/sleepycat/b/h/p;)V

    move-object/from16 v18, v3

    goto/16 :goto_1

    .line 50622
    :cond_6
    :try_start_3
    invoke-virtual {v4, v8}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 50623
    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v5

    .line 50624
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v6

    .line 50625
    invoke-virtual {v5, v8, v6, v7}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/i;J)V

    .line 50627
    new-instance v3, Lcom/sleepycat/b/n/al;

    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/b/n/al;-><init>(Lcom/sleepycat/b/g/a/k;Lcom/sleepycat/b/l/y;JLcom/sleepycat/b/c/i;)V

    move-object v11, v3

    goto/16 :goto_2

    .line 50639
    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    .line 50609
    :catchall_0
    move-exception v3

    iget-object v4, v11, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    invoke-virtual {v13, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v3

    .line 1182
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->e:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->g:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->h:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 50642
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 50646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->f:Ljava/util/Set;

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 50650
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->g()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 50651
    const/4 v3, 0x1

    .line 1196
    :goto_5
    if-eqz v3, :cond_c

    .line 1197
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 50655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v3, v3, Lcom/sleepycat/b/h/l;->p:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    .line 50656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v3, v3, Lcom/sleepycat/b/h/l;->p:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v7, v4, v5}, Lcom/sleepycat/b/c/ad;->b(J)Lcom/sleepycat/b/n/z;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->h:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 50654
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 50659
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->u()V

    .line 50661
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->j()Lcom/sleepycat/b/c/h;

    move-result-object v3

    .line 50662
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v6

    .line 50664
    if-eqz v6, :cond_f

    .line 50667
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->h()Lcom/sleepycat/b/g/a/k;

    move-result-object v4

    .line 50668
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 50669
    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v8

    .line 50670
    new-instance v7, Lcom/sleepycat/b/l/al;

    invoke-direct {v7}, Lcom/sleepycat/b/l/al;-><init>()V

    .line 50671
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v10

    .line 50672
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->v()J

    move-result-wide v12

    .line 50673
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->w()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v14

    .line 50677
    :try_start_4
    invoke-virtual {v8, v6, v10, v11}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/i;J)V

    .line 50678
    invoke-virtual {v4}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v9

    .line 50705
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJJZZZ)V

    .line 50682
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->d()I

    move-result v15

    .line 50709
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    const/4 v14, 0x0

    .line 50729
    iget-object v0, v6, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move-object/from16 v16, v0

    .line 50709
    const/16 v17, 0x1

    move-wide v12, v10

    invoke-virtual/range {v9 .. v17}, Lcom/sleepycat/b/a/y;->a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z

    move-result v4

    .line 50723
    if-nez v4, :cond_d

    invoke-virtual {v8}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v4

    if-nez v4, :cond_d

    .line 50724
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    const/4 v12, 0x0

    .line 50730
    iget-object v14, v6, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    move v13, v15

    .line 50724
    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/b/a/y;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V

    .line 50689
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->i:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50695
    instance-of v3, v8, Lcom/sleepycat/b/l/aa;

    if-eqz v3, :cond_e

    .line 50696
    check-cast v8, Lcom/sleepycat/b/l/aa;

    .line 50731
    iget-object v3, v8, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 50697
    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 50698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->j:Ljava/util/Set;

    .line 50732
    iget-object v4, v8, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 50733
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 50698
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50702
    :cond_e
    :try_start_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1203
    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->b()V

    goto/16 :goto_1

    .line 50702
    :catchall_1
    move-exception v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v3

    .line 1205
    :cond_10
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->l()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 50734
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->m()J

    move-result-wide v4

    .line 50735
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 50736
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/m;->e:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/h/m;->f:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 50738
    new-instance v6, Lcom/sleepycat/b/br;

    invoke-direct {v6}, Lcom/sleepycat/b/br;-><init>()V

    .line 50739
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v7, v6, v4, v5}, Lcom/sleepycat/b/n/s;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;J)Lcom/sleepycat/b/n/s;

    move-result-object v4

    .line 50746
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/b/n/s;->c(J)V

    .line 50747
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->g:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50758
    iget-byte v3, v4, Lcom/sleepycat/b/n/z;->t:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput-byte v3, v4, Lcom/sleepycat/b/n/z;->t:B

    .line 50749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 50763
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 50749
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->n()Lcom/sleepycat/b/q/a;

    move-result-object v5

    .line 50764
    iget-object v6, v3, Lcom/sleepycat/b/n/aj;->e:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 50765
    iget-object v6, v3, Lcom/sleepycat/b/n/aj;->e:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50766
    iget-object v4, v3, Lcom/sleepycat/b/n/aj;->b:Lcom/sleepycat/b/c/ad;

    .line 50774
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 50766
    sget v5, Lcom/sleepycat/b/c/ao;->m:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/b/c/ao;->d(J)V

    .line 50771
    :cond_11
    iget-object v3, v3, Lcom/sleepycat/b/n/aj;->l:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V

    .line 50751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found unfinished prepare record: id: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->m()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Xid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->n()Lcom/sleepycat/b/q/a;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1207
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->d()V

    goto/16 :goto_1

    .line 1208
    :cond_13
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->s()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->f:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->t()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1211
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->d()V

    goto/16 :goto_1

    .line 1212
    :cond_14
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->o()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->u()J

    move-result-wide v6

    .line 50775
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/h/p;->a(J)V

    .line 50777
    invoke-static {v6, v7}, Lcom/sleepycat/b/n/aj;->a(J)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 50781
    iget-object v6, v3, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    if-eqz v6, :cond_15

    .line 50785
    iget-object v6, v3, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    invoke-virtual {v6, v4, v5}, Lcom/sleepycat/b/h/r;->c(J)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 50786
    iget-object v3, v3, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Commit at "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is within rollback period."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/h/r;->a(Ljava/lang/String;)V

    .line 1224
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->e:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->u()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->d()V

    goto/16 :goto_1

    .line 1228
    :cond_16
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->p()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1229
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->r()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/n/v;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v6

    .line 50791
    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/b/h/p;->a(J)V

    .line 50794
    iget-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    if-eqz v4, :cond_18

    iget-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    .line 50805
    invoke-virtual {v4, v3, v6, v7}, Lcom/sleepycat/b/h/r;->a(Lcom/sleepycat/b/n/v;J)Lcom/sleepycat/b/h/r;

    move-result-object v4

    .line 50806
    if-eqz v4, :cond_1b

    .line 50807
    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/b/h/r;->a(J)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 50808
    sget-boolean v8, Lcom/sleepycat/b/h/r;->i:Z

    if-nez v8, :cond_17

    iget-object v8, v4, Lcom/sleepycat/b/h/r;->e:Ljava/util/Set;

    if-eqz v8, :cond_17

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 50823
    :cond_17
    iget-object v8, v3, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    .line 50809
    iput-object v8, v4, Lcom/sleepycat/b/h/r;->e:Ljava/util/Set;

    .line 50819
    :goto_6
    const/4 v4, 0x1

    .line 50794
    :goto_7
    if-nez v4, :cond_19

    .line 50800
    :cond_18
    new-instance v4, Lcom/sleepycat/b/h/r;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/sleepycat/b/h/r;-><init>(Lcom/sleepycat/b/h/p;Lcom/sleepycat/b/n/v;J)V

    iput-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    .line 50803
    iget-object v3, v5, Lcom/sleepycat/b/h/p;->g:Ljava/util/List;

    iget-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->d()V

    goto/16 :goto_1

    .line 50824
    :cond_1a
    new-instance v8, Lcom/sleepycat/b/h/r;

    iget-object v9, v4, Lcom/sleepycat/b/h/r;->a:Lcom/sleepycat/b/h/p;

    invoke-direct {v8, v9, v3, v6, v7}, Lcom/sleepycat/b/h/r;-><init>(Lcom/sleepycat/b/h/p;Lcom/sleepycat/b/n/v;J)V

    iput-object v8, v4, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    .line 50827
    iget-object v8, v4, Lcom/sleepycat/b/h/r;->g:Ljava/util/List;

    iget-object v4, v4, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 50822
    :cond_1b
    const/4 v4, 0x0

    goto :goto_7

    .line 1233
    :cond_1c
    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->q()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1234
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->r()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/b/n/u;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v6

    .line 50829
    invoke-virtual {v5, v6, v7}, Lcom/sleepycat/b/h/p;->a(J)V

    .line 50831
    iget-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    if-eqz v4, :cond_1d

    iget-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    .line 50842
    invoke-virtual {v4, v3, v6, v7}, Lcom/sleepycat/b/h/r;->a(Lcom/sleepycat/b/n/u;J)Lcom/sleepycat/b/h/r;

    move-result-object v4

    .line 50843
    if-eqz v4, :cond_1f

    .line 50848
    new-instance v8, Lcom/sleepycat/b/h/r;

    iget-object v9, v4, Lcom/sleepycat/b/h/r;->a:Lcom/sleepycat/b/h/p;

    invoke-direct {v8, v9, v3, v6, v7}, Lcom/sleepycat/b/h/r;-><init>(Lcom/sleepycat/b/h/p;Lcom/sleepycat/b/n/u;J)V

    iput-object v8, v4, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    .line 50851
    iget-object v8, v4, Lcom/sleepycat/b/h/r;->g:Ljava/util/List;

    iget-object v4, v4, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50845
    const/4 v4, 0x1

    .line 50831
    :goto_8
    if-nez v4, :cond_1e

    .line 50837
    :cond_1d
    new-instance v4, Lcom/sleepycat/b/h/r;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/sleepycat/b/h/r;-><init>(Lcom/sleepycat/b/h/p;Lcom/sleepycat/b/n/u;J)V

    iput-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    .line 50840
    iget-object v3, v5, Lcom/sleepycat/b/h/p;->g:Ljava/util/List;

    iget-object v4, v5, Lcom/sleepycat/b/h/p;->f:Lcom/sleepycat/b/h/r;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_1e
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/c/be;->d()V

    goto/16 :goto_1

    .line 50847
    :cond_1f
    const/4 v4, 0x0

    goto :goto_8

    .line 1238
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LNreader should not have picked up type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50853
    iget-object v5, v2, Lcom/sleepycat/b/g/y;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/ae;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v3

    throw v3

    .line 50854
    :cond_21
    iget-object v3, v2, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 50855
    iget-wide v4, v3, Lcom/sleepycat/b/g/u;->g:J

    .line 50856
    move-object/from16 v0, p3

    iput-wide v4, v0, Lcom/sleepycat/b/c/be;->a:J

    .line 1245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    .line 50858
    iget-object v4, v3, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    .line 50867
    iget-boolean v4, v4, Lcom/sleepycat/b/c/ad;->g:Z

    .line 50858
    if-nez v4, :cond_4

    .line 50862
    iget-object v4, v3, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    iget-object v5, v3, Lcom/sleepycat/b/h/p;->e:Ljava/util/List;

    iget-object v6, v3, Lcom/sleepycat/b/h/p;->d:Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lcom/sleepycat/b/h/p;->a(Lcom/sleepycat/b/c/ad;Ljava/util/List;Ljava/util/Set;)V

    .line 50865
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sleepycat/b/h/p;->e:Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4
.end method

.method public static a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;)V
    .locals 3

    .prologue
    .line 2974
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2976
    const-string v1, "RootDelete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2977
    const-string v1, " Dbid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51245
    iget-object v2, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 2977
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51246
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2978
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2982
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    .locals 17

    .prologue
    .line 2893
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v16, p13

    invoke-static/range {v0 .. v16}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJJI)V

    .line 2895
    return-void
.end method

.method public static a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJJZ)V
    .locals 14

    .prologue
    .line 2270
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-static/range {v0 .. v12}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJJZZZ)V

    .line 2273
    return-void
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJJZZZ)V
    .locals 20

    .prologue
    .line 2306
    const/4 v11, 0x0

    .line 2307
    const/4 v12, 0x0

    .line 2308
    const/4 v8, 0x0

    .line 2315
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/sleepycat/b/l/al;->a()V

    .line 51230
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 2316
    const/4 v6, 0x1

    sget-object v7, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p11

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z

    move-result v11

    .line 2323
    if-eqz v11, :cond_4

    .line 2325
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/sleepycat/b/l/al;->d:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2344
    move-object/from16 v0, p3

    iget v2, v0, Lcom/sleepycat/b/l/al;->b:I

    .line 2345
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has a NULL_LSN but the slot is not empty. KD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v4, v2}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v4, v2}, Lcom/sleepycat/b/l/a;->l(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2446
    :catchall_0
    move-exception v2

    move-object/from16 v19, v2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_0

    .line 2447
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 2450
    :cond_0
    const-string v5, "LNUndo"

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/sleepycat/b/l/al;->d:J

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v18, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v6, v8

    move-object/from16 v7, p4

    move-wide/from16 v8, p6

    move-wide/from16 v16, p8

    invoke-static/range {v2 .. v18}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJJI)V

    .line 2446
    throw v19

    .line 2355
    :cond_1
    const/4 v6, 0x1

    .line 2446
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_2

    .line 2447
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 2450
    :cond_2
    const-string v5, "LNUndo"

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/sleepycat/b/l/al;->d:J

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v18, v0

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-wide/from16 v8, p6

    move-wide/from16 v16, p8

    invoke-static/range {v2 .. v18}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJJI)V

    .line 2453
    return-void

    .line 2359
    :cond_3
    :try_start_1
    move-object/from16 v0, p3

    iget-wide v2, v0, Lcom/sleepycat/b/l/al;->d:J

    move-wide/from16 v0, p6

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 2361
    :goto_1
    if-eqz v2, :cond_4

    .line 2362
    const-wide/16 v2, -0x1

    cmp-long v2, p8, v2

    if-nez v2, :cond_8

    .line 2372
    if-eqz p12, :cond_7

    .line 2373
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    .line 51231
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->b(I)V

    .line 51232
    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/b/l/a;->a(IJ)V

    .line 2378
    :goto_2
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2443
    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 2446
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-eqz v2, :cond_5

    .line 2447
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a;->C()V

    .line 2450
    :cond_5
    const-string v5, "LNUndo"

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/sleepycat/b/l/al;->d:J

    move-object/from16 v0, p3

    iget v0, v0, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v18, v0

    goto :goto_0

    .line 2359
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2376
    :cond_7
    :try_start_2
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->b(I)V

    goto :goto_2

    .line 2393
    :cond_8
    const/4 v12, 0x1

    .line 2394
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sleepycat/b/l/a;->a(ILcom/sleepycat/b/l/ac;J)V

    .line 2398
    if-eqz p10, :cond_a

    .line 2399
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->b(I)V

    .line 2423
    :goto_4
    const/4 v3, 0x0

    .line 2424
    if-nez p12, :cond_9

    .line 51234
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    .line 2424
    if-nez v2, :cond_9

    .line 51235
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 2424
    if-eqz v2, :cond_c

    .line 2427
    :cond_9
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;

    .line 2429
    if-eqz p12, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2430
    const/4 v2, 0x1

    .line 2433
    :goto_5
    if-eqz v2, :cond_b

    .line 2434
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->m(I)V

    goto :goto_3

    .line 2401
    :cond_a
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->c(I)V

    goto :goto_4

    .line 2436
    :cond_b
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v0, p3

    iget v3, v0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a;->n(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_c
    move v2, v3

    goto :goto_5
.end method

.method private static a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJJI)V
    .locals 6

    .prologue
    .line 2912
    if-nez p4, :cond_0

    .line 2913
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 2915
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2917
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    const-string v3, " success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2919
    instance-of v3, p5, Lcom/sleepycat/b/l/j;

    if-eqz v3, :cond_1

    .line 2920
    const-string v3, " node="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2921
    check-cast p5, Lcom/sleepycat/b/l/j;

    .line 51241
    iget-wide v4, p5, Lcom/sleepycat/b/l/j;->c:J

    .line 2921
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2923
    :cond_1
    const-string v3, " lsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2924
    invoke-static {p6, p7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2925
    if-eqz p8, :cond_2

    .line 2926
    const-string v3, " parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51242
    iget-wide v4, p8, Lcom/sleepycat/b/l/j;->c:J

    .line 2926
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2928
    :cond_2
    const-string v3, " found="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2929
    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2930
    const-string v3, " replaced="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2931
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2932
    const-string v3, " inserted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2934
    const-wide/16 v4, -0x1

    cmp-long v3, p12, v4

    if-eqz v3, :cond_3

    .line 2935
    const-string v3, " replacedLsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-static/range {p12 .. p13}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v3, p14, v4

    if-eqz v3, :cond_4

    .line 2939
    const-string v3, " abortLsn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    invoke-static/range {p14 .. p15}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    :cond_4
    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2943
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p1, v3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 51243
    iget-object v3, p2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2944
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, p1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2952
    :cond_5
    :goto_0
    return-void

    .line 51244
    :cond_6
    iget-object v3, p2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 2947
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v3, p1, v2}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/n/al;Lcom/sleepycat/b/n/af;Lcom/sleepycat/b/l/al;J)V
    .locals 15

    .prologue
    .line 2281
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v7

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/sleepycat/b/n/af;->a:J

    move-object/from16 v0, p3

    iget-boolean v12, v0, Lcom/sleepycat/b/n/af;->b:Z

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p4

    move-wide/from16 v8, p5

    invoke-static/range {v2 .. v14}, Lcom/sleepycat/b/h/m;->a(Ljava/util/logging/Logger;Ljava/util/logging/Level;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/al;Lcom/sleepycat/b/l/y;[BJJZZZ)V

    .line 2291
    return-void
.end method

.method private a(ZLcom/sleepycat/b/c/bg;Lcom/sleepycat/b/c/bg;)V
    .locals 7

    .prologue
    .line 774
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 777
    sget-object v0, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcom/sleepycat/b/g/af;->m:Lcom/sleepycat/b/g/af;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0, p2}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 785
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 786
    new-instance v5, Lcom/sleepycat/b/h/j;

    invoke-direct {v5}, Lcom/sleepycat/b/h/j;-><init>()V

    .line 788
    if-eqz p1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v0, v0, Lcom/sleepycat/b/h/l;->d:J

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v2, p2}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v2

    invoke-direct {p0, v0, v1, v5, v2}, Lcom/sleepycat/b/h/m;->a(JLcom/sleepycat/b/h/j;Lcom/sleepycat/b/c/be;)V

    .line 798
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0, p2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 804
    invoke-virtual {v5}, Lcom/sleepycat/b/h/j;->a()Ljava/util/Set;

    move-result-object v5

    .line 805
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0, p3}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 807
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 808
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v0, Lcom/sleepycat/b/h/l;->d:J

    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0, p3}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/h/m;->a(JLjava/util/Set;Ljava/util/Set;Lcom/sleepycat/b/c/be;)V

    .line 810
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0, p3}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 812
    :cond_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v0, Lcom/sleepycat/b/h/l;->d:J

    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    invoke-virtual {v0, p2}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/h/m;->a(JLjava/util/Set;Lcom/sleepycat/b/h/j;Lcom/sleepycat/b/c/be;)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 653
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 662
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sleepycat/b/c/bg;->f:Lcom/sleepycat/b/c/bg;

    sget-object v2, Lcom/sleepycat/b/c/bg;->g:Lcom/sleepycat/b/c/bg;

    sget v3, Lcom/sleepycat/b/bb;->c:I

    sget v3, Lcom/sleepycat/b/bb;->d:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/b/h/m;->a(ZLcom/sleepycat/b/c/bg;Lcom/sleepycat/b/c/bg;)V

    .line 673
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 674
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v1, Lcom/sleepycat/b/bb;->e:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 675
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 676
    sget-object v1, Lcom/sleepycat/b/g/af;->c:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v1, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v1, Lcom/sleepycat/b/g/af;->r:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v1, Lcom/sleepycat/b/g/af;->A:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v1, Lcom/sleepycat/b/g/af;->B:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v1, Lcom/sleepycat/b/g/af;->C:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v3, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/b/h/m;->a(Ljava/util/Set;ZLcom/sleepycat/b/c/be;)V

    .line 684
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->h:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 691
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 692
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v2, Lcom/sleepycat/b/bb;->f:I

    invoke-virtual {v1}, Lcom/sleepycat/b/c/bd;->a()V

    .line 693
    sget-object v1, Lcom/sleepycat/b/g/af;->d:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/b/h/m;->a(Ljava/util/Set;Lcom/sleepycat/b/c/be;)V

    .line 695
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->i:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 701
    invoke-direct {p0}, Lcom/sleepycat/b/h/m;->f()V

    .line 706
    const/4 v0, 0x0

    sget-object v1, Lcom/sleepycat/b/c/bg;->j:Lcom/sleepycat/b/c/bg;

    sget-object v2, Lcom/sleepycat/b/c/bg;->k:Lcom/sleepycat/b/c/bg;

    sget v3, Lcom/sleepycat/b/bb;->g:I

    sget v3, Lcom/sleepycat/b/bb;->h:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/b/h/m;->a(ZLcom/sleepycat/b/c/bg;Lcom/sleepycat/b/c/bg;)V

    .line 718
    invoke-direct {p0}, Lcom/sleepycat/b/h/m;->c()V

    .line 719
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 32357
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->i:Z

    .line 719
    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 32692
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 720
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/c/ad;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->u()V

    .line 729
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 730
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v1, Lcom/sleepycat/b/bb;->i:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 731
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 732
    invoke-static {}, Lcom/sleepycat/b/g/af;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/af;

    .line 733
    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32717
    iget-object v3, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 33708
    iget-boolean v3, v3, Lcom/sleepycat/b/g/aj;->c:Z

    .line 733
    if-eqz v3, :cond_1

    .line 734
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 758
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    throw v0

    .line 737
    :cond_2
    :try_start_1
    sget-object v0, Lcom/sleepycat/b/g/af;->e:Lcom/sleepycat/b/g/af;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v3, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sleepycat/b/h/m;->a(Ljava/util/Set;ZLcom/sleepycat/b/c/be;)V

    .line 740
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->l:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 743
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 744
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v2, Lcom/sleepycat/b/bb;->j:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 745
    invoke-static {}, Lcom/sleepycat/b/g/af;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/af;

    .line 746
    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33717
    iget-object v3, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 34708
    iget-boolean v3, v3, Lcom/sleepycat/b/g/aj;->c:Z

    .line 746
    if-nez v3, :cond_3

    .line 747
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 751
    :cond_4
    sget-object v0, Lcom/sleepycat/b/g/af;->f:Lcom/sleepycat/b/g/af;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Lcom/sleepycat/b/g/af;->k:Lcom/sleepycat/b/g/af;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sleepycat/b/h/m;->a(Ljava/util/Set;Lcom/sleepycat/b/c/be;)V

    .line 754
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->m:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 756
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->l:Lcom/sleepycat/b/h/p;

    .line 35386
    iget-object v1, v0, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    .line 36330
    iget-boolean v1, v1, Lcom/sleepycat/b/c/ad;->g:Z

    .line 35386
    if-nez v1, :cond_5

    .line 35390
    iget-object v1, v0, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    .line 36375
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 35390
    iget-object v0, v0, Lcom/sleepycat/b/h/p;->d:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/g/m;->a(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->e:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 759
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51165
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 1738
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->c()V

    .line 1739
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51166
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 51167
    iget-object v0, v0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 51169
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 51167
    invoke-virtual {v0}, Lcom/sleepycat/b/l/ah;->f()V

    .line 1742
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1743
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1744
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 1746
    sget-object v2, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1747
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51170
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1747
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v2

    .line 1749
    if-eqz v2, :cond_1

    .line 1751
    :try_start_0
    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51171
    iget-object v0, v2, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1752
    invoke-virtual {v0}, Lcom/sleepycat/b/l/ah;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51172
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1756
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51172
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1756
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v0

    .line 1760
    :cond_2
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 2748
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51236
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 2748
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 2749
    if-eqz v0, :cond_0

    .line 2757
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->C()V

    goto :goto_0

    .line 2759
    :cond_1
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2770
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 2771
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v1, Lcom/sleepycat/b/bb;->l:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 2772
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v1

    .line 2774
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51237
    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 2775
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v0, v7}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;

    move-result-object v3

    .line 2779
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2780
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2781
    invoke-virtual {v1}, Lcom/sleepycat/b/c/be;->a()V

    .line 2782
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 2783
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 2784
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 2785
    if-eqz v0, :cond_0

    .line 2786
    sget-boolean v5, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2807
    :catch_0
    move-exception v0

    .line 2808
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2809
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2811
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v7}, Lcom/sleepycat/b/n/a;->a_(Z)V

    .line 2812
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 2811
    throw v0

    .line 2787
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->z()Z
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    .line 2789
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/b/c/be;->b()V

    .line 2790
    iget-object v5, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51238
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 2790
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v6

    .line 51239
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 2790
    invoke-virtual {v5, v3, v6, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_3
    .catch Lcom/sleepycat/b/c/s; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sleepycat/b/p; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2793
    :catch_1
    move-exception v0

    .line 2795
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2798
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2802
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/b/c/be;->c()V
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2806
    :cond_3
    const/4 v0, 0x1

    .line 2811
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/n/a;->a_(Z)V

    .line 2812
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->o:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 2814
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 2834
    const/4 v1, 0x0

    .line 2835
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 2836
    iget-object v3, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 51240
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 2837
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 2845
    if-nez v4, :cond_1

    .line 2854
    :cond_0
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 2849
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/sleepycat/b/c/i;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2850
    const/4 v0, 0x1

    .line 2854
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 2858
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 2860
    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    .line 2861
    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "JE 4.1 duplicate DB entries"

    .line 2864
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " were found in the recovery interval. Before upgrading to JE 5.0, the following utility must be run using JE 4.1 (4.1.20 or later): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DbRepPreUpgrade_4_1 "

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". See the change log."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2854
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v0

    .line 2861
    :cond_3
    const-string v0, "JE 4.1 BINDeltas"

    goto :goto_2

    .line 2864
    :cond_4
    const-string v0, "DbPreUpgrade_4_1 "

    goto :goto_3

    .line 2872
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Z)Lcom/sleepycat/b/h/l;
    .locals 14

    .prologue
    const/4 v2, 0x0

    const-wide/16 v10, -0x1

    const/4 v1, 0x1

    .line 296
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v3, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 5375
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 299
    iget-object v3, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 5392
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 306
    sget-object v4, Lcom/sleepycat/b/b/d;->h:Lcom/sleepycat/b/b/a;

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5446
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sleepycat/b/g/m;->s:Z

    move v3, v1

    .line 316
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->d()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 322
    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->c()[Ljava/lang/Long;

    .line 5481
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v5, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 5482
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v5, Lcom/sleepycat/b/bb;->a:I

    invoke-virtual {v4}, Lcom/sleepycat/b/c/bd;->a()V

    .line 5483
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v5, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v4

    .line 5484
    new-instance v5, Lcom/sleepycat/b/g/z;

    iget-object v6, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    iget v7, p0, Lcom/sleepycat/b/h/m;->c:I

    invoke-direct {v5, v6, v7}, Lcom/sleepycat/b/g/z;-><init>(Lcom/sleepycat/b/c/ad;I)V

    .line 5491
    :cond_0
    :goto_1
    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->e()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5492
    invoke-virtual {v4}, Lcom/sleepycat/b/c/be;->a()V

    .line 5493
    invoke-virtual {v4}, Lcom/sleepycat/b/c/be;->b()V

    .line 6236
    iget-object v6, v5, Lcom/sleepycat/b/g/z;->b:Lcom/sleepycat/b/g/af;

    .line 5495
    sget-object v7, Lcom/sleepycat/b/g/af;->t:Lcom/sleepycat/b/g/af;

    invoke-virtual {v7, v6}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5496
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->c()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/sleepycat/b/h/l;->e:J

    .line 5497
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    const-wide/16 v8, -0x1

    iput-wide v8, v6, Lcom/sleepycat/b/h/l;->g:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    const-string v2, "RecoveryManager"

    const-string v3, "recover"

    const-string v4, "Couldn\'t recover"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    throw v0

    .line 312
    :cond_1
    :try_start_2
    sget-object v4, Lcom/sleepycat/b/b/d;->g:Lcom/sleepycat/b/b/a;

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v3

    goto :goto_0

    .line 5498
    :cond_2
    sget-object v7, Lcom/sleepycat/b/g/af;->s:Lcom/sleepycat/b/g/af;

    invoke-virtual {v7, v6}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5499
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v6, Lcom/sleepycat/b/h/l;->g:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    .line 5500
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->c()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/sleepycat/b/h/l;->g:J

    goto :goto_1

    .line 5502
    :cond_3
    sget-object v7, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    invoke-virtual {v7, v6}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5503
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->c()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/sleepycat/b/h/l;->f:J

    goto :goto_1

    .line 5513
    :cond_4
    sget-boolean v6, Lcom/sleepycat/b/h/m;->a:Z

    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->i()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->h()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastUsed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 5517
    :cond_5
    if-nez p1, :cond_6

    .line 5518
    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->b()V

    .line 5522
    :cond_6
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->i()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/sleepycat/b/h/l;->a:J

    .line 5523
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v5}, Lcom/sleepycat/b/g/z;->h()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/sleepycat/b/h/l;->b:J

    .line 7201
    iget-object v6, v5, Lcom/sleepycat/b/g/s;->g:Lcom/sleepycat/b/g/u;

    .line 7258
    iget-wide v6, v6, Lcom/sleepycat/b/g/u;->g:J

    .line 7583
    iput-wide v6, v4, Lcom/sleepycat/b/c/be;->a:J

    .line 5525
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 8375
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 5525
    iget-object v6, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v6, Lcom/sleepycat/b/h/l;->b:J

    iget-object v8, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v8, v8, Lcom/sleepycat/b/h/l;->a:J

    .line 9232
    iget-wide v10, v5, Lcom/sleepycat/b/g/z;->a:J

    .line 9447
    iput-wide v8, v4, Lcom/sleepycat/b/g/m;->q:J

    .line 9448
    iget-object v5, v4, Lcom/sleepycat/b/g/m;->z:Ljava/util/Map;

    invoke-static {v8, v9}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9450
    iput-wide v6, v4, Lcom/sleepycat/b/g/m;->p:J

    .line 9451
    iget-wide v6, v4, Lcom/sleepycat/b/g/m;->p:J

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/sleepycat/b/g/m;->o:J

    .line 9452
    iput-wide v10, v4, Lcom/sleepycat/b/g/m;->r:J

    .line 9453
    invoke-virtual {v4}, Lcom/sleepycat/b/g/m;->b()V

    .line 5528
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v5, Lcom/sleepycat/b/c/bg;->c:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 334
    const-string v4, "Recovery underway, found end of log"

    .line 335
    iget-object v5, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v5, v4}, Lcom/sleepycat/b/g/aw;->b(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/sleepycat/b/h/m;->a()V

    .line 343
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 10371
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 10474
    iget-wide v6, v0, Lcom/sleepycat/b/g/m;->q:J

    .line 11163
    iput-wide v6, v4, Lcom/sleepycat/b/g/am;->h:J

    .line 347
    iget-object v4, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v6, v0, Lcom/sleepycat/b/h/l;->f:J

    .line 11299
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    if-eqz v0, :cond_7

    .line 11300
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->g()V

    .line 11302
    :cond_7
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v0, v6, v7}, Lcom/sleepycat/b/g/am;->e(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/p;

    iput-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 11305
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->d()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/sleepycat/b/c/ad;->M()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 11306
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->e()V

    .line 11307
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 11945
    iget-byte v5, v0, Lcom/sleepycat/b/c/p;->g:B

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    iput-byte v5, v0, Lcom/sleepycat/b/c/p;->g:B

    .line 11308
    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/sleepycat/b/c/ad;->m:Z

    .line 11311
    :cond_8
    iget-object v5, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 12437
    invoke-virtual {v5}, Lcom/sleepycat/b/c/p;->d()Z

    move-result v8

    .line 12961
    iget-byte v0, v5, Lcom/sleepycat/b/c/p;->g:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_d

    move v0, v1

    .line 12437
    :goto_2
    invoke-virtual {v4, v8, v0}, Lcom/sleepycat/b/c/ad;->b(ZZ)V

    .line 12438
    iput-object v4, v5, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    .line 12439
    iget-object v0, v5, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/c/ad;)V

    .line 12440
    iget-object v0, v5, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/c/ad;)V

    .line 11314
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11316
    :try_start_3
    iput-wide v6, v4, Lcom/sleepycat/b/c/ad;->r:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11318
    :try_start_4
    iget-object v0, v4, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    .line 350
    invoke-direct {p0}, Lcom/sleepycat/b/h/m;->b()V

    .line 378
    :goto_3
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    .line 379
    if-lez v4, :cond_9

    .line 380
    if-ne v4, v1, :cond_11

    .line 381
    :goto_4
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v6, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "There "

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_12

    const-string v0, "is "

    :goto_5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " prepared but unfinished "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_13

    const-string v0, "txn."

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v6, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/m;->g:Ljava/util/Map;

    .line 398
    :cond_9
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 15392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 16081
    iget-object v0, v0, Lcom/sleepycat/b/c/m;->b:Lcom/sleepycat/b/z;

    .line 16629
    iget-boolean v0, v0, Lcom/sleepycat/b/z;->b:Z

    .line 398
    if-eqz v0, :cond_a

    .line 400
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 401
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v1, Lcom/sleepycat/b/bb;->k:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    .line 403
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 17095
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 17468
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 403
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->c(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/c/be;)Z

    .line 405
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->n:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 409
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->m:Lcom/sleepycat/b/a/y;

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 18088
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 18464
    iget-object v1, v1, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 409
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/a/ae;)V

    .line 413
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v0, v0, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 18504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 414
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-object v1, v1, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    .line 19346
    iget-object v1, v1, Lcom/sleepycat/b/h/a;->l:Lcom/sleepycat/b/a/d;

    .line 19501
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/aa;->a(Lcom/sleepycat/b/a/d;)V

    .line 422
    :cond_b
    invoke-direct {p0}, Lcom/sleepycat/b/h/m;->e()V

    .line 428
    invoke-direct {p0}, Lcom/sleepycat/b/h/m;->d()V

    .line 434
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/h/l;)V

    .line 440
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 20371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 21159
    iget-wide v0, v0, Lcom/sleepycat/b/g/am;->h:J

    .line 440
    iget-object v2, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v2, Lcom/sleepycat/b/h/l;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c

    if-eqz v3, :cond_14

    .line 445
    :cond_c
    new-instance v0, Lcom/sleepycat/b/c;

    invoke-direct {v0}, Lcom/sleepycat/b/c;-><init>()V

    .line 22123
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/c;->b:Z

    .line 22157
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/c;->e:Z

    .line 449
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget v2, Lcom/sleepycat/b/bb;->m:I

    invoke-virtual {v1}, Lcom/sleepycat/b/c/bd;->a()V

    .line 450
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 451
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    const-string v2, "recovery"

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)Z

    .line 452
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    iget-object v2, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 22500
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 452
    sget-object v3, Lcom/sleepycat/b/bn;->a:Lcom/sleepycat/b/bn;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 23266
    iget-object v0, v0, Lcom/sleepycat/b/c/bd;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->p:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 468
    :goto_7
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->n:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->b:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 471
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    return-object v0

    :cond_d
    move v0, v2

    .line 12961
    goto/16 :goto_2

    .line 11318
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, v4, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->c()V

    throw v0

    .line 357
    :cond_e
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->o:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "Recovery w/no files."

    invoke-static {v0, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 13492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 361
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->c()V

    .line 363
    if-nez p1, :cond_f

    .line 364
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 14238
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/c/ad;->a(J)V

    .line 368
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 14357
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->i:Z

    .line 368
    if-eqz v0, :cond_10

    .line 369
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 14692
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 369
    iget-object v3, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/c/ad;)V

    :cond_10
    move v3, v1

    .line 375
    goto/16 :goto_3

    :cond_11
    move v1, v2

    .line 380
    goto/16 :goto_4

    .line 381
    :cond_12
    const-string v0, "are "

    goto/16 :goto_5

    :cond_13
    const-string v0, "txns."

    goto/16 :goto_6

    .line 458
    :cond_14
    iget-object v0, p0, Lcom/sleepycat/b/h/m;->b:Lcom/sleepycat/b/c/ad;

    .line 23500
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 458
    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v2, v1, Lcom/sleepycat/b/h/l;->d:J

    iget-object v1, p0, Lcom/sleepycat/b/h/m;->d:Lcom/sleepycat/b/h/l;

    iget-wide v4, v1, Lcom/sleepycat/b/h/l;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 24403
    iput-wide v2, v0, Lcom/sleepycat/b/h/d;->h:J

    .line 24404
    iput-wide v4, v0, Lcom/sleepycat/b/h/d;->i:J

    .line 24405
    iput-wide v6, v0, Lcom/sleepycat/b/h/d;->g:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7
.end method
