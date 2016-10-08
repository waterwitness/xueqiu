.class public Lcom/sleepycat/b/i/c/b/aa;
.super Lcom/sleepycat/b/p/aj;
.source "RepNode.java"


# static fields
.field static final synthetic C:Z


# instance fields
.field public final A:Lcom/sleepycat/b/i/a/a;

.field public B:I

.field private final G:Lcom/sleepycat/b/i/e/l;

.field private final H:Lcom/sleepycat/b/i/e/p;

.field private I:Lcom/sleepycat/b/i/p;

.field private J:Lcom/sleepycat/b/i/g/a/f;

.field private K:Lcom/sleepycat/b/i/c/l;

.field private L:Lcom/sleepycat/b/i/c/d;

.field private M:Lcom/sleepycat/b/i/c/g;

.field private N:Lcom/sleepycat/b/i/c/b/s;

.field private O:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final a:Lcom/sleepycat/b/i/c/b/x;

.field public final b:Ljava/net/InetSocketAddress;

.field public final c:Lcom/sleepycat/b/i/h/x;

.field public d:Lcom/sleepycat/b/i/b/d;

.field public final e:Lcom/sleepycat/b/i/c/b/ag;

.field public f:Lcom/sleepycat/b/i/c/b/m;

.field public final g:Lcom/sleepycat/b/i/e/n;

.field final h:Lcom/sleepycat/b/i/c/b/z;

.field public final i:Lcom/sleepycat/b/i/c/aj;

.field public final j:Lcom/sleepycat/b/i/c/p;

.field volatile k:Lcom/sleepycat/b/i/h/t;

.field public final l:Lcom/sleepycat/b/i/c/b/b;

.field public volatile m:Lcom/sleepycat/b/i/c/t;

.field public final n:Lcom/sleepycat/b/i/c/b/ab;

.field o:Lcom/sleepycat/b/i/c/a/a;

.field public final p:Lcom/sleepycat/b/i/c/b/q;

.field q:Lcom/sleepycat/b/i/c/b/u;

.field public final r:Lcom/sleepycat/b/i/c/b/o;

.field s:J

.field public t:Lcom/sleepycat/b/i/c/b/w;

.field public u:Lcom/sleepycat/b/i/a;

.field public final v:Ljava/util/Timer;

.field public final w:Lcom/sleepycat/b/i/c/b/a;

.field public final x:Ljava/util/logging/Logger;

.field public final y:Lcom/sleepycat/b/i/c/b/g;

