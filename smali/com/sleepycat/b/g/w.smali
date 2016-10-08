.class public Lcom/sleepycat/b/g/w;
.super Lcom/sleepycat/b/g/s;
.source "INFileReader.java"


# static fields
.field static final synthetic x:Z


# instance fields
.field private A:Lcom/sleepycat/b/g/af;

.field private B:Z

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/g/af;",
            "Lcom/sleepycat/b/g/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/g/af;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/g/af;",
            "Lcom/sleepycat/b/g/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:Z

.field private H:J

.field private I:J

.field private J:Lcom/sleepycat/b/a/y;

.field private K:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public a:Lcom/sleepycat/b/g/a/m;

.field public b:J

.field public c:J

.field public d:J

.field public t:J

.field public u:J

.field public v:J

.field public w:Lcom/sleepycat/b/h/u;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sleepycat/b/g/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/w;->x:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;IJJJJLcom/sleepycat/b/a/y;)V
    .locals 15

    .prologue
    .line 99
    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v14}, Lcom/sleepycat/b/g/w;-><init>(Lcom/sleepycat/b/c/ad;IJJZJJLcom/sleepycat/b/a/y;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;IJJZJJLcom/sleepycat/b/a/y;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "IJJZJJ",
            "Lcom/sleepycat/b/a/y;",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/c/h;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v6, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move-wide/from16 v7, p3

    move-wide/from16 v12, p5

    invoke-direct/range {v3 .. v13}, Lcom/sleepycat/b/g/s;-><init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V

    .line 124
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/sleepycat/b/g/w;->F:Z

    .line 125
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/b/g/w;->G:Z

    .line 126
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/sleepycat/b/g/w;->H:J

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/g/w;->C:Ljava/util/Map;

    .line 129
    if-eqz p7, :cond_2

    .line 130
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->c:J

    .line 131
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->t:J

    .line 132
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->v:J

    .line 133
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->b:J

    .line 134
    const-wide/16 v2, -0x100

    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->d:J

    .line 135
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->u:J

    .line 136
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    .line 137
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/sleepycat/b/g/w;->I:J

    .line 139
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/g/w;->E:Ljava/util/Map;

    .line 151
    invoke-static {}, Lcom/sleepycat/b/g/af;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/g/af;

    .line 152
    invoke-virtual {v2}, Lcom/sleepycat/b/g/af;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    sget-object v3, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v2, p0, Lcom/sleepycat/b/g/w;->e:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->Q()Lcom/sleepycat/b/h/u;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/b/g/w;->w:Lcom/sleepycat/b/h/u;

    .line 160
    iget-object v2, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    sget-object v3, Lcom/sleepycat/b/g/af;->B:Lcom/sleepycat/b/g/af;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/sleepycat/b/g/w;->K:Ljava/util/Set;

    .line 164
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sleepycat/b/g/w;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/g/af;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method protected final a()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 219
    iput-boolean v8, p0, Lcom/sleepycat/b/g/w;->y:Z

    .line 220
    iput-boolean v8, p0, Lcom/sleepycat/b/g/w;->z:Z

    .line 221
    iput-object v6, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    .line 222
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 1303
    iget-object v0, v0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    .line 222
    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/b/g/w;->H:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sleepycat/b/g/au;->a(JJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/g/w;->B:Z

    .line 226
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 2279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 226
    invoke-static {v0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    .line 227
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->C:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/a/m;

    .line 230
    iget-boolean v1, p0, Lcom/sleepycat/b/g/w;->B:Z

    if-nez v1, :cond_0

    .line 231
    iput-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    .line 235
    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/af;->u:Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iput-boolean v7, p0, Lcom/sleepycat/b/g/w;->y:Z

    .line 238
    :cond_1
    sget-object v0, Lcom/sleepycat/b/g/af;->z:Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iput-boolean v7, p0, Lcom/sleepycat/b/g/w;->z:Z

    .line 243
    :cond_2
    iget-boolean v0, p0, Lcom/sleepycat/b/g/w;->F:Z

    if-nez v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    if-eqz v0, :cond_3

    move v0, v7

    .line 284
    :goto_0
    return v0

    :cond_3
    move v0, v8

    .line 244
    goto :goto_0

    .line 253
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v1, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 256
    iget-object v1, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v0

    iget-object v5, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 2291
    iget v5, v5, Lcom/sleepycat/b/g/ae;->d:I

    .line 256
    add-int/2addr v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/y;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V

    .line 269
    :cond_5
    sget-object v0, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 270
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/c/h;J)V

    .line 271
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    sget-object v1, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/c/h;J)V

    .line 272
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/c/h;)V

    .line 273
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    sget-object v1, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/c/h;)V

    .line 284
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 2299
    iget-boolean v0, v0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 284
    if-eqz v0, :cond_8

    :cond_7
    move v0, v7

    goto :goto_0

    :cond_8
    move v0, v8

    goto :goto_0
