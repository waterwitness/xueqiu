.class public Lcom/sleepycat/b/g/m;
.super Ljava/lang/Object;
.source "FileManager.java"


# static fields
.field public static final W:Z

.field public static X:Lcom/sleepycat/b/g/p;

.field public static final synthetic Y:Z

.field private static final Z:Ljava/lang/String;

.field static a:Z

.field private static final aa:[Ljava/lang/String;

.field private static an:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static ao:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ap:Ljava/lang/String;

.field static b:Z

.field static c:Z

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:Z

.field static final h:[Ljava/lang/String;

.field static final i:[Ljava/lang/String;


# instance fields
.field public A:Z

.field B:J

.field C:J

.field final D:Lcom/sleepycat/b/p/ai;

.field final E:Lcom/sleepycat/b/p/z;

.field final F:Lcom/sleepycat/b/p/z;

.field final G:Lcom/sleepycat/b/p/z;

.field final H:Lcom/sleepycat/b/p/z;

.field final I:Lcom/sleepycat/b/p/z;

.field final J:Lcom/sleepycat/b/p/z;

.field final K:Lcom/sleepycat/b/p/z;

.field final L:Lcom/sleepycat/b/p/z;

.field final M:Lcom/sleepycat/b/p/o;

.field final N:Lcom/sleepycat/b/p/o;

.field final O:Lcom/sleepycat/b/p/z;

.field final P:Lcom/sleepycat/b/p/z;

.field final Q:Lcom/sleepycat/b/p/z;

.field final R:Lcom/sleepycat/b/p/z;

.field final S:Lcom/sleepycat/b/p/z;

.field final T:Lcom/sleepycat/b/p/z;

.field final U:Lcom/sleepycat/b/p/z;

.field final V:Lcom/sleepycat/b/p/z;

.field private final ab:Ljava/io/File;

.field private final ac:[Ljava/io/File;

.field private ad:Z

.field private final ae:Lcom/sleepycat/b/f/a;

.field private af:Ljava/io/RandomAccessFile;

.field private ag:Ljava/nio/channels/FileChannel;

.field private ah:Ljava/nio/channels/FileLock;

.field private final ai:Z

.field private final aj:Z

.field private final ak:I

.field private final al:Z

.field private final am:I

.field private aq:I

.field private ar:Z

.field private as:Ljava/util/Random;

.field j:Z

.field public final k:Lcom/sleepycat/b/c/ad;

.field final l:J

.field final m:Lcom/sleepycat/b/g/o;

.field public n:Ljava/nio/channels/FileLock;

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:Z

.field t:J

.field u:J

.field v:J

.field w:J

.field x:Z

.field final y:Lcom/sleepycat/b/g/r;

.field public final z:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    const-class v0, Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/m;->Y:Z

    .line 101
    sput-boolean v2, Lcom/sleepycat/b/g/m;->a:Z

    .line 102
    sput-boolean v2, Lcom/sleepycat/b/g/m;->b:Z

    .line 103
    sput-boolean v2, Lcom/sleepycat/b/g/m;->c:Z

    .line 104
    const-class v0, Lcom/sleepycat/b/g/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/m;->Z:Ljava/lang/String;

    .line 121
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/sleepycat/b/g/m;->d:J

    .line 126
    sput-wide v6, Lcom/sleepycat/b/g/m;->e:J

    .line 132
    sput-wide v6, Lcom/sleepycat/b/g/m;->f:J

    .line 138
    sput-boolean v2, Lcom/sleepycat/b/g/m;->g:Z

    .line 144
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, ".del"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sleepycat/b/g/m;->h:[Ljava/lang/String;

    .line 145
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, ".jdb"

    aput-object v3, v0, v2

    sput-object v0, Lcom/sleepycat/b/g/m;->i:[Ljava/lang/String;

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, ".jdb"

    aput-object v3, v0, v2

    const-string v3, ".del"

    aput-object v3, v0, v1

    sput-object v0, Lcom/sleepycat/b/g/m;->aa:[Ljava/lang/String;

    .line 705
    new-instance v0, Lcom/sleepycat/b/g/m$1;

    invoke-direct {v0}, Lcom/sleepycat/b/g/m$1;-><init>()V

    sput-object v0, Lcom/sleepycat/b/g/m;->an:Ljava/util/Comparator;

    .line 720
    new-instance v0, Lcom/sleepycat/b/g/m$2;

    invoke-direct {v0}, Lcom/sleepycat/b/g/m$2;-><init>()V

    sput-object v0, Lcom/sleepycat/b/g/m;->ao:Ljava/util/Comparator;

    .line 3100
    const-string v0, "je.logwrite.exception.testing"

    .line 3103
    sput-object v0, Lcom/sleepycat/b/g/m;->ap:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcom/sleepycat/b/g/m;->W:Z

    .line 3202
    new-instance v0, Lcom/sleepycat/b/g/m$6;

    invoke-direct {v0}, Lcom/sleepycat/b/g/m$6;-><init>()V

    sput-object v0, Lcom/sleepycat/b/g/m;->X:Lcom/sleepycat/b/g/p;

    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3103
    goto :goto_1
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;Ljava/io/File;Z)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-boolean v1, p0, Lcom/sleepycat/b/g/m;->j:Z

    .line 172
    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->ad:Z

    .line 239
    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->A:Z

    .line 251
    iput-wide v6, p0, Lcom/sleepycat/b/g/m;->B:J

    .line 256
    iput-wide v2, p0, Lcom/sleepycat/b/g/m;->C:J

    .line 3110
    iput v0, p0, Lcom/sleepycat/b/g/m;->aq:I

    .line 3112
    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->ar:Z

    .line 3114
    iput-object v4, p0, Lcom/sleepycat/b/g/m;->as:Ljava/util/Random;

    .line 306
    iput-object p1, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    .line 307
    iput-object p2, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    .line 308
    iput-boolean p3, p0, Lcom/sleepycat/b/g/m;->ai:Z

    .line 312
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "FileManager"

    const-string v2, "FileManager statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    .line 314
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->E:Lcom/sleepycat/b/p/z;

    .line 315
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->F:Lcom/sleepycat/b/p/z;

    .line 316
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->G:Lcom/sleepycat/b/p/z;

    .line 317
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->H:Lcom/sleepycat/b/p/z;

    .line 318
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->I:Lcom/sleepycat/b/p/z;

    .line 319
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->J:Lcom/sleepycat/b/p/z;

    .line 320
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->g:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->K:Lcom/sleepycat/b/p/z;

    .line 322
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->L:Lcom/sleepycat/b/p/z;

    .line 324
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->i:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->M:Lcom/sleepycat/b/p/o;

    .line 325
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->j:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->N:Lcom/sleepycat/b/p/o;

    .line 326
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->k:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->O:Lcom/sleepycat/b/p/z;

    .line 328
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->l:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->P:Lcom/sleepycat/b/p/z;

    .line 330
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->m:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->Q:Lcom/sleepycat/b/p/z;

    .line 332
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->n:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->R:Lcom/sleepycat/b/p/z;

    .line 334
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->o:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->S:Lcom/sleepycat/b/p/z;

    .line 335
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->p:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->T:Lcom/sleepycat/b/p/z;

    .line 337
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->t:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->U:Lcom/sleepycat/b/p/z;

    .line 338
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->D:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/g/aq;->u:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->V:Lcom/sleepycat/b/p/z;

    .line 3392
    :try_start_0
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 343
    sget-object v1, Lcom/sleepycat/b/b/d;->N:Lcom/sleepycat/b/b/f;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/g/m;->l:J

    .line 346
    sget-object v1, Lcom/sleepycat/b/b/d;->Y:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/g/m;->aj:Z

    .line 348
    sget-object v1, Lcom/sleepycat/b/b/d;->Z:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/g/m;->ak:I

    .line 350
    sget-object v1, Lcom/sleepycat/b/b/d;->W:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/g/m;->al:Z

    .line 352
    sget-object v1, Lcom/sleepycat/b/b/d;->Q:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/g/m;->A:Z

    .line 354
    sget-object v1, Lcom/sleepycat/b/b/d;->O:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/b/g/m;->am:I

    .line 356
    iget v1, p0, Lcom/sleepycat/b/g/m;->am:I

    if-eqz v1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/sleepycat/b/g/m;->i()[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ac:[Ljava/io/File;

    .line 4334
    :goto_0
    iget-boolean v1, p1, Lcom/sleepycat/b/c/ad;->h:Z

    .line 363
    if-nez v1, :cond_4

    .line 364
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Environment home "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :catchall_0
    move-exception v0

    .line 424
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/b/g/m;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :goto_1
    throw v0

    .line 3878
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    new-instance v2, Lcom/sleepycat/b/g/m$3;

    invoke-direct {v2, p0}, Lcom/sleepycat/b/g/m$3;-><init>(Lcom/sleepycat/b/g/m;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 3888
    if-eqz v1, :cond_1

    array-length v2, v1

    if-eqz v2, :cond_1

    .line 3889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/b/b/d;->O:Lcom/sleepycat/b/b/e;

    .line 4090
    iget-object v2, v2, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 3889
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " was not set and expected to find no data directories, but found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data directories instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 360
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ac:[Ljava/io/File;

    goto :goto_0

    .line 368
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lcom/sleepycat/b/g/m;->a(ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 369
    new-instance v1, Lcom/sleepycat/b/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "The environment cannot be locked for "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    const-string v0, "shared"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " access."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/ab;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "single writer"

    goto :goto_2

    .line 377
    :cond_4
    new-instance v1, Lcom/sleepycat/b/g/o;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/g/o;-><init>(Lcom/sleepycat/b/c/m;)V

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    .line 378
    new-instance v0, Lcom/sleepycat/b/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/b/g/m;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_fileCache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->ae:Lcom/sleepycat/b/f/a;

    .line 381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->o:J

    .line 382
    iget-wide v0, p0, Lcom/sleepycat/b/g/m;->o:J

    .line 4457
    const/16 v2, 0x26

    .line 382
    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->p:J

    .line 384
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->q:J

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->z:Ljava/util/Map;

    .line 387
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->r:J

    .line 388
    new-instance v0, Lcom/sleepycat/b/g/r;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/g/r;-><init>(Lcom/sleepycat/b/g/m;)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->s:Z

    .line 390
    invoke-virtual {p0}, Lcom/sleepycat/b/g/m;->b()V

    .line 393
    const-string v0, "je.debug.stopOnWriteCount"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 395
    if-eqz v0, :cond_5

    .line 397
    :try_start_3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/sleepycat/b/g/m;->e:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    :cond_5
    :try_start_4
    const-string v0, "je.debug.stopOnWriteAction"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_6

    .line 408
    const-string v1, "throw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 409
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sleepycat/b/g/m;->g:Z

    .line 433
    :cond_6
    :goto_3
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not parse: je.debug.stopOnWriteCount"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 410
    :cond_7
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 412
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/b/g/m;->g:Z

    goto :goto_3

    .line 414
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown value for: je.debug.stopOnWriteAction"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method private a(JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;
    .locals 3

    .prologue
    .line 1243
    new-instance v0, Lcom/sleepycat/b/g/j;

    invoke-static {p1, p2}, Lcom/sleepycat/b/g/m;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/sleepycat/b/g/j;-><init>(JLjava/lang/String;)V

    .line 1245
    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/j;Lcom/sleepycat/b/g/q;Lcom/sleepycat/b/g/j;)V

    .line 1246
    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/g/m;JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/g/m;->a(JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/sleepycat/b/g/j;Lcom/sleepycat/b/g/q;Lcom/sleepycat/b/g/j;)V
    .locals 19

    .prologue
    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/m;->M:Lcom/sleepycat/b/p/o;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/o;->f()V

    .line 10048
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sleepycat/b/g/j;->d:J

    .line 1263
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/sleepycat/b/g/m;->b(J)[Ljava/lang/String;

    move-result-object v7

    .line 1264
    const/4 v4, 0x0

    .line 1265
    const/4 v3, 0x0

    .line 1274
    const/4 v5, 0x0

    .line 1275
    :try_start_0
    array-length v10, v7
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    move v6, v2

    move-object/from16 v18, v5

    move-object v5, v3

    move-object/from16 v3, v18

    :goto_0
    if-ge v6, v10, :cond_f

    :try_start_1
    aget-object v5, v7, v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    :try_start_2
    sget-object v2, Lcom/sleepycat/b/g/m;->X:Lcom/sleepycat/b/g/p;

    .line 10093
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/sleepycat/b/g/q;->e:Ljava/lang/String;

    .line 1278
    invoke-interface {v2, v5, v11}, Lcom/sleepycat/b/g/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    move-object/from16 v17, v5

    .line 1293
    :goto_1
    if-nez v4, :cond_1

    .line 1294
    :try_start_3
    sget-boolean v2, Lcom/sleepycat/b/g/m;->Y:Z

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1354
    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1369
    :catchall_0
    move-exception v2

    .line 1370
    invoke-static {v4}, Lcom/sleepycat/b/g/m;->a(Ljava/io/RandomAccessFile;)V

    .line 1369
    throw v2

    .line 1281
    :catch_1
    move-exception v2

    .line 1283
    if-nez v3, :cond_e

    .line 1275
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v3, v2

    goto :goto_0

    .line 1295
    :cond_0
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1355
    :catch_2
    move-exception v2

    move-object/from16 v3, v17

    .line 1356
    :goto_3
    :try_start_6
    new-instance v5, Lcom/sleepycat/b/aa;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v7, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Couldn\'t open file "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v7, v3, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1303
    :cond_1
    if-eqz p3, :cond_2

    .line 11052
    :try_start_7
    move-object/from16 v0, p3

    iget v2, v0, Lcom/sleepycat/b/g/j;->c:I

    .line 1305
    if-lez v2, :cond_2

    .line 1306
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/b/g/j;->a(Ljava/io/RandomAccessFile;I)V

    .line 1372
    :goto_4
    return-void

    .line 1312
    :cond_2
    const/16 v11, 0x8

    .line 1314
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_a

    .line 11097
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/sleepycat/b/g/q;->f:Z

    .line 1321
    if-eqz v2, :cond_d

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/m;->z:Ljava/util/Map;

    const-wide/16 v6, 0x1

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/sleepycat/b/p/j;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 1325
    const-wide/16 v2, 0x0

    .line 1326
    const-wide/16 v12, -0x1

    cmp-long v5, v6, v12

    if-eqz v5, :cond_3

    .line 1327
    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v2

    .line 1329
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v5, v2, v12

    if-nez v5, :cond_4

    const-wide/16 v12, 0x1

    cmp-long v5, v8, v12

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sleepycat/b/g/m;->j:Z

    if-eqz v5, :cond_4

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Zero prevOffset fileNum=0x"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " lastLsn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " perFileLastUsedLsn="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/g/m;->z:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " fileLen="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1359
    :catch_3
    move-exception v2

    .line 1365
    :goto_5
    :try_start_8
    invoke-static {v4}, Lcom/sleepycat/b/g/m;->a(Ljava/io/RandomAccessFile;)V

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t open file "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/n;->a(Ljava/lang/String;)V

    .line 1367
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1341
    :cond_4
    :try_start_9
    new-instance v5, Lcom/sleepycat/b/g/l;

    invoke-direct {v5, v8, v9, v2, v3}, Lcom/sleepycat/b/g/l;-><init>(JJ)V

    .line 11425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->n()V

    .line 11430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->m()Z

    move-result v2

    if-nez v2, :cond_9

    .line 11435
    new-instance v2, Lcom/sleepycat/b/g/a/h;

    sget-object v3, Lcom/sleepycat/b/g/af;->y:Lcom/sleepycat/b/g/af;

    invoke-direct {v2, v3, v5}, Lcom/sleepycat/b/g/a/h;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/l;)V

    .line 11437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    .line 12371
    iget-object v3, v3, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 12855
    new-instance v3, Lcom/sleepycat/b/g/ae;

    sget-object v5, Lcom/sleepycat/b/g/au;->a:Lcom/sleepycat/b/g/au;

    sget-object v6, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-direct {v3, v2, v5, v6}, Lcom/sleepycat/b/g/ae;-><init>(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;Lcom/sleepycat/b/g/av;)V

    .line 12863
    sget-boolean v5, Lcom/sleepycat/b/g/am;->j:Z

    if-nez v5, :cond_5

    invoke-interface {v2}, Lcom/sleepycat/b/g/a/m;->d()Lcom/sleepycat/b/g/af;

    move-result-object v5

    .line 13717
    iget-object v5, v5, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 14708
    iget-boolean v5, v5, Lcom/sleepycat/b/g/aj;->c:Z

    .line 12863
    if-eqz v5, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 12865
    :cond_5
    invoke-static {v3, v2}, Lcom/sleepycat/b/g/am;->a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 12867
    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v6, v7, v10}, Lcom/sleepycat/b/g/ae;->a(Ljava/nio/ByteBuffer;JLcom/sleepycat/b/p/au;)Ljava/nio/ByteBuffer;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v5

    .line 11444
    :try_start_a
    sget-boolean v3, Lcom/sleepycat/b/g/m;->W:Z

    if-eqz v3, :cond_6

    .line 11445
    const-wide/16 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/sleepycat/b/g/m;->b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 11453
    :cond_6
    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/sleepycat/b/g/m;->b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I

    move-result v3

    .line 11456
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sleepycat/b/g/m;->t:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_8

    .line 11466
    invoke-static {v8, v9, v3}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v6

    .line 11467
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sleepycat/b/g/m;->p:J

    invoke-static {v12, v13, v6, v7}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v5

    if-gez v5, :cond_7

    .line 11468
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/g/m;->p:J

    .line 11471
    :cond_7
    invoke-static {v8, v9, v3}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/g/m;->q:J

    .line 11472
    int-to-long v6, v3

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/sleepycat/b/g/m;->r:J

    .line 11473
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/sleepycat/b/g/m;->s:Z

    .line 11474
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/sleepycat/b/g/m;->o:J

    .line 11475
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/g/m;->b()V
    :try_end_a
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/sleepycat/b/n; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 11490
    :cond_8
    :try_start_b
    invoke-interface {v2}, Lcom/sleepycat/b/g/a/m;->d_()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    if-eq v3, v2, :cond_9

    .line 11492
    new-instance v2, Lcom/sleepycat/b/aa;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was created with an incomplete header. Only "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " bytes were written."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v6, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v2

    .line 11477
    :catch_4
    move-exception v2

    .line 11483
    new-instance v3, Lcom/sleepycat/b/bo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    const-string v6, "Channel closed, may be due to thread interrupt"

    invoke-direct {v3, v5, v6, v2}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 11485
    :catch_5
    move-exception v2

    .line 11487
    new-instance v3, Lcom/sleepycat/b/at;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    invoke-direct {v3, v5, v2}, Lcom/sleepycat/b/at;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v3

    :cond_9
    move v2, v11

    .line 1350
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/sleepycat/b/g/j;->a(Ljava/io/RandomAccessFile;I)V

    goto/16 :goto_4

    .line 15407
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    .line 16371
    iget-object v2, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 15408
    const/4 v3, 0x0

    invoke-static {v8, v9, v3}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v6

    .line 16970
    new-instance v10, Lcom/sleepycat/b/g/v;

    iget v12, v2, Lcom/sleepycat/b/g/am;->g:I

    iget-object v13, v2, Lcom/sleepycat/b/g/am;->d:Lcom/sleepycat/b/g/m;

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v14

    const/16 v16, -0x1

    move-object v11, v4

    invoke-direct/range {v10 .. v16}, Lcom/sleepycat/b/g/v;-><init>(Ljava/io/RandomAccessFile;ILcom/sleepycat/b/g/m;JI)V

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v7, v10, v3}, Lcom/sleepycat/b/g/am;->a(JLcom/sleepycat/b/g/ap;Z)Lcom/sleepycat/b/g/ay;

    move-result-object v2

    .line 17030
    iget-object v2, v2, Lcom/sleepycat/b/g/ay;->b:Lcom/sleepycat/b/g/a/m;

    .line 15411
    invoke-interface {v2}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/g/l;

    .line 15412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    .line 17061
    iget v5, v2, Lcom/sleepycat/b/g/l;->c:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_b

    .line 17062
    new-instance v5, Lcom/sleepycat/b/bw;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expected log version 8 or earlier but found "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/sleepycat/b/g/l;->c:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v2}, Lcom/sleepycat/b/bw;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    throw v5

    .line 17068
    :cond_b
    iget-wide v6, v2, Lcom/sleepycat/b/g/l;->a:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 17069
    new-instance v5, Lcom/sleepycat/b/aa;

    sget-object v6, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Wrong filenum in header for file "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " expected "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v2, Lcom/sleepycat/b/g/l;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v6, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v5

    .line 17076
    :cond_c
    iget v2, v2, Lcom/sleepycat/b/g/l;->c:I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 1359
    :catch_6
    move-exception v2

    move-object/from16 v17, v3

    goto/16 :goto_5

    :catch_7
    move-exception v2

    move-object/from16 v17, v5

    goto/16 :goto_5

    .line 1355
    :catch_8
    move-exception v2

    goto/16 :goto_3

    :catch_9
    move-exception v2

    move-object v3, v5

    goto/16 :goto_3

    :cond_d
    move v2, v11

    goto/16 :goto_6

    :cond_e
    move-object v2, v3

    goto/16 :goto_2

    :cond_f
    move-object/from16 v17, v5

    goto/16 :goto_1
.end method

.method private static a(Ljava/io/RandomAccessFile;)V
    .locals 1

    .prologue
    .line 1380
    if-eqz p0, :cond_0

    .line 1381
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1385
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/nio/ByteBuffer;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1991
    sget-object v0, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    .line 22644
    iget-byte v0, v0, Lcom/sleepycat/b/g/af;->K:B

    .line 1992
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1994
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 1995
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1999
    :try_start_0
    new-instance v2, Lcom/sleepycat/b/g/ae;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/b/g/ae;-><init>(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 23279
    iget-byte v3, v2, Lcom/sleepycat/b/g/ae;->b:B

    .line 2003
    if-ne v3, v0, :cond_1

    .line 23497
    sget-boolean v3, Lcom/sleepycat/b/g/ae;->k:Z

    if-nez v3, :cond_0

    iget-byte v3, v2, Lcom/sleepycat/b/g/ae;->b:B

    sget-object v4, Lcom/sleepycat/b/g/af;->q:Lcom/sleepycat/b/g/af;

    .line 23644
    iget-byte v4, v4, Lcom/sleepycat/b/g/af;->K:B

    .line 23497
    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2001
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 23500
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 23503
    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    sub-int v4, v3, v4

    .line 23505
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23506
    sget-object v5, Lcom/sleepycat/b/g/af;->r:Lcom/sleepycat/b/g/af;

    .line 24644
    iget-byte v5, v5, Lcom/sleepycat/b/g/af;->K:B

    .line 23506
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 23513
    invoke-static {}, Lcom/sleepycat/b/p/b;->a()Ljava/util/zip/Checksum;

    move-result-object v5

    .line 23514
    iget v6, v2, Lcom/sleepycat/b/g/ae;->d:I

    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    add-int/2addr v6, v7

    .line 23515
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    add-int/2addr v4, v8

    invoke-interface {v5, v7, v4, v6}, Ljava/util/zip/Checksum;->update([BII)V

    .line 23518
    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23519
    invoke-interface {v5}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sleepycat/b/g/ae;->a:J

    .line 23520
    iget-wide v4, v2, Lcom/sleepycat/b/g/ae;->a:J

    invoke-static {p0, v4, v5}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;J)V

    .line 2007
    :cond_1
    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v3

    add-int/2addr v1, v3

    .line 25291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 2007
    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 2010
    :cond_2
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2011
    return-void
.end method

.method static synthetic a(Ljava/nio/ByteBuffer;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/sleepycat/b/g/m;->b(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/sleepycat/b/g/m;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sleepycat/b/g/m;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/g/m;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sleepycat/b/g/m;->aj:Z

    return v0
.end method

.method private static a(Ljava/io/File;Z)Z
    .locals 3

    .prologue
    .line 2210
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2211
    :goto_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 2217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The Environment directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not writable, but the Environment was opened for read-write access."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2224
    :cond_1
    return v0
.end method

.method private a(Lcom/sleepycat/b/g/x;)[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 825
    iget v0, p0, Lcom/sleepycat/b/g/m;->am:I

    if-nez v0, :cond_1

    .line 5833
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 5834
    if-eqz v0, :cond_0

    .line 5835
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 5862
    :goto_0
    return-object v0

    .line 5837
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    .line 5843
    :cond_1
    iget v0, p0, Lcom/sleepycat/b/g/m;->am:I

    new-array v6, v0, [[Ljava/lang/String;

    .line 5846
    iget-object v5, p0, Lcom/sleepycat/b/g/m;->ac:[Ljava/io/File;

    array-length v7, v5

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_1
    if-ge v2, v7, :cond_3

    aget-object v0, v5, v2

    .line 5847
    invoke-virtual {v0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 5849
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5850
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move v0, v1

    .line 5853
    :goto_2
    aget-object v9, v6, v3

    array-length v9, v9

    if-ge v0, v9, :cond_2

    .line 5854
    aget-object v9, v6, v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v0

    .line 5853
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5857
    :cond_2
    aget-object v0, v6, v3

    array-length v0, v0

    add-int/2addr v4, v0

    .line 5858
    add-int/lit8 v3, v3, 0x1

    .line 5846
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5861
    :cond_3
    if-nez v4, :cond_4

    .line 5862
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    .line 5865
    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    .line 5867
    array-length v7, v6

    move v2, v1

    move v3, v1

    :goto_3
    if-ge v2, v7, :cond_6

    aget-object v8, v6, v2

    .line 5868
    array-length v9, v8

    move v5, v1

    :goto_4
    if-ge v5, v9, :cond_5

    aget-object v10, v8, v5

    .line 5869
    add-int/lit8 v4, v3, 0x1

    aput-object v10, v0, v3

    .line 5868
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v4

    goto :goto_4

    .line 5867
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5873
    :cond_6
    sget-object v1, Lcom/sleepycat/b/g/m;->ao:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    new-instance v0, Lcom/sleepycat/b/g/x;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/g/x;-><init>([Ljava/lang/String;)V

    .line 689
    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/x;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/g/m;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sleepycat/b/g/m;->ak:I

    return v0
.end method

.method private b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I
    .locals 13

    .prologue
    .line 1702
    const-string v2, "write"

    invoke-static {v2}, Lcom/sleepycat/b/g/m;->c(Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 1705
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v9, v2, v10

    .line 1707
    iget-wide v2, p0, Lcom/sleepycat/b/g/m;->B:J

    cmp-long v2, v2, p5

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/sleepycat/b/g/m;->C:J

    sub-long v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 1710
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->H:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 1711
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->L:Lcom/sleepycat/b/p/z;

    int-to-long v4, v9

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 1717
    :goto_0
    iget-boolean v2, p0, Lcom/sleepycat/b/g/m;->A:Z

    if-eqz v2, :cond_0

    .line 1718
    const-string v2, "pre-write"

    move-wide/from16 v0, p3

    invoke-static {p2, v0, v1, v2}, Lcom/sleepycat/b/g/m;->b(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    .line 1733
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v2}, Lcom/sleepycat/b/g/r;->a(Lcom/sleepycat/b/g/r;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v11

    .line 1735
    const/4 v2, 0x0

    .line 1736
    if-nez v11, :cond_1

    iget-boolean v3, p0, Lcom/sleepycat/b/g/m;->aj:Z

    if-eqz v3, :cond_1

    if-nez p7, :cond_1

    .line 1739
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int v8, v10, v3

    move-wide/from16 v3, p5

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/b/g/r;->a(J[BJII)Z

    move-result v2

    .line 1744
    :cond_1
    if-nez v2, :cond_5

    .line 1745
    if-nez v11, :cond_2

    .line 1746
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v2}, Lcom/sleepycat/b/g/r;->a(Lcom/sleepycat/b/g/r;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1749
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/sleepycat/b/g/m;->aj:Z

    if-eqz v2, :cond_3

    .line 1750
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v2}, Lcom/sleepycat/b/g/r;->b(Lcom/sleepycat/b/g/r;)V

    .line 1753
    :cond_3
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1754
    :try_start_1
    move-wide/from16 v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1755
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {p1, v2, v3, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 1757
    iget-boolean v2, p0, Lcom/sleepycat/b/g/m;->A:Z

    if-eqz v2, :cond_4

    .line 1758
    move-wide/from16 v0, p3

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1759
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {p1, v2, v3, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 1761
    const-string v2, "post-write"

    move-wide/from16 v0, p3

    invoke-static {p2, v0, v1, v2}, Lcom/sleepycat/b/g/m;->b(Ljava/nio/ByteBuffer;JLjava/lang/String;)V

    .line 1763
    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1765
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v2}, Lcom/sleepycat/b/g/r;->a(Lcom/sleepycat/b/g/r;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1768
    :cond_5
    add-int v2, v10, v9

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1771
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->B:J

    .line 1772
    int-to-long v2, v9

    add-long v2, v2, p3

    iput-wide v2, p0, Lcom/sleepycat/b/g/m;->C:J

    .line 1773
    return v9

    .line 1713
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->F:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 1714
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->J:Lcom/sleepycat/b/p/z;

    int-to-long v4, v9

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    goto/16 :goto_0

    .line 1763
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1765
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v3}, Lcom/sleepycat/b/g/r;->a(Lcom/sleepycat/b/g/r;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method private b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    .locals 9

    .prologue
    const/16 v4, 0x64

    const/4 v8, 0x0

    .line 3122
    iget-boolean v0, p0, Lcom/sleepycat/b/g/m;->ar:Z

    if-eqz v0, :cond_0

    .line 3123
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Write after LogWriteException"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3126
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/g/m;->aq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/g/m;->aq:I

    .line 3127
    iget v0, p0, Lcom/sleepycat/b/g/m;->aq:I

    if-lt v0, v4, :cond_1

    .line 3128
    iput v8, p0, Lcom/sleepycat/b/g/m;->aq:I

    .line 3130
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->as:Ljava/util/Random;

    if-nez v0, :cond_2

    .line 3131
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/g/m;->as:Ljava/util/Random;

    .line 3133
    :cond_2
    iget v0, p0, Lcom/sleepycat/b/g/m;->aq:I

    iget-object v1, p0, Lcom/sleepycat/b/g/m;->as:Ljava/util/Random;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 3135
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->as:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 3136
    if-lez v0, :cond_3

    .line 3137
    new-array v1, v0, [B

    .line 3138
    invoke-virtual {p2, v1, v8, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 3139
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 3140
    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/b/g/m;->b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I

    .line 3143
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->ar:Z

    .line 3144
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Randomly generated for testing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3146
    :cond_4
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0}, Lcom/sleepycat/b/g/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/nio/ByteBuffer;JLjava/lang/String;)V
    .locals 7

    .prologue
    .line 1931
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1933
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 1934
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1936
    new-instance v2, Lcom/sleepycat/b/g/ae;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3}, Lcom/sleepycat/b/g/ae;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 19959
    new-instance v3, Lcom/sleepycat/b/g/d;

    invoke-direct {v3}, Lcom/sleepycat/b/g/d;-><init>()V

    .line 20329
    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    .line 19961
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 19962
    sub-int v6, v5, v4

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19963
    invoke-virtual {v3, p0, v4}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 19964
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21291
    iget v4, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 19971
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 19972
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t verify checksum ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1939
    :goto_1
    invoke-virtual {v2}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v3

    add-int/2addr v0, v3

    .line 22291
    iget v2, v2, Lcom/sleepycat/b/g/ae;->d:I

    .line 1939
    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1942
    :catch_0
    move-exception v0

    .line 1943
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ChecksumException: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1944
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "start stack trace"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1945
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/g/c;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1946
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "end stack trace"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1948
    :cond_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1949
    return-void

    .line 19980
    :cond_1
    :try_start_1
    invoke-virtual {v3, p0, v4}, Lcom/sleepycat/b/g/d;->a(Ljava/nio/ByteBuffer;I)V

    .line 22275
    iget-wide v4, v2, Lcom/sleepycat/b/g/ae;->a:J

    .line 19981
    invoke-virtual {v3, v4, v5, p1, p2}, Lcom/sleepycat/b/g/d;->a(JJ)V
    :try_end_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic c(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    return-object v0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1010
    const-string v0, ".jdb"

    invoke-static {p0, p1, v0}, Lcom/sleepycat/b/g/m;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/sleepycat/b/g/m;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1783
    sget-wide v0, Lcom/sleepycat/b/g/m;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/sleepycat/b/g/m;->d:J

    sget-wide v2, Lcom/sleepycat/b/g/m;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-wide v0, Lcom/sleepycat/b/g/m;->d:J

    sget-wide v2, Lcom/sleepycat/b/g/m;->e:J

    sget-wide v4, Lcom/sleepycat/b/g/m;->f:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1785
    sget-boolean v0, Lcom/sleepycat/b/g/m;->g:Z

    if-eqz v0, :cond_0

    .line 1786
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException generated for testing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/sleepycat/b/g/m;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->halt(I)V

    .line 1792
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/g/q;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sleepycat/b/g/m;->j()Lcom/sleepycat/b/g/q;

    move-result-object v0

    return-object v0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 2457
    const/16 v0, 0x26

    return v0
.end method

.method private static h(J)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1018
    .line 7012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7013
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7014
    const-string v1, "0000000000000000"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7015
    const-string v1, "0x"

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7016
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1018
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(J)V
    .locals 9

    .prologue
    .line 2501
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->ae:Lcom/sleepycat/b/f/a;

    monitor-enter v2

    .line 2502
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    .line 29589
    iget-object v0, v3, Lcom/sleepycat/b/g/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 29590
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29591
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 29592
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, p1

    if-nez v1, :cond_0

    .line 29593
    iget-object v1, v3, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/g/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30062
    :try_start_1
    iget-object v5, v1, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    invoke-virtual {v5}, Lcom/sleepycat/b/f/a;->a()V

    .line 29596
    iget-object v5, v3, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29597
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 29598
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29600
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    goto :goto_0

    .line 2503
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 29600
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    throw v0

    .line 2503
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private i()[Ljava/io/File;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 898
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    new-instance v2, Lcom/sleepycat/b/g/m$4;

    invoke-direct {v2, p0}, Lcom/sleepycat/b/g/m$4;-><init>(Lcom/sleepycat/b/g/m;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_0

    .line 909
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 914
    :goto_0
    array-length v2, v0

    iget v3, p0, Lcom/sleepycat/b/g/m;->am:I

    if-eq v2, v3, :cond_1

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/b/b/d;->O:Lcom/sleepycat/b/b/e;

    .line 6090
    iget-object v2, v2, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 915
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was set and expected to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/g/m;->am:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data directories, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 911
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_0

    .line 922
    :cond_1
    const/4 v2, 0x1

    .line 923
    iget v3, p0, Lcom/sleepycat/b/g/m;->am:I

    new-array v3, v3, [Ljava/io/File;

    .line 924
    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 925
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 927
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 928
    if-eq v7, v2, :cond_2

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to find data subdir: data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6957
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "000"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6958
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6959
    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 929
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but found data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal data subdir: data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 937
    :cond_2
    :try_start_1
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 938
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data dir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " doesn\'t exist."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 942
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data dir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a directory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 946
    :cond_4
    add-int/lit8 v5, v2, -0x1

    aput-object v7, v3, v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 951
    add-int/lit8 v2, v2, 0x1

    .line 924
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 953
    :cond_5
    return-object v3
.end method

.method private j()Lcom/sleepycat/b/g/q;
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/sleepycat/b/g/m;->al:Z

    if-eqz v0, :cond_0

    .line 1231
    sget-object v0, Lcom/sleepycat/b/g/q;->c:Lcom/sleepycat/b/g/q;

    .line 1233
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/g/q;->b:Lcom/sleepycat/b/g/q;

    goto :goto_0
.end method


# virtual methods
.method public final a(JZ)Ljava/lang/Long;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 584
    sget-object v1, Lcom/sleepycat/b/g/m;->i:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sleepycat/b/g/m;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 587
    const-string v1, ".jdb"

    invoke-static {p1, p2, v1}, Lcom/sleepycat/b/g/m;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    sget-object v2, Lcom/sleepycat/b/g/m;->ao:Ljava/util/Comparator;

    invoke-static {v3, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 590
    const/4 v1, 0x0

    .line 591
    if-ltz v2, :cond_3

    .line 592
    if-eqz p3, :cond_2

    .line 593
    add-int/lit8 v2, v2, 0x1

    .line 610
    :cond_0
    :goto_0
    if-eqz p3, :cond_4

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 616
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 617
    aget-object v0, v3, v2

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/m;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 619
    :goto_2
    return-object v0

    .line 595
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 603
    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 604
    if-nez p3, :cond_0

    .line 605
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 612
    :cond_4
    if-nez p3, :cond_5

    if-gez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_1

    .line 619
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 673
    iget v0, p0, Lcom/sleepycat/b/g/m;->am:I

    if-eqz v0, :cond_0

    .line 674
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 676
    :cond_0
    const/4 v0, 0x0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 677
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 637
    sget-object v0, Lcom/sleepycat/b/g/m;->i:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/m;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 638
    array-length v0, v1

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    .line 641
    :cond_0
    const/4 v0, 0x0

    .line 642
    if-nez p1, :cond_1

    .line 643
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 645
    :cond_1
    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/m;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(JLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 981
    iget v0, p0, Lcom/sleepycat/b/g/m;->am:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    .line 984
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/sleepycat/b/g/m;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ac:[Ljava/io/File;

    iget v1, p0, Lcom/sleepycat/b/g/m;->am:I

    int-to-long v2, v1

    rem-long v2, p1, v2

    long-to-int v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final a(JLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2336
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2401
    :goto_0
    return-void

    .line 2348
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/g/m;->j()Lcom/sleepycat/b/g/q;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/g/m;->a(JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 28044
    iget-object v1, v0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 2362
    :try_start_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2363
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 2371
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v4, Lcom/sleepycat/b/c/ac;->B:Lcom/sleepycat/b/c/ac;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LSN of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " did not match file number"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2385
    :catch_0
    move-exception v0

    .line 2386
    :try_start_2
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v4, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flipping invisibility in file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2394
    :catchall_0
    move-exception v0

    .line 2395
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2394
    throw v0

    .line 2349
    :catch_1
    move-exception v0

    .line 2350
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Opening file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for invisible marking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2353
    :catch_2
    move-exception v0

    .line 2354
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Opening file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for invisible marking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2377
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    long-to-int v0, v4

    .line 2379
    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2380
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 2381
    invoke-static {v3}, Lcom/sleepycat/b/g/ae;->a(B)B

    move-result v3

    .line 2382
    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2383
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 2396
    :catch_3
    move-exception v0

    .line 2397
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Closing after invisibility cloaking: file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2395
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 2396
    :catch_4
    move-exception v0

    .line 2397
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Closing after invisibility cloaking: file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final a(Lcom/sleepycat/b/g/aa;Z)V
    .locals 12

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 1594
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 18102
    :cond_1
    iget-wide v10, p1, Lcom/sleepycat/b/g/aa;->b:J

    .line 1605
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/r;->a(Lcom/sleepycat/b/g/r;J)Ljava/io/RandomAccessFile;

    move-result-object v2

    .line 18138
    iget-object v3, p1, Lcom/sleepycat/b/g/aa;->a:Ljava/nio/ByteBuffer;

    .line 1620
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/g/m;->Y:Z

    if-nez v0, :cond_2

    .line 18224
    iget-boolean v0, p1, Lcom/sleepycat/b/g/aa;->e:Z

    .line 1620
    if-nez v0, :cond_2

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x26

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "FileManager would overwrite non-empty file 0x"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " lsnOffset=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " fileLength=0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1638
    :catch_0
    move-exception v0

    .line 1644
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    const-string v3, "File closed, may be due to thread interrupt"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1627
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/sleepycat/b/g/m;->a:Z

    if-eqz v0, :cond_3

    .line 1628
    new-instance v0, Ljava/io/IOException;

    const-string v1, "generated for testing (write)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1647
    :catch_1
    move-exception v0

    .line 1649
    invoke-static {}, Lcom/sleepycat/b/g/m;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1650
    new-instance v1, Lcom/sleepycat/b/at;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/at;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v1

    .line 1630
    :cond_3
    :try_start_2
    sget-boolean v0, Lcom/sleepycat/b/g/m;->W:Z

    if-eqz v0, :cond_4

    .line 1631
    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/b/g/m;->b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 1635
    :cond_4
    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/b/g/m;->b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I
    :try_end_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1686
    :goto_1
    sget-boolean v0, Lcom/sleepycat/b/g/m;->Y:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sleepycat/b/c/ad;->H()Z

    goto/16 :goto_0

    .line 1671
    :cond_5
    invoke-static {v3}, Lcom/sleepycat/b/g/m;->a(Ljava/nio/ByteBuffer;)V

    .line 1673
    :try_start_3
    sget-boolean v0, Lcom/sleepycat/b/g/m;->a:Z

    if-eqz v0, :cond_6

    .line 1674
    new-instance v0, Ljava/io/IOException;

    const-string v1, "generated for testing (write)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1679
    :catch_2
    move-exception v0

    .line 19228
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/sleepycat/b/g/aa;->e:Z

    .line 1682
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1677
    :cond_6
    :try_start_4
    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v4

    invoke-static {v10, v11}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sleepycat/b/g/m;->b(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1
.end method

.method final a(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    .locals 9

    .prologue
    .line 1805
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/b/g/m;->a(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)Z

    .line 1807
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2408
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2409
    const/4 v1, 0x0

    .line 2411
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/g/m;->j()Lcom/sleepycat/b/g/q;

    move-result-object v0

    invoke-direct {p0, v4, v5, v0}, Lcom/sleepycat/b/g/m;->a(JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;

    move-result-object v0

    .line 29044
    iget-object v1, v0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 2414
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 2415
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->U:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/z;->f()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2429
    if-eqz v1, :cond_0

    .line 2431
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2432
    :catch_0
    move-exception v0

    .line 2433
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invisible fsyncing file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2416
    :catch_1
    move-exception v0

    .line 2417
    :try_start_2
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invisible fsyncing file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2429
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 2431
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2429
    :cond_1
    throw v0

    .line 2420
    :catch_2
    move-exception v0

    .line 2421
    :try_start_4
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invisible fsyncing file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2424
    :catch_3
    move-exception v0

    .line 2425
    new-instance v2, Lcom/sleepycat/b/aa;

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invisible fsyncing file "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2440
    :cond_2
    return-void

    .line 2432
    :catch_4
    move-exception v0

    .line 2433
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->p:Lcom/sleepycat/b/c/ac;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invisible fsyncing file "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(J)Z
    .locals 3

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/sleepycat/b/g/m;->o:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    .line 5334
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->h:Z

    .line 536
    if-eqz v0, :cond_1

    .line 537
    :cond_0
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    .line 541
    :cond_1
    const-string v0, ".jdb"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/g/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method final a(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1832
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/g/m;->aj:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/g/r;->a(Ljava/nio/ByteBuffer;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1871
    :goto_0
    return v6

    .line 1857
    :cond_0
    if-nez p7, :cond_6

    .line 1863
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    move v0, v6

    .line 1866
    :goto_1
    if-eqz v0, :cond_5

    .line 19898
    monitor-enter p1
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 19899
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 19900
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 19902
    iget-wide v2, p0, Lcom/sleepycat/b/g/m;->B:J

    cmp-long v2, v2, p5

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/sleepycat/b/g/m;->C:J

    sub-long v2, p3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 19905
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->G:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 19906
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->K:Lcom/sleepycat/b/p/z;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 19912
    :goto_2
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 19913
    sget-boolean v2, Lcom/sleepycat/b/g/m;->b:Z

    if-eqz v2, :cond_3

    .line 19914
    new-instance v0, Ljava/io/IOException;

    const-string v1, "generated for testing (read)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19925
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1872
    :catch_0
    move-exception v0

    .line 1878
    new-instance v1, Lcom/sleepycat/b/bo;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    const-string v3, "Channel closed, may be due to thread interrupt"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v7

    .line 1863
    goto :goto_1

    .line 19908
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->E:Lcom/sleepycat/b/p/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/p/z;->f()V

    .line 19909
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->I:Lcom/sleepycat/b/p/z;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    goto :goto_2

    .line 19916
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 19919
    if-lez v1, :cond_4

    .line 19920
    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19923
    :cond_4
    iput-wide p5, p0, Lcom/sleepycat/b/g/m;->B:J

    .line 19924
    int-to-long v0, v1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->C:J

    .line 19925
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    move v6, v7

    .line 1871
    goto :goto_0

    .line 1880
    :catch_1
    move-exception v0

    .line 1881
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    move v0, v6

    goto :goto_1
.end method

.method public final a(ZZ)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 2130
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/m;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return v0

    .line 2134
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->af:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_2

    .line 2135
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    const-string v4, "je.lck"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/sleepycat/b/g/q;->b:Lcom/sleepycat/b/g/q;

    .line 26093
    iget-object v3, v3, Lcom/sleepycat/b/g/q;->e:Ljava/lang/String;

    .line 2135
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->af:Ljava/io/RandomAccessFile;

    .line 2141
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->af:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2144
    if-eqz p2, :cond_3

    .line 2150
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    .line 2151
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_0

    move v0, v7

    .line 2152
    goto :goto_0

    .line 2156
    :cond_3
    if-eqz p1, :cond_4

    .line 2157
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ah:Ljava/nio/channels/FileLock;

    .line 2161
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->ah:Ljava/nio/channels/FileLock;

    if-nez v1, :cond_0

    move v0, v7

    .line 2162
    goto :goto_0

    .line 2159
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ah:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2166
    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0

    .line 2168
    :catch_1
    move-exception v0

    .line 2169
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(JJ)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 700
    new-instance v0, Lcom/sleepycat/b/g/x;

    sget-object v1, Lcom/sleepycat/b/g/m;->i:[Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/g/x;-><init>([Ljava/lang/String;JJ)V

    .line 702
    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/x;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 462
    iget-wide v0, p0, Lcom/sleepycat/b/g/m;->p:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->u:J

    .line 463
    iget-wide v0, p0, Lcom/sleepycat/b/g/m;->q:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->v:J

    .line 464
    iget-wide v0, p0, Lcom/sleepycat/b/g/m;->r:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->w:J

    .line 465
    iget-boolean v0, p0, Lcom/sleepycat/b/g/m;->s:Z

    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->x:Z

    .line 466
    iget-wide v0, p0, Lcom/sleepycat/b/g/m;->o:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/m;->t:J

    .line 467
    return-void
.end method

.method public final b(JJ)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 2253
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/g/m;->j()Lcom/sleepycat/b/g/q;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sleepycat/b/g/m;->a(JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;

    move-result-object v1

    .line 27044
    iget-object v2, v1, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2260
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 27056
    iget v1, v1, Lcom/sleepycat/b/g/j;->c:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 2263
    :goto_0
    if-eqz v0, :cond_0

    .line 2264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/g/m;->s:Z

    .line 2269
    :cond_0
    return-void

    .line 2260
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v0
    :try_end_2
    .catch Lcom/sleepycat/b/g/c; {:try_start_2 .. :try_end_2} :catch_0

    .line 2266
    :catch_0
    move-exception v0

    .line 2267
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 27056
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(JLjava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1036
    const-string v0, ""

    move-object v2, v0

    move v0, v1

    .line 1039
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lcom/sleepycat/b/g/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/m;->b(J)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 1044
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/m;->i(J)V

    .line 1045
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 1048
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public final b(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2199
    iget v1, p0, Lcom/sleepycat/b/g/m;->am:I

    if-nez v1, :cond_1

    .line 2200
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ab:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/sleepycat/b/g/m;->a(Ljava/io/File;Z)Z

    move-result v0

    .line 26232
    :cond_0
    :goto_0
    return v0

    .line 26230
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->ac:[Ljava/io/File;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 26231
    invoke-static {v4, p1}, Lcom/sleepycat/b/g/m;->a(Ljava/io/File;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 26236
    :cond_2
    const/4 v0, 0x1

    .line 2202
    goto :goto_0
.end method

.method final b(J)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 966
    iget-boolean v0, p0, Lcom/sleepycat/b/g/m;->ad:Z

    if-eqz v0, :cond_0

    .line 967
    sget-object v0, Lcom/sleepycat/b/g/m;->aa:[Ljava/lang/String;

    array-length v2, v0

    .line 968
    new-array v0, v2, [Ljava/lang/String;

    .line 969
    :goto_0
    if-ge v1, v2, :cond_1

    .line 970
    sget-object v3, Lcom/sleepycat/b/g/m;->aa:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, p1, p2, v3}, Lcom/sleepycat/b/g/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 969
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ".jdb"

    invoke-virtual {p0, p1, p2, v2}, Lcom/sleepycat/b/g/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1
    return-object v0
.end method

.method public final c(JJ)V
    .locals 5

    .prologue
    .line 2285
    .line 27506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/m;->a(Z)Ljava/lang/Long;

    move-result-object v0

    .line 2285
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    .line 2287
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/g/m;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2297
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 2298
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/g/m;->b(JJ)V

    .line 2299
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_1

    .line 2304
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/g/m;->d(J)Z

    move-result v2

    .line 2305
    sget-boolean v3, Lcom/sleepycat/b/g/m;->Y:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jdb"

    invoke-virtual {p0, v0, v1, v4}, Lcom/sleepycat/b/g/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not deleted during truncateLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2285
    :cond_1
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 2308
    :cond_2
    return-void
.end method

.method public final c()[Ljava/lang/Long;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 556
    sget-object v0, Lcom/sleepycat/b/g/m;->i:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/m;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 557
    array-length v0, v3

    new-array v4, v0, [Ljava/lang/Long;

    move v0, v1

    .line 558
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_2

    .line 559
    aget-object v5, v3, v0

    .line 560
    invoke-virtual {p0, v5}, Lcom/sleepycat/b/g/m;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 561
    iget v2, p0, Lcom/sleepycat/b/g/m;->am:I

    if-eqz v2, :cond_1

    .line 5655
    iget v2, p0, Lcom/sleepycat/b/g/m;->am:I

    if-nez v2, :cond_0

    .line 5656
    const/4 v2, -0x1

    .line 562
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 563
    int-to-long v8, v2

    iget v10, p0, Lcom/sleepycat/b/g/m;->am:I

    int-to-long v10, v10

    rem-long/2addr v6, v10

    cmp-long v6, v8, v6

    if-eqz v6, :cond_1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but it should have been in data directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Perhaps it was moved or restored incorrectly?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 5659
    :cond_0
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 5660
    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5661
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 558
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_2
    return-object v4
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 626
    sget-object v0, Lcom/sleepycat/b/g/m;->i:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sleepycat/b/g/m;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 627
    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(J)Z
    .locals 3

    .prologue
    .line 1064
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/m;->b(J)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1065
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/m;->i(J)V

    .line 1066
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public final e(J)I
    .locals 5

    .prologue
    .line 1077
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;

    move-result-object v0

    .line 7052
    iget v1, v0, Lcom/sleepycat/b/g/j;->c:I

    .line 1079
    invoke-virtual {v0}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/g/c; {:try_start_0 .. :try_end_0} :catch_1

    .line 1080
    return v1

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 1084
    :catch_1
    move-exception v0

    .line 1085
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->j:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final e()V
    .locals 4

    .prologue
    .line 2020
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-static {v0}, Lcom/sleepycat/b/g/r;->c(Lcom/sleepycat/b/g/r;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    return-void

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    new-instance v1, Lcom/sleepycat/b/at;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    const-string v3, "IOException during fsync"

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/at;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final f(J)Lcom/sleepycat/b/g/j;
    .locals 9

    .prologue
    .line 1104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1119
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    invoke-static {v0, v4}, Lcom/sleepycat/b/g/o;->a(Lcom/sleepycat/b/g/o;Ljava/lang/Long;)Lcom/sleepycat/b/g/j;

    move-result-object v1

    .line 1131
    const/4 v0, 0x0

    .line 1132
    if-nez v1, :cond_3

    .line 1133
    iget-object v5, p0, Lcom/sleepycat/b/g/m;->ae:Lcom/sleepycat/b/f/a;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1134
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    invoke-static {v1, v4}, Lcom/sleepycat/b/g/o;->a(Lcom/sleepycat/b/g/o;Ljava/lang/Long;)Lcom/sleepycat/b/g/j;

    move-result-object v1

    .line 1135
    if-nez v1, :cond_2

    .line 1136
    const/4 v2, 0x1

    .line 7222
    new-instance v3, Lcom/sleepycat/b/g/j;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/b/g/m;->h(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v1, v6}, Lcom/sleepycat/b/g/j;-><init>(JLjava/lang/String;)V

    .line 7224
    iget-object v6, p0, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    .line 7546
    iget-object v0, v6, Lcom/sleepycat/b/g/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v6, Lcom/sleepycat/b/g/o;->c:I

    if-lt v0, v1, :cond_1

    .line 7547
    iget-object v0, v6, Lcom/sleepycat/b/g/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 7548
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7549
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 7550
    iget-object v1, v6, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/g/j;

    .line 8068
    iget-object v8, v1, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    invoke-virtual {v8}, Lcom/sleepycat/b/f/a;->b()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 7560
    if-eqz v8, :cond_0

    .line 7562
    :try_start_2
    iget-object v8, v6, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7563
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 7564
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7566
    :try_start_3
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    .line 7577
    :cond_1
    iget-object v0, v6, Lcom/sleepycat/b/g/o;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7578
    iget-object v0, v6, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9062
    iget-object v0, v3, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->a()V

    move v0, v2

    move-object v1, v3

    .line 1139
    :cond_2
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1142
    :cond_3
    if-eqz v0, :cond_4

    .line 1150
    :try_start_4
    sget-object v0, Lcom/sleepycat/b/g/q;->a:Lcom/sleepycat/b/g/q;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/j;Lcom/sleepycat/b/g/q;Lcom/sleepycat/b/g/j;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v1

    .line 10044
    :goto_1
    :try_start_5
    iget-object v1, v0, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 1197
    if-nez v1, :cond_5

    .line 1198
    invoke-virtual {v0}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1205
    :catch_0
    move-exception v0

    throw v0

    .line 7566
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    throw v0

    .line 1139
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1206
    :catch_1
    move-exception v0

    .line 1207
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->n:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1

    .line 1154
    :catchall_2
    move-exception v0

    .line 1156
    :try_start_8
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    .line 1157
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/g/m;->i(J)V

    .line 1154
    throw v0

    .line 9068
    :cond_4
    iget-object v0, v1, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/a;->b()Z

    move-result v0

    .line 1165
    if-nez v0, :cond_6

    .line 1173
    new-instance v0, Lcom/sleepycat/b/g/m$5;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/b/g/m;->h(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v2, v3, v5}, Lcom/sleepycat/b/g/m$5;-><init>(Lcom/sleepycat/b/g/m;JLjava/lang/String;)V

    .line 1187
    sget-object v2, Lcom/sleepycat/b/g/q;->a:Lcom/sleepycat/b/g/q;

    invoke-direct {p0, v0, v2, v1}, Lcom/sleepycat/b/g/m;->a(Lcom/sleepycat/b/g/j;Lcom/sleepycat/b/g/q;Lcom/sleepycat/b/g/j;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 1211
    :cond_5
    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public final f()V
    .locals 5

    .prologue
    .line 2067
    iget-object v2, p0, Lcom/sleepycat/b/g/m;->ae:Lcom/sleepycat/b/f/a;

    monitor-enter v2

    .line 2068
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/g/m;->m:Lcom/sleepycat/b/g/o;

    .line 25609
    iget-object v0, v1, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 25610
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25611
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26062
    :try_start_1
    iget-object v4, v0, Lcom/sleepycat/b/g/j;->b:Lcom/sleepycat/b/f/a;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/a;->a()V

    .line 25614
    invoke-virtual {v0}, Lcom/sleepycat/b/g/j;->b()V

    .line 25615
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25617
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/b/g/j;->a()V

    goto :goto_0

    .line 2069
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 25617
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lcom/sleepycat/b/g/j;->a()V

    throw v1

    .line 25620
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/g/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 25621
    iget-object v0, v1, Lcom/sleepycat/b/g/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2069
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2071
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->y:Lcom/sleepycat/b/g/r;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/r;->a()V

    .line 2072
    return-void
.end method

.method final g(J)J
    .locals 5

    .prologue
    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    .line 17371
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 1507
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/sleepycat/b/p/j;->a(JI)J

    move-result-wide v2

    .line 17959
    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/g/am;->f(J)Lcom/sleepycat/b/g/ap;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sleepycat/b/g/am;->a(JLcom/sleepycat/b/g/ap;Z)Lcom/sleepycat/b/g/ay;

    move-result-object v0

    .line 18030
    iget-object v0, v0, Lcom/sleepycat/b/g/ay;->b:Lcom/sleepycat/b/g/a/m;

    .line 1510
    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/l;

    .line 18083
    iget-wide v0, v0, Lcom/sleepycat/b/g/l;->b:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1511
    return-wide v0

    .line 1512
    :catch_0
    move-exception v0

    .line 1513
    new-instance v1, Lcom/sleepycat/b/aa;

    iget-object v2, p0, Lcom/sleepycat/b/g/m;->k:Lcom/sleepycat/b/c/ad;

    sget-object v3, Lcom/sleepycat/b/c/ac;->k:Lcom/sleepycat/b/c/ac;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2080
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ah:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 2081
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ah:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 2082
    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ah:Ljava/nio/channels/FileLock;

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 2086
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 2087
    iput-object v1, p0, Lcom/sleepycat/b/g/m;->n:Ljava/nio/channels/FileLock;

    .line 2090
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    .line 2091
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2092
    iput-object v1, p0, Lcom/sleepycat/b/g/m;->ag:Ljava/nio/channels/FileChannel;

    .line 2095
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->af:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3

    .line 2096
    iget-object v0, p0, Lcom/sleepycat/b/g/m;->af:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2097
    iput-object v1, p0, Lcom/sleepycat/b/g/m;->af:Ljava/io/RandomAccessFile;

    .line 2099
    :cond_3
    return-void
.end method
