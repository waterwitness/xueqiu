.class public Lcom/sleepycat/b/c/ad;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/sleepycat/b/c/ab;


# static fields
.field public static final T:Z

.field private static final aB:Lcom/sleepycat/b/c/ae;

.field private static final aC:Lcom/sleepycat/b/c/ae;

.field private static final aD:Lcom/sleepycat/b/c/ae;

.field public static final ab:Z

.field public static final synthetic ai:Z

.field private static ak:Z

.field private static am:I

.field private static aq:Z

.field private static at:I


# instance fields
.field public A:Lcom/sleepycat/b/d/b;

.field public B:Lcom/sleepycat/b/e/b;

.field public C:Lcom/sleepycat/b/h/d;

.field public D:Lcom/sleepycat/b/a/c;

.field public final E:Lcom/sleepycat/b/c/bd;

.field public volatile F:Lcom/sleepycat/b/aa;

.field public G:Lcom/sleepycat/b/f/f;

.field public H:Lcom/sleepycat/b/ag;

.field I:Lcom/sleepycat/b/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/ba",
            "<",
            "Lcom/sleepycat/b/bb;",
            ">;"
        }
    .end annotation
.end field

.field J:Ljava/lang/ClassLoader;

.field public K:Lcom/sleepycat/b/aw;

.field public volatile L:I

.field public volatile M:I

.field public volatile N:I

.field public O:I

.field public P:J

.field public final Q:Ljava/lang/Object;

.field R:Z

.field public final S:Lcom/sleepycat/b/aa;

.field public final U:Ljava/util/logging/ConsoleHandler;

.field public final V:Ljava/util/logging/FileHandler;

.field public final W:Ljava/util/logging/Handler;

.field public X:Z

.field protected final Y:Ljava/util/logging/Formatter;

.field protected Z:Lcom/sleepycat/b/x;

.field public volatile a:Lcom/sleepycat/b/c/o;

.field private aA:Lcom/sleepycat/b/j/a;

.field protected aa:Ljava/lang/Integer;

.field public final ac:Lcom/sleepycat/b/c/as;

.field public ad:Lcom/sleepycat/b/p/ap;

.field public ae:Lcom/sleepycat/b/p/z;

.field public final af:Ljava/lang/String;

.field public ag:Lcom/sleepycat/b/k/a/c;

.field public ah:I

.field private final aj:Ljava/util/concurrent/atomic/AtomicInteger;

.field private al:Z

.field private an:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/c/ab;",
            ">;"
        }
    .end annotation
.end field

.field private ao:Lcom/sleepycat/b/j/b;

.field private ap:Lcom/sleepycat/b/p/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/p/ao",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ar:J

.field private final as:Ljava/lang/Object;

.field private volatile au:Z

.field private final av:Ljava/lang/Object;

.field private aw:J

.field private final ax:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/c/ag;",
            ">;"
        }
    .end annotation
.end field

.field private ay:Lcom/sleepycat/b/p/ai;

.field private az:Lcom/sleepycat/b/h;

.field public volatile b:Z

.field public final c:Ljava/io/File;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field k:Lcom/sleepycat/b/a;

.field l:Lcom/sleepycat/b/b;

.field public m:Z

.field public n:Lcom/sleepycat/b/c/ao;

.field public o:J

.field public p:J

.field public q:Lcom/sleepycat/b/c/p;

.field public r:J

.field public s:Lcom/sleepycat/b/f/a;

.field public t:Lcom/sleepycat/b/c/al;

.field public u:Lcom/sleepycat/b/c/m;

.field public v:Ljava/util/logging/Logger;

.field public w:Lcom/sleepycat/b/g/am;

.field public x:Lcom/sleepycat/b/g/m;

.field public y:Lcom/sleepycat/b/n/aj;