.end method

.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 14

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    if-eqz v1, :cond_21

    .line 303
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->e:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 305
    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->b()Lcom/sleepycat/b/c/h;

    move-result-object v0

    .line 306
    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 307
    iget-boolean v1, p0, Lcom/sleepycat/b/g/w;->G:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v10, v0

    .line 311
    :goto_1
    iget-boolean v0, p0, Lcom/sleepycat/b/g/w;->F:Z

    if-nez v0, :cond_3

    .line 514
    :cond_1
    :goto_2
    return v10

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 3299
    iget-boolean v0, v0, Lcom/sleepycat/b/g/ae;->h:Z

    .line 321
    if-eqz v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->w:Lcom/sleepycat/b/h/u;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/sleepycat/b/h/u;->a(JLcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)V

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 328
    invoke-static {p1}, Lcom/sleepycat/b/g/w;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 4291
    iget v1, v1, Lcom/sleepycat/b/g/ae;->d:I

    .line 328
    add-int/2addr v0, v1

    .line 330
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/w;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    goto :goto_2

    .line 335
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    if-nez v0, :cond_8

    .line 336
    sget-boolean v0, Lcom/sleepycat/b/g/w;->x:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->D:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->E:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/a/m;

    iput-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    .line 338
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    if-nez v0, :cond_7

    .line 339
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    .line 340
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->E:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    iget-object v2, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->e:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 349
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->c()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v1, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 351
    :cond_9
    iget-object v1, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v0

    iget-object v5, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 5291
    iget v5, v5, Lcom/sleepycat/b/g/ae;->d:I

    .line 351
    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->a()Lcom/sleepycat/b/c/h;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/y;->a(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V

    .line 358
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v1, Lcom/sleepycat/b/g/af;->B:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 359
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->w:Lcom/sleepycat/b/h/u;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    iget-object v4, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/sleepycat/b/h/u;->a(JLcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)V

    .line 364
    :cond_b
    const/4 v1, 0x0

    .line 365
    const-wide/16 v6, -0x1

    .line 368
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->e()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 369
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    .line 371
    iget-object v2, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v3, Lcom/sleepycat/b/g/af;->d:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v3, Lcom/sleepycat/b/g/af;->c:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 6287
    :cond_c
    iget-object v1, v0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 373
    check-cast v1, Lcom/sleepycat/b/l/aa;

    .line 7143
    iget-object v1, v1, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 7496
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 8055
    iget-wide v4, v1, Lcom/sleepycat/b/c/h;->a:J

    .line 378
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->t:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_f

    move-wide v2, v4

    :goto_3
    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->t:J

    .line 379
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->d:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_10

    :goto_4
    iput-wide v4, p0, Lcom/sleepycat/b/g/w;->d:J

    .line 390
    iget-object v2, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/c/h;J)V

    .line 394
    :cond_d
    iget-object v2, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    .line 8717
    iget-object v2, v2, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 9708
    iget-boolean v2, v2, Lcom/sleepycat/b/g/aj;->c:Z

    .line 394
    if-eqz v2, :cond_e

    .line 395
    invoke-virtual {v0}, Lcom/sleepycat/b/g/a/k;->l()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 396
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->v:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_11

    move-wide v2, v4

    :goto_5
    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->v:J

    .line 397
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->u:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_12

    :goto_6
    iput-wide v4, p0, Lcom/sleepycat/b/g/w;->u:J

    .line 406
    :cond_e
    sget-object v2, Lcom/sleepycat/b/g/af;->k:Lcom/sleepycat/b/g/af;

    iget-object v3, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/g/a/k;->b(Z)V

    .line 408
    invoke-virtual {v0}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v2

    .line 10287
    iget-object v0, v0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 410
    invoke-static {v2}, Lcom/sleepycat/b/l/h;->b([B)J

    move-result-wide v2

    .line 414
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    .line 11055
    iget-object v0, v0, Lcom/sleepycat/b/a/y;->h:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v12, v2

    move-object v11, v1

    .line 424
    :goto_7
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 425
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/j;

    .line 11197
    iget-object v0, v0, Lcom/sleepycat/b/g/a/j;->c:Lcom/sleepycat/b/l/j;

    .line 11342
    iget-wide v2, v0, Lcom/sleepycat/b/l/j;->c:J

    .line 429
    sget-boolean v0, Lcom/sleepycat/b/g/w;->x:Z

    if-nez v0, :cond_13

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 378
    :cond_f
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->t:J

    goto/16 :goto_3

    .line 379
    :cond_10
    iget-wide v4, p0, Lcom/sleepycat/b/g/w;->d:J

    goto :goto_4

    .line 396
    :cond_11
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->v:J

    goto :goto_5

    .line 397
    :cond_12
    iget-wide v4, p0, Lcom/sleepycat/b/g/w;->u:J

    goto :goto_6

    .line 430
    :cond_13
    iget-wide v0, p0, Lcom/sleepycat/b/g/w;->c:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1d

    move-wide v0, v2

    :goto_8
    iput-wide v0, p0, Lcom/sleepycat/b/g/w;->c:J

    .line 431
    iget-wide v0, p0, Lcom/sleepycat/b/g/w;->b:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1e

    :goto_9
    iput-wide v2, p0, Lcom/sleepycat/b/g/w;->b:J

    .line 436
    :cond_14
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->f()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v1, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 439
    :cond_15
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/i;

    .line 449
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/i;->b()J

    move-result-wide v2

    .line 450
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    .line 451
    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    .line 452
    iget-object v1, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    iget-object v6, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    const/4 v7, 0x0

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/i;->a()Lcom/sleepycat/b/c/h;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/sleepycat/b/a/y;->a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z

    .line 456
    :cond_16
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/i;->c()J

    move-result-wide v2

    .line 457
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    .line 458
    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v4

    .line 459
    iget-object v1, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    iget-object v6, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    const/4 v7, 0x0

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/i;->a()Lcom/sleepycat/b/c/h;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/sleepycat/b/a/y;->a(JJLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;Z)Z

    .line 475
    :cond_17
    iget-boolean v1, p0, Lcom/sleepycat/b/g/w;->B:Z

    if-eqz v1, :cond_18

    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->I:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_18

    .line 476
    invoke-virtual {p0}, Lcom/sleepycat/b/g/w;->c()J

    move-result-wide v2

    .line 477
    iget-wide v4, p0, Lcom/sleepycat/b/g/w;->I:J

    invoke-static {v4, v5, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v1

    if-gez v1, :cond_18

    .line 478
    iget-object v1, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    iget-object v4, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    const/4 v5, 0x0

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/i;->a()Lcom/sleepycat/b/c/h;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/y;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/h;)V

    .line 490
    :cond_18
    const-wide/16 v0, -0x1

    cmp-long v0, v12, v0

    if-eqz v0, :cond_19

    .line 491
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    .line 12167
    invoke-virtual {v0, v12, v13}, Lcom/sleepycat/b/a/y;->a(J)Lcom/sleepycat/b/a/z;

    move-result-object v0

    .line 12168
    if-eqz v0, :cond_19

    .line 12169
    invoke-virtual {v0}, Lcom/sleepycat/b/a/z;->i()V

    .line 493
    :cond_19
    if-eqz v11, :cond_1a

    .line 494
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->J:Lcom/sleepycat/b/a/y;

    invoke-virtual {v0, v11}, Lcom/sleepycat/b/a/y;->a(Lcom/sleepycat/b/c/h;)V

    .line 501
    :cond_1a
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->k:Lcom/sleepycat/b/g/ae;

    .line 12283
    iget v0, v0, Lcom/sleepycat/b/g/ae;->f:I

    .line 501
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->K:Ljava/util/Set;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 504
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->K:Ljava/util/Set;

    iget-object v1, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v1}, Lcom/sleepycat/b/g/a/m;->a()Lcom/sleepycat/b/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1b
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v1, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sleepycat/b/g/w;->A:Lcom/sleepycat/b/g/af;

    sget-object v1, Lcom/sleepycat/b/g/af;->w:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    :cond_1c
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2

    .line 430
    :cond_1d
    iget-wide v0, p0, Lcom/sleepycat/b/g/w;->c:J

    goto/16 :goto_8

    .line 431
    :cond_1e
    iget-wide v2, p0, Lcom/sleepycat/b/g/w;->b:J

    goto/16 :goto_9

    :cond_1f
    move-wide v12, v6

    move-object v11, v1

    goto/16 :goto_7

    :cond_20
    move-wide v12, v6

    move-object v11, v1

    goto/16 :goto_7

    :cond_21
    move v10, v0

    goto/16 :goto_1
.end method

.method public final b()Lcom/sleepycat/b/c/h;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/i;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/i;->a()Lcom/sleepycat/b/c/h;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/sleepycat/b/g/w;->a:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->d()Lcom/sleepycat/b/g/af;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
