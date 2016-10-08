.class public Lcom/sleepycat/b/c/i;
.super Ljava/lang/Object;
.source "DatabaseImpl.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final H:Z

.field public static m:Z

.field public static final synthetic w:Z


# instance fields
.field private A:[B

.field private B:Z

.field private C:Z

.field private D:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;"
        }
    .end annotation
.end field

.field private F:[[B

.field private G:Lcom/sleepycat/b/c/w;

.field public a:Lcom/sleepycat/b/c/h;

.field public b:Lcom/sleepycat/b/l/ah;

.field public c:Lcom/sleepycat/b/c/ad;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i;",
            ">;"
        }
    .end annotation
.end field

.field h:J

.field volatile i:S

.field public j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:Lcom/sleepycat/b/a/g;

.field public n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field public p:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:I

.field t:Ljava/lang/String;

.field public u:Lcom/sleepycat/b/a;

.field public v:Lcom/sleepycat/b/b;

.field private x:B

.field private y:B

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const-class v0, Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    .line 231
    const-string v0, "je.forceKeyPrefixing"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    sput-boolean v1, Lcom/sleepycat/b/c/i;->H:Z

    .line 238
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 105
    goto :goto_0

    .line 236
    :cond_1
    sput-boolean v2, Lcom/sleepycat/b/c/i;->H:Z

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 176
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 177
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    .line 178
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->z:[B

    .line 179
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->A:[B

    .line 180
    iput-boolean v2, p0, Lcom/sleepycat/b/c/i;->B:Z

    .line 181
    iput-boolean v2, p0, Lcom/sleepycat/b/c/i;->C:Z

    .line 183
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->D:Ljava/util/concurrent/atomic/AtomicReference;

    .line 197
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    .line 198
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->F:[[B

    .line 290
    new-instance v0, Lcom/sleepycat/b/c/h;

    invoke-direct {v0}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 291
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 293
    new-instance v0, Lcom/sleepycat/b/l/ah;

    invoke-direct {v0}, Lcom/sleepycat/b/l/ah;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 295
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->E()V

    .line 298
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/l;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 176
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 177
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    .line 178
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->z:[B

    .line 179
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->A:[B

    .line 180
    iput-boolean v2, p0, Lcom/sleepycat/b/c/i;->B:Z

    .line 181
    iput-boolean v2, p0, Lcom/sleepycat/b/c/i;->C:Z

    .line 183
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->D:Ljava/util/concurrent/atomic/AtomicReference;

    .line 197
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    .line 198
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->F:[[B

    .line 250
    iput-object p3, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 251
    iput-object p4, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 253
    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/c/ad;)V

    .line 4203
    iget-object v0, p5, Lcom/sleepycat/b/l;->s:Lcom/sleepycat/b/a;

    .line 254
    iput-object v0, p0, Lcom/sleepycat/b/c/i;->u:Lcom/sleepycat/b/a;

    .line 4252
    iget-object v0, p5, Lcom/sleepycat/b/l;->t:Lcom/sleepycat/b/b;

    .line 255
    iput-object v0, p0, Lcom/sleepycat/b/c/i;->v:Lcom/sleepycat/b/b;

    .line 257
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->y:B

    .line 260
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->j()V

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->G()V

    .line 270
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->E()V

    .line 272
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->F()V

    .line 278
    new-instance v0, Lcom/sleepycat/b/l/ah;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/l/ah;-><init>(Lcom/sleepycat/b/c/i;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 281
    iput-object p2, p0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    .line 282
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/sleepycat/b/c/i;->i:S

    .line 344
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    .line 346
    new-instance v0, Lcom/sleepycat/b/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/b/a/g;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    .line 348
    return-void
.end method

.method private F()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 385
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 11396
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->ac:Lcom/sleepycat/b/c/as;

    .line 385
    invoke-virtual {v2}, Lcom/sleepycat/b/c/as;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/c/i;->h:J

    .line 388
    sget-boolean v2, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11700
    iget-byte v2, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v2, v1

    .line 388
    :goto_0
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The replicated AND notReplicated bits should never be set  together"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    move v2, v0

    .line 11700
    goto :goto_0

    .line 405
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 12392
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 407
    sget-object v3, Lcom/sleepycat/b/b/d;->ag:Lcom/sleepycat/b/b/e;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/b/c/i;->q:I

    .line 409
    sget-object v3, Lcom/sleepycat/b/b/d;->af:Lcom/sleepycat/b/b/e;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/b/c/i;->r:I

    .line 418
    iget v3, p0, Lcom/sleepycat/b/c/i;->s:I

    if-nez v3, :cond_2

    .line 419
    sget-object v3, Lcom/sleepycat/b/b/d;->ad:Lcom/sleepycat/b/b/e;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v2

    iput v2, p0, Lcom/sleepycat/b/c/i;->s:I

    .line 424
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    iget-object v3, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/a/g;->a(Lcom/sleepycat/b/c/ad;)V

    .line 12711
    iget-byte v2, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_3

    move v0, v1

    .line 433
    :cond_3
    if-nez v0, :cond_4

    .line 434
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    iget-object v2, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/a/g;->b(Lcom/sleepycat/b/c/ad;)V

    .line 13461
    iput-boolean v1, p0, Lcom/sleepycat/b/c/i;->f:Z

    .line 436
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->G()V

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 14000
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->R:Z

    .line 440
    if-nez v0, :cond_5

    .line 441
    new-instance v0, Lcom/sleepycat/b/c/j;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->z:[B

    const-string v2, "Btree"

    iget-object v3, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 14369
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 441
    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/c/j;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 14705
    iget-object v1, v0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 443
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 15697
    iget-boolean v0, v0, Lcom/sleepycat/b/c/j;->a:Z

    .line 444
    iput-boolean v0, p0, Lcom/sleepycat/b/c/i;->B:Z

    .line 446
    new-instance v0, Lcom/sleepycat/b/c/j;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->A:[B

    const-string v2, "Duplicate"

    iget-object v3, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 16369
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 446
    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/c/j;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 16705
    iget-object v1, v0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 449
    iput-object v1, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    .line 17697
    iget-boolean v0, v0, Lcom/sleepycat/b/c/j;->a:Z

    .line 450
    iput-boolean v0, p0, Lcom/sleepycat/b/c/i;->C:Z

    .line 452
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->H()V

    .line 454
    :cond_5
    return-void
.end method

.method private G()V
    .locals 1

    .prologue
    .line 715
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 716
    return-void
.end method

.method private H()V
    .locals 3

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    instance-of v0, v0, Lcom/sleepycat/b/k;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 21369
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    instance-of v0, v0, Lcom/sleepycat/b/k;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 22369
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    new-instance v0, Lcom/sleepycat/b/c/aa;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/c/aa;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 1086
    :goto_0
    return-void

    .line 1084
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    goto :goto_0
.end method

.method static a([BLjava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2615
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2616
    new-instance v1, Lcom/sleepycat/c/b;

    invoke-direct {v1, v0, p2}, Lcom/sleepycat/c/b;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 2617
    invoke-virtual {v1}, Lcom/sleepycat/c/b;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2618
    :catch_0
    move-exception v0

    .line 2619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while trying to load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method private static a(Ljava/util/Comparator;[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2517
    if-eqz p0, :cond_0

    .line 2518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2528
    :goto_0
    return-object v0

    .line 2519
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 2526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "byteLen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2528
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Comparator",
            "<[B>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2540
    if-nez p0, :cond_0

    .line 2541
    const/4 v0, 0x0

    .line 2545
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while trying to load "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Comparator class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method static a(Ljava/lang/StringBuilder;B)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2489
    const-string v0, " dupsort=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2490
    const-string v0, "\" replicated=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2491
    const-string v0, "\" temp=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2493
    return-void

    :cond_0
    move v0, v2

    .line 2489
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2490
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2491
    goto :goto_2
.end method

.method public static a(B)Z
    .locals 1

    .prologue
    .line 529
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 2597
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2598
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2599
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2600
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 2601
    :catch_0
    move-exception v0

    .line 2602
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while trying to store "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/util/Comparator;ZLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;Z",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 2580
    if-nez p0, :cond_0

    .line 2581
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    .line 2587
    :goto_0
    return-object v0

    .line 2584
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2587
    :cond_1
    invoke-static {p0, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static b(B)Z
    .locals 1

    .prologue
    .line 580
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(B)Z
    .locals 1

    .prologue
    .line 657
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .prologue
    .line 1484
    iget-short v0, p0, Lcom/sleepycat/b/c/i;->i:S

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()V
    .locals 2

    .prologue
    .line 1492
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/sleepycat/b/c/i;->i:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1494
    :cond_0
    const/4 v0, 0x2

    iput-short v0, p0, Lcom/sleepycat/b/c/i;->i:S

    .line 1495
    return-void
.end method

.method public final C()V
    .locals 15

    .prologue
    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    .line 1547
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    if-nez v0, :cond_0

    .line 1548
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/g;->a()V

    .line 1656
    iput-short v14, p0, Lcom/sleepycat/b/c/i;->i:S

    .line 1658
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 35379
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1658
    invoke-virtual {v1, p0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1654
    throw v0

    .line 1555
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/ah;->d()J

    move-result-wide v2

    .line 1562
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/ah;->a(Z)Lcom/sleepycat/b/l/j;

    move-result-object v10

    .line 1563
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 28379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1563
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;)V

    .line 1573
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 29371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1573
    invoke-virtual {v0}, Lcom/sleepycat/b/g/am;->a()V

    .line 1575
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->y:B

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    sget-boolean v0, Lcom/sleepycat/b/c/i;->m:Z

    if-nez v0, :cond_2

    .line 1587
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1587
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/c/i;)V

    .line 1632
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 32508
    iget-object v4, v0, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 1633
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 33492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1636
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/b/c/al;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    move-wide v2, v12

    .line 1637
    :goto_1
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1638
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 33717
    iget-object v1, v0, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 1639
    if-ne v1, p0, :cond_1

    .line 1640
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1641
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->L()J

    move-result-wide v6

    sub-long v6, v12, v6

    add-long/2addr v2, v6

    .line 1643
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->d(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move-wide v0, v2

    move-wide v2, v0

    .line 1645
    goto :goto_1

    .line 1599
    :cond_2
    :try_start_4
    new-instance v1, Lcom/sleepycat/b/a/s;

    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/a/s;-><init>(Lcom/sleepycat/b/c/ad;)V

    .line 1601
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 1602
    sget-object v4, Lcom/sleepycat/b/g/af;->l:Lcom/sleepycat/b/g/af;

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/a/s;->b(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V

    .line 1607
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 30504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 31480
    iget-boolean v8, v0, Lcom/sleepycat/b/a/c;->O:Z

    .line 1611
    new-instance v9, Lcom/sleepycat/b/c/k;

    invoke-direct {v9, p0, v1}, Lcom/sleepycat/b/c/k;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/a/s;)V

    .line 1613
    new-instance v4, Lcom/sleepycat/b/c/l;

    const/4 v11, 0x0

    move-object v5, p0

    move-wide v6, v2

    invoke-direct/range {v4 .. v11}, Lcom/sleepycat/b/c/l;-><init>(Lcom/sleepycat/b/c/i;JZLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/l/j;B)V

    .line 1620
    invoke-virtual {v4}, Lcom/sleepycat/b/c/ay;->a()V

    .line 1627
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 32095
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 32468
    iget-object v0, v0, Lcom/sleepycat/b/a/c;->aa:Lcom/sleepycat/b/a/ad;

    .line 1627
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/a/ad;->a(Lcom/sleepycat/b/a/s;)V

    goto :goto_0

    .line 1647
    :catchall_1
    move-exception v0

    move-wide v2, v12

    :goto_2
    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/b/c/ao;->c(J)V

    throw v0

    :cond_4
    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/b/c/ao;->c(J)V

    .line 1651
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 34504
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->D:Lcom/sleepycat/b/a/c;

    .line 1651
    invoke-virtual {v0}, Lcom/sleepycat/b/a/c;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1654
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->a()V

    .line 1656
    iput-short v14, p0, Lcom/sleepycat/b/c/i;->i:S

    .line 1658
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 35379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1658
    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1659
    return-void

    .line 1647
    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public final D()Lcom/sleepycat/b/g/av;
    .locals 1

    .prologue
    .line 2740
    .line 37677
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v0

    .line 2740
    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/av;->f:Lcom/sleepycat/b/g/av;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    goto :goto_0
.end method

.method public final a()I
    .locals 6

    .prologue
    .line 2328
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/h;->a()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v1}, Lcom/sleepycat/b/l/ah;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->z:[B

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->A:[B

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/c/i;->s:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 2337
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/g;->c()I

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2338
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v1}, Lcom/sleepycat/b/a/g;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 2340
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2341
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2342
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 2344
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    invoke-virtual {v0}, Lcom/sleepycat/b/a/f;->a()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    .line 2347
    goto :goto_0

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    invoke-static {v0}, Lcom/sleepycat/b/c/bk;->a([[B)I

    move-result v0

    add-int/2addr v0, v2

    .line 2349
    return v0
.end method

.method public final a(Ljava/lang/Long;)Lcom/sleepycat/b/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1402
    iput-boolean v2, p0, Lcom/sleepycat/b/c/i;->f:Z

    .line 1404
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1410
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 27375
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 1410
    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/sleepycat/b/a/g;->a(Ljava/lang/Long;ZZLcom/sleepycat/b/g/m;)Lcom/sleepycat/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/sleepycat/b/g/a/f;)Lcom/sleepycat/b/g/g;
    .locals 1

    .prologue
    .line 2792
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2793
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/g/a/f;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/g/g;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/sleepycat/b/g/a/f;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/g/g;
    .locals 7

    .prologue
    .line 2764
    new-instance v6, Lcom/sleepycat/b/g/g;

    .line 38677
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v0

    .line 2764
    invoke-direct {v6, v0, p1}, Lcom/sleepycat/b/g/g;-><init>(ZLcom/sleepycat/b/g/a/f;)V

    .line 2767
    invoke-static {p1}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2768
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2769
    :cond_0
    new-instance v0, Lcom/sleepycat/b/c/ax;

    iget-byte v1, p0, Lcom/sleepycat/b/c/i;->x:B

    iget v2, p0, Lcom/sleepycat/b/c/i;->s:I

    iget-object v3, p0, Lcom/sleepycat/b/c/i;->z:[B

    iget-object v4, p0, Lcom/sleepycat/b/c/i;->A:[B

    iget-object v5, p0, Lcom/sleepycat/b/c/i;->F:[[B

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/c/ax;-><init>(BI[B[B[[B)V

    .line 39074
    sget-boolean v1, Lcom/sleepycat/b/g/g;->e:Z

    if-nez v1, :cond_1

    iget-object v1, v6, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    invoke-static {v1}, Lcom/sleepycat/b/g/a/f;->a(Lcom/sleepycat/b/g/a/f;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39075
    :cond_1
    iput-object v0, v6, Lcom/sleepycat/b/g/g;->c:Lcom/sleepycat/b/c/ax;

    .line 2779
    :cond_2
    :goto_0
    return-object v6

    .line 2775
    :cond_3
    sget-object v0, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-ne p1, v0, :cond_2

    .line 2776
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_4

    if-nez p2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39084
    :cond_4
    sget-boolean v0, Lcom/sleepycat/b/g/g;->e:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Lcom/sleepycat/b/g/g;->b:Lcom/sleepycat/b/g/a/f;

    sget-object v1, Lcom/sleepycat/b/g/a/f;->d:Lcom/sleepycat/b/g/a/f;

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39085
    :cond_5
    iput-object p2, v6, Lcom/sleepycat/b/g/g;->d:Lcom/sleepycat/b/c/h;

    goto :goto_0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37025
    const-string v0, "                                                                                                                                "

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2262
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    const-string v0, "<database id=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2265
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    const-string v0, " deleteState=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    iget-short v0, p0, Lcom/sleepycat/b/c/i;->i:S

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2268
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2269
    const-string v0, " useCount=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2271
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    const-string v0, " dupsort=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2274
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    const-string v0, " temporary=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2277
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2278
    const-string v0, " deferredWrite=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37553
    iget-boolean v0, p0, Lcom/sleepycat/b/c/i;->e:Z

    .line 2279
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2280
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    const-string v0, " keyPrefixing=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->l()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2283
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2284
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 2285
    const-string v0, " btc=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2286
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->z:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 2291
    const-string v0, " dupc=\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->A:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2294
    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2296
    :cond_1
    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    if-eqz v0, :cond_2

    .line 2298
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2300
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2303
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 2304
    const-string v4, "<file file=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2305
    const-string v1, "\">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2307
    const-string v0, "/file>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2310
    :cond_2
    const-string v0, "</database>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/a/b;J)V
    .locals 8

    .prologue
    .line 1678
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->y:B

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    sget-boolean v0, Lcom/sleepycat/b/c/i;->m:Z

    if-nez v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    .line 36212
    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 36214
    invoke-virtual {p1, v1, p2, p3}, Lcom/sleepycat/b/a/b;->a(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 36216
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/sleepycat/b/a/b;->b(J)Lcom/sleepycat/b/a/z;

    move-result-object v1

    .line 36224
    iget v3, v0, Lcom/sleepycat/b/a/f;->c:I

    iget v4, v0, Lcom/sleepycat/b/a/f;->f:I

    sub-int/2addr v3, v4

    .line 36226
    iget v4, v0, Lcom/sleepycat/b/a/f;->d:I

    iget v5, v0, Lcom/sleepycat/b/a/f;->g:I

    sub-int/2addr v4, v5

    .line 36228
    iget v5, v0, Lcom/sleepycat/b/a/f;->a:I

    iget v6, v0, Lcom/sleepycat/b/a/f;->e:I

    sub-int/2addr v5, v6

    .line 36230
    iget v6, v1, Lcom/sleepycat/b/a/z;->i:I

    add-int/2addr v6, v3

    iput v6, v1, Lcom/sleepycat/b/a/z;->i:I

    .line 36231
    iget v6, v1, Lcom/sleepycat/b/a/z;->j:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/sleepycat/b/a/z;->j:I

    .line 36232
    iget v4, v1, Lcom/sleepycat/b/a/z;->h:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/sleepycat/b/a/z;->h:I

    .line 36244
    iget v4, v0, Lcom/sleepycat/b/a/f;->f:I

    iget v0, v0, Lcom/sleepycat/b/a/f;->h:I

    sub-int v0, v4, v0

    add-int/2addr v0, v3

    .line 36247
    iget v3, v1, Lcom/sleepycat/b/a/z;->k:I

    add-int/2addr v0, v3

    iput v0, v1, Lcom/sleepycat/b/a/z;->k:I

    goto :goto_0

    .line 1681
    :cond_1
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 1

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1121
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->F()V

    .line 1122
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/c/i;)V

    .line 1123
    return-void
.end method

.method public final a(Lcom/sleepycat/b/i;)V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1148
    return-void
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/c/ad;)V
    .locals 2

    .prologue
    .line 305
    .line 4630
    iget-object v0, p3, Lcom/sleepycat/b/l;->l:Ljava/util/Comparator;

    .line 4640
    iget-boolean v1, p3, Lcom/sleepycat/b/l;->n:Z

    .line 305
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/i;->b(Ljava/util/Comparator;Z)Z

    .line 4855
    iget-object v0, p3, Lcom/sleepycat/b/l;->m:Ljava/util/Comparator;

    .line 4866
    iget-boolean v1, p3, Lcom/sleepycat/b/l;->o:Z

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;Z)Z

    .line 4956
    iget-object v0, p3, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    .line 310
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/util/List;Z)Z

    .line 5272
    iget-boolean v0, p3, Lcom/sleepycat/b/l;->f:Z

    .line 313
    if-eqz v0, :cond_0

    .line 5584
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 6282
    :cond_0
    iget-boolean v0, p3, Lcom/sleepycat/b/l;->i:Z

    .line 317
    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sleepycat/b/c/i;->H:Z

    if-eqz v0, :cond_4

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->m()V

    .line 7046
    :goto_0
    iget-boolean v0, p3, Lcom/sleepycat/b/l;->h:Z

    .line 324
    if-eqz v0, :cond_2

    .line 7545
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 328
    :cond_2
    invoke-virtual {p4}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8290
    iget-boolean v0, p3, Lcom/sleepycat/b/l;->j:Z

    .line 329
    if-eqz v0, :cond_5

    .line 330
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->p()V

    .line 9361
    :cond_3
    :goto_1
    iget-boolean v0, p3, Lcom/sleepycat/b/l;->d:Z

    .line 336
    iput-boolean v0, p0, Lcom/sleepycat/b/c/i;->d:Z

    .line 10104
    iget-boolean v0, p3, Lcom/sleepycat/b/l;->g:Z

    .line 337
    iput-boolean v0, p0, Lcom/sleepycat/b/c/i;->e:Z

    .line 10449
    iget v0, p3, Lcom/sleepycat/b/l;->k:I

    .line 338
    iput v0, p0, Lcom/sleepycat/b/c/i;->s:I

    .line 339
    return-void

    .line 321
    :cond_4
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->n()V

    goto :goto_0

    .line 8704
    :cond_5
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    goto :goto_1
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 2456
    const-string v0, "<database"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    invoke-static {p1, v0}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/StringBuilder;B)V

    .line 2458
    const-string v0, " btcmp=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2459
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->z:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2461
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2462
    const-string v0, " dupcmp=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->A:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    const-string v0, "\" > "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2466
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 2467
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/ah;->a(Ljava/lang/StringBuilder;Z)V

    .line 2468
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    if-eqz v0, :cond_0

    .line 2469
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2472
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 2476
    const-string v3, "<file file=\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2477
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2479
    const-string v0, "</file>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2482
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/c/bk;->a(Ljava/lang/StringBuilder;[[BLjava/util/List;)V

    .line 2483
    const-string v0, "</database>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;)V

    .line 2357
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/ah;->a(Ljava/nio/ByteBuffer;)V

    .line 2358
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2359
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->z:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 2360
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->A:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 2361
    iget v0, p0, Lcom/sleepycat/b/c/i;->s:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 2362
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->y:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2363
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->c()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 2364
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2367
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 2371
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 2372
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/a/f;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/c/bk;->a(Ljava/nio/ByteBuffer;[[B)V

    .line 2377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/c/i;->f:Z

    .line 2378
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2385
    const/4 v0, 0x6

    if-lt p2, v0, :cond_2

    move v0, v1

    .line 2387
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v3, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 2388
    iget-object v3, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v3, p1, p2}, Lcom/sleepycat/b/l/ah;->a(Ljava/nio/ByteBuffer;I)V

    .line 2395
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 2397
    sget-boolean v3, Lcom/sleepycat/b/c/i;->H:Z

    if-eqz v3, :cond_0

    .line 2398
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->m()V

    .line 2401
    :cond_0
    const/4 v3, 0x2

    if-lt p2, v3, :cond_5

    .line 2402
    if-nez v0, :cond_3

    move v3, v1

    :goto_1
    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/b/c/i;->z:[B

    .line 2404
    if-nez v0, :cond_4

    move v3, v1

    :goto_2
    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/b/c/i;->A:[B

    .line 2425
    :goto_3
    if-lez p2, :cond_1

    .line 2426
    if-nez v0, :cond_a

    move v3, v1

    :goto_4
    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v3

    iput v3, p0, Lcom/sleepycat/b/c/i;->s:I

    .line 2428
    if-ge p2, v8, :cond_1

    .line 2430
    if-nez v0, :cond_b

    :goto_5
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    .line 2434
    :cond_1
    if-eqz v0, :cond_c

    .line 2435
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->y:B

    .line 2436
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    move v0, v2

    .line 2437
    :goto_6
    if-ge v0, v1, :cond_c

    .line 2438
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    .line 2439
    iget-object v3, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2, v2, v4}, Lcom/sleepycat/b/a/g;->a(Ljava/lang/Long;ZZLcom/sleepycat/b/g/m;)Lcom/sleepycat/b/a/f;

    move-result-object v3

    .line 2442
    invoke-virtual {v3, p1, p2}, Lcom/sleepycat/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    .line 2437
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2
    move v0, v2

    .line 2385
    goto :goto_0

    :cond_3
    move v3, v2

    .line 2402
    goto :goto_1

    :cond_4
    move v3, v2

    .line 2404
    goto :goto_2

    .line 2407
    :cond_5
    if-nez v0, :cond_6

    move v3, v1

    :goto_7
    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v5

    .line 2409
    if-nez v0, :cond_7

    move v3, v1

    :goto_8
    invoke-static {p1, v3}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v3

    .line 2411
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_8

    .line 2412
    sget-object v5, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v5, p0, Lcom/sleepycat/b/c/i;->z:[B

    .line 2417
    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 2418
    sget-object v3, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v3, p0, Lcom/sleepycat/b/c/i;->A:[B

    goto :goto_3

    :cond_6
    move v3, v2

    .line 2407
    goto :goto_7

    :cond_7
    move v3, v2

    .line 2409
    goto :goto_8

    .line 2414
    :cond_8
    const-string v6, "Btree"

    invoke-static {v5, v6}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/b/c/i;->z:[B

    goto :goto_9

    .line 2420
    :cond_9
    const-string v5, "Duplicate"

    invoke-static {v3, v5}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/b/c/i;->A:[B

    goto :goto_3

    :cond_a
    move v3, v2

    .line 2426
    goto :goto_4

    :cond_b
    move v1, v2

    .line 2430
    goto :goto_5

    .line 2446
    :cond_c
    if-ge p2, v8, :cond_d

    move-object v0, v4

    :goto_a
    iput-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    .line 2450
    return-void

    .line 2446
    :cond_d
    invoke-static {p1}, Lcom/sleepycat/b/c/bk;->a(Ljava/nio/ByteBuffer;)[[B

    move-result-object v0

    goto :goto_a
.end method

.method public final declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 1359
    monitor-enter p0

    .line 24553
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/c/i;->e:Z

    .line 1359
    if-nez v0, :cond_0

    .line 1360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Database.sync() is only supported for deferred-write databases"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1365
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 25500
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->C:Lcom/sleepycat/b/h/d;

    .line 1366
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-static {v0, p0, p1}, Lcom/sleepycat/b/h/d;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1368
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final a(ZZ)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1174
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23002
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v0

    .line 23003
    if-eqz v0, :cond_2

    .line 23006
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 23007
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 23008
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23009
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 23010
    instance-of v0, v0, Lcom/sleepycat/b/m/a;

    if-nez v0, :cond_0

    .line 23011
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 23015
    :cond_1
    invoke-virtual {p0, v3, v3, v1, v5}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/util/List;Z)Z

    .line 1200
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1201
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-static {v0, v4}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;

    move-result-object v1

    .line 1205
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catch Lcom/sleepycat/b/c/s; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/p; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23379
    :try_start_1
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;
    :try_end_1
    .catch Lcom/sleepycat/b/c/s; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sleepycat/b/p; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/sleepycat/b/an; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;
    :try_end_2
    .catch Lcom/sleepycat/b/c/s; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sleepycat/b/p; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sleepycat/b/an; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 23496
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;
    :try_end_3
    .catch Lcom/sleepycat/b/c/s; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sleepycat/b/p; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/sleepycat/b/an; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1205
    :try_start_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_4
    .catch Lcom/sleepycat/b/c/s; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/sleepycat/b/p; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/sleepycat/b/an; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1224
    invoke-virtual {v1, v4}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1233
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 23553
    iget-boolean v0, p0, Lcom/sleepycat/b/c/i;->e:Z

    .line 1233
    if-eqz v0, :cond_4

    .line 1234
    invoke-virtual {p0, v4}, Lcom/sleepycat/b/c/i;->a(Z)V

    .line 1237
    :cond_4
    return-void

    .line 1207
    :catch_0
    move-exception v0

    .line 1209
    :try_start_5
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-static {v2, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1224
    :catchall_0
    move-exception v0

    invoke-virtual {v1, v5}, Lcom/sleepycat/b/n/q;->a_(Z)V

    throw v0

    .line 1220
    :catch_1
    move-exception v0

    .line 1221
    :try_start_6
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1222
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v0

    .line 1224
    :goto_2
    invoke-virtual {v1, v5}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 2507
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/n/q;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 907
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    move-object p3, v5

    .line 915
    :cond_0
    if-eqz p4, :cond_a

    .line 916
    if-nez p3, :cond_4

    .line 918
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    move v4, v0

    move-object v6, v5

    .line 953
    :goto_1
    if-nez p3, :cond_c

    .line 955
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    if-eqz v0, :cond_b

    :goto_2
    move-object v0, v5

    .line 980
    :goto_3
    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->k()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Ljava/util/List;Ljava/util/List;)V

    .line 985
    iput-object v6, p0, Lcom/sleepycat/b/c/i;->F:[[B

    .line 986
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    :goto_4
    iput-object v0, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    .line 991
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 994
    :cond_2
    return v4

    :cond_3
    move v0, v2

    .line 918
    goto :goto_0

    .line 922
    :cond_4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 923
    instance-of v0, v0, Lcom/sleepycat/b/m/a;

    if-eqz v0, :cond_16

    .line 924
    add-int/lit8 v0, v3, 0x1

    :goto_6
    move v3, v0

    .line 926
    goto :goto_5

    .line 927
    :cond_5
    if-nez v3, :cond_7

    .line 929
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    if-eqz v0, :cond_6

    move v0, v1

    :goto_7
    move v4, v0

    move-object v6, v5

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_7

    .line 931
    :cond_7
    new-array v6, v3, [[B

    .line 933
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 934
    instance-of v4, v0, Lcom/sleepycat/b/m/a;

    if-eqz v4, :cond_15

    .line 935
    add-int/lit8 v4, v3, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "trigger "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v6, v3

    .line 937
    invoke-interface {v0, p2}, Lcom/sleepycat/b/m/d;->a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;

    move v0, v4

    :goto_9
    move v3, v0

    .line 939
    goto :goto_8

    .line 940
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_a
    move v4, v0

    .line 943
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 940
    goto :goto_a

    .line 945
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    move v4, v2

    move-object v6, v0

    .line 946
    goto/16 :goto_1

    :cond_b
    move v1, v2

    .line 955
    goto/16 :goto_2

    .line 957
    :cond_c
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 958
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    .line 960
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 961
    instance-of v9, v0, Lcom/sleepycat/b/m/a;

    if-nez v9, :cond_d

    .line 962
    invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    invoke-interface {v0, p2}, Lcom/sleepycat/b/m/d;->a(Ljava/lang/String;)Lcom/sleepycat/b/m/d;

    goto :goto_b

    .line 967
    :cond_e
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    if-nez v0, :cond_10

    .line 968
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    :goto_c
    move-object v0, v3

    goto/16 :goto_3

    :cond_f
    move v1, v2

    goto :goto_c

    .line 969
    :cond_10
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eq v0, v8, :cond_12

    :cond_11
    :goto_d
    move-object v0, v3

    .line 976
    goto/16 :goto_3

    .line 973
    :cond_12
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 974
    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 976
    :cond_13
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_11

    move v1, v2

    goto :goto_d

    :cond_14
    move-object v0, v5

    .line 986
    goto/16 :goto_4

    :cond_15
    move v0, v3

    goto/16 :goto_9

    :cond_16
    move v0, v3

    goto/16 :goto_6
.end method

.method public final a(Ljava/util/Comparator;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;Z)Z"
        }
    .end annotation

    .prologue
    .line 876
    iput-object p1, p0, Lcom/sleepycat/b/c/i;->o:Ljava/util/Comparator;

    .line 877
    const-string v0, "Duplicate"

    invoke-static {p1, p2, v0}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;ZLjava/lang/String;)[B

    move-result-object v0

    .line 879
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->A:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 881
    iput-object v0, p0, Lcom/sleepycat/b/c/i;->A:[B

    .line 882
    iput-boolean p2, p0, Lcom/sleepycat/b/c/i;->C:Z

    .line 883
    if-nez v1, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->H()V

    .line 887
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 2499
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(Ljava/util/Comparator;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;Z)Z"
        }
    .end annotation

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/sleepycat/b/c/i;->n:Ljava/util/Comparator;

    .line 1031
    const-string v0, "Btree"

    invoke-static {p1, p2, v0}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;ZLjava/lang/String;)[B

    move-result-object v0

    .line 1033
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->z:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 1035
    iput-object v0, p0, Lcom/sleepycat/b/c/i;->z:[B

    .line 1036
    iput-boolean p2, p0, Lcom/sleepycat/b/c/i;->B:Z

    .line 1037
    if-nez v1, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/sleepycat/b/c/i;->H()V

    .line 1041
    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dBId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Lcom/sleepycat/b/c/i;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 464
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    iput-object v1, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 472
    iput-object v1, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 473
    const/16 v1, 0x8

    iput-byte v1, v0, Lcom/sleepycat/b/c/i;->y:B

    .line 474
    new-instance v1, Lcom/sleepycat/b/a/g;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sleepycat/b/a/g;-><init>(Z)V

    iput-object v1, v0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    .line 476
    iget-object v1, v0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    iget-object v2, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/a/g;->a(Lcom/sleepycat/b/c/ad;)V

    .line 477
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, v0, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 478
    :goto_0
    return-object v0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    sget-boolean v2, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    move-object v0, v1

    .line 467
    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 525
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/sleepycat/b/c/w;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->G:Lcom/sleepycat/b/c/w;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->G:Lcom/sleepycat/b/c/w;

    .line 541
    :goto_0
    return-object v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/b/c/p;->a(Ljava/lang/String;)Lcom/sleepycat/b/c/w;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/i;->G:Lcom/sleepycat/b/c/w;

    .line 541
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->G:Lcom/sleepycat/b/c/w;

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 562
    .line 18553
    iget-boolean v0, p0, Lcom/sleepycat/b/c/i;->e:Z

    .line 562
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 576
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 588
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 592
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 593
    return-void
.end method

.method public final k()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 19000
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->R:Z

    .line 604
    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 638
    :cond_1
    :goto_0
    return-object v0

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->F:[[B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 610
    goto :goto_0

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 615
    if-nez v0, :cond_1

    .line 625
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->x()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/c/i;->F:[[B

    iget-object v3, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 19369
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 625
    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/c/bk;->a(Ljava/lang/String;[[BLjava/lang/ClassLoader;)Ljava/util/LinkedList;

    move-result-object v0

    .line 627
    if-nez v0, :cond_4

    .line 628
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 630
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 631
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 633
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 636
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 637
    sget-boolean v1, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 649
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 661
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 662
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 665
    sget-boolean v0, Lcom/sleepycat/b/c/i;->H:Z

    if-eqz v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 689
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 693
    iget-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/i;->x:B

    .line 694
    return-void
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 744
    .line 19677
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v0

    .line 744
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Lcom/sleepycat/b/a;
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->u:Lcom/sleepycat/b/a;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->u:Lcom/sleepycat/b/a;

    .line 21105
    :goto_0
    return-object v0

    .line 20533
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v0

    .line 800
    if-eqz v0, :cond_1

    .line 801
    sget-object v0, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    goto :goto_0

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 21104
    iget-object v1, v0, Lcom/sleepycat/b/c/ad;->k:Lcom/sleepycat/b/a;

    if-eqz v1, :cond_2

    .line 21105
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->k:Lcom/sleepycat/b/a;

    goto :goto_0

    .line 21107
    :cond_2
    sget-object v0, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    goto :goto_0
.end method

.method public final s()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1162
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    monitor-enter v1

    .line 1163
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1164
    monitor-exit v1

    .line 1165
    return-object v0

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    .line 24149
    iget v0, v0, Lcom/sleepycat/b/a/g;->c:I

    int-to-long v0, v0

    .line 1247
    return-wide v0
.end method

.method final u()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1279
    return-void
.end method

.method public final v()I
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 1295
    sget-boolean v1, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1296
    :cond_0
    return v0
.end method

.method public final w()Lcom/sleepycat/b/i;
    .locals 4

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    monitor-enter v1

    .line 1377
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i;

    .line 1378
    instance-of v3, v0, Lcom/sleepycat/b/bi;

    if-eqz v3, :cond_0

    .line 1379
    check-cast v0, Lcom/sleepycat/b/bi;

    .line 25575
    iget-object v0, v0, Lcom/sleepycat/b/bi;->m:Lcom/sleepycat/b/i;

    .line 1379
    monitor-exit v1

    .line 1383
    :goto_0
    return-object v0

    .line 1382
    :cond_1
    monitor-exit v1

    .line 1383
    const/4 v0, 0x0

    goto :goto_0

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 26379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1389
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27454
    iget-boolean v0, p0, Lcom/sleepycat/b/c/i;->f:Z

    .line 1469
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1477
    iget-short v1, p0, Lcom/sleepycat/b/c/i;->i:S

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