.field public final z:Lcom/sleepycat/b/i/c/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/aa;->C:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/c/b/aa;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/i/c/b/ac;Lcom/sleepycat/b/i/c/b/z;)V
    .locals 6

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RepNode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3244
    iget-object v1, p1, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 176
    new-instance v0, Lcom/sleepycat/b/i/c/b/b;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/b/b;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->l:Lcom/sleepycat/b/i/c/b/b;

    .line 190
    sget-object v0, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->I:Lcom/sleepycat/b/i/p;

    .line 224
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 246
    const/16 v0, 0x8

    iput v0, p0, Lcom/sleepycat/b/i/c/b/aa;->B:I

    .line 258
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 259
    new-instance v0, Lcom/sleepycat/b/i/h/t;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/h/t;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 4244
    iget-object v0, p1, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 260
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    .line 263
    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/aj;->ad()Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->b:Ljava/net/InetSocketAddress;

    .line 264
    new-instance v0, Lcom/sleepycat/b/i/h/x;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->b:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/b/i/h/x;-><init>(Ljava/net/InetSocketAddress;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 265
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/x;->start()V

    .line 266
    new-instance v0, Lcom/sleepycat/b/i/c/b/ab;

    invoke-static {}, Lcom/sleepycat/b/i/c/aj;->aa()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/b/ab;-><init>(IB)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->n:Lcom/sleepycat/b/i/c/b/ab;

    .line 267
    new-instance v0, Lcom/sleepycat/b/i/c/p;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/c/p;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    .line 269
    new-instance v0, Lcom/sleepycat/b/i/e/n;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/n;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 270
    invoke-static {p0, p2}, Lcom/sleepycat/b/i/c/b/ao;->a(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/c/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 272
    new-instance v0, Lcom/sleepycat/b/i/c/b/m;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/b/m;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 273
    new-instance v0, Lcom/sleepycat/b/i/e/l;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/e/l;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->G:Lcom/sleepycat/b/i/e/l;

    .line 274
    new-instance v0, Lcom/sleepycat/b/i/e/p;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/e/p;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->H:Lcom/sleepycat/b/i/e/p;

    .line 276
    iput-object p3, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    .line 278
    new-instance v0, Lcom/sleepycat/b/i/c/b/g;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/c/b/g;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->y:Lcom/sleepycat/b/i/c/b/g;

    .line 279
    new-instance v0, Lcom/sleepycat/b/i/c/b/f;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/c/b/f;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->z:Lcom/sleepycat/b/i/c/b/f;

    .line 4293
    new-instance v0, Lcom/sleepycat/b/i/g/a/f;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/g/a/f;-><init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->J:Lcom/sleepycat/b/i/g/a/f;

    .line 4294
    new-instance v0, Lcom/sleepycat/b/i/c/a/a;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/i/c/a/a;-><init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    .line 4299
    new-instance v0, Lcom/sleepycat/b/i/c/l;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/b/i/c/l;-><init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->K:Lcom/sleepycat/b/i/c/l;

    .line 4300
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->K:Lcom/sleepycat/b/i/c/l;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/ad;)V

    .line 4302
    new-instance v0, Lcom/sleepycat/b/i/c/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/b/i/c/d;-><init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->L:Lcom/sleepycat/b/i/c/d;

    .line 4304
    new-instance v0, Lcom/sleepycat/b/i/c/g;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/b/i/c/g;-><init>(Lcom/sleepycat/b/i/h/x;Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->M:Lcom/sleepycat/b/i/c/g;

    .line 4305
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->M:Lcom/sleepycat/b/i/c/g;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Lcom/sleepycat/b/i/h/ad;)V

    .line 282
    new-instance v0, Lcom/sleepycat/b/i/c/b/q;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/b/q;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    .line 283
    new-instance v0, Lcom/sleepycat/b/i/c/b/o;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/b/o;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 284
    new-instance v0, Lcom/sleepycat/b/i/c/b/w;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/b/w;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->t:Lcom/sleepycat/b/i/c/b/w;

    .line 285
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->v:Ljava/util/Timer;

    .line 286
    new-instance v0, Lcom/sleepycat/b/i/c/b/a;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->v:Ljava/util/Timer;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/c/b/a;-><init>(Ljava/util/Timer;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->w:Lcom/sleepycat/b/i/c/b/a;

    .line 4528
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 5392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 5575
    sget-object v1, Lcom/sleepycat/b/i/c/an;->aa:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    .line 5576
    sget-object v2, Lcom/sleepycat/b/i/c/an;->ab:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    .line 5579
    if-nez v1, :cond_1

    .line 5580
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    if-eqz v0, :cond_0

    .line 5581
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/s;->a()V

    .line 289
    :cond_0
    :goto_0
    new-instance v0, Lcom/sleepycat/b/i/a/a;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/a/a;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 290
    return-void

    .line 5588
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    if-nez v1, :cond_2

    .line 5589
    new-instance v1, Lcom/sleepycat/b/i/c/b/s;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->v:Ljava/util/Timer;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/b/i/c/b/s;-><init>(Lcom/sleepycat/b/i/c/b/aa;Ljava/util/Timer;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    .line 5593
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    .line 6040
    iget v1, v4, Lcom/sleepycat/b/i/c/b/s;->c:I

    if-ne v1, v0, :cond_3

    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/s;->d:Lcom/sleepycat/b/i/c/b/t;

    if-nez v1, :cond_0

    .line 6045
    :cond_3
    iput v0, v4, Lcom/sleepycat/b/i/c/b/s;->c:I

    .line 6046
    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/s;->a()V

    .line 6047
    new-instance v0, Lcom/sleepycat/b/i/c/b/t;

    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/s;->a:Lcom/sleepycat/b/i/c/b/aa;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/c/b/t;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, v4, Lcom/sleepycat/b/i/c/b/s;->d:Lcom/sleepycat/b/i/c/b/t;

    .line 6048
    iget-object v0, v4, Lcom/sleepycat/b/i/c/b/s;->b:Ljava/util/Timer;

    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/s;->d:Lcom/sleepycat/b/i/c/b/t;

    const-wide/16 v2, 0x0

    iget v4, v4, Lcom/sleepycat/b/i/c/b/s;->c:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/i/c/b/x;)V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/c/b/aa;-><init>(Lcom/sleepycat/b/i/c/b/x;B)V

    .line 311
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/i/c/b/x;B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RepNode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/p/aj;-><init>(Ljava/lang/String;)V

    .line 171
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 176
    new-instance v0, Lcom/sleepycat/b/i/c/b/b;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/b/b;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->l:Lcom/sleepycat/b/i/c/b/b;

    .line 190
    sget-object v0, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->I:Lcom/sleepycat/b/i/p;

    .line 224
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 246
    const/16 v0, 0x8

    iput v0, p0, Lcom/sleepycat/b/i/c/b/aa;->B:I

    .line 320
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 321
    new-instance v0, Lcom/sleepycat/b/i/c/b/ab;

    invoke-direct {v0, v3, v3}, Lcom/sleepycat/b/i/c/b/ab;-><init>(IB)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->n:Lcom/sleepycat/b/i/c/b/ab;

    .line 323
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 324
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->b:Ljava/net/InetSocketAddress;

    .line 325
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 327
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    .line 329
    new-instance v0, Lcom/sleepycat/b/i/e/n;

    sget-object v1, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/e/n;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 330
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 331
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 332
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->G:Lcom/sleepycat/b/i/e/l;

    .line 333
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->H:Lcom/sleepycat/b/i/e/p;

    .line 334
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    .line 335
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    .line 336
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 337
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    .line 338
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->v:Ljava/util/Timer;

    .line 339
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->w:Lcom/sleepycat/b/i/c/b/a;

    .line 340
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->y:Lcom/sleepycat/b/i/c/b/g;

    .line 341
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->z:Lcom/sleepycat/b/i/c/b/f;

    .line 342
    iput-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 343
    return-void
.end method

.method public static a(Ljava/util/Set;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2122
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2123
    const-string v3, " 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2125
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sleepycat/b/i/c/b/x;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1216
    .line 1219
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->i()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 1222
    new-instance v3, Lcom/sleepycat/b/i/c/a;

    sget-object v4, Lcom/sleepycat/b/i/c/b/x;->d:Lcom/sleepycat/b/i/c/b/x;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/b/i/c/a;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V

    .line 1226
    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/net/InetSocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 1231
    const-string v0, "BinaryNodeState"

    invoke-static {v2, v0}, Lcom/sleepycat/b/i/h/x;->a(Ljava/nio/channels/SocketChannel;Ljava/lang/String;)V

    .line 1235
    new-instance v0, Lcom/sleepycat/b/i/c/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16087
    iget-object v4, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 1235
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 16760
    iget-object v5, v5, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 1235
    invoke-direct {v0, v3, v4, v5}, Lcom/sleepycat/b/i/c/b;-><init>(Lcom/sleepycat/b/i/c/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Lcom/sleepycat/b/i/c/a;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V

    .line 1241
    const-class v0, Lcom/sleepycat/b/i/c/c;

    invoke-virtual {v3, v2, v0}, Lcom/sleepycat/b/i/c/a;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/c;

    .line 17184
    iget-object v0, v0, Lcom/sleepycat/b/i/c/c;->a:Lcom/sleepycat/b/i/u;

    .line 1245
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/b/i/u;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1252
    :goto_0
    if-eqz v2, :cond_0

    .line 1254
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1257
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 1245
    goto :goto_0

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Queried master:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unavailable. Reason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1252
    if-eqz v2, :cond_2

    .line 1254
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    move v0, v1

    .line 1257
    goto :goto_1

    .line 1252
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 1254
    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1257
    :cond_3
    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3
.end method

.method private b(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1278
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1279
    new-instance v3, Lcom/sleepycat/b/i/c/x;

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 17760
    iget-object v0, v0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 1279
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-direct {v3, v0, v1, v4}, Lcom/sleepycat/b/i/c/x;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V

    .line 1282
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1283
    new-instance v1, Lcom/sleepycat/b/i/c/au;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "Group"

    new-instance v6, Lcom/sleepycat/b/i/c/ad;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v3}, Lcom/sleepycat/b/i/c/ad;-><init>(Lcom/sleepycat/b/i/c/x;)V

    invoke-direct {v1, v3, v0, v5, v6}, Lcom/sleepycat/b/i/c/au;-><init>(Lcom/sleepycat/b/i/c/ap;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/b/i/c/ay;)V

    .line 1293
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/au;->run()V

    .line 1294
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/au;->a()Lcom/sleepycat/b/i/c/az;

    move-result-object v1

    .line 1295
    if-eqz v1, :cond_0

    iget-object v5, v3, Lcom/sleepycat/b/i/c/x;->f:Lcom/sleepycat/b/i/c/av;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/az;->a()Lcom/sleepycat/b/i/c/av;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1299
    check-cast v1, Lcom/sleepycat/b/i/c/ae;

    .line 18344
    iget-object v1, v1, Lcom/sleepycat/b/i/c/ae;->a:Lcom/sleepycat/b/i/c/t;

    .line 1307
    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 19087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 1307
    invoke-virtual {v1, v5}, Lcom/sleepycat/b/i/c/t;->b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v5

    .line 1308
    if-eqz v5, :cond_0

    .line 19178
    iget-boolean v6, v5, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 1308
    if-nez v6, :cond_0

    .line 20174
    iget-boolean v5, v5, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 1308
    if-eqz v5, :cond_0

    .line 1312
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/t;->a(Ljava/net/InetSocketAddress;)Lcom/sleepycat/b/i/c/am;

    move-result-object v0

    .line 1313
    if-eqz v0, :cond_0

    .line 1314
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1318
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    return-void

    .line 1322
    :cond_2
    new-instance v0, Lcom/sleepycat/b/i/f;

    sget-object v1, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/b/i/f;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/p/au;Ljava/util/Set;)V

    throw v0
.end method

.method private o()V
    .locals 5

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->ae()Ljava/util/Set;

    move-result-object v1

    .line 12093
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 12094
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    .line 12096
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 12097
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 12099
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-eq v4, v2, :cond_0

    .line 12102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->b:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " the address associated with this node, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_1

    const-string v1, "is "

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "a loopback address. It conflicts with an existing use, by a different node  of the address:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v2, :cond_2

    const-string v0, " which is a loopback address."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Such mixing of addresses within a group is not allowed, since the nodes will not be able to communicate with each other."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12102
    :cond_1
    const-string v1, "is not "

    goto :goto_0

    :cond_2
    const-string v0, " which is not a loopback address."

    goto :goto_1

    .line 1148
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1150
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->f()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1151
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 1152
    const-string v0, "Need a helper to add a new node into the group"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1158
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 12295
    iget-object v1, v1, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    .line 1158
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;)V

    .line 1159
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v1

    .line 1160
    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1162
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13087
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 1162
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 14087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 1162
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1172
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1174
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1179
    :cond_5
    invoke-direct {p0, v1}, Lcom/sleepycat/b/i/c/b/aa;->a(Lcom/sleepycat/b/i/c/b/x;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1193
    :cond_6
    invoke-direct {p0, v0}, Lcom/sleepycat/b/i/c/b/aa;->b(Ljava/util/Set;)V

    .line 1196
    const-wide/16 v2, 0x2710

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1198
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1201
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New node "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 15087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 1201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " located master: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1203
    return-void
.end method

.method private p()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2217
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->O:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 2224
    :cond_0
    return v2

    .line 2221
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->O:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2222
    sget-boolean v1, Lcom/sleepycat/b/i/c/b/aa;->C:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/bc;Lcom/sleepycat/b/i/p;)Lcom/sleepycat/b/i/u;
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1767
    new-instance v6, Lcom/sleepycat/b/i/c/b/p;

    .line 39528
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 40392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 1767
    invoke-direct {v6, v0}, Lcom/sleepycat/b/i/c/b/p;-><init>(Lcom/sleepycat/b/c/m;)V

    .line 40689
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40693
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/u;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40694
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    sget-object v3, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 40696
    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/b/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->G:Lcom/sleepycat/b/i/e/l;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->H:Lcom/sleepycat/b/i/e/p;

    invoke-direct {v0, p0, v1, v3}, Lcom/sleepycat/b/i/b/d;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/k;Lcom/sleepycat/b/i/b/b;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 40700
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 41622
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 40700
    sget-object v1, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 40703
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 42392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 40703
    sget-object v1, Lcom/sleepycat/b/i/c/an;->v:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43361
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/p;->b:Lcom/sleepycat/b/i/c/t;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 43362
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Reinitializing group to node "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 43370
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 43371
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 43807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 43371
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/f;->a()V

    .line 43377
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->t()J

    .line 43379
    new-instance v0, Lcom/sleepycat/b/c;

    invoke-direct {v0}, Lcom/sleepycat/b/c;-><init>()V

    .line 44123
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/c;->b:Z

    .line 43386
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 44500
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 43386
    const-string v3, "Reinit of RepGroup"

    invoke-virtual {v1, v0, v3}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)V

    .line 43388
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 44807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 45775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 46114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 43391
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/p/au;)V

    .line 43392
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->h()Lcom/sleepycat/b/i/c/t;

    .line 43394
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 46807
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 43394
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v8

    .line 43407
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 47807
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 43407
    invoke-virtual {v1, v0, v8, v9}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;J)V

    .line 43409
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/d;->a()V

    .line 43411
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->d()V

    .line 40710
    :goto_0
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/aa;->I:Lcom/sleepycat/b/i/p;

    .line 40711
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 50356
    new-instance v1, Lcom/sleepycat/b/i/b/ak;

    iget-object v3, v0, Lcom/sleepycat/b/i/b/d;->b:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v1, v0, v3}, Lcom/sleepycat/b/i/b/ak;-><init>(Lcom/sleepycat/b/i/b/d;Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v1, v0, Lcom/sleepycat/b/i/b/d;->e:Lcom/sleepycat/b/i/b/m;

    .line 50357
    new-instance v1, Lcom/sleepycat/b/i/b/a;

    iget-object v3, v0, Lcom/sleepycat/b/i/b/d;->j:Lcom/sleepycat/b/i/b/x;

    iget-object v7, v0, Lcom/sleepycat/b/i/b/d;->c:Lcom/sleepycat/b/i/c/b/aa;

    iget-object v8, v0, Lcom/sleepycat/b/i/b/d;->i:Lcom/sleepycat/b/i/b/b;

    invoke-direct {v1, v3, v7, v8}, Lcom/sleepycat/b/i/b/a;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/b/b;)V

    iput-object v1, v0, Lcom/sleepycat/b/i/b/d;->f:Lcom/sleepycat/b/i/b/a;

    .line 50358
    iget-object v0, v0, Lcom/sleepycat/b/i/b/d;->f:Lcom/sleepycat/b/i/b/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40713
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50360
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 40713
    sget-object v1, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 40716
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->start()V

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "joinGroup "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v7}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50362
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 1776
    sget-object v1, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 1777
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50363
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 1777
    sget v1, Lcom/sleepycat/b/bb;->p:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V

    move v3, v5

    move-object v0, v2

    .line 1780
    :goto_1
    const/16 v1, 0xa

    if-ge v3, v1, :cond_10

    .line 50364
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 1783
    invoke-virtual {v6}, Lcom/sleepycat/b/i/c/b/p;->a()I

    move-result v7

    int-to-long v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v7}, Lcom/sleepycat/b/i/h/t;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    .line 1790
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v1

    .line 1792
    if-nez v7, :cond_e

    .line 1794
    invoke-virtual {v1}, Lcom/sleepycat/b/i/u;->b()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1795
    invoke-virtual {v6}, Lcom/sleepycat/b/i/c/b/p;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 50365
    iget v1, v6, Lcom/sleepycat/b/i/c/b/p;->a:I

    iput v1, v6, Lcom/sleepycat/b/i/c/b/p;->b:I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1780
    :goto_2
    :pswitch_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 48037
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->h()Lcom/sleepycat/b/i/c/t;

    .line 48038
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/d;->a()V

    .line 48039
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Current group size: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v7}, Lcom/sleepycat/b/i/c/t;->h()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 48041
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 48087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 48041
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/t;->b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v0

    .line 48042
    if-nez v0, :cond_9

    .line 48043
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "New node "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " unknown to rep group"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 48045
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->ae()Ljava/util/Set;

    move-result-object v0

    .line 48051
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->h()I

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 48409
    iget-object v1, v1, Lcom/sleepycat/b/i/h/x;->a:Ljava/net/InetSocketAddress;

    .line 48051
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 49334
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-static {}, Lcom/sleepycat/b/i/c/t;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/x;->a(I)V

    .line 49337
    new-instance v0, Lcom/sleepycat/b/i/b/am;

    invoke-direct {v0}, Lcom/sleepycat/b/i/b/am;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/am;->a()Lcom/sleepycat/b/i/b/s;

    move-result-object v0

    .line 49338
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 50295
    iget-object v1, v1, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    .line 49338
    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->H:Lcom/sleepycat/b/i/e/p;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/p;->a()Lcom/sleepycat/b/i/b/ai;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sleepycat/b/i/b/j;->a(Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V

    .line 49340
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Nascent group. "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 50296
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 49340
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " is master by virtue of being the first node."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 49343
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->f()V

    .line 49344
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 49345
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50297
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 49345
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/f;->a()V

    .line 49346
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    .line 50298
    iget-object v1, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 50345
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 50299
    sget-object v3, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v3

    .line 50300
    sget-object v7, Lcom/sleepycat/b/i/c/an;->p:Lcom/sleepycat/b/b/b;

    invoke-virtual {v1, v7}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v7

    .line 50302
    iget-object v1, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/aj;->af()Lcom/sleepycat/b/c/i;

    move-result-object v1

    .line 50305
    new-instance v8, Lcom/sleepycat/b/i/c/q;

    invoke-direct {v8}, Lcom/sleepycat/b/i/c/q;-><init>()V

    .line 50306
    new-instance v9, Lcom/sleepycat/b/i/c/t;

    invoke-direct {v9, v3}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;)V

    .line 50307
    new-instance v10, Lcom/sleepycat/b/m;

    invoke-direct {v10}, Lcom/sleepycat/b/m;-><init>()V

    .line 50308
    invoke-virtual {v8, v9, v10}, Lcom/sleepycat/b/i/c/q;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 50311
    new-instance v8, Lcom/sleepycat/b/br;

    invoke-direct {v8}, Lcom/sleepycat/b/br;-><init>()V

    .line 50312
    sget-object v3, Lcom/sleepycat/b/i/c/p;->d:Lcom/sleepycat/b/br;

    .line 50346
    iget-object v3, v3, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    .line 50312
    invoke-virtual {v8, v3}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 50313
    sget-object v3, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    .line 50349
    iput-object v3, v8, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50317
    :try_start_3
    new-instance v3, Lcom/sleepycat/b/i/f/b;

    iget-object v9, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    iget-object v11, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 50351
    iget-object v11, v11, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 50317
    invoke-direct {v3, v9, v8, v11}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 50321
    :try_start_4
    sget-object v8, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {v1, v3, v8}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v1

    .line 50322
    :try_start_5
    sget-object v8, Lcom/sleepycat/b/i/c/p;->c:Lcom/sleepycat/b/m;

    invoke-virtual {v1, v8, v10}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v8

    .line 50323
    sget-object v9, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v8, v9, :cond_5

    .line 50324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write first group entry "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50332
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v1, :cond_3

    .line 50333
    :try_start_6
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 50336
    :cond_3
    if-eqz v2, :cond_4

    .line 50337
    invoke-virtual {v2}, Lcom/sleepycat/b/n/z;->n()V

    .line 50332
    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 40713
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50361
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 40713
    sget-object v2, Lcom/sleepycat/b/c/bg;->r:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    throw v0

    .line 50327
    :cond_5
    :try_start_7
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50328
    const/4 v1, 0x0

    .line 50329
    :try_start_8
    invoke-virtual {v3}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 50330
    const/4 v3, 0x0

    .line 50332
    if-eqz v2, :cond_6

    .line 50333
    :try_start_9
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 50336
    :cond_6
    if-eqz v2, :cond_7

    .line 50337
    invoke-virtual {v3}, Lcom/sleepycat/b/n/z;->n()V

    .line 50341
    :cond_7
    new-instance v1, Lcom/sleepycat/b/i/c/am;

    iget-object v3, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/aj;->ab()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v8}, Lcom/sleepycat/b/i/c/aj;->ac()I

    move-result v8

    invoke-direct {v1, v7, v3, v8}, Lcom/sleepycat/b/i/c/am;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/am;)V

    .line 49347
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->h()Lcom/sleepycat/b/i/c/t;

    .line 49349
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->d()V

    .line 48057
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/c/t;)V

    goto/16 :goto_0

    .line 48060
    :cond_8
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/aa;->o()V

    goto/16 :goto_0

    .line 50352
    :cond_9
    iget-boolean v0, v0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 48063
    if-eqz v0, :cond_a

    .line 48064
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 50353
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 48064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was previously deleted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 48068
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Existing node "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 50354
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 48068
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " querying for a current master."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 48076
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->ae()Ljava/util/Set;

    move-result-object v0

    .line 48077
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/t;->f()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 48078
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    .line 50355
    iget-object v1, v1, Lcom/sleepycat/b/i/b/d;->g:Lcom/sleepycat/b/i/b/j;

    .line 48078
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/b/j;->a(Ljava/util/Set;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    .line 1803
    :cond_b
    :try_start_a
    new-instance v1, Lcom/sleepycat/b/i/r;

    const-string v7, "Setup time exceeded %,d ms"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 50367
    iget v10, v6, Lcom/sleepycat/b/i/c/b/p;->a:I

    .line 1803
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/sleepycat/b/i/r;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1843
    :catch_0
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1877
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50400
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 1877
    sget-object v2, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    throw v0

    .line 50368
    :cond_c
    :try_start_c
    sget-object v7, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    if-ne v1, v7, :cond_d

    move v1, v4

    .line 1809
    :goto_4
    if-eqz v1, :cond_10

    invoke-virtual {v6}, Lcom/sleepycat/b/i/c/b/p;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1811
    sget-object v0, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1877
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50400
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 1877
    sget-object v2, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 1841
    :goto_5
    return-object v0

    :cond_d
    move v1, v5

    .line 50368
    goto :goto_4

    .line 1816
    :cond_e
    :try_start_d
    sget-object v7, Lcom/sleepycat/b/i/c/b/aa$1;->a:[I

    invoke-virtual {v1}, Lcom/sleepycat/b/i/u;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    packed-switch v7, :pswitch_data_0

    .line 1877
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50400
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 1877
    sget-object v2, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    move-object v0, v1

    .line 1841
    goto :goto_5

    .line 50393
    :pswitch_1
    :try_start_e
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50394
    iget-object v7, v7, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 50370
    sget-object v8, Lcom/sleepycat/b/i/c/an;->h:Lcom/sleepycat/b/b/c;

    invoke-virtual {v7, v8}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v7

    .line 50372
    new-instance v8, Lcom/sleepycat/b/i/c/n;

    new-instance v9, Lcom/sleepycat/b/p/au;

    iget-object v10, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 50395
    iget-object v10, v10, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 50396
    iget-wide v10, v10, Lcom/sleepycat/b/i/c/b/ai;->d:J

    .line 50372
    invoke-direct {v9, v10, v11}, Lcom/sleepycat/b/p/au;-><init>(J)V

    int-to-long v10, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/sleepycat/b/i/c/n;-><init>(Lcom/sleepycat/b/p/au;JLjava/util/concurrent/TimeUnit;)V

    .line 50380
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-interface {v8, v7}, Lcom/sleepycat/b/bc;->a(Lcom/sleepycat/b/c/ad;)V

    .line 50387
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50397
    iget-object v7, v7, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 50387
    invoke-virtual {v7}, Lcom/sleepycat/b/g/am;->b()V

    .line 50389
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Joined group as a replica.  join consistencyPolicy="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50398
    iget-object v10, v10, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 50399
    iget-object v10, v10, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v10}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v10

    .line 50389
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v9, v8}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_6

    .line 1844
    :catch_1
    move-exception v1

    .line 1846
    :try_start_f
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Join retry due to master transition: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sleepycat/b/i/k;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_2

    .line 1831
    :pswitch_2
    :try_start_10
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v9, "Joining group as master"

    invoke-static {v7, v8, v9}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_10 .. :try_end_10} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_10 .. :try_end_10} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_6

    .line 1850
    :catch_2
    move-exception v0

    .line 1851
    :try_start_11
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Environment needs to be restarted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/y;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1854
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1836
    :pswitch_3
    :try_start_12
    const-string v1, "Node in DETACHED state while joining group."

    invoke-static {v1}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/sleepycat/b/i/k; {:try_start_12 .. :try_end_12} :catch_1
    .catch Lcom/sleepycat/b/i/y; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1855
    :catch_3
    move-exception v0

    .line 1856
    :try_start_13
    invoke-virtual {v0}, Lcom/sleepycat/b/n;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1857
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/sleepycat/b/i/c/b/ah;

    if-ne v7, v8, :cond_f

    .line 1866
    invoke-virtual {v6}, Lcom/sleepycat/b/i/c/b/p;->a()I

    move-result v7

    if-lez v7, :cond_f

    .line 1867
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v8, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Join retry due to exception: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1873
    :cond_f
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1877
    :cond_10
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50400
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 1877
    sget-object v4, Lcom/sleepycat/b/c/bg;->s:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 1881
    if-eqz v0, :cond_11

    .line 1882
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exiting joinGroup after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retries."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1884
    throw v0

    .line 1886
    :cond_11
    new-instance v0, Lcom/sleepycat/b/i/af;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50401
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/z;->b()Lcom/sleepycat/b/i/ab;

    move-result-object v1

    .line 1886
    invoke-direct {v0, v2, v1}, Lcom/sleepycat/b/i/af;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v0

    .line 50332
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3

    .line 1816
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 385
    new-instance v1, Lcom/sleepycat/b/i/h/t;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/i/h/t;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 386
    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/t;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/h/t;->a(Ljava/lang/Exception;)V

    .line 390
    :cond_0
    return-void