.field public z:Lcom/sleepycat/b/j/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    const-class v0, Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/ad;->ai:Z

    .line 202
    sput-boolean v2, Lcom/sleepycat/b/c/ad;->aq:Z

    .line 259
    sput v2, Lcom/sleepycat/b/c/ad;->at:I

    .line 282
    const-string v0, "je.disable.java.adler32"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/sleepycat/b/c/ad;->T:Z

    .line 367
    const-string v0, "Dalvik"

    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ad;->ab:Z

    .line 387
    sget-object v0, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    .line 50206
    iput-object v3, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 388
    sget-object v0, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    .line 50208
    iput-object v3, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 389
    sget-object v0, Lcom/sleepycat/b/n/p;->c:Lcom/sleepycat/b/n/p;

    sget-object v1, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    .line 50210
    iput-object v1, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 390
    sget-object v0, Lcom/sleepycat/b/n/p;->d:Lcom/sleepycat/b/n/p;

    sget-object v1, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    .line 50212
    iput-object v1, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 391
    sget-object v0, Lcom/sleepycat/b/n/p;->e:Lcom/sleepycat/b/n/p;

    sget-object v1, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    .line 50214
    iput-object v1, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 392
    sget-object v0, Lcom/sleepycat/b/n/p;->f:Lcom/sleepycat/b/n/p;

    sget-object v1, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    .line 50216
    iput-object v1, v0, Lcom/sleepycat/b/n/p;->g:Lcom/sleepycat/b/n/o;

    .line 3121
    new-instance v0, Lcom/sleepycat/b/c/ae;

    sget-object v1, Lcom/sleepycat/b/az;->c:Lcom/sleepycat/b/az;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/ae;-><init>(Lcom/sleepycat/b/az;)V

    sput-object v0, Lcom/sleepycat/b/c/ad;->aB:Lcom/sleepycat/b/c/ae;

    .line 3125
    new-instance v0, Lcom/sleepycat/b/c/ae;

    sget-object v1, Lcom/sleepycat/b/az;->b:Lcom/sleepycat/b/az;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/ae;-><init>(Lcom/sleepycat/b/az;)V

    sput-object v0, Lcom/sleepycat/b/c/ad;->aC:Lcom/sleepycat/b/c/ae;

    .line 3129
    new-instance v0, Lcom/sleepycat/b/c/ae;

    sget-object v1, Lcom/sleepycat/b/az;->d:Lcom/sleepycat/b/az;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/ae;-><init>(Lcom/sleepycat/b/az;)V

    sput-object v0, Lcom/sleepycat/b/c/ad;->aD:Lcom/sleepycat/b/c/ae;

    return-void

    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    :cond_1
    move v1, v2

    .line 282
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/c/ad;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;B)V

    .line 409
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->aj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    iput-boolean v2, p0, Lcom/sleepycat/b/c/ad;->al:Z

    .line 164
    iput-boolean v2, p0, Lcom/sleepycat/b/c/ad;->m:Z

    .line 175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/c/ad;->r:J

    .line 215
    iput-object v3, p0, Lcom/sleepycat/b/c/ad;->H:Lcom/sleepycat/b/ag;

    .line 221
    iput-object v3, p0, Lcom/sleepycat/b/c/ad;->I:Lcom/sleepycat/b/ba;

    .line 226
    iput-object v3, p0, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 231
    iput-object v3, p0, Lcom/sleepycat/b/c/ad;->K:Lcom/sleepycat/b/aw;

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->Q:Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->as:Ljava/lang/Object;

    .line 266
    iput-boolean v2, p0, Lcom/sleepycat/b/c/ad;->R:Z

    .line 273
    invoke-static {}, Lcom/sleepycat/b/aa;->a()Lcom/sleepycat/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->S:Lcom/sleepycat/b/aa;

    .line 297
    iput-boolean v2, p0, Lcom/sleepycat/b/c/ad;->au:Z

    .line 341
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->av:Ljava/lang/Object;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ax:Ljava/util/ArrayList;

    .line 383
    iput-object v3, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    .line 435
    new-instance v0, Lcom/sleepycat/b/c/bd;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/c/bd;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    .line 436
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V

    .line 439
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    .line 440
    sget-object v0, Lcom/sleepycat/b/c/o;->a:Lcom/sleepycat/b/c/o;

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    .line 441
    new-instance v0, Lcom/sleepycat/b/f/a;

    const-string v1, "MapTreeRoot"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    .line 444
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "Environment"

    const-string v2, "General environment wide statistics."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ay:Lcom/sleepycat/b/p/ai;

    .line 445
    new-instance v0, Lcom/sleepycat/b/p/ap;

    const-string v1, "Op"

    const-string v2, "Thoughput statistics for JE calls."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ad:Lcom/sleepycat/b/p/ap;

    .line 449
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->ay:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/x;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ae:Lcom/sleepycat/b/p/z;

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/ad;->aw:J

    .line 454
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/z;)Lcom/sleepycat/b/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->an:Ljava/util/List;

    .line 456
    invoke-virtual {p0, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/aw;)V

    .line 468
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->h()Ljava/util/logging/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->Y:Ljava/util/logging/Formatter;

    .line 469
    new-instance v0, Lcom/sleepycat/b/o/a;

    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->Y:Ljava/util/logging/Formatter;

    invoke-direct {v0, v1, p0}, Lcom/sleepycat/b/o/a;-><init>(Ljava/util/logging/Formatter;Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->U:Ljava/util/logging/ConsoleHandler;

    .line 471
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->aa()Ljava/util/logging/FileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    .line 4511
    iget-object v0, p2, Lcom/sleepycat/b/z;->g:Ljava/util/logging/Handler;

    .line 472
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->W:Ljava/util/logging/Handler;

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 479
    new-instance v0, Lcom/sleepycat/b/c/ao;

    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    invoke-direct {v0, p0, p3, v1}, Lcom/sleepycat/b/c/ao;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/m;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 482
    new-instance v0, Lcom/sleepycat/b/g/m;

    iget-boolean v1, p0, Lcom/sleepycat/b/c/ad;->g:Z

    invoke-direct {v0, p0, p1, v1}, Lcom/sleepycat/b/g/m;-><init>(Lcom/sleepycat/b/c/ad;Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 4953
    iget-boolean v0, p2, Lcom/sleepycat/b/z;->d:Z

    .line 483
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    new-instance v0, Lcom/sleepycat/b/ad;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Home directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/ad;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :catchall_0
    move-exception v0

    .line 540
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->Z()V

    .line 541
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ab()V

    .line 538
    throw v0

    .line 5451
    :cond_0
    :try_start_1
    iget-object v0, p2, Lcom/sleepycat/b/z;->f:Ljava/lang/String;

    .line 488
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->af:Ljava/lang/String;

    .line 490
    new-instance v0, Lcom/sleepycat/b/g/am;

    iget-boolean v1, p0, Lcom/sleepycat/b/c/ad;->g:Z

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/g/am;-><init>(Lcom/sleepycat/b/c/ad;Z)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 492
    new-instance v0, Lcom/sleepycat/b/c/al;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/c/al;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 493
    new-instance v0, Lcom/sleepycat/b/n/aj;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/n/aj;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 494
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->f()Lcom/sleepycat/b/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->z:Lcom/sleepycat/b/j/d;

    .line 6012
    if-eqz p3, :cond_3

    .line 6013
    sget-boolean v0, Lcom/sleepycat/b/c/ad;->ai:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->i:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6014
    :cond_1
    iget-object v0, p3, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 6027
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    invoke-static {v0}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/m;)J

    move-result-wide v0

    .line 6029
    new-instance v2, Lcom/sleepycat/b/h/d;

    const-string v3, "Checkpointer"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/sleepycat/b/h/d;-><init>(Lcom/sleepycat/b/c/ad;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 6034
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->aj:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    .line 6036
    new-instance v2, Lcom/sleepycat/b/e/b;

    const-string v3, "INCompressor"

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/sleepycat/b/e/b;-><init>(Lcom/sleepycat/b/c/ad;JLjava/lang/String;)V

    iput-object v2, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    .line 6040
    new-instance v0, Lcom/sleepycat/b/a/c;

    const-string v1, "Cleaner"

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/a/c;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 6042
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ae()V

    .line 507
    new-instance v0, Lcom/sleepycat/b/c/as;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/c/as;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 514
    new-instance v0, Lcom/sleepycat/b/c/p;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->J()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/b/c/p;-><init>(Lcom/sleepycat/b/c/ad;ZZ)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 516
    new-instance v0, Lcom/sleepycat/b/f/f;

    const-string v1, "SecondaryAssociationLatch"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->G:Lcom/sleepycat/b/f/f;

    .line 526
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 6061
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lcom/sleepycat/b/c/as;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6062
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x9

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lcom/sleepycat/b/c/as;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 528
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->z:Lcom/sleepycat/b/j/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/j/d;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->aa:Ljava/lang/Integer;

    .line 6330
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 529
    if-nez v0, :cond_2

    .line 6334
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->h:Z

    .line 529
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->bs:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    new-instance v0, Lcom/sleepycat/b/j/a;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/j/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    .line 533
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 534
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/j/a;->a()V

    .line 543
    :cond_2
    return-void

    .line 6015
    :cond_3
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->i:Z

    if-eqz v0, :cond_4

    .line 6016
    new-instance v0, Lcom/sleepycat/b/d/k;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/d/k;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    goto/16 :goto_0

    .line 6018
    :cond_4
    new-instance v0, Lcom/sleepycat/b/d/i;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/d/i;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static H()Z
    .locals 1

    .prologue
    .line 2768
    sget-boolean v0, Lcom/sleepycat/b/c/ad;->aq:Z

    if-eqz v0, :cond_0

    .line 2769
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2771
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic V()Lcom/sleepycat/b/c/ae;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/sleepycat/b/c/ad;->aB:Lcom/sleepycat/b/c/ae;

    return-object v0
.end method

.method static synthetic W()Lcom/sleepycat/b/c/ae;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/sleepycat/b/c/ad;->aC:Lcom/sleepycat/b/c/ae;

    return-object v0
.end method

.method static synthetic X()Lcom/sleepycat/b/c/ae;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/sleepycat/b/c/ad;->aD:Lcom/sleepycat/b/c/ae;

    return-object v0
.end method

.method private declared-synchronized Y()V
    .locals 2

    .prologue
    .line 894
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 897
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private Z()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    if-eqz v0, :cond_0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 923
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->g()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 932
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/c/m;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1049
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    if-nez v0, :cond_3

    .line 1051
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    sget-object v2, Lcom/sleepycat/b/b/d;->j:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/e/b;->a(Z)V

    .line 1055
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    sget-object v0, Lcom/sleepycat/b/b/d;->t:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 16511
    :goto_0
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->Z:Lcom/sleepycat/b/c/ad;

    .line 17322
    iget-boolean v3, v3, Lcom/sleepycat/b/c/ad;->f:Z

    .line 16511
    if-nez v3, :cond_2

    .line 16512
    iget-object v2, v2, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 16513
    if-eqz v4, :cond_0

    .line 16514
    invoke-virtual {v4, v0}, Lcom/sleepycat/b/a/h;->a(Z)V

    .line 16512
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1055
    goto :goto_0

    .line 1063
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    sget-object v1, Lcom/sleepycat/b/b/d;->s:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/h/d;->a(Z)V

    .line 1067
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    sget-object v1, Lcom/sleepycat/b/b/d;->bs:Lcom/sleepycat/b/b/a;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/j/b;->a(Z)V

    .line 1072
    :cond_3
    return-void
.end method

.method public static a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1851
    invoke-virtual {p1, p0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1852
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 1853
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sleepycat/b/x;)V
    .locals 4

    .prologue
    .line 880
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ag;

    .line 883
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->ax:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
    new-instance v1, Lcom/sleepycat/b/aa;

    .line 16206
    iget-object v2, p2, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 885
    sget-object v3, Lcom/sleepycat/b/c/ac;->r:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private aa()Ljava/util/logging/FileHandler;
    .locals 6

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    if-eqz v0, :cond_1

    .line 1447
    :cond_0
    const/4 v0, 0x0

    .line 1470
    :goto_0
    return-object v0

    .line 1450
    :cond_1
    const-class v0, Lcom/sleepycat/b/o/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/je.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1454
    const v2, 0x989680

    .line 1455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1457
    if-eqz v3, :cond_2

    .line 1458
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1462
    :cond_2
    const/16 v3, 0xa

    .line 1463
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".count"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1465
    if-eqz v0, :cond_3

    .line 1466
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1470
    :cond_3
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/o/c;

    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->Y:Ljava/util/logging/Formatter;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/o/c;-><init>(Ljava/lang/String;IILjava/util/logging/Formatter;Lcom/sleepycat/b/c/ad;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Problem creating output files in: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private ab()V
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->U:Ljava/util/logging/ConsoleHandler;

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->U:Ljava/util/logging/ConsoleHandler;

    invoke-virtual {v0}, Ljava/util/logging/ConsoleHandler;->close()V

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    invoke-virtual {v0}, Ljava/util/logging/FileHandler;->close()V

    .line 1501
    :cond_1
    return-void
.end method

.method private ac()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2010
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->x:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2061
    :cond_0
    return-void

    .line 2015
    :cond_1
    new-instance v3, Lcom/sleepycat/b/bn;

    invoke-direct {v3}, Lcom/sleepycat/b/bn;-><init>()V

    .line 26059
    iput-boolean v1, v3, Lcom/sleepycat/b/bn;->b:Z

    .line 2020
    invoke-direct {p0, v3}, Lcom/sleepycat/b/c/ad;->b(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/ar;

    move-result-object v0

    .line 2021
    invoke-virtual {v0}, Lcom/sleepycat/b/ar;->a()I

    move-result v4

    if-eqz v4, :cond_8

    .line 2023
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Problem: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/ar;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " locks left"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 26189
    iget-object v0, v0, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 27154
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 2028
    :goto_0
    invoke-direct {p0, v3}, Lcom/sleepycat/b/c/ad;->c(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/bs;

    move-result-object v3

    .line 2029
    invoke-virtual {v3}, Lcom/sleepycat/b/bs;->a()I

    move-result v4

    if-eqz v4, :cond_4

    .line 2031
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sleepycat/b/bs;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " txns left"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28105
    iget-object v0, v3, Lcom/sleepycat/b/bs;->a:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/c/bl;->h:Lcom/sleepycat/b/p/ag;

    .line 28244
    iget-object v0, v0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/a;

    .line 28245
    if-nez v0, :cond_2

    .line 28246
    const/4 v0, 0x0

    move-object v3, v0

    .line 2034
    :goto_1
    if-eqz v3, :cond_3

    .line 2035
    array-length v4, v3

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 2036
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 2035
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 29034
    :cond_2
    iget-object v0, v0, Lcom/sleepycat/b/p/a;->a:[Lcom/sleepycat/b/bt;

    move-object v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 2041
    :cond_4
    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v3

    if-lez v3, :cond_5

    .line 2043
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Some latches held at env close."

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v1

    .line 2044
    invoke-static {}, Lcom/sleepycat/b/f/d;->b()V

    .line 2047
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 29176
    iget-object v4, v3, Lcom/sleepycat/b/c/ao;->Z:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-object v6, v3, Lcom/sleepycat/b/c/ao;->aa:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-object v6, v3, Lcom/sleepycat/b/c/ao;->ab:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ao;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 2048
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    .line 2050
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Local Cache Usage = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2051
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v3, p0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ao;->d()Lcom/sleepycat/b/p/ai;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v0, v1

    .line 2055
    :cond_6
    sget-boolean v3, Lcom/sleepycat/b/c/ad;->ai:Z

    if-nez v3, :cond_7

    .line 2056
    :goto_3
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 2057
    const-string v0, "Lock, transaction, latch or memory left behind at environment close"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method private ad()V
    .locals 1

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    if-eqz v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/j/b;->e()V

    .line 2279
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/j/b;->c()V

    .line 2280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    .line 2282
    :cond_0
    return-void
.end method

.method private ae()V
    .locals 9

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    if-nez v0, :cond_0

    .line 33330
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 2289
    if-nez v0, :cond_0

    .line 33334
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->h:Z

    .line 2289
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->bs:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2293
    new-instance v1, Lcom/sleepycat/b/j/b;

    const-string v3, "StatCapture"

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v2, Lcom/sleepycat/b/b/d;->bv:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v4, v0

    iget-object v6, p0, Lcom/sleepycat/b/c/ad;->az:Lcom/sleepycat/b/h;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->e()Ljava/util/SortedSet;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/b/c/ad;->z:Lcom/sleepycat/b/j/d;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/b/j/b;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;JLcom/sleepycat/b/h;Ljava/util/SortedSet;Lcom/sleepycat/b/j/d;)V

    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    .line 2302
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/ar;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2607
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 49411
    iget-object v1, v1, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 50065
    new-instance v2, Lcom/sleepycat/b/p/ai;

    const-string v3, "Locktable latches"

    const-string v4, "Shows lock table contention"

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50067
    :goto_0
    iget v3, v1, Lcom/sleepycat/b/n/l;->f:I

    if-ge v0, v3, :cond_0

    .line 50068
    iget-object v3, v1, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    aget-object v3, v3, v0

    .line 50080
    iget-object v3, v3, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    .line 50068
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 50067
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50072
    :cond_0
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v3, "Locktable"

    const-string v4, "The types of locks held in the lock table"

    invoke-direct {v0, v3, v4}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50081
    iget-boolean v3, p1, Lcom/sleepycat/b/bn;->b:Z

    .line 50075
    if-nez v3, :cond_1

    .line 50076
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/sleepycat/b/n/l;->a(Lcom/sleepycat/b/p/ai;Z)V

    .line 50079
    :cond_1
    new-instance v3, Lcom/sleepycat/b/ar;

    iget-object v1, v1, Lcom/sleepycat/b/n/l;->k:Lcom/sleepycat/b/p/ai;

    .line 50082
    iget-boolean v4, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 50079
    invoke-virtual {v1, v4}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v1

    .line 50083
    iget-boolean v4, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 50079
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 50084
    iget-boolean v4, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 50079
    invoke-virtual {v0, v4}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/sleepycat/b/ar;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ai;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/bs;
    .locals 1

    .prologue
    .line 2614
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/n/aj;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/bs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 2

    .prologue
    .line 2643
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2655
    :goto_0
    monitor-exit p0

    return-void

    .line 2647
    :cond_0
    if-eqz p1, :cond_1

    .line 2648
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2650
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;

    .line 2652
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;

    .line 50085
    invoke-virtual {v0}, Lcom/sleepycat/b/x;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static s()I
    .locals 1

    .prologue
    .line 1988
    sget v0, Lcom/sleepycat/b/c/ad;->at:I

    return v0
.end method

.method public static x()Z
    .locals 1

    .prologue
    .line 2342
    sget-boolean v0, Lcom/sleepycat/b/c/ad;->ak:Z

    return v0
.end method

.method public static y()I
    .locals 1

    .prologue
    .line 2353
    sget v0, Lcom/sleepycat/b/c/ad;->am:I

    return v0
.end method


# virtual methods
.method public final A()Lcom/sleepycat/b/x;
    .locals 1

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->af:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2665
    :goto_0
    return-object v0

    .line 50087
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->af:Ljava/lang/String;

    goto :goto_0
.end method

.method public C()J
    .locals 4

    .prologue
    .line 2677
    iget-wide v0, p0, Lcom/sleepycat/b/c/ad;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2678
    iget-wide v0, p0, Lcom/sleepycat/b/c/ad;->o:J

    .line 2681
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method final D()V
    .locals 1

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/b;->b()V

    .line 2699
    :cond_0
    return-void
.end method

.method public final E()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2719
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 50088
    iget-object v0, v2, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50094
    invoke-virtual {v2}, Lcom/sleepycat/b/d/b;->b()V

    .line 50102
    iget-object v0, v2, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 50107
    iget-object v3, v0, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v4

    iget-object v3, v0, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 50111
    iget-wide v6, v3, Lcom/sleepycat/b/c/ar;->a:J

    .line 50107
    sub-long/2addr v4, v6

    .line 50110
    iget-object v0, v0, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 50112
    iget-wide v6, v0, Lcom/sleepycat/b/c/ar;->b:J

    .line 50110
    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 50102
    :goto_0
    if-eqz v0, :cond_0

    .line 50103
    sget-object v0, Lcom/sleepycat/b/d/e;->c:Lcom/sleepycat/b/d/e;

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/d/e;Z)V

    .line 2720
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 50110
    goto :goto_0
.end method

.method public final F()J
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 2747
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 50128
    iget-object v8, v0, Lcom/sleepycat/b/a/c;->ab:Lcom/sleepycat/b/a/ae;

    .line 50129
    iget-object v0, v8, Lcom/sleepycat/b/a/ae;->c:Lcom/sleepycat/b/a/c;

    iget-boolean v0, v0, Lcom/sleepycat/b/a/c;->N:Z

    if-nez v0, :cond_1

    .line 50148
    :cond_0
    :goto_0
    return-wide v6

    .line 50138
    :cond_1
    iget-object v0, v8, Lcom/sleepycat/b/a/ae;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50147
    iget-object v0, v8, Lcom/sleepycat/b/a/ae;->b:Lcom/sleepycat/b/c/ad;

    .line 50171
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 50147
    if-nez v0, :cond_0

    .line 50151
    iget-object v0, v8, Lcom/sleepycat/b/a/ae;->b:Lcom/sleepycat/b/c/ad;

    .line 50172
    iget-object v9, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 50154
    const/4 v3, 0x0

    .line 50155
    const/4 v1, 0x0

    .line 50157
    invoke-virtual {v8}, Lcom/sleepycat/b/a/ae;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 50173
    iget v2, v0, Lcom/sleepycat/b/a/z;->o:I

    .line 50159
    int-to-long v12, v2

    add-long/2addr v4, v12

    .line 50160
    if-le v2, v3, :cond_3

    .line 50174
    iget-boolean v11, v0, Lcom/sleepycat/b/a/z;->q:Z

    .line 50160
    if-eqz v11, :cond_3

    move v1, v2

    :goto_2
    move v3, v1

    move-object v1, v0

    .line 50164
    goto :goto_1

    .line 50166
    :cond_2
    if-eqz v1, :cond_0

    .line 50175
    iget-wide v10, v9, Lcom/sleepycat/b/c/ao;->ae:J

    .line 50166
    cmp-long v0, v4, v10

    if-lez v0, :cond_0

    .line 50167
    iget-object v0, v8, Lcom/sleepycat/b/a/ae;->b:Lcom/sleepycat/b/c/ad;

    .line 50176
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 50177
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 50167
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/a/z;)V

    .line 50168
    int-to-long v0, v3

    add-long/2addr v6, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    move v1, v3

    goto :goto_2
.end method

.method public final G()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 2754
    .line 50178
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 50179
    iget-object v2, v0, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 50180
    iget-object v0, v2, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    iget-wide v8, v2, Lcom/sleepycat/b/d/a;->c:J

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iget-object v0, v2, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 50187
    iget-wide v6, v0, Lcom/sleepycat/b/c/ar;->a:J

    .line 50180
    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    move v0, v1

    .line 50183
    :goto_0
    if-eqz v0, :cond_0

    .line 50184
    iput-boolean v1, v2, Lcom/sleepycat/b/d/a;->d:Z

    .line 2754
    :cond_0
    return v0

    .line 50180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 2778
    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    .prologue
    .line 2786
    const/4 v0, 0x0

    return v0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 2794
    const/4 v0, 0x0

    return v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 2802
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public M()Z
    .locals 1

    .prologue
    .line 2811
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .locals 1

    .prologue
    .line 2819
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 50188
    iget-byte v0, v0, Lcom/sleepycat/b/c/p;->g:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2819
    goto :goto_0
.end method

.method public O()Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 2828
    const/4 v0, 0x0

    return-object v0
.end method

.method public P()V
    .locals 0

    .prologue
    .line 2833
    return-void
.end method

.method public Q()Lcom/sleepycat/b/h/u;
    .locals 2

    .prologue
    .line 2841
    new-instance v0, Lcom/sleepycat/b/c/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/c/ah;-><init>(Lcom/sleepycat/b/c/ad;B)V

    return-object v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 2846
    const/4 v0, 0x0

    return v0
.end method

.method public S()V
    .locals 0

    .prologue
    .line 2882
    return-void
.end method

.method public T()Lcom/sleepycat/b/n/y;
    .locals 1

    .prologue
    .line 2901
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public U()V
    .locals 0

    .prologue
    .line 3044
    return-void
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/ae;
    .locals 17

    .prologue
    .line 2556
    new-instance v11, Lcom/sleepycat/b/ae;

    invoke-direct {v11}, Lcom/sleepycat/b/ae;-><init>()V

    .line 2558
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/c/ad;->av:Ljava/lang/Object;

    monitor-enter v12

    .line 2559
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    .line 34356
    iget-object v3, v2, Lcom/sleepycat/b/e/b;->b:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/e/b;->d()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/p/z;->a(Ljava/lang/Long;)V

    .line 35103
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 34363
    if-eqz v3, :cond_0

    .line 34364
    const/4 v3, 0x0

    iput v3, v2, Lcom/sleepycat/b/e/b;->c:I

    .line 34365
    const/4 v3, 0x0

    iput v3, v2, Lcom/sleepycat/b/e/b;->d:I

    .line 34368
    :cond_0
    iget-object v2, v2, Lcom/sleepycat/b/e/b;->a:Lcom/sleepycat/b/p/ai;

    .line 36103
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 34368
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 36291
    iput-object v2, v11, Lcom/sleepycat/b/ae;->a:Lcom/sleepycat/b/p/ai;

    .line 2560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 36299
    iput-object v2, v11, Lcom/sleepycat/b/ae;->c:Lcom/sleepycat/b/p/ai;

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 37070
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->b:Z

    .line 36592
    if-nez v3, :cond_1

    .line 36593
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->B:Lcom/sleepycat/b/p/z;

    iget-object v4, v2, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    invoke-virtual {v4}, Lcom/sleepycat/b/a/ad;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/p/z;->a(Ljava/lang/Long;)V

    .line 36596
    :cond_1
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->C:Lcom/sleepycat/b/p/l;

    iget-object v4, v2, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    .line 37260
    iget v4, v4, Lcom/sleepycat/b/a/aa;->a:F

    .line 36596
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/p/l;->a(Ljava/lang/Float;)V

    .line 36597
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->D:Lcom/sleepycat/b/p/o;

    iget-object v4, v2, Lcom/sleepycat/b/a/c;->ac:Lcom/sleepycat/b/a/aa;

    .line 37267
    iget v4, v4, Lcom/sleepycat/b/a/aa;->b:I

    .line 36597
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/p/o;->a(Ljava/lang/Integer;)V

    .line 36599
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->b:Lcom/sleepycat/b/p/ai;

    .line 38103
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 36599
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v3

    .line 36601
    iget-object v2, v2, Lcom/sleepycat/b/a/c;->ad:Lcom/sleepycat/b/a/k;

    invoke-virtual {v2}, Lcom/sleepycat/b/a/k;->f()Lcom/sleepycat/b/p/ai;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 38307
    iput-object v3, v11, Lcom/sleepycat/b/ae;->d:Lcom/sleepycat/b/p/ai;

    .line 2562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 38315
    iput-object v2, v11, Lcom/sleepycat/b/ae;->e:Lcom/sleepycat/b/p/ai;

    .line 2563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ao;->d()Lcom/sleepycat/b/p/ai;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 38378
    iget-object v2, v14, Lcom/sleepycat/b/d/b;->f:Lcom/sleepycat/b/p/ai;

    .line 39103
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 38378
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v4

    .line 38384
    new-instance v2, Lcom/sleepycat/b/p/z;

    sget-object v3, Lcom/sleepycat/b/d/h;->r:Lcom/sleepycat/b/p/ag;

    iget-object v5, v14, Lcom/sleepycat/b/d/b;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-direct {v2, v4, v3, v6, v7}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 38385
    new-instance v2, Lcom/sleepycat/b/p/z;

    sget-object v3, Lcom/sleepycat/b/d/h;->s:Lcom/sleepycat/b/p/ag;

    iget-object v5, v14, Lcom/sleepycat/b/d/b;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-direct {v2, v4, v3, v6, v7}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 38386
    new-instance v2, Lcom/sleepycat/b/p/z;

    sget-object v3, Lcom/sleepycat/b/d/h;->t:Lcom/sleepycat/b/p/ag;

    iget-object v5, v14, Lcom/sleepycat/b/d/b;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-direct {v2, v4, v3, v6, v7}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;J)V

    .line 38387
    iget-object v2, v14, Lcom/sleepycat/b/d/b;->b:Lcom/sleepycat/b/d/n;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/d/n;->a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 38388
    iget-object v2, v14, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    .line 40062
    iget-object v3, v2, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ar;->a()J

    move-result-wide v6

    iget-object v3, v2, Lcom/sleepycat/b/d/a;->a:Lcom/sleepycat/b/c/ar;

    .line 40321
    iget-wide v8, v3, Lcom/sleepycat/b/c/ar;->a:J

    .line 40062
    sub-long/2addr v6, v8

    .line 40064
    iget-object v3, v2, Lcom/sleepycat/b/d/a;->f:Lcom/sleepycat/b/p/z;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sleepycat/b/p/z;->a(Ljava/lang/Long;)V

    .line 40066
    iget-object v2, v2, Lcom/sleepycat/b/d/a;->e:Lcom/sleepycat/b/p/ai;

    .line 41103
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 40066
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 38388
    invoke-virtual {v4, v2}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 38394
    const-class v2, Lcom/sleepycat/b/d/e;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 38396
    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/d/e;

    .line 38397
    invoke-virtual {v2}, Lcom/sleepycat/b/d/e;->ordinal()I

    move-result v16

    .line 38399
    new-instance v3, Lcom/sleepycat/b/p/q;

    invoke-virtual {v2}, Lcom/sleepycat/b/d/e;->d()Lcom/sleepycat/b/p/ag;

    move-result-object v5

    iget-object v6, v14, Lcom/sleepycat/b/d/b;->r:[Ljava/util/concurrent/atomic/AtomicLong;

    aget-object v6, v6, v16

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/sleepycat/b/d/e;->c()Lcom/sleepycat/b/p/ag;

    move-result-object v2

    .line 41235
    iget-object v8, v4, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/p/d;

    .line 41236
    if-nez v2, :cond_3

    .line 41237
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 38399
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/b/p/q;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;JJB)V

    .line 42103
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 38404
    if-eqz v2, :cond_2

    .line 38405
    iget-object v2, v14, Lcom/sleepycat/b/d/b;->r:[Ljava/util/concurrent/atomic/AtomicLong;

    aget-object v2, v2, v16

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 2568
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 41239
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/b/p/d;->f()Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 42324
    :cond_4
    iput-object v4, v11, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    .line 42325
    iget-object v2, v11, Lcom/sleepycat/b/ae;->b:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v2, v13}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 2565
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 42402
    iget-object v3, v2, Lcom/sleepycat/b/n/aj;->a:Lcom/sleepycat/b/n/l;

    .line 43085
    iget-object v2, v3, Lcom/sleepycat/b/n/l;->k:Lcom/sleepycat/b/p/ai;

    .line 44103
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 43085
    invoke-virtual {v2, v4}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v4

    .line 43087
    new-instance v5, Lcom/sleepycat/b/p/ai;

    const-string v2, "Locktable latches"

    const-string v6, "Shows lock table contention"

    invoke-direct {v5, v2, v6}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43089
    const/4 v2, 0x0

    :goto_2
    iget v6, v3, Lcom/sleepycat/b/n/l;->f:I

    if-ge v2, v6, :cond_6

    .line 43090
    iget-object v6, v3, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    aget-object v6, v6, v2

    .line 44218
    iget-object v6, v6, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    .line 43090
    invoke-virtual {v5, v6}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 45103
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 43091
    if-eqz v6, :cond_5

    .line 43092
    iget-object v6, v3, Lcom/sleepycat/b/n/l;->g:[Lcom/sleepycat/b/f/a;

    aget-object v6, v6, v2

    .line 45222
    iget-object v6, v6, Lcom/sleepycat/b/f/a;->a:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v6}, Lcom/sleepycat/b/p/ai;->a()V

    .line 43089
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 43096
    :cond_6
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 43098
    new-instance v2, Lcom/sleepycat/b/p/ai;

    const-string v5, "Locktable"

    const-string v6, "The types of locks held in the lock table"

    invoke-direct {v2, v5, v6}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46070
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sleepycat/b/bn;->b:Z

    .line 43101
    if-nez v5, :cond_7

    .line 46103
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 43102
    invoke-virtual {v3, v2, v5}, Lcom/sleepycat/b/n/l;->a(Lcom/sleepycat/b/p/ai;Z)V

    .line 43105
    :cond_7
    invoke-virtual {v4, v2}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ai;)V

    .line 46341
    iput-object v4, v11, Lcom/sleepycat/b/ae;->f:Lcom/sleepycat/b/p/ai;

    .line 46573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->ay:Lcom/sleepycat/b/p/ai;

    .line 47103
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 46573
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    .line 46574
    new-instance v3, Lcom/sleepycat/b/p/z;

    sget-object v4, Lcom/sleepycat/b/c/x;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct {v3, v2, v4}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    .line 46575
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sleepycat/b/c/ad;->aw:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/b/p/z;->a(Ljava/lang/Long;)V

    .line 47349
    iput-object v2, v11, Lcom/sleepycat/b/ae;->g:Lcom/sleepycat/b/p/ai;

    .line 2567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/ad;->ad:Lcom/sleepycat/b/p/ap;

    .line 48103
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/sleepycat/b/bn;->c:Z

    .line 2567
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/p/ap;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/sleepycat/b/ae;->a(Lcom/sleepycat/b/p/ai;)V

    .line 2568
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2569
    return-object v11
.end method

.method public a(Lcom/sleepycat/b/n/q;Ljava/lang/Throwable;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 2938
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 2965
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 2954
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a([Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/aw;)Lcom/sleepycat/b/ay;
    .locals 13

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    .line 3137
    .line 50192
    :try_start_0
    iget-wide v0, p2, Lcom/sleepycat/b/aw;->a:J

    .line 50193
    iget-wide v2, p2, Lcom/sleepycat/b/aw;->b:J

    .line 3140
    cmp-long v6, v2, v8

    if-lez v6, :cond_0

    .line 3141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 3142
    cmp-long v6, v2, v8

    if-gez v6, :cond_6

    .line 50194
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 50195
    iget-object v2, v2, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 50196
    iget-wide v2, v2, Lcom/sleepycat/b/c/ar;->a:J

    .line 3148
    cmp-long v6, v0, v8

    if-nez v6, :cond_1

    .line 3163
    :goto_1
    new-instance v0, Lcom/sleepycat/b/c/ad$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/c/ad$1;-><init>(Lcom/sleepycat/b/c/ad;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3172
    new-instance v6, Lcom/sleepycat/b/ay;

    invoke-direct {v6}, Lcom/sleepycat/b/ay;-><init>()V

    .line 3173
    new-instance v0, Lcom/sleepycat/b/c/aj;

    move-object v1, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/c/aj;-><init>(Lcom/sleepycat/b/c/ad;JJLcom/sleepycat/b/ay;Lcom/sleepycat/b/aw;)V

    .line 3175
    array-length v2, p1

    .line 3176
    new-array v10, v2, [J

    .line 3177
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 3178
    aget-object v3, p1, v1

    .line 50197
    iget-object v3, v3, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 3178
    invoke-virtual {v3}, Lcom/sleepycat/b/l/ah;->d()J

    move-result-wide v4

    aput-wide v4, v10, v1

    .line 3177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3150
    :cond_1
    cmp-long v6, v0, v2

    if-lez v6, :cond_5

    .line 3151
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "maxBytes parameter to preload() was specified as "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes \nbut the cache is only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 3191
    :catch_0
    move-exception v0

    .line 3192
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 3193
    throw v0

    .line 3180
    :cond_2
    :try_start_1
    new-instance v7, Lcom/sleepycat/b/c/ai;

    move-object v8, p0

    move-object v9, p1

    move-object v11, v0

    move-object v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/sleepycat/b/c/ai;-><init>(Lcom/sleepycat/b/c/ad;[Lcom/sleepycat/b/c/i;[JLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/aw;)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 3183
    :try_start_2
    invoke-virtual {v7}, Lcom/sleepycat/b/c/ay;->a()V

    .line 50198
    iget-object v0, v0, Lcom/sleepycat/b/c/aj;->a:Lcom/sleepycat/b/ba;

    if-eqz v0, :cond_3

    .line 50199
    sget v0, Lcom/sleepycat/b/ax;->a:I
    :try_end_2
    .catch Lcom/sleepycat/b/c/ae; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 3189
    :cond_3
    :goto_3
    :try_start_3
    sget-boolean v0, Lcom/sleepycat/b/c/ad;->ai:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3185
    :catch_1
    move-exception v0

    .line 50203
    iget-object v0, v0, Lcom/sleepycat/b/c/ae;->a:Lcom/sleepycat/b/az;

    .line 50204
    iput-object v0, v6, Lcom/sleepycat/b/ay;->h:Lcom/sleepycat/b/az;
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 3190
    :cond_4
    return-object v6

    :cond_5
    move-wide v2, v0

    goto :goto_1

    :cond_6
    move-wide v4, v2

    goto/16 :goto_0
.end method

.method public a(Lcom/sleepycat/b/z;)Lcom/sleepycat/b/c/m;
    .locals 1

    .prologue
    .line 562
    new-instance v0, Lcom/sleepycat/b/c/m;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/c/m;-><init>(Lcom/sleepycat/b/z;)V

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 2912
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/p/ag;)Lcom/sleepycat/b/p/d;
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ad:Lcom/sleepycat/b/p/ap;

    .line 50191
    iget-object v0, v0, Lcom/sleepycat/b/p/ai;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/d;

    .line 3060
    return-object v0
.end method

.method public a()Lcom/sleepycat/b/x;
    .locals 3

    .prologue
    .line 778
    new-instance v0, Lcom/sleepycat/b/c/af;

    .line 15629
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    .line 778
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->z()Lcom/sleepycat/b/z;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/sleepycat/b/c/af;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;)V

    return-object v0
.end method

.method public a(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/bn;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/p/ai;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Standalone Environment doesn\'t support replication statistics."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ap:Lcom/sleepycat/b/p/ao;

    if-eqz v0, :cond_1

    .line 2989
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ap:Lcom/sleepycat/b/p/ao;

    invoke-interface {v0}, Lcom/sleepycat/b/p/ao;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    .line 2993
    :cond_0
    :goto_0
    return-object p1

    .line 2992
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ag:Lcom/sleepycat/b/k/a/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/k/a/c;->a()J

    move-result-wide v0

    .line 2993
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    .line 1250
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/sleepycat/b/c/ad;->r:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_1

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    sget-object v1, Lcom/sleepycat/b/g/af;->p:Lcom/sleepycat/b/g/af;

    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-static {v1, v2}, Lcom/sleepycat/b/g/a/q;->a(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/g/am;->b(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/ad;->r:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->c()V

    .line 1259
    return-void

    .line 1258
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->s:Lcom/sleepycat/b/f/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/a;->c()V

    throw v0
.end method

.method public a(Lcom/sleepycat/b/aa;)V
    .locals 1

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    .line 1521
    sget-object v0, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    .line 1522
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->v()V

    .line 1523
    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/c/ab;)V
    .locals 1

    .prologue
    .line 2481
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->an:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    monitor-exit p0

    return-void

    .line 2481
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/sleepycat/b/g/al;)V
    .locals 0

    .prologue
    .line 2861
    return-void
.end method

.method public a(Lcom/sleepycat/b/h/l;)V
    .locals 0

    .prologue
    .line 2854
    return-void
.end method

.method public final a(Lcom/sleepycat/b/l/j;)V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    if-eqz v0, :cond_2

    .line 1379
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    .line 18618
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18621
    check-cast p1, Lcom/sleepycat/b/l/a;

    .line 18622
    sget-boolean v1, Lcom/sleepycat/b/e/b;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->F()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18625
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/b/l/a;->p()I

    move-result v1

    if-gtz v1, :cond_2

    .line 18630
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/a/s;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19345
    iget v1, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 18631
    if-nez v1, :cond_1

    .line 18632
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/e/b;->a(Lcom/sleepycat/b/l/a;)V

    .line 18636
    :cond_1
    iget v1, v0, Lcom/sleepycat/b/e/b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/e/b;->c:I

    .line 1381
    :cond_2
    return-void
.end method

.method public a(Lcom/sleepycat/b/p/au;J)V
    .locals 0

    .prologue
    .line 2871
    return-void
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/x;)V
    .locals 1

    .prologue
    .line 791
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->au:Z

    if-nez v0, :cond_1

    .line 792
    const-string v0, "JEMonitor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/String;Lcom/sleepycat/b/x;)V

    .line 794
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/String;Lcom/sleepycat/b/x;)V

    .line 796
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->au:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    :cond_1
    monitor-exit p0

    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/aw;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->y:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ad;->aq:Z

    .line 579
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->z:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->e:Z

    .line 581
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->A:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->f:Z

    .line 583
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->f:Z

    if-eqz v0, :cond_1

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set \'je.env.isNoLocking\' and \'je.env.isTransactional\';"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 581
    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->B:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 595
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->R:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->h:Z

    .line 597
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->D:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    sput-boolean v0, Lcom/sleepycat/b/c/ad;->ak:Z

    .line 599
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->E:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->j:Z

    .line 601
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->F:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    sput v0, Lcom/sleepycat/b/c/ad;->am:I

    .line 603
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->d:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->i:Z

    .line 605
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/b/d;->bn:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/b/c/ad;->X:Z

    .line 607
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->ai:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/c/ad;->ah:I

    .line 6561
    iget-object v0, p1, Lcom/sleepycat/b/z;->h:Lcom/sleepycat/b/ba;

    .line 610
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->I:Lcom/sleepycat/b/ba;

    .line 6586
    iget-object v0, p1, Lcom/sleepycat/b/z;->i:Ljava/lang/ClassLoader;

    .line 611
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 6615
    iget-object v0, p1, Lcom/sleepycat/b/z;->j:Lcom/sleepycat/b/aw;

    .line 612
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->K:Lcom/sleepycat/b/aw;

    .line 7478
    iget-object v0, p1, Lcom/sleepycat/b/z;->k:Lcom/sleepycat/b/h;

    .line 613
    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->az:Lcom/sleepycat/b/h;

    .line 614
    return-void

    :cond_2
    move v1, v2

    .line 605
    goto :goto_1
.end method

.method public declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 1863
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final a(Ljava/lang/Error;)V
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->S:Lcom/sleepycat/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/aa;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1544
    :goto_0
    return-void

    .line 1538
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->S:Lcom/sleepycat/b/aa;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/aa;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->S:Lcom/sleepycat/b/aa;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/aa;)V

    goto :goto_0

    .line 1541
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/l/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    if-eqz v0, :cond_1

    .line 1364
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    .line 18311
    iget-object v2, v1, Lcom/sleepycat/b/e/b;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 18312
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 18313
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18314
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/d;

    .line 18315
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/e/b;->b(Lcom/sleepycat/b/l/d;)V

    goto :goto_0

    .line 18317
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 0

    .prologue
    .line 1873
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method final declared-synchronized a(ZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 1705
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/sleepycat/b/c/ad;->c(Z)V

    .line 1707
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 1708
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Close of environment "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " started"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/b/g/aw;->b(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Close of environment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " started"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p0, v4}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v4, Lcom/sleepycat/b/c/o;->e:[Lcom/sleepycat/b/c/o;

    sget-object v5, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/c/o;->a([Lcom/sleepycat/b/c/o;Lcom/sleepycat/b/c/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1721
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21984
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->aj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1730
    if-lez v0, :cond_0

    .line 1731
    const-string v0, "\nThere are backups in progress so the "

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1732
    const-string v0, "Environment should not have been closed."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1733
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->v()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1743
    :try_start_4
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->Y()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1749
    :goto_1
    const/4 v0, 0x0

    .line 1750
    if-eqz p1, :cond_1

    :try_start_5
    iget-boolean v4, p0, Lcom/sleepycat/b/c/ad;->g:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v5, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 22159
    iget-wide v4, v4, Lcom/sleepycat/b/g/am;->h:J

    .line 1750
    iget-object v6, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 22474
    iget-wide v6, v6, Lcom/sleepycat/b/g/m;->q:J

    .line 1750
    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 1764
    new-instance v0, Lcom/sleepycat/b/c;

    invoke-direct {v0}, Lcom/sleepycat/b/c;-><init>()V

    .line 23123
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/sleepycat/b/c;->b:Z

    .line 23157
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/sleepycat/b/c;->e:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1768
    :try_start_6
    const-string v4, "close"

    invoke-virtual {p0, v0, v4}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    :try_end_6
    .catch Lcom/sleepycat/b/n; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    move v0, v1

    .line 1776
    :cond_1
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/ad;->a(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1781
    :goto_3
    :try_start_8
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "About to shutdown daemons for Env "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1784
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->w()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1787
    if-nez p2, :cond_2

    .line 1789
    :try_start_9
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1796
    :cond_2
    :goto_4
    :try_start_a
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->f()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1802
    :goto_5
    :try_start_b
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->g()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1812
    :goto_6
    :try_start_c
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->g()V

    .line 1813
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/c;->f()V

    .line 1814
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 23301
    iget-object v1, v0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 23692
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 23301
    if-eqz v1, :cond_3

    .line 23302
    iget-object v1, v0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 24692
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 23302
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/d/b;->a(I)V

    .line 23305
    :cond_3
    iget-object v1, v0, Lcom/sleepycat/b/c/al;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 23306
    iget-object v1, v0, Lcom/sleepycat/b/c/al;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 23307
    iget-object v1, v0, Lcom/sleepycat/b/c/al;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 23309
    iget-boolean v1, v0, Lcom/sleepycat/b/c/al;->b:Z

    if-eqz v1, :cond_4

    .line 23310
    iget-object v0, v0, Lcom/sleepycat/b/c/al;->a:Lcom/sleepycat/b/c/ad;

    .line 25508
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 23311
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/c/ao;->b(J)V

    .line 23312
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/c/ao;->a(J)V

    .line 1816
    :cond_4
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ab()V

    .line 1818
    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eq v0, v1, :cond_5

    .line 1822
    :try_start_d
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ac()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1828
    :cond_5
    :goto_7
    :try_start_e
    sget-object v0, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    .line 1835
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->Z()V

    .line 1836
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ab()V

    .line 1840
    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    if-nez v0, :cond_6

    .line 1842
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    :try_start_f
    const-string v4, "releasing resources"

    invoke-static {v3, v0, v4}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_0

    .line 1828
    :catchall_1
    move-exception v0

    :try_start_10
    sget-object v1, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    .line 1835
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->Z()V

    .line 1836
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ab()V

    .line 1828
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1744
    :catch_1
    move-exception v0

    .line 1745
    :try_start_11
    const-string v4, "unregistering MBean"

    invoke-static {v3, v0, v4}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1769
    :catch_2
    move-exception v0

    .line 1770
    const-string v4, "performing checkpoint"

    invoke-static {v3, v0, v4}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1777
    :catch_3
    move-exception v0

    .line 1778
    const-string v1, "after checkpoint"

    invoke-static {v3, v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1790
    :catch_4
    move-exception v0

    .line 1791
    const-string v1, "flushing log manager"

    invoke-static {v3, v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1797
    :catch_5
    move-exception v0

    .line 1798
    const-string v1, "clearing file manager"

    invoke-static {v3, v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1803
    :catch_6
    move-exception v0

    .line 1804
    const-string v1, "closing file manager"

    invoke-static {v3, v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1823
    :catch_7
    move-exception v0

    .line 1824
    const-string v1, "performing validity checks"

    invoke-static {v3, v0, v1}, Lcom/sleepycat/b/c/ad;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_7

    .line 1845
    :cond_6
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    if-eqz v0, :cond_0

    .line 2072
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)V

    .line 2073
    const/4 v0, 0x1

    .line 2075
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/o/b;)Z
    .locals 1

    .prologue
    .line 2589
    .line 48973
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->aj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2590
    const/4 v0, 0x1

    return v0
.end method

.method public b(J)Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 2891
    const-string v0, "Should not be called on a non replicated environment"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    const-string v0, "com.sleepycat.je.jmx.JEMonitor"

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/c/ab;)V
    .locals 1

    .prologue
    .line 2488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->an:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    monitor-exit p0

    return-void

    .line 2488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/sleepycat/b/o/b;)V
    .locals 1

    .prologue
    .line 2598
    .line 48977
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->aj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2599
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 50113
    iget-object v1, v0, Lcom/sleepycat/b/d/b;->c:Lcom/sleepycat/b/d/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/d/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50119
    invoke-virtual {v0}, Lcom/sleepycat/b/d/b;->b()V

    .line 50125
    sget-object v1, Lcom/sleepycat/b/d/e;->e:Lcom/sleepycat/b/d/e;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/d/e;Z)V

    .line 2729
    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .prologue
    .line 3016
    if-eqz p1, :cond_0

    .line 50189
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 3016
    if-nez v0, :cond_0

    .line 3017
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This environment was previously opened for replication. It cannot be re-opened for in read/write mode for non-replicated operation."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3028
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50190
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 3028
    if-nez v0, :cond_1

    .line 3030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "je.rep.preserveRecordVersion parameter may not be true in a read-write, non-replicated environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3035
    :cond_1
    return-void
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/z;)Z
    .locals 14

    .prologue
    .line 631
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->al:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 752
    :goto_0
    monitor-exit p0

    return v0

    .line 642
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->f:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 644
    if-eqz v6, :cond_3

    .line 652
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/h/m;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/h/m;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 654
    iget-boolean v1, p0, Lcom/sleepycat/b/c/ad;->g:Z

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/h/m;->a(Z)Lcom/sleepycat/b/h/l;

    .line 656
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V

    .line 665
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->f()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 698
    :cond_1
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->bh:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/ad;->o:J

    .line 700
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->bj:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/ad;->p:J

    .line 708
    iget-object v7, p0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 7978
    iget-object v1, v0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->t()J

    move-result-wide v2

    iget-object v0, v0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->t()J

    move-result-wide v0

    add-long v8, v2, v0

    .line 8005
    const-wide/16 v2, 0x0

    .line 8006
    const-wide/16 v0, 0x0

    .line 8007
    iget-object v4, v7, Lcom/sleepycat/b/c/ao;->af:Lcom/sleepycat/b/c/ad;

    .line 8492
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 8007
    invoke-virtual {v4}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide v4, v2

    move-wide v2, v0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 8008
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->L()J

    move-result-wide v12

    add-long/2addr v4, v12

    .line 8009
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->o()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 8010
    goto :goto_2

    .line 659
    :catchall_0
    move-exception v0

    .line 664
    :try_start_5
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/am;->a()V

    .line 665
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v1}, Lcom/sleepycat/b/g/m;->f()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 659
    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 754
    :catchall_1
    move-exception v0

    .line 756
    :try_start_7
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->Z()V

    .line 757
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ab()V

    .line 765
    iget-boolean v1, p0, Lcom/sleepycat/b/c/ad;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    if-eqz v1, :cond_2

    .line 766
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    invoke-virtual {v1, p0}, Lcom/sleepycat/b/d/b;->b(Lcom/sleepycat/b/c/ad;)V

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 770
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    sget v2, Lcom/sleepycat/b/bb;->n:I

    invoke-virtual {v1}, Lcom/sleepycat/b/c/bd;->a()V

    .line 754
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 631
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 681
    :cond_3
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 688
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/b/d;->e:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->R:Z

    goto/16 :goto_1

    .line 8011
    :cond_4
    invoke-virtual {v7, v4, v5}, Lcom/sleepycat/b/c/ao;->b(J)V

    .line 8012
    add-long v0, v2, v8

    invoke-virtual {v7, v0, v1}, Lcom/sleepycat/b/c/ao;->a(J)V

    .line 717
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 8940
    sget-object v1, Lcom/sleepycat/b/b/d;->u:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/c/ad;->M:I

    .line 8942
    sget-object v1, Lcom/sleepycat/b/b/d;->v:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/c/ad;->N:I

    .line 8944
    sget-object v1, Lcom/sleepycat/b/b/d;->w:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sleepycat/b/c/ad;->ar:J

    .line 8948
    const-string v1, "com.sleepycat.je.util.ConsoleHandler.level"

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8950
    sget-object v1, Lcom/sleepycat/b/b/d;->bo:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    .line 8952
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->U:Ljava/util/logging/ConsoleHandler;

    invoke-virtual {v2, v1}, Ljava/util/logging/ConsoleHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 8955
    :cond_5
    const-string v1, "com.sleepycat.je.util.FileHandler.level"

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/ac;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8957
    sget-object v1, Lcom/sleepycat/b/b/d;->bp:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object v1

    .line 8959
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    if-eqz v2, :cond_6

    .line 8960
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->V:Ljava/util/logging/FileHandler;

    invoke-virtual {v2, v1}, Ljava/util/logging/FileHandler;->setLevel(Ljava/util/logging/Level;)V

    .line 9487
    :cond_6
    iget-object v1, p1, Lcom/sleepycat/b/ac;->r:Lcom/sleepycat/b/ag;

    .line 8964
    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->H:Lcom/sleepycat/b/ag;

    .line 9529
    iget-object v1, p1, Lcom/sleepycat/b/ac;->s:Lcom/sleepycat/b/a;

    .line 8966
    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->k:Lcom/sleepycat/b/a;

    .line 9578
    iget-object v1, p1, Lcom/sleepycat/b/ac;->t:Lcom/sleepycat/b/b;

    .line 8967
    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->l:Lcom/sleepycat/b/b;

    .line 8969
    sget-object v1, Lcom/sleepycat/b/b/d;->bs:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8970
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    if-nez v1, :cond_7

    .line 10330
    iget-boolean v1, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 8970
    if-nez v1, :cond_7

    .line 10334
    iget-boolean v1, p0, Lcom/sleepycat/b/c/ad;->h:Z

    .line 8970
    if-nez v1, :cond_7

    .line 8973
    new-instance v1, Lcom/sleepycat/b/j/a;

    invoke-direct {v1, p0}, Lcom/sleepycat/b/j/a;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    .line 8974
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/ab;)V

    .line 8980
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    invoke-virtual {v1}, Lcom/sleepycat/b/j/a;->a()V

    .line 8984
    :cond_7
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ae()V

    .line 9000
    :goto_4
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 9001
    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/m;)V

    .line 10507
    :cond_8
    sget-object v0, Lcom/sleepycat/b/c/o;->b:Lcom/sleepycat/b/c/o;

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/c/ad;->al:Z

    .line 729
    if-eqz v6, :cond_15

    .line 10887
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 10953
    iget-byte v0, v0, Lcom/sleepycat/b/c/p;->g:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    .line 10887
    :goto_5
    if-nez v0, :cond_14

    .line 10891
    new-instance v2, Lcom/sleepycat/b/l/a/c;

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-direct {v2, p0, v0}, Lcom/sleepycat/b/l/a/c;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/p;)V

    .line 11151
    iget-boolean v0, v2, Lcom/sleepycat/b/l/a/c;->c:Z

    if-eqz v0, :cond_10

    .line 11184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 11187
    :try_start_9
    iget-object v0, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 11188
    iget-object v4, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v4

    .line 11191
    :try_start_a
    invoke-static {v4}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/c/i;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result v0

    if-nez v0, :cond_c

    .line 11198
    :try_start_b
    iget-object v0, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_6

    .line 11213
    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 11214
    iget-object v4, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_7

    .line 8987
    :cond_9
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    if-eqz v1, :cond_a

    .line 8988
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    invoke-virtual {p0, v1}, Lcom/sleepycat/b/c/ad;->b(Lcom/sleepycat/b/c/ab;)V

    .line 8990
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/b/c/ad;->aA:Lcom/sleepycat/b/j/a;

    .line 8991
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ad()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    .line 10953
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 11194
    :cond_c
    :try_start_d
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_6

    .line 11197
    :catchall_4
    move-exception v0

    .line 11198
    :try_start_e
    iget-object v1, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 11197
    throw v0

    .line 11203
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-result v0

    if-nez v0, :cond_e

    .line 11213
    :try_start_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 11214
    iget-object v3, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    .line 11207
    :cond_e
    :try_start_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sleepycat/b/c/i;

    .line 11209
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11211
    iget-object v1, v2, Lcom/sleepycat/b/l/a/c;->a:Lcom/sleepycat/b/c/ad;

    iget-object v4, v2, Lcom/sleepycat/b/l/a/c;->d:Lcom/sleepycat/b/aw;

    invoke-virtual {v1, v0, v4}, Lcom/sleepycat/b/c/ad;->a([Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/aw;)Lcom/sleepycat/b/ay;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 11213
    :try_start_11
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 11214
    iget-object v3, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_9

    .line 11213
    :cond_f
    throw v1

    .line 11154
    :cond_10
    iget-object v0, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 11155
    iget-object v3, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v3

    .line 11157
    :try_start_12
    invoke-static {v3}, Lcom/sleepycat/b/l/a/c;->a(Lcom/sleepycat/b/c/i;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-result v0

    if-nez v0, :cond_11

    .line 11162
    :try_start_13
    iget-object v0, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_a

    .line 11160
    :cond_11
    :try_start_14
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/l/a/c;->b(Lcom/sleepycat/b/c/i;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 11162
    :try_start_15
    iget-object v0, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_a

    :catchall_5
    move-exception v0

    iget-object v1, v2, Lcom/sleepycat/b/l/a/c;->b:Lcom/sleepycat/b/c/p;

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    throw v0

    .line 11166
    :cond_12
    sget-boolean v0, Lcom/sleepycat/b/l/a/c;->e:Z

    if-nez v0, :cond_13

    invoke-virtual {v2}, Lcom/sleepycat/b/l/a/c;->a()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10893
    :cond_13
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->f()V

    .line 11238
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/ad;->a(J)V

    .line 10895
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V

    .line 738
    :cond_14
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->a()Lcom/sleepycat/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;

    .line 746
    new-instance v0, Lcom/sleepycat/b/k/a/c;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/k/a/c;-><init>(Lcom/sleepycat/b/c/ad;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->ag:Lcom/sleepycat/b/k/a/c;

    .line 747
    iget-object v4, p0, Lcom/sleepycat/b/c/ad;->ag:Lcom/sleepycat/b/k/a/c;

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->Z:Lcom/sleepycat/b/x;

    .line 12069
    iget-object v1, v4, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    .line 12330
    iget-boolean v1, v1, Lcom/sleepycat/b/c/ad;->g:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 12069
    if-nez v1, :cond_15

    .line 12076
    :try_start_16
    new-instance v1, Lcom/sleepycat/b/k/a/f;

    iget-object v2, v4, Lcom/sleepycat/b/k/a/c;->a:Lcom/sleepycat/b/c/ad;

    invoke-direct {v1, v2}, Lcom/sleepycat/b/k/a/f;-><init>(Lcom/sleepycat/b/c/ad;)V
    :try_end_16
    .catch Lcom/sleepycat/b/p; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 12082
    :try_start_17
    sget-object v2, Lcom/sleepycat/b/k/a/g;->b:Lcom/sleepycat/b/k/a/g;

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/b/k/a/f;->a(Lcom/sleepycat/b/k/a/g;Lcom/sleepycat/b/x;)Ljava/util/Map;

    move-result-object v0

    .line 12086
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_16

    .line 750
    :cond_15
    :goto_b
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/c/m;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 769
    :try_start_18
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->a:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    .line 770
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->E:Lcom/sleepycat/b/c/bd;

    sget v1, Lcom/sleepycat/b/bb;->n:I

    invoke-virtual {v0}, Lcom/sleepycat/b/c/bd;->a()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 752
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 12091
    :cond_16
    :try_start_19
    new-instance v5, Lcom/sleepycat/b/k/a/b;

    invoke-direct {v5}, Lcom/sleepycat/b/k/a/b;-><init>()V

    .line 12092
    const-wide v2, 0x7fffffffffffffffL

    .line 12093
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 12094
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/m;

    invoke-virtual {v5, v1}, Lcom/sleepycat/b/k/a/b;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/k/a/a;

    .line 12095
    iget-object v7, v4, Lcom/sleepycat/b/k/a/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 13051
    iget-wide v8, v1, Lcom/sleepycat/b/k/a/a;->a:J

    .line 12095
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14051
    iget-wide v8, v1, Lcom/sleepycat/b/k/a/a;->a:J

    .line 12097
    invoke-virtual {v4, v2, v3, v8, v9}, Lcom/sleepycat/b/k/a/c;->a(JJ)I

    move-result v0

    if-lez v0, :cond_18

    .line 15051
    iget-wide v0, v1, Lcom/sleepycat/b/k/a/a;->a:J

    :goto_d
    move-wide v2, v0

    .line 12100
    goto :goto_c

    .line 12106
    :cond_17
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v2, v0

    if-eqz v0, :cond_15

    .line 12107
    iput-wide v2, v4, Lcom/sleepycat/b/k/a/c;->c:J

    goto :goto_b

    .line 666
    :catch_0
    move-exception v0

    .line 669
    new-instance v1, Lcom/sleepycat/b/aa;

    sget-object v2, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, p0, v2, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 673
    :catch_1
    move-exception v0

    .line 675
    invoke-static {p0, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 673
    :catch_2
    move-exception v1

    goto/16 :goto_3

    .line 666
    :catch_3
    move-exception v1

    goto/16 :goto_3

    .line 12078
    :catch_4
    move-exception v0

    goto :goto_b

    :cond_18
    move-wide v0, v2

    goto :goto_d
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    const-string v0, "com.sleepycat.je.jmx.JEDiagnostics"

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Standalone Environment doesn\'t support LocalCBVLSN."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    new-instance v0, Lcom/sleepycat/b/j/c;

    invoke-direct {v0}, Lcom/sleepycat/b/j/c;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/b/j/c;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/sleepycat/b/j/d;
    .locals 1

    .prologue
    .line 873
    new-instance v0, Lcom/sleepycat/b/j/d;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/j/d;-><init>(Lcom/sleepycat/b/c/ad;)V

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 1201
    iget v0, p0, Lcom/sleepycat/b/c/ad;->L:I

    if-lez v0, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->as:Ljava/lang/Object;

    monitor-enter v1

    .line 1206
    :try_start_0
    iget-wide v2, p0, Lcom/sleepycat/b/c/ad;->ar:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1213
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->Q:Ljava/lang/Object;

    monitor-enter v1

    .line 1215
    :try_start_2
    iget v0, p0, Lcom/sleepycat/b/c/ad;->L:I

    if-lez v0, :cond_0

    .line 1216
    iget v0, p0, Lcom/sleepycat/b/c/ad;->L:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/c/ad;->L:I

    .line 1218
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1220
    :cond_1
    return-void

    .line 1208
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1218
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public h()Ljava/util/logging/Formatter;
    .locals 2

    .prologue
    .line 1426
    new-instance v0, Lcom/sleepycat/b/p/at;

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/at;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->b:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->a:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 3

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    .line 20257
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/aa;->a:Z

    .line 1612
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->S:Lcom/sleepycat/b/aa;

    if-ne v0, v1, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/aa;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1615
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    throw v0

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Environment must be closed, caused by: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->F:Lcom/sleepycat/b/aa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/aa;->b(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1622
    :cond_1
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1666
    invoke-direct {p0, v2}, Lcom/sleepycat/b/c/ad;->c(Z)V

    .line 20958
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1674
    if-le v0, v2, :cond_0

    .line 1675
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abnormal close assumes that the open count on this handle is 1, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 20984
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->aj:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1681
    if-lez v0, :cond_1

    .line 1682
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abnormal close assumes that the backup count on this handle is 0, not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1688
    :cond_1
    invoke-static {}, Lcom/sleepycat/b/c/n;->a()Lcom/sleepycat/b/c/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sleepycat/b/c/n;->a(Lcom/sleepycat/b/c/ad;ZZ)V

    .line 1690
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 1881
    return-void
.end method

.method public declared-synchronized q()V
    .locals 1

    .prologue
    .line 1916
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->Y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1921
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->w()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1924
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->f()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1930
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->g()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1939
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ab()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1940
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1916
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method final r()V
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1944
    return-void
.end method

.method public final t()J
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 2097
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    new-instance v1, Lcom/sleepycat/b/g/a/s;

    new-instance v2, Lcom/sleepycat/b/g/aw;

    const-string v4, "File Flip"

    invoke-direct {v2, v4}, Lcom/sleepycat/b/g/aw;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/b/g/a/s;-><init>(Lcom/sleepycat/b/g/aw;)V

    .line 29211
    sget-object v2, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    const/4 v4, 0x0

    sget-object v6, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;ZZZLcom/sleepycat/b/g/av;)J

    move-result-wide v0

    .line 2097
    return-wide v0
.end method

.method public final u()V
    .locals 3

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    if-eqz v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 29474
    sget-object v1, Lcom/sleepycat/b/d/e;->b:Lcom/sleepycat/b/d/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/d/b;->a(Lcom/sleepycat/b/d/e;Z)V

    .line 2121
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2143
    iput-boolean v2, p0, Lcom/sleepycat/b/c/ad;->b:Z

    .line 2145
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    if-eqz v0, :cond_0

    .line 2146
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/e/b;->c_()V

    .line 2153
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->i:Z

    if-nez v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    .line 30186
    iget-object v1, v0, Lcom/sleepycat/b/d/b;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30187
    iget-object v0, v0, Lcom/sleepycat/b/d/b;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 2157
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    if-eqz v0, :cond_2

    .line 2158
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/h/d;->c_()V

    .line 2161
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    if-eqz v0, :cond_4

    .line 2162
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 30529
    iget-object v1, v0, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 30530
    if-eqz v3, :cond_3

    .line 30531
    invoke-virtual {v3}, Lcom/sleepycat/b/a/h;->c_()V

    .line 30529
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2165
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    if-eqz v0, :cond_5

    .line 2166
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->ao:Lcom/sleepycat/b/j/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/j/b;->c_()V

    .line 2168
    :cond_5
    return-void
.end method

.method public final w()V
    .locals 5

    .prologue
    .line 2199
    invoke-direct {p0}, Lcom/sleepycat/b/c/ad;->ad()V

    .line 2200
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->av:Ljava/lang/Object;

    monitor-enter v1

    .line 31221
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    if-eqz v0, :cond_0

    .line 31222
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/e/b;->e()V

    .line 31228
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/e/b;->c()V

    .line 31229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->B:Lcom/sleepycat/b/e/b;

    .line 31309
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    if-eqz v0, :cond_2

    .line 31310
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 31537
    const/4 v0, 0x0

    :goto_0
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 31538
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    .line 31539
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sleepycat/b/a/h;->e()V

    .line 31540
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    aget-object v3, v3, v0

    .line 32125
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sleepycat/b/a/h;->a:Lcom/sleepycat/b/c/ad;

    .line 32126
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sleepycat/b/a/h;->b:Lcom/sleepycat/b/a/c;

    .line 32127
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sleepycat/b/a/h;->c:Lcom/sleepycat/b/a/k;

    .line 32128
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sleepycat/b/a/h;->d:Lcom/sleepycat/b/a/ad;

    .line 32129
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sleepycat/b/a/h;->e:Lcom/sleepycat/b/a/aa;

    .line 31541
    iget-object v3, v2, Lcom/sleepycat/b/a/c;->ae:[Lcom/sleepycat/b/a/h;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 31537
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32258
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    if-eqz v0, :cond_3

    .line 32259
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/h/d;->e()V

    .line 32265
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    invoke-virtual {v0}, Lcom/sleepycat/b/h/d;->c()V

    .line 32266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 33235
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    if-eqz v0, :cond_4

    .line 33236
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->i:Z

    if-eqz v0, :cond_5

    .line 33248
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/d/b;->b(Lcom/sleepycat/b/c/ad;)V

    .line 2217
    :cond_4
    :goto_1
    monitor-exit v1

    return-void

    .line 33250
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    invoke-virtual {v0}, Lcom/sleepycat/b/d/b;->c()V

    .line 33251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/ad;->A:Lcom/sleepycat/b/d/b;

    goto :goto_1

    .line 2217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final z()Lcom/sleepycat/b/z;
    .locals 1

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 34081
    iget-object v0, v0, Lcom/sleepycat/b/c/m;->b:Lcom/sleepycat/b/z;

    .line 2403
    invoke-virtual {v0}, Lcom/sleepycat/b/z;->g()Lcom/sleepycat/b/z;

    move-result-object v0

    return-object v0
.end method
