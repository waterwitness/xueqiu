.class public Lcom/sleepycat/b/a/c;
.super Ljava/lang/Object;
.source "Cleaner.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# static fields
.field static final a:Lcom/sleepycat/b/a;

.field static final synthetic ah:Z


# instance fields
.field A:Lcom/sleepycat/b/p/z;

.field public B:Lcom/sleepycat/b/p/z;

.field public C:Lcom/sleepycat/b/p/l;

.field public D:Lcom/sleepycat/b/p/o;

.field E:J

.field F:I

.field G:I

.field H:J

.field I:Z

.field public J:Z

.field public K:Z

.field L:I

.field M:J

.field public N:Z

.field public O:Z

.field P:Z

.field Q:I

.field public R:Z

.field public S:Z

.field public final T:Z

.field U:I

.field V:I

.field W:I

.field public X:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final Z:Lcom/sleepycat/b/c/ad;

.field public final aa:Lcom/sleepycat/b/a/ad;

.field public final ab:Lcom/sleepycat/b/a/ae;

.field public final ac:Lcom/sleepycat/b/a/aa;

.field public final ad:Lcom/sleepycat/b/a/k;

.field public ae:[Lcom/sleepycat/b/a/h;

.field final af:Ljava/util/concurrent/atomic/AtomicLong;

.field ag:Lcom/sleepycat/b/p/ao;

.field private final ai:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final aj:Ljava/lang/String;

.field private final ak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final al:Ljava/util/logging/Logger;

.field private final am:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lcom/sleepycat/b/p/ai;

.field c:Lcom/sleepycat/b/p/z;

.field d:Lcom/sleepycat/b/p/z;

.field e:Lcom/sleepycat/b/p/z;

.field f:Lcom/sleepycat/b/p/z;

.field g:Lcom/sleepycat/b/p/z;

.field h:Lcom/sleepycat/b/p/z;

.field i:Lcom/sleepycat/b/p/z;

.field j:Lcom/sleepycat/b/p/z;

.field k:Lcom/sleepycat/b/p/z;

.field l:Lcom/sleepycat/b/p/z;

.field m:Lcom/sleepycat/b/p/z;

.field n:Lcom/sleepycat/b/p/z;

.field o:Lcom/sleepycat/b/p/z;

.field p:Lcom/sleepycat/b/p/z;

.field q:Lcom/sleepycat/b/p/z;

.field r:Lcom/sleepycat/b/p/z;

.field s:Lcom/sleepycat/b/p/z;

.field t:Lcom/sleepycat/b/p/z;

.field u:Lcom/sleepycat/b/p/z;

.field public v:Lcom/sleepycat/b/p/z;

.field public w:Lcom/sleepycat/b/p/z;

.field public x:Lcom/sleepycat/b/p/z;

.field y:Lcom/sleepycat/b/p/z;

.field z:Lcom/sleepycat/b/p/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/sleepycat/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/c;->ah:Z

    .line 159
    sget-object v0, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    sput-object v0, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->X:Ljava/util/Set;

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->Y:Ljava/util/Set;

    .line 287
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 293
    iput-object p1, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 294
    iput-object p2, p0, Lcom/sleepycat/b/a/c;->aj:Ljava/lang/String;

    .line 297
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Cleaning"

    const-string v2, "Frequency and extent of log file cleaning activity."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    .line 298
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->c:Lcom/sleepycat/b/p/z;

    .line 299
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->d:Lcom/sleepycat/b/p/z;

    .line 300
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->e:Lcom/sleepycat/b/p/z;

    .line 301
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->f:Lcom/sleepycat/b/p/z;

    .line 302
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->g:Lcom/sleepycat/b/p/z;

    .line 303
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->i:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->h:Lcom/sleepycat/b/p/z;

    .line 304
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->j:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->i:Lcom/sleepycat/b/p/z;

    .line 305
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->k:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->j:Lcom/sleepycat/b/p/z;

    .line 306
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->l:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->k:Lcom/sleepycat/b/p/z;

    .line 307
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->m:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->l:Lcom/sleepycat/b/p/z;

    .line 308
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->n:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->m:Lcom/sleepycat/b/p/z;

    .line 309
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->o:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->n:Lcom/sleepycat/b/p/z;

    .line 310
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->p:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->o:Lcom/sleepycat/b/p/z;

    .line 311
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->q:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    .line 312
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->r:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->q:Lcom/sleepycat/b/p/z;

    .line 313
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->s:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->r:Lcom/sleepycat/b/p/z;

    .line 314
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->t:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->s:Lcom/sleepycat/b/p/z;

    .line 315
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->u:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->t:Lcom/sleepycat/b/p/z;

    .line 316
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->v:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->u:Lcom/sleepycat/b/p/z;

    .line 318
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->w:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->v:Lcom/sleepycat/b/p/z;

    .line 319
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->x:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->w:Lcom/sleepycat/b/p/z;

    .line 321
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->y:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->x:Lcom/sleepycat/b/p/z;

    .line 323
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->z:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->y:Lcom/sleepycat/b/p/z;

    .line 324
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->A:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->z:Lcom/sleepycat/b/p/z;

    .line 325
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->B:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->A:Lcom/sleepycat/b/p/z;

    .line 327
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->C:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->B:Lcom/sleepycat/b/p/z;

    .line 328
    new-instance v0, Lcom/sleepycat/b/p/l;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->D:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/l;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->C:Lcom/sleepycat/b/p/l;

    .line 330
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/a/e;->E:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->D:Lcom/sleepycat/b/p/o;

    .line 333
    new-instance v0, Lcom/sleepycat/b/a/ae;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/a/ae;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 334
    new-instance v0, Lcom/sleepycat/b/a/ad;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/a/ad;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/ae;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 335
    new-instance v0, Lcom/sleepycat/b/a/aa;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/a/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    .line 336
    new-instance v0, Lcom/sleepycat/b/a/k;

    invoke-direct {v0}, Lcom/sleepycat/b/a/k;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    .line 337
    new-array v0, v3, [Lcom/sleepycat/b/a/h;

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    .line 338
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    .line 340
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/a/c;->af:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 347
    sget-object v1, Lcom/sleepycat/b/b/d;->aV:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->N:Z

    .line 4392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 350
    sget-object v1, Lcom/sleepycat/b/b/d;->aX:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->T:Z

    .line 5392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 354
    invoke-direct {p0, v0}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/c/m;)V

    .line 355
    invoke-virtual {p1, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 356
    return-void
.end method

.method private static a(Ljava/util/Collection;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1039
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1040
    int-to-float v0, v0

    add-float/2addr v0, v1

    move v1, v0

    .line 1041
    goto :goto_0

    .line 1042
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method static a(Lcom/sleepycat/b/l/y;)Lcom/sleepycat/b/g/av;
    .locals 4

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/sleepycat/b/l/y;->m()J

    move-result-wide v2

    .line 1630
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 1631
    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    .line 1633
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/g/av;

    new-instance v1, Lcom/sleepycat/b/p/au;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/g/av;-><init>(Lcom/sleepycat/b/p/au;B)V

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/c/m;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 368
    sget-object v0, Lcom/sleepycat/b/b/d;->aF:Lcom/sleepycat/b/b/c;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/a/c;->E:J

    .line 370
    sget-object v0, Lcom/sleepycat/b/b/d;->aT:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->F:I

    .line 371
    iget v0, p0, Lcom/sleepycat/b/a/c;->F:I

    if-gtz v0, :cond_0

    .line 372
    sget-object v0, Lcom/sleepycat/b/b/d;->L:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->F:I

    .line 376
    :cond_0
    sget-object v0, Lcom/sleepycat/b/b/d;->bb:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->G:I

    .line 379
    sget-object v0, Lcom/sleepycat/b/b/d;->bc:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->R:Z

    .line 382
    sget-object v0, Lcom/sleepycat/b/b/d;->bd:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->S:Z

    .line 385
    sget-object v0, Lcom/sleepycat/b/b/d;->aE:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/a/c;->H:J

    .line 387
    sget-object v0, Lcom/sleepycat/b/b/d;->aG:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->I:Z

    .line 389
    sget-object v0, Lcom/sleepycat/b/b/d;->aQ:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->J:Z

    .line 391
    sget-object v0, Lcom/sleepycat/b/b/d;->aR:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->K:Z

    .line 393
    sget-object v0, Lcom/sleepycat/b/b/d;->aS:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->L:I

    .line 395
    sget-object v0, Lcom/sleepycat/b/b/d;->bf:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->Q:I

    .line 398
    iget-boolean v0, p0, Lcom/sleepycat/b/a/c;->J:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/b/a/c;->K:Z

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Both "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sleepycat/b/b/d;->aQ:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/b/d;->aR:Lcom/sleepycat/b/b/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may not be set to true."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_1
    sget-object v0, Lcom/sleepycat/b/b/d;->ba:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v7

    .line 406
    sget-boolean v0, Lcom/sleepycat/b/a/c;->ah:Z

    if-nez v0, :cond_2

    if-gtz v7, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v0, v0

    if-eq v7, v0, :cond_7

    move v0, v7

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 412
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sleepycat/b/a/h;->e()V

    .line 414
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 411
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_4
    new-array v1, v7, [Lcom/sleepycat/b/a/h;

    move v0, v8

    .line 420
    :goto_1
    if-ge v0, v7, :cond_5

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 421
    iget-object v2, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_5
    iput-object v1, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    move v9, v8

    .line 428
    :goto_2
    if-ge v9, v7, :cond_7

    .line 429
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v0, v0, v9

    if-nez v0, :cond_6

    .line 430
    iget-object v10, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    new-instance v0, Lcom/sleepycat/b/a/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->aj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    iget-object v4, p0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    iget-object v5, p0, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    iget-object v6, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/a/h;-><init>(Ljava/lang/String;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;Lcom/sleepycat/b/a/ad;Lcom/sleepycat/b/a/aa;Lcom/sleepycat/b/a/k;)V

    aput-object v0, v10, v9

    .line 428
    :cond_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_2

    .line 437
    :cond_7
    sget-object v0, Lcom/sleepycat/b/b/d;->aB:Lcom/sleepycat/b/b/f;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/a/c;->M:J

    .line 439
    iget-wide v0, p0, Lcom/sleepycat/b/a/c;->M:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 440
    sget-object v0, Lcom/sleepycat/b/b/d;->N:Lcom/sleepycat/b/b/f;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/a/c;->M:J

    .line 444
    :cond_8
    sget-object v0, Lcom/sleepycat/b/b/d;->aC:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->O:Z

    .line 453
    sget-object v0, Lcom/sleepycat/b/b/d;->be:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/sleepycat/b/b/d;->ay:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/sleepycat/b/a/c;->P:Z

    .line 457
    sget-object v0, Lcom/sleepycat/b/b/d;->aK:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->W:I

    .line 458
    sget-object v0, Lcom/sleepycat/b/b/d;->az:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->U:I

    .line 459
    sget-object v0, Lcom/sleepycat/b/b/d;->aA:Lcom/sleepycat/b/b/e;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/c;->V:I

    .line 461
    return-void

    :cond_9
    move v0, v8

    .line 453
    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 521
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 522
    if-eqz v3, :cond_0

    .line 523
    invoke-virtual {v3}, Lcom/sleepycat/b/a/h;->f()V

    .line 521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_1
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 900
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    monitor-enter v1

    .line 901
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Lcom/sleepycat/b/c/i;)V
    .locals 6

    .prologue
    .line 1642
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21496
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1644
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/c/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CleanAddPendingDB "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1649
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/i;JLcom/sleepycat/b/l/a;IZZJZLjava/lang/String;)V
    .locals 18

    .prologue
    .line 1437
    const/16 v17, 0x0

    .line 1438
    const/4 v10, 0x0

    .line 1440
    const/4 v13, 0x0

    .line 1441
    const/4 v6, 0x0

    .line 1447
    const/4 v4, 0x0

    .line 1448
    const/4 v5, 0x0

    .line 1451
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    .line 1453
    const/4 v8, 0x1

    .line 1562
    if-eqz p7, :cond_1b

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-wide/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 1603
    :cond_0
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1614
    if-eqz v4, :cond_1

    .line 20654
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_1
    move-object/from16 v3, p0

    move-object/from16 v4, p11

    move-wide/from16 v6, p2

    move/from16 v9, v17

    .line 1618
    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    .line 1560
    :goto_1
    return-void

    .line 1461
    :cond_2
    :try_start_0
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->o(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1462
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    if-nez v2, :cond_29

    .line 1465
    :try_start_1
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sleepycat/b/l/y;

    move-object v2, v0

    .line 16496
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1466
    sget-object v5, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v3, v5}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    move v12, v3

    .line 1471
    :goto_3
    if-nez v2, :cond_8

    .line 1472
    if-eqz p6, :cond_3

    .line 1473
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1475
    :cond_3
    const/4 v9, 0x1

    .line 1476
    const/4 v8, 0x1

    .line 1562
    if-eqz p7, :cond_20

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 1603
    :cond_4
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1610
    if-eqz v12, :cond_5

    .line 1611
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1614
    :cond_5
    if-eqz v4, :cond_6

    .line 20654
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_6
    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p11

    move-object v5, v2

    move-wide/from16 v6, p2

    .line 1618
    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    goto :goto_1

    .line 1466
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 1485
    :cond_8
    cmp-long v3, p8, p2

    if-eqz v3, :cond_28

    .line 1486
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 17279
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, v3, Lcom/sleepycat/b/n/q;->r:Z

    .line 1489
    sget-object v6, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    const/4 v7, 0x0

    move-wide/from16 v4, p2

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/n/a;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v4

    .line 18027
    iget-object v4, v4, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 1491
    sget-object v5, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v4, v5, :cond_d

    .line 1497
    if-eqz p6, :cond_9

    .line 1498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/c;->q:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1501
    :cond_9
    const/4 v8, 0x1

    .line 1562
    if-eqz p7, :cond_21

    .line 1603
    :cond_a
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1610
    if-eqz v12, :cond_b

    .line 1611
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1614
    :cond_b
    if-eqz v3, :cond_c

    .line 20654
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_c
    :goto_7
    move-object/from16 v3, p0

    move-object/from16 v4, p11

    move-object v5, v2

    move-wide/from16 v6, p2

    move/from16 v9, v17

    .line 1618
    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    goto/16 :goto_1

    :cond_d
    move-object v11, v3

    .line 1507
    :goto_8
    :try_start_5
    invoke-virtual {v2}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1508
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->b(I)V

    .line 1509
    if-eqz p6, :cond_e

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1512
    :cond_e
    const/4 v9, 0x1

    .line 1513
    const/4 v8, 0x1

    .line 1562
    if-eqz p7, :cond_25

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 1603
    :cond_f
    :goto_9
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1610
    if-eqz v12, :cond_10

    .line 1611
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1614
    :cond_10
    if-eqz v11, :cond_6

    .line 20654
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto/16 :goto_5

    .line 1530
    :cond_11
    :try_start_6
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1531
    invoke-static/range {p2 .. p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v4, v3}, Lcom/sleepycat/b/a/k;->a(Ljava/lang/Long;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result v3

    if-nez v3, :cond_15

    .line 1533
    const/4 v9, 0x1

    .line 1534
    const/4 v8, 0x1

    .line 1535
    if-eqz p6, :cond_12

    .line 1536
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1562
    :cond_12
    if-eqz p7, :cond_26

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 1603
    :cond_13
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1610
    if-eqz v12, :cond_14

    .line 1611
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1614
    :cond_14
    if-eqz v11, :cond_6

    .line 20654
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto/16 :goto_5

    .line 1550
    :cond_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v5

    invoke-static {v2}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/l/y;)Lcom/sleepycat/b/g/av;

    move-result-object v9

    move-object/from16 v4, p1

    move-wide/from16 v6, p2

    move/from16 v8, p10

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/g/av;)J

    move-result-wide v6

    .line 1553
    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v6, v7}, Lcom/sleepycat/b/l/a;->c(IJ)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->r:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object v8, v11

    .line 1556
    invoke-static/range {v3 .. v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;JJLcom/sleepycat/b/n/q;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1558
    const/4 v10, 0x1

    .line 1559
    const/4 v8, 0x1

    .line 1562
    if-eqz p7, :cond_27

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 1603
    :cond_16
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1610
    if-eqz v12, :cond_17

    .line 1611
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1614
    :cond_17
    if-eqz v11, :cond_c

    .line 20654
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto/16 :goto_7

    .line 1562
    :catchall_0
    move-exception v2

    move-object v11, v2

    move-object v12, v4

    move v8, v13

    move/from16 v9, v17

    move v2, v6

    :goto_c
    if-eqz p7, :cond_1c

    .line 1563
    if-eqz v8, :cond_18

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 1603
    :cond_18
    :goto_d
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/l/a;->b(IZ)V

    .line 1610
    if-eqz v2, :cond_19

    .line 1611
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->e(I)V

    .line 1614
    :cond_19
    if-eqz v12, :cond_1a

    .line 20654
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_1a
    move-object/from16 v3, p0

    move-object/from16 v4, p11

    move-wide/from16 v6, p2

    .line 1618
    invoke-virtual/range {v3 .. v10}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    .line 1562
    throw v11

    .line 1578
    :cond_1b
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_1c
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez v8, :cond_18

    if-eqz v5, :cond_18

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    .line 18496
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1582
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v7

    move-wide/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/a/k;->a(JLcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)Z

    .line 18557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v4, :cond_1e

    aget-object v6, v3, v2

    .line 18558
    if-eqz v6, :cond_1f

    .line 19272
    iget-boolean v2, v6, Lcom/sleepycat/b/p/h;->p:Z

    .line 1586
    :goto_f
    if-nez v2, :cond_1d

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 20088
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 20464
    iget-object v2, v2, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 1587
    invoke-virtual {v2}, Lcom/sleepycat/b/a/ae;->b()V

    .line 1594
    :cond_1d
    const/4 v2, 0x0

    goto :goto_d

    .line 18562
    :cond_1e
    const/4 v2, 0x0

    goto :goto_f

    .line 18557
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1578
    :cond_20
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_4

    :cond_21
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v2, :cond_a

    .line 1582
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    .line 18496
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1582
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v16

    move-wide/from16 v12, p2

    move-object v14, v2

    invoke-virtual/range {v11 .. v16}, Lcom/sleepycat/b/a/k;->a(JLcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)Z

    .line 18557
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v6, :cond_23

    aget-object v7, v5, v4

    .line 18558
    if-eqz v7, :cond_24

    .line 19272
    iget-boolean v4, v7, Lcom/sleepycat/b/p/h;->p:Z

    .line 1586
    :goto_11
    if-nez v4, :cond_22

    .line 1587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 20088
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 20464
    iget-object v4, v4, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 1587
    invoke-virtual {v4}, Lcom/sleepycat/b/a/ae;->b()V

    .line 1594
    :cond_22
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 18562
    :cond_23
    const/4 v4, 0x0

    goto :goto_11

    .line 18557
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1578
    :cond_25
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_9

    :cond_26
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_a

    :cond_27
    invoke-virtual/range {p4 .. p5}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_b

    .line 1562
    :catchall_1
    move-exception v3

    move-object v11, v3

    move-object v5, v2

    move-object v12, v4

    move v8, v13

    move/from16 v9, v17

    move v2, v6

    goto/16 :goto_c

    :catchall_2
    move-exception v3

    move-object v11, v3

    move-object v5, v2

    move v8, v13

    move/from16 v9, v17

    move v2, v12

    move-object v12, v4

    goto/16 :goto_c

    :catchall_3
    move-exception v4

    move-object v11, v4

    move-object v5, v2

    move v8, v13

    move/from16 v9, v17

    move v2, v12

    move-object v12, v3

    goto/16 :goto_c

    :catchall_4
    move-exception v3

    move-object v5, v2

    move v8, v13

    move/from16 v9, v17

    move v2, v12

    move-object v12, v11

    move-object v11, v3

    goto/16 :goto_c

    :catchall_5
    move-exception v3

    move-object v5, v2

    move v2, v12

    move-object v12, v11

    move-object v11, v3

    goto/16 :goto_c

    :cond_28
    move-object v11, v4

    goto/16 :goto_8

    :cond_29
    move v12, v6

    goto/16 :goto_3

    :cond_2a
    move-object v2, v5

    move v12, v6

    goto/16 :goto_3
.end method

.method final a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    .locals 5

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1665
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    instance-of v1, p2, Lcom/sleepycat/b/l/j;

    if-eqz v1, :cond_0

    .line 1667
    const-string v1, " node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    check-cast p2, Lcom/sleepycat/b/l/j;

    .line 22342
    iget-wide v2, p2, Lcom/sleepycat/b/l/j;->c:J

    .line 1668
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1670
    :cond_0
    const-string v1, " logLsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1671
    invoke-static {p3, p4}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    const-string v1, " complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1673
    const-string v1, " obsolete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1674
    const-string v1, " dirtiedOrMigrated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1676
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1678
    :cond_1
    return-void
.end method

.method public final a(Lcom/sleepycat/b/l/a;IZ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1240
    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->G()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1242
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/l/a;->i(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return v0

    .line 1247
    :cond_1
    if-nez p3, :cond_2

    move v0, v1

    .line 1248
    goto :goto_0

    .line 1251
    :cond_2
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v2

    .line 1252
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    move v0, v1

    .line 1258
    goto :goto_0

    .line 1261
    :cond_3
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1268
    iget-boolean v3, p0, Lcom/sleepycat/b/a/c;->R:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sleepycat/b/a/c;->X:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1273
    :cond_4
    iget-boolean v3, p0, Lcom/sleepycat/b/a/c;->K:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/sleepycat/b/a/c;->J:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/sleepycat/b/a/c;->Y:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    .line 1279
    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 12

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 644
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->m()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 648
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/k;->e()Ljava/util/SortedSet;

    move-result-object v3

    .line 650
    if-eqz v3, :cond_0

    .line 661
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/ad;->a(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v2

    .line 663
    if-eqz v2, :cond_0

    .line 672
    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cleaner has "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files not deleted because they are protected by replication."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 707
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 708
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 709
    aget-object v4, v0, v1

    .line 717
    iget-object v5, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v5, v4}, Lcom/sleepycat/b/a/k;->c(Ljava/lang/Long;)Lcom/sleepycat/b/p/au;

    move-result-object v5

    .line 718
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v6

    if-nez v6, :cond_4

    .line 719
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/p/au;J)V

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 6375
    iget-object v4, v0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 729
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Lcom/sleepycat/b/g/m;->a(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cleaner has "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files not deleted because of read-only processes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 708
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 740
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 743
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 744
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 746
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gtz v1, :cond_6

    .line 764
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7178
    :try_start_5
    iget-object v0, v4, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 7179
    iget-object v0, v4, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 7181
    :catch_0
    move-exception v0

    .line 7182
    :try_start_6
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, v4, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 766
    :cond_6
    :try_start_7
    invoke-interface {v2, v0}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    move-object v2, v0

    .line 770
    :cond_7
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 771
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 772
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 775
    :try_start_8
    iget-boolean v1, p0, Lcom/sleepycat/b/a/c;->I:Z

    if-eqz v1, :cond_9

    .line 776
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/sleepycat/b/g/m;->d(J)Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v1

    .line 786
    :goto_3
    if-eqz v1, :cond_a

    .line 792
    :try_start_9
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cleaner deleted file 0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v8, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    .line 831
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 833
    :catchall_2
    move-exception v0

    .line 7178
    :try_start_b
    iget-object v1, v4, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    if-eqz v1, :cond_8

    .line 7179
    iget-object v1, v4, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 833
    :cond_8
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 778
    :cond_9
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v1, ".del"

    invoke-virtual {v4, v8, v9, v1}, Lcom/sleepycat/b/g/m;->b(JLjava/lang/String;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result v1

    goto :goto_3

    .line 781
    :catch_1
    move-exception v1

    .line 782
    :try_start_e
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unable to delete or rename "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v6, v0, v1}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 795
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/sleepycat/b/g/m;->a(J)Z

    move-result v1

    if-nez v1, :cond_c

    .line 804
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cleaner deleteSafeToDeleteFiles Log file 0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " was previously "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v0, p0, Lcom/sleepycat/b/a/c;->I:Z

    if-eqz v0, :cond_b

    const-string v0, "deleted"

    :goto_4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ".  State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v8, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "renamed"

    goto :goto_4

    .line 820
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 822
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v7, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cleaner deleteSafeToDeleteFiles Log file 0x"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " could not be "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v0, p0, Lcom/sleepycat/b/a/c;->I:Z

    if-eqz v0, :cond_d

    const-string v0, "deleted"

    :goto_5
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ". This operation will be retried at the next checkpoint. State: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v7, v8, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "renamed"

    goto :goto_5

    .line 831
    :cond_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 7178
    :try_start_f
    iget-object v0, v4, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_f

    .line 7179
    iget-object v0, v4, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 854
    :cond_f
    :try_start_10
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/a/k;->a(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/b/a/ad;->a(Ljava/util/Collection;Ljava/util/Set;)V

    .line 857
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 859
    :try_start_11
    iget-object v4, p0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/a/ad;->a(Ljava/lang/Long;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 861
    :try_start_12
    iget-object v4, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    iget-object v5, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 7508
    iget-object v5, v5, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 861
    invoke-virtual {v4, v0, v5}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V

    .line 864
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->e:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V

    goto :goto_6

    .line 861
    :catchall_3
    move-exception v1

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    iget-object v3, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 7508
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 861
    invoke-virtual {v2, v0, v3}, Lcom/sleepycat/b/a/k;->b(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V

    throw v1

    .line 868
    :cond_10
    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cleaner has "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v2

    sub-int v2, v3, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files not deleted because they are protected by DbBackup or replication."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7181
    :catch_2
    move-exception v0

    .line 7182
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, v4, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 7181
    :catch_3
    move-exception v0

    .line 7182
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, v4, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 918
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    monitor-enter v1

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ak:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "File range starting with 0x"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not currently protected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final c()Lcom/sleepycat/b/a/l;
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/sleepycat/b/a/c;->e()V

    .line 942
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/k;->b()Lcom/sleepycat/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method final d()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x5

    .line 962
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    .line 8442
    iget-object v0, v0, Lcom/sleepycat/b/a/k;->a:Ljava/util/Set;

    .line 962
    iput-object v0, p0, Lcom/sleepycat/b/a/c;->Y:Ljava/util/Set;

    .line 965
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->X:Ljava/util/Set;

    .line 966
    iget-object v3, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v3}, Lcom/sleepycat/b/a/k;->a()Ljava/util/Set;

    move-result-object v3

    .line 967
    iput-object v3, p0, Lcom/sleepycat/b/a/c;->X:Ljava/util/Set;

    .line 968
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 8992
    iget-object v5, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    monitor-enter v5

    .line 8998
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v0, v9, :cond_0

    move v0, v1

    .line 9001
    :goto_0
    iget-object v6, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    invoke-static {v6}, Lcom/sleepycat/b/a/c;->a(Ljava/util/Collection;)F

    move-result v6

    .line 9004
    iget-object v7, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 9005
    :goto_1
    iget-object v7, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-le v7, v9, :cond_1

    .line 9006
    iget-object v7, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 9010
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v0, v2

    .line 8998
    goto :goto_0

    .line 9009
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/sleepycat/b/a/c;->ai:Ljava/util/LinkedList;

    invoke-static {v7}, Lcom/sleepycat/b/a/c;->a(Ljava/util/Collection;)F

    move-result v7

    .line 9010
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9013
    if-lt v3, v9, :cond_2

    .line 9018
    if-le v3, v4, :cond_2

    .line 9023
    if-eqz v0, :cond_2

    cmpg-float v0, v7, v6

    if-gtz v0, :cond_3

    .line 9024
    :cond_2
    :goto_2
    return-void

    .line 9027
    :cond_3
    const-string v0, "Average cleaner backlog has grown from %.1f to %.1f. If the cleaner continues to be unable to make progress, the JE cache size and/or number of cleaner threads are probably too small. If this is not corrected, eventually all available disk space will be used."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9034
    iget-object v1, p0, Lcom/sleepycat/b/a/c;->al:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final e()V
    .locals 29

    .prologue
    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1065
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 9379
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    move-object/from16 v24, v0

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/k;->c()Ljava/util/Map;

    move-result-object v2

    .line 1068
    if-eqz v2, :cond_11

    .line 1069
    new-instance v10, Lcom/sleepycat/b/l/al;

    invoke-direct {v10}, Lcom/sleepycat/b/l/al;-><init>()V

    .line 1071
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1072
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1073
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/a/r;

    .line 10038
    iget-object v3, v2, Lcom/sleepycat/b/a/r;->b:Lcom/sleepycat/b/c/h;

    .line 1075
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/a/c;->E:J

    .line 10517
    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6, v7, v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 11042
    :try_start_1
    iget-object v11, v2, Lcom/sleepycat/b/a/r;->c:[B

    .line 12034
    iget-object v0, v2, Lcom/sleepycat/b/a/r;->a:Lcom/sleepycat/b/l/y;

    move-object/from16 v26, v0

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/ad;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 12125
    const/16 v18, 0x1

    .line 12127
    const/16 v27, 0x0

    .line 12128
    const/16 v28, 0x0

    .line 12130
    const/4 v3, 0x0

    .line 12131
    const/4 v15, 0x0

    .line 12133
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->u:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 12140
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12141
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/c/i;)V

    .line 12142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 12143
    const/16 v17, 0x1

    .line 12144
    const/16 v16, 0x1

    .line 12204
    if-eqz v15, :cond_2

    .line 12205
    :try_start_3
    invoke-virtual {v15}, Lcom/sleepycat/b/l/a;->C()V

    .line 12208
    :cond_2
    if-eqz v3, :cond_3

    .line 14654
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 12218
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 12220
    const-string v12, "CleanPendingLN:"

    const-wide/16 v14, -0x1

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v13, v26

    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1087
    :cond_4
    :goto_2
    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->g()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1109
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2

    .line 12485
    :cond_5
    :try_start_5
    iget-object v9, v8, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 12149
    sget-boolean v2, Lcom/sleepycat/b/a/c;->ah:Z

    if-nez v2, :cond_9

    if-nez v9, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_5
    .catch Lcom/sleepycat/b/n; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 12197
    :catch_0
    move-exception v2

    move-object/from16 v16, v15

    move/from16 v4, v18

    .line 12198
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Lcom/sleepycat/b/n;->printStackTrace()V

    .line 12199
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    const-string v6, "com.sleepycat.je.cleaner.Cleaner"

    const-string v7, "processLN"

    const-string v9, "Exception thrown: "

    invoke-static {v5, v6, v7, v9, v2}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12202
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 12204
    :catchall_1
    move-exception v2

    move-object/from16 v15, v16

    move/from16 v18, v4

    :goto_4
    if-eqz v15, :cond_6

    .line 12205
    :try_start_7
    invoke-virtual {v15}, Lcom/sleepycat/b/l/a;->C()V

    .line 12208
    :cond_6
    if-eqz v3, :cond_7

    .line 14654
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 12216
    :cond_7
    if-eqz v18, :cond_8

    .line 12220
    const-string v10, "CleanPendingLN:"

    const-wide/16 v12, -0x1

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, v26

    move/from16 v14, v28

    move/from16 v15, v27

    invoke-virtual/range {v9 .. v16}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V

    .line 12204
    :cond_8
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1087
    :catchall_2
    move-exception v2

    :try_start_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 12157
    :cond_9
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;

    move-result-object v3

    .line 13279
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/sleepycat/b/n/q;->r:Z

    .line 12160
    sget-object v6, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sleepycat/b/n/a;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v2

    .line 14027
    iget-object v2, v2, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 12163
    sget-object v6, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v2, v6, :cond_c

    .line 12165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->y:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_9
    .catch Lcom/sleepycat/b/n; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 12167
    const/16 v16, 0x1

    .line 12204
    if-eqz v15, :cond_a

    .line 12205
    :try_start_a
    invoke-virtual {v15}, Lcom/sleepycat/b/l/a;->C()V

    .line 12208
    :cond_a
    if-eqz v3, :cond_b

    .line 14654
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 12220
    :cond_b
    const-string v12, "CleanPendingLN:"

    const-wide/16 v14, -0x1

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v13, v26

    move/from16 v17, v27

    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_2

    .line 12174
    :cond_c
    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_b
    sget-object v14, Lcom/sleepycat/b/a/c;->a:Lcom/sleepycat/b/a;

    invoke-virtual/range {v9 .. v14}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z

    move-result v2

    .line 12177
    iget-object v0, v10, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    move-object/from16 v16, v0
    :try_end_b
    .catch Lcom/sleepycat/b/n; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 12178
    :try_start_c
    iget v0, v10, Lcom/sleepycat/b/l/al;->b:I

    move/from16 v17, v0

    .line 12180
    if-nez v2, :cond_f

    .line 12181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->p:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_c
    .catch Lcom/sleepycat/b/n; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 12182
    const/16 v17, 0x1

    .line 12183
    const/4 v2, 0x1

    .line 12204
    if-eqz v16, :cond_d

    .line 12205
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/b/l/a;->C()V

    .line 12208
    :cond_d
    if-eqz v3, :cond_e

    .line 14654
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 12218
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/a/k;->a(J)V

    .line 12220
    const-string v12, "CleanPendingLN:"

    const-wide/16 v14, -0x1

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v13, v26

    move/from16 v16, v2

    invoke-virtual/range {v11 .. v18}, Lcom/sleepycat/b/a/c;->a(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_2

    .line 12188
    :cond_f
    const/4 v6, 0x0

    .line 12189
    :try_start_e
    invoke-virtual/range {v16 .. v17}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v14

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v22, 0x1

    const-string v23, "CleanPendingLN:"

    move-object/from16 v12, p0

    move-object v13, v8

    move-wide/from16 v20, v4

    invoke-virtual/range {v12 .. v23}, Lcom/sleepycat/b/a/c;->a(Lcom/sleepycat/b/c/i;JLcom/sleepycat/b/l/a;IZZJZLjava/lang/String;)V
    :try_end_e
    .catch Lcom/sleepycat/b/n; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 12204
    if-eqz v16, :cond_10

    .line 12205
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/b/l/a;->C()V

    .line 12208
    :cond_10
    if-eqz v3, :cond_4

    .line 14654
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/n/q;->a_(Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_2

    .line 1095
    :cond_11
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/k;->d()[Lcom/sleepycat/b/c/h;

    move-result-object v3

    .line 1096
    if-eqz v3, :cond_14

    .line 1097
    array-length v4, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_14

    aget-object v5, v3, v2

    .line 1098
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/a/c;->E:J

    .line 15517
    const/4 v8, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v6

    .line 1100
    if-eqz v6, :cond_12

    :try_start_11
    invoke-virtual {v6}, Lcom/sleepycat/b/c/i;->A()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1101
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v7, v5}, Lcom/sleepycat/b/a/k;->b(Lcom/sleepycat/b/c/h;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1104
    :cond_13
    :try_start_12
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1104
    :catchall_3
    move-exception v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 1109
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/a/c;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 12204
    :catchall_4
    move-exception v2

    goto/16 :goto_4

    :catchall_5
    move-exception v2

    move-object/from16 v15, v16

    goto/16 :goto_4

    :catchall_6
    move-exception v2

    move-object/from16 v15, v16

    move/from16 v18, v6

    goto/16 :goto_4

    .line 12197
    :catch_1
    move-exception v2

    move/from16 v4, v18

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move v4, v6

    goto/16 :goto_3
.end method

.method public final f()V
    .locals 6

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 23159
    invoke-virtual {v0}, Lcom/sleepycat/b/a/ad;->c()V

    .line 23160
    iget-object v1, v0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    if-eqz v1, :cond_0

    .line 23161
    iget-object v0, v0, Lcom/sleepycat/b/a/ad;->a:Lcom/sleepycat/b/c/i;

    .line 23262
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->a()V

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 23351
    iget-object v0, v0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 24185
    iget-object v2, v0, Lcom/sleepycat/b/a/z;->l:Lcom/sleepycat/b/a/b;

    iget-object v2, v2, Lcom/sleepycat/b/a/b;->b:Lcom/sleepycat/b/c/ad;

    .line 24508
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 24185
    iget v3, v0, Lcom/sleepycat/b/a/z;->o:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/c/ao;->e(J)V

    .line 24186
    const/4 v2, 0x0

    iput v2, v0, Lcom/sleepycat/b/a/z;->o:I

    goto :goto_0

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    iget-object v1, p0, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 25508
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 1687
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/k;->a(Lcom/sleepycat/b/c/ao;)V

    .line 1688
    return-void
.end method