.end method

.method public final b()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    if-nez v0, :cond_0

    .line 429
    const-string v0, "Group info is not available"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 6304
    iget-object v0, v0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 432
    return-object v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 1675
    .line 39512
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 1675
    return v0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 483
    .line 6528
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 7392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 483
    sget-object v1, Lcom/sleepycat/b/i/c/an;->y:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    return v0
.end method

.method public final e()[Lcom/sleepycat/b/i/c/am;
    .locals 5

    .prologue
    .line 559
    .line 7421
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 559
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/t;->d()Ljava/util/Set;

    move-result-object v1

    .line 560
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Lcom/sleepycat/b/i/c/am;

    .line 561
    const/4 v0, 0x0

    .line 562
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 563
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    .line 564
    goto :goto_0

    .line 565
    :cond_0
    return-object v3
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    .line 8099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 640
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    .line 9087
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g()Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 9787
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ak:Lcom/sleepycat/b/i/c/al;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/al;->a()Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 656
    return-object v0
.end method

.method public final h()Lcom/sleepycat/b/i/c/t;
    .locals 4

    .prologue
    .line 735
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->j:Lcom/sleepycat/b/i/c/p;

    new-instance v1, Lcom/sleepycat/b/i/n;

    invoke-direct {v1}, Lcom/sleepycat/b/i/n;-><init>()V

    .line 10231
    iget-object v2, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 10392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 10231
    sget-object v3, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/aj;Ljava/lang/String;Lcom/sleepycat/b/bc;)Lcom/sleepycat/b/i/c/t;

    move-result-object v0

    .line 735
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 736
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/c/t;)V

    .line 737
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 11087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 738
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/t;->a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 741
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 11190
    iget-object v0, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 741
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/x;->a(Lcom/sleepycat/b/i/c/b/x;)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    return-object v0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .prologue
    .line 941
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->q:Lcom/sleepycat/b/i/c/b/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    monitor-exit p0

    return-void

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final j()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/c/b/o;->a(Lcom/sleepycat/b/i/c/t;)V

    .line 1012
    return-void
.end method

.method public final k()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1580
    .line 28119
    iget-object v2, p0, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1580
    if-eqz v2, :cond_0

    .line 1587
    :goto_0
    return v0

    .line 28520
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 28562
    iget-object v3, v2, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v4, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    if-eq v3, v4, :cond_1

    iget-object v3, v2, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v4, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    if-ne v3, v4, :cond_2

    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    if-eqz v2, :cond_2

    :cond_1
    move v2, v0

    .line 1583
    :goto_1
    if-eqz v2, :cond_3

    .line 29520
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 29526
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    .line 30115
    iput-object v1, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    goto :goto_0

    :cond_2
    move v2, v1

    .line 28562
    goto :goto_1

    :cond_3
    move v0, v1

    .line 1587
    goto :goto_0
.end method

.method public final l()V
    .locals 5

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1664
    :goto_0
    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shutting down node "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->t:Lcom/sleepycat/b/i/c/b/w;

    .line 31111
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 30683
    if-nez v0, :cond_3

    .line 30684
    sget-object v0, Lcom/sleepycat/b/i/d/d;->a:Lcom/sleepycat/b/i/d/d;

    .line 1610
    :goto_1
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/d/d;)V

    .line 1614
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    .line 31189
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sleepycat/b/i/h/x;->b:Z

    .line 1616
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    if-eqz v0, :cond_2

    .line 1617
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/b/d;->c()V

    .line 1621
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 31326
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/m;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 32119
    iget-object v1, v1, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 31326
    if-nez v1, :cond_5

    .line 31327
    const-string v0, "Rep node is still active"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 30685
    :cond_3
    instance-of v0, v0, Lcom/sleepycat/b/i/d;

    if-eqz v0, :cond_4

    .line 30686
    sget-object v0, Lcom/sleepycat/b/i/d/d;->c:Lcom/sleepycat/b/i/d/d;

    goto :goto_1

    .line 30688
    :cond_4
    sget-object v0, Lcom/sleepycat/b/i/d/d;->b:Lcom/sleepycat/b/i/d/d;

    goto :goto_1

    .line 31330
    :cond_5
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/m;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 31332
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/m;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/b/i/h/q;->a:Ljava/nio/channels/SocketChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 32129
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 1623
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/u;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1630
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->join()V

    .line 1634
    :cond_6
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 32215
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 33119
    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 32215
    if-nez v0, :cond_7

    .line 32216
    const-string v0, "Rep node must have initiated the shutdown."

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 32219
    :cond_7
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    .line 33417
    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 34111
    iget-object v0, v0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 33426
    instance-of v3, v0, Lcom/sleepycat/b/aa;

    if-eqz v3, :cond_11

    check-cast v0, Lcom/sleepycat/b/aa;

    .line 33436
    :goto_2
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/n;)V

    .line 32220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    if-eq v0, v2, :cond_8

    .line 32235
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/ag;->c:Lcom/sleepycat/b/i/h/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 32241
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 35380
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->l:Lcom/sleepycat/b/i/c/b/b;

    .line 32241
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/b;->a()V

    .line 1636
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/util/logging/Logger;)V

    .line 1638
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RepNode main thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exited."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 35695
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->J:Lcom/sleepycat/b/i/g/a/f;

    if-eqz v0, :cond_9

    .line 35696
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->J:Lcom/sleepycat/b/i/g/a/f;

    .line 36061
    iget-object v0, v0, Lcom/sleepycat/b/i/g/a/f;->c:Lcom/sleepycat/b/i/h/x;

    const-string v1, "LDiff"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 35699
    :cond_9
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    if-eqz v0, :cond_a

    .line 35700
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->o:Lcom/sleepycat/b/i/c/a/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/a/a;->b()V

    .line 35703
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->L:Lcom/sleepycat/b/i/c/d;

    if-eqz v0, :cond_b

    .line 35704
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->L:Lcom/sleepycat/b/i/c/d;

    .line 37055
    iget-object v0, v0, Lcom/sleepycat/b/i/c/d;->b:Lcom/sleepycat/b/i/h/x;

    const-string v1, "BinaryNodeState"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 35707
    :cond_b
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->K:Lcom/sleepycat/b/i/c/l;

    if-eqz v0, :cond_c

    .line 35708
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    const-string v1, "NodeState"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 35711
    :cond_c
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->M:Lcom/sleepycat/b/i/c/g;

    if-eqz v0, :cond_d

    .line 35712
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    const-string v1, "Group"

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/x;->a(Ljava/lang/String;)V

    .line 37933
    :cond_d
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->q:Lcom/sleepycat/b/i/c/b/u;

    .line 1645
    if-eqz v1, :cond_f

    .line 38111
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1647
    if-nez v0, :cond_e

    .line 1648
    new-instance v0, Lcom/sleepycat/b/i/l;

    const-string v2, "shutting down"

    invoke-direct {v0, v2}, Lcom/sleepycat/b/i/l;-><init>(Ljava/lang/String;)V

    .line 1650
    :cond_e
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/u;->a(Ljava/lang/Exception;)Z

    .line 1652
    :cond_f
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->c:Lcom/sleepycat/b/i/h/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/x;->b()V

    .line 1653
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shutdown completed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1655
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/e/n;->a(Ljava/net/InetSocketAddress;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1656
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->k:Lcom/sleepycat/b/i/h/t;

    .line 39111
    iget-object v1, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1656
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/h/t;->a(Ljava/lang/Exception;)V

    .line 1659
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->w:Lcom/sleepycat/b/i/c/b/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/a;->cancel()Z

    .line 1660
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    if-eqz v0, :cond_10

    .line 1661
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->N:Lcom/sleepycat/b/i/c/b/s;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/s;->a()V

    .line 1663
    :cond_10
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->v:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_0

    .line 33426
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/sleepycat/b/i/c/b/ai;->k:Lcom/sleepycat/b/i/c/b/ag;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/ag;->a(Lcom/sleepycat/b/i/c/b/ag;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    .line 34454
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 33426
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was shut down."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public final m()J
    .locals 4

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50402
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->ag:Lcom/sleepycat/b/k/a/c;

    .line 1970
    invoke-virtual {v0}, Lcom/sleepycat/b/k/a/c;->a()J

    move-result-wide v0

    .line 1971
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1972
    new-instance v2, Lcom/sleepycat/b/p/au;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/b/p/au;-><init>(J)V

    .line 1973
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 50403
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 1973
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 50404
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 1974
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;)J

    move-result-wide v0

    .line 1978
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/o;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1434
    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 21087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 1436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " started"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1438
    :goto_0
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->k()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1439
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v0

    sget-object v2, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    if-eq v0, v2, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v2, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    sget-object v3, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->j()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/x;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1453
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/aa;->o()V

    .line 1464
    :goto_1
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->k()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/b/i/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/b/i/f; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1531
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread shutting down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_10

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 1565
    :goto_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    :goto_3
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1567
    return-void

    .line 1455
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->d:Lcom/sleepycat/b/i/b/d;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->I:Lcom/sleepycat/b/i/p;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/b/d;->a(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/p;)V

    .line 1461
    sget-object v0, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->I:Lcom/sleepycat/b/i/p;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sleepycat/b/i/d; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sleepycat/b/i/f; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1510
    :catch_1
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread interrupted -  forced shutdown."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1531
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread shutting down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_8

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    .line 1565
    :goto_4
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    goto :goto_3

    .line 1470
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->f()V

    .line 1472
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1473
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 21807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 1473
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/f;->a()V

    .line 1474
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    .line 22709
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sleepycat/b/i/c/b/ag;->g:Lcom/sleepycat/b/i/c/b/aj;

    .line 22710
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ag;->b:Lcom/sleepycat/b/i/c/b/ac;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/ac;->a()V

    .line 22711
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/ag;->d:Lcom/sleepycat/b/i/c/b/ai;

    new-instance v3, Lcom/sleepycat/b/i/k;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/ag;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 23520
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 24487
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->b()Lcom/sleepycat/b/i/ab;

    move-result-object v0

    .line 22711
    invoke-direct {v3, v0}, Lcom/sleepycat/b/i/k;-><init>(Lcom/sleepycat/b/i/ab;)V

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/b/ai;->a(Lcom/sleepycat/b/n;)V

    .line 1477
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v2, Lcom/sleepycat/b/i/u;->c:Lcom/sleepycat/b/i/u;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/e/n;->h()Lcom/sleepycat/b/i/c/b/x;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1479
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/m;->b()V

    .line 1495
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v2, Lcom/sleepycat/b/i/u;->b:Lcom/sleepycat/b/i/u;

    sget-object v3, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1496
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 24807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 1496
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/f;->b()V

    .line 1497
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/aa;->C:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/aa;->p()Z

    .line 1498
    :cond_4
    new-instance v0, Lcom/sleepycat/b/i/c/b/m;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/b/m;-><init>(Lcom/sleepycat/b/i/c/b/aa;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sleepycat/b/i/d; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sleepycat/b/i/f; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1513
    :catch_3
    move-exception v0

    .line 25115
    :try_start_6
    iput-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1515
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RepNode main thread sees group shutdown - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1531
    :try_start_7
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread shutting down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_a

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v1
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v0

    .line 1565
    :goto_5
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    goto/16 :goto_3

    .line 1505
    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/ag;->d()V

    .line 1506
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->e:Lcom/sleepycat/b/i/c/b/ag;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/ag;->a()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/sleepycat/b/i/d; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/sleepycat/b/i/f; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1517
    :catch_5
    move-exception v0

    .line 26115
    :try_start_9
    iput-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1531
    :try_start_a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread shutting down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_c

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    move-exception v0

    .line 1565
    :goto_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    goto/16 :goto_3

    .line 1519
    :catch_7
    move-exception v0

    .line 1520
    :try_start_b
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RepNode main thread sees runtime ex - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 27115
    iput-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1523
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1530
    :catchall_0
    move-exception v0

    .line 1531
    :goto_7
    :try_start_c
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v4, "RepNode main thread shutting down."

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_6

    .line 1535
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Node state at shutdown:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_8

    :catch_8
    move-exception v1

    .line 1565
    :goto_8
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v2, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v3, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/i/c/b/z;->a(Lcom/sleepycat/b/i/u;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1530
    throw v0

    .line 1524
    :catch_9
    move-exception v0

    .line 1525
    :try_start_d
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " incurred during repnode loop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1528
    :try_start_e
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/aj;->a(Ljava/lang/Error;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1531
    :try_start_f
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread shutting down."

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v0, :cond_e

    .line 1535
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_a

    :catch_a
    move-exception v0

    .line 1565
    :goto_9
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    goto/16 :goto_3

    .line 28111
    :cond_6
    :try_start_10
    iget-object v1, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v1, :cond_7

    .line 1543
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Node state at shutdown:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1554
    :goto_a
    :try_start_11
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_11
    .catch Lcom/sleepycat/b/n; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_8

    .line 1555
    :catch_b
    move-exception v2

    .line 1556
    :try_start_12
    invoke-static {v2, v1}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected exception during shutdown"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v2

    .line 1547
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RepNode shutdown exception:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v5}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_a

    .line 28111
    :cond_8
    :try_start_13
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v0, :cond_9

    .line 1543
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_2

    .line 1554
    :goto_b
    :try_start_14
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_14
    .catch Lcom/sleepycat/b/n; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_4

    .line 1555
    :catch_c
    move-exception v1

    .line 1556
    :try_start_15
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception during shutdown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v1

    .line 1547
    :cond_9
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RepNode shutdown exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_b

    .line 28111
    :cond_a
    :try_start_16
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v0, :cond_b

    .line 1543
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_4

    .line 1554
    :goto_c
    :try_start_17
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_17
    .catch Lcom/sleepycat/b/n; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_4

    goto/16 :goto_5

    .line 1555
    :catch_d
    move-exception v1

    .line 1556
    :try_start_18
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception during shutdown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v1

    .line 1547
    :cond_b
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RepNode shutdown exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_c

    .line 28111
    :cond_c
    :try_start_19
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v0, :cond_d

    .line 1543
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_6

    .line 1554
    :goto_d
    :try_start_1a
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_1a
    .catch Lcom/sleepycat/b/n; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_6

    .line 1555
    :catch_e
    move-exception v1

    .line 1556
    :try_start_1b
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception during shutdown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v1

    .line 1547
    :cond_d
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RepNode shutdown exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_d

    .line 28111
    :cond_e
    :try_start_1c
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v0, :cond_f

    .line 1543
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_a

    .line 1554
    :goto_e
    :try_start_1d
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_1d
    .catch Lcom/sleepycat/b/n; {:try_start_1d .. :try_end_1d} :catch_f
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_a

    goto/16 :goto_9

    .line 1555
    :catch_f
    move-exception v1

    .line 1556
    :try_start_1e
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception during shutdown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v1

    .line 1547
    :cond_f
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RepNode shutdown exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_a

    goto :goto_e

    .line 28111
    :cond_10
    :try_start_1f
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v0, :cond_11

    .line 1543
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_0

    .line 1554
    :goto_f
    :try_start_20
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_20
    .catch Lcom/sleepycat/b/n; {:try_start_20 .. :try_end_20} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_0

    goto/16 :goto_2

    .line 1555
    :catch_10
    move-exception v1

    .line 1556
    :try_start_21
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception during shutdown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v1

    .line 1547
    :cond_11
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RepNode shutdown exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_0

    goto :goto_f

    .line 1531
    :cond_12
    :try_start_22
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "RepNode main thread shutting down."

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1534
    if-eqz v1, :cond_13

    .line 1535
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1538
    throw v1
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_22} :catch_11

    :catch_11
    move-exception v0

    .line 1565
    :goto_10
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->h:Lcom/sleepycat/b/i/c/b/z;

    sget-object v1, Lcom/sleepycat/b/i/u;->a:Lcom/sleepycat/b/i/u;

    sget-object v2, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    goto/16 :goto_3

    .line 28111
    :cond_13
    :try_start_23
    iget-object v0, p0, Lcom/sleepycat/b/p/aj;->F:Ljava/lang/Exception;

    .line 1542
    if-nez v0, :cond_14

    .line 1543
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Node state at shutdown:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_23} :catch_11

    .line 1554
    :goto_11
    :try_start_24
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/b/aa;->l()V
    :try_end_24
    .catch Lcom/sleepycat/b/n; {:try_start_24 .. :try_end_24} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_11

    goto :goto_10

    .line 1555
    :catch_12
    move-exception v1

    .line 1556
    :try_start_25
    invoke-static {v1, v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1557
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception during shutdown"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1560
    throw v1

    .line 1547
    :cond_14
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RepNode shutdown exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/aj;->ai()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_11

    goto :goto_11

    .line 1530
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_7
.end method
