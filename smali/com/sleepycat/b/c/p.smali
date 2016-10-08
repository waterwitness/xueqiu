.class public Lcom/sleepycat/b/c/p;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# static fields
.field public static final a:Lcom/sleepycat/b/c/h;

.field public static final b:Lcom/sleepycat/b/c/h;

.field public static final synthetic i:Z

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/c/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Lcom/sleepycat/b/c/i;

.field public final f:Lcom/sleepycat/b/c/i;

.field public g:B

.field public h:Lcom/sleepycat/b/c/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 170
    const-class v0, Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/p;->i:Z

    .line 173
    new-instance v0, Lcom/sleepycat/b/c/h;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/c/h;-><init>(J)V

    sput-object v0, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    .line 175
    new-instance v0, Lcom/sleepycat/b/c/h;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/c/h;-><init>(J)V

    sput-object v0, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    .line 180
    const-class v0, Lcom/sleepycat/b/c/w;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/sleepycat/b/c/p;->j:Ljava/util/Map;

    .line 182
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/w;

    .line 183
    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    sget-object v2, Lcom/sleepycat/b/c/p;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    .line 296
    new-instance v0, Lcom/sleepycat/b/c/i;

    invoke-direct {v0}, Lcom/sleepycat/b/c/i;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 297
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    sget-object v1, Lcom/sleepycat/b/c/w;->a:Lcom/sleepycat/b/c/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v1

    .line 2351
    iput-object v1, v0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->n()V

    .line 304
    new-instance v0, Lcom/sleepycat/b/c/i;

    invoke-direct {v0}, Lcom/sleepycat/b/c/i;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    .line 305
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->n()V

    .line 306
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    sget-object v1, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v1

    .line 3351
    iput-object v1, v0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 310
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 311
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;ZZ)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    .line 328
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 329
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x100

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 332
    new-instance v5, Lcom/sleepycat/b/l;

    invoke-direct {v5}, Lcom/sleepycat/b/l;-><init>()V

    .line 4277
    iput-boolean v8, v5, Lcom/sleepycat/b/l;->j:Z

    .line 4308
    invoke-virtual {v5, v8}, Lcom/sleepycat/b/l;->b(Z)V

    .line 340
    new-instance v0, Lcom/sleepycat/b/c/i;

    sget-object v2, Lcom/sleepycat/b/c/w;->a:Lcom/sleepycat/b/c/w;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sleepycat/b/c/h;

    const-wide/16 v6, 0x0

    invoke-direct {v3, v6, v7}, Lcom/sleepycat/b/c/h;-><init>(J)V

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/c/i;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/l;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 346
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->n()V

    .line 348
    new-instance v5, Lcom/sleepycat/b/l;

    invoke-direct {v5}, Lcom/sleepycat/b/l;-><init>()V

    .line 5308
    invoke-virtual {v5, v8}, Lcom/sleepycat/b/l;->b(Z)V

    .line 350
    new-instance v0, Lcom/sleepycat/b/c/i;

    sget-object v2, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sleepycat/b/c/h;

    invoke-direct {v3, v10, v11}, Lcom/sleepycat/b/c/h;-><init>(J)V

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/c/i;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/l;)V

    iput-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    .line 356
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->n()V

    .line 358
    if-eqz p2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/sleepycat/b/c/p;->e()V

    .line 362
    :cond_0
    if-eqz p3, :cond_1

    .line 5965
    iget-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/c/p;->f()V

    .line 368
    return-void
.end method

.method private a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 865
    new-instance v1, Lcom/sleepycat/b/c/r;

    invoke-direct {v1, v0}, Lcom/sleepycat/b/c/r;-><init>(B)V

    .line 868
    invoke-virtual {p0, p1, p2, v6}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;

    move-result-object v2

    iput-object v2, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    .line 869
    iget-object v2, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    if-nez v2, :cond_0

    .line 870
    new-instance v0, Lcom/sleepycat/b/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " non-existent database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_0
    :try_start_0
    iget-object v2, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    invoke-interface {p4, v2}, Lcom/sleepycat/b/c/q;->a(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/g/av;

    move-result-object v2

    iput-object v2, v1, Lcom/sleepycat/b/c/r;->d:Lcom/sleepycat/b/g/av;

    .line 879
    iget-object v2, v1, Lcom/sleepycat/b/c/r;->d:Lcom/sleepycat/b/g/av;

    invoke-static {p1, v2}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g/av;)V

    .line 886
    iget-object v2, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    .line 20677
    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v2

    .line 886
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sleepycat/b/n/q;->e()Lcom/sleepycat/b/n/z;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sleepycat/b/n/q;->e()Lcom/sleepycat/b/n/z;

    move-result-object v2

    .line 20713
    iget-boolean v2, v2, Lcom/sleepycat/b/n/z;->L:Z

    .line 886
    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sleepycat/b/n/q;->h_()Z

    move-result v2

    if-nez v2, :cond_2

    .line 891
    new-instance v0, Lcom/sleepycat/b/c/s;

    invoke-direct {v0}, Lcom/sleepycat/b/c/s;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    :catchall_0
    move-exception v0

    .line 947
    iget-object v2, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 948
    iget-object v2, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    if-eqz v2, :cond_1

    .line 949
    iget-object v2, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 950
    iget-object v1, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    .line 21580
    invoke-virtual {v1, v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 946
    :cond_1
    throw v0

    .line 894
    :cond_2
    :try_start_1
    new-instance v2, Lcom/sleepycat/b/c/c;

    iget-object v3, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-direct {v2, v3, p1}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V

    iput-object v2, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    .line 897
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-static {p2}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 900
    iget-object v3, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    sget-object v4, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    sget-object v5, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v2, v4, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 904
    :cond_3
    if-nez v0, :cond_4

    .line 905
    new-instance v0, Lcom/sleepycat/b/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attempted to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " non-existent database "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sleepycat/b/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_4
    iget-object v0, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    sget-object v2, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ab;

    iput-object v0, v1, Lcom/sleepycat/b/c/r;->c:Lcom/sleepycat/b/l/ab;

    .line 913
    sget-boolean v0, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/sleepycat/b/c/r;->c:Lcom/sleepycat/b/l/ab;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 924
    :cond_5
    invoke-virtual {p1}, Lcom/sleepycat/b/n/q;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Database "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has been forcibly closed in order to apply a replicated "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " operation.  This Database and all associated Cursors must be closed.  All associated Transactions must be aborted."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    iget-object v0, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->s()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i;

    .line 21046
    invoke-virtual {v0, p2, v2}, Lcom/sleepycat/b/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_6
    iget-object v0, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    .line 21269
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 938
    if-lez v0, :cond_7

    .line 939
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " open Database handles exist"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 955
    :cond_7
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/sleepycat/b/c/w;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/sleepycat/b/c/p;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/w;

    .line 198
    if-eqz v0, :cond_0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sleepycat/b/c/w;->g:Lcom/sleepycat/b/c/w;

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/n/d;)V
    .locals 7

    .prologue
    .line 657
    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->b()Lcom/sleepycat/b/l/a;

    .line 11382
    :try_start_0
    iget-object v0, p1, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 12374
    iget v1, p1, Lcom/sleepycat/b/c/c;->b:I

    .line 659
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v2

    .line 662
    sget-object v4, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/b/n/d;->b(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;

    move-result-object v0

    .line 13027
    iget-object v0, v0, Lcom/sleepycat/b/n/m;->a:Lcom/sleepycat/b/n/h;

    .line 666
    sget-object v1, Lcom/sleepycat/b/n/h;->f:Lcom/sleepycat/b/n/h;

    if-ne v0, v1, :cond_0

    .line 13489
    iget-object v0, p1, Lcom/sleepycat/b/c/c;->e:Lcom/sleepycat/b/n/q;

    .line 667
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/n/q;->b(Lcom/sleepycat/b/n/q;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No contention is possible with HandleLocker: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->c()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/b/c/c;->c()V

    .line 674
    return-void
.end method

.method private static a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g/av;)V
    .locals 1

    .prologue
    .line 825
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/g/av;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/sleepycat/b/n/q;->k()V

    .line 828
    :cond_0
    return-void
.end method

.method private b(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1041
    const-string v0, "rename"

    new-instance v1, Lcom/sleepycat/b/c/p$2;

    invoke-direct {v1, p0, p5}, Lcom/sleepycat/b/c/p$2;-><init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;

    move-result-object v0

    .line 1051
    iget-object v1, v0, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    .line 1052
    iget-object v2, v0, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    .line 1053
    iget-object v0, v0, Lcom/sleepycat/b/c/r;->d:Lcom/sleepycat/b/g/av;

    .line 1061
    :try_start_0
    sget-object v3, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 1062
    if-eqz p4, :cond_0

    .line 1067
    :goto_0
    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->e()V

    .line 1068
    invoke-static {p3}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3, p4, v0}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 24351
    iput-object p3, v2, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 24580
    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1072
    return-object v2

    .line 1062
    :cond_0
    :try_start_1
    new-instance p4, Lcom/sleepycat/b/l/ab;

    .line 23496
    iget-object v3, v2, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1062
    invoke-direct {p4, v3}, Lcom/sleepycat/b/l/ab;-><init>(Lcom/sleepycat/b/c/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1074
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 24580
    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1074
    throw v0
.end method

.method private b(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/v;
    .locals 14

    .prologue
    .line 1228
    sget-boolean v2, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1230
    :cond_0
    const-string v2, "truncate"

    new-instance v3, Lcom/sleepycat/b/c/p$4;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, v0}, Lcom/sleepycat/b/c/p$4;-><init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;

    move-result-object v7

    .line 1240
    iget-object v2, v7, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    .line 1241
    iget-object v8, v7, Lcom/sleepycat/b/c/r;->d:Lcom/sleepycat/b/g/av;

    .line 1248
    :try_start_0
    iget-object v9, v7, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    .line 1249
    if-eqz p3, :cond_3

    .line 26062
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 1256
    :goto_0
    invoke-virtual {v9}, Lcom/sleepycat/b/c/i;->d()Lcom/sleepycat/b/c/i;

    move-result-object v10

    .line 1257
    invoke-virtual {v10}, Lcom/sleepycat/b/c/i;->u()V

    .line 29500
    iput-object v3, v10, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1259
    new-instance v4, Lcom/sleepycat/b/l/ah;

    invoke-direct {v4, v10}, Lcom/sleepycat/b/l/ah;-><init>(Lcom/sleepycat/b/c/i;)V

    .line 30489
    iput-object v4, v10, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    const/4 v4, 0x0

    .line 1267
    const/4 v5, 0x0

    .line 1268
    const/4 v11, 0x0

    .line 1270
    :try_start_1
    iget-object v6, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v6}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 1271
    :try_start_2
    new-instance v4, Lcom/sleepycat/b/c/c;

    iget-object v12, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-direct {v4, v12, v6}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31064
    :try_start_3
    invoke-virtual {v3}, Lcom/sleepycat/b/c/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 1272
    new-instance v5, Lcom/sleepycat/b/l/aa;

    invoke-direct {v5, v10}, Lcom/sleepycat/b/l/aa;-><init>(Lcom/sleepycat/b/c/i;)V

    sget-object v12, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v4, v3, v5, v12}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1276
    const/4 v3, 0x1

    .line 1278
    if-eqz v4, :cond_1

    .line 31580
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1282
    :cond_1
    if-eqz v6, :cond_2

    .line 1283
    invoke-virtual {v6, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1286
    :cond_2
    iget-object v3, v7, Lcom/sleepycat/b/c/r;->c:Lcom/sleepycat/b/l/ab;

    .line 32496
    iget-object v4, v10, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 33066
    iput-object v4, v3, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 1292
    new-instance v4, Lcom/sleepycat/b/m;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v4, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 1294
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 1309
    const/4 v3, 0x1

    invoke-virtual {p1, v9, v3}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/i;Z)V

    .line 1312
    const/4 v3, 0x0

    invoke-virtual {p1, v10, v3}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/i;Z)V

    .line 1314
    new-instance v3, Lcom/sleepycat/b/c/v;

    invoke-direct {v3, v9, v10}, Lcom/sleepycat/b/c/v;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/c/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1316
    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 33580
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1314
    return-object v3

    .line 1249
    :cond_3
    :try_start_5
    new-instance v3, Lcom/sleepycat/b/c/h;

    .line 26496
    iget-object v4, v9, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 27055
    iget-wide v4, v4, Lcom/sleepycat/b/c/h;->a:J

    .line 27405
    const-wide/16 v10, -0x100

    cmp-long v4, v4, v10

    if-gez v4, :cond_4

    const/4 v4, 0x1

    .line 1249
    :goto_1
    if-eqz v4, :cond_5

    .line 28390
    iget-object v4, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v4

    .line 1249
    :goto_2
    invoke-direct {v3, v4, v5}, Lcom/sleepycat/b/c/h;-><init>(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1316
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 33580
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1316
    throw v3

    .line 27405
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 29386
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    goto :goto_2

    .line 1278
    :catchall_1
    move-exception v3

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    :goto_3
    if-eqz v4, :cond_6

    .line 31580
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1282
    :cond_6
    if-eqz v5, :cond_7

    .line 1283
    invoke-virtual {v5, v11}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1278
    :cond_7
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v3

    move-object v4, v5

    move-object v5, v6

    goto :goto_3

    :catchall_3
    move-exception v3

    move-object v5, v6

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1898
    invoke-static {p0}, Lcom/sleepycat/b/c/p;->a(Ljava/lang/String;)Lcom/sleepycat/b/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v0

    return v0
.end method

.method public static d(Lcom/sleepycat/b/c/i;)I
    .locals 2

    .prologue
    .line 1923
    new-instance v0, Lcom/sleepycat/b/c/u;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/c/u;-><init>(Lcom/sleepycat/b/c/i;)V

    .line 43485
    iget-object v1, p0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 1924
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;

    .line 44006
    iget v0, v0, Lcom/sleepycat/b/c/u;->a:I

    .line 1925
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 2018
    invoke-static {}, Lcom/sleepycat/b/g/ar;->b()I

    invoke-static {}, Lcom/sleepycat/b/g/ar;->b()I

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->a()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1556
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 37496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1556
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 1613
    :cond_0
    :goto_0
    return-object v0

    .line 1559
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    .line 38496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 1559
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1561
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 1575
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v0}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1576
    const-wide/16 v8, -0x1

    cmp-long v0, p2, v8

    if-eqz v0, :cond_4

    .line 1577
    :try_start_1
    invoke-virtual {v4, p2, p3}, Lcom/sleepycat/b/n/q;->c(J)V

    .line 1579
    :cond_4
    new-instance v3, Lcom/sleepycat/b/c/c;

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catch Lcom/sleepycat/b/an; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1580
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/m;

    .line 39064
    invoke-virtual {p1}, Lcom/sleepycat/b/c/h;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 1580
    invoke-direct {v0, v7}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 1581
    sget-object v7, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    sget-object v8, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v0, v7, v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v0, v5

    .line 1585
    :goto_2
    if-eqz v0, :cond_f

    .line 1586
    sget-object v0, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/aa;

    .line 1588
    sget-boolean v7, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v7, :cond_7

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catch Lcom/sleepycat/b/an; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    .line 1598
    :goto_3
    if-eqz v0, :cond_5

    .line 1599
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 39580
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1602
    :cond_5
    if-eqz v3, :cond_3

    .line 1603
    invoke-virtual {v3, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto :goto_1

    :cond_6
    move v0, v6

    .line 1581
    goto :goto_2

    .line 39143
    :cond_7
    :try_start_3
    iget-object v0, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;
    :try_end_3
    .catch Lcom/sleepycat/b/an; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1591
    :try_start_4
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->u()V
    :try_end_4
    .catch Lcom/sleepycat/b/an; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1598
    :goto_4
    if-eqz v3, :cond_8

    .line 1599
    invoke-virtual {v3}, Lcom/sleepycat/b/c/c;->c()V

    .line 39580
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1602
    :cond_8
    if-eqz v4, :cond_9

    .line 1603
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 39655
    :cond_9
    if-eqz v0, :cond_0

    .line 39656
    if-eqz p4, :cond_c

    .line 40351
    iput-object p4, v0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    goto :goto_0

    .line 1598
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_5
    if-eqz v3, :cond_a

    .line 1599
    invoke-virtual {v3}, Lcom/sleepycat/b/c/c;->c()V

    .line 39580
    invoke-virtual {v3, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1602
    :cond_a
    if-eqz v4, :cond_b

    .line 1603
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1598
    :cond_b
    throw v0

    .line 39670
    :cond_c
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40370
    iget-object v1, v0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    if-eqz v1, :cond_d

    move v1, v5

    .line 39670
    :goto_6
    if-nez v1, :cond_0

    .line 40763
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    .line 41485
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 40763
    invoke-virtual {v1}, Lcom/sleepycat/b/l/ah;->e()J

    move-result-wide v2

    const-wide/16 v8, 0x64

    cmp-long v1, v2, v8

    if-gtz v1, :cond_e

    move v1, v5

    .line 39670
    :goto_7
    if-eqz v1, :cond_0

    .line 41496
    iget-object v1, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 39673
    invoke-virtual {p0, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/h;)Ljava/lang/String;

    move-result-object v1

    .line 42351
    iput-object v1, v0, Lcom/sleepycat/b/c/i;->t:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    move v1, v6

    .line 40370
    goto :goto_6

    :cond_e
    move v1, v6

    .line 40763
    goto :goto_7

    .line 1598
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v3, v2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_3

    :cond_f
    move-object v0, v1

    goto :goto_4
.end method

.method public final a(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/h;",
            "J",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;)",
            "Lcom/sleepycat/b/c/i;"
        }
    .end annotation

    .prologue
    .line 1529
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 1534
    :goto_0
    return-object v0

    .line 1532
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 1533
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    .locals 1

    .prologue
    .line 1183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1128
    .line 1130
    const-string v0, "remove"

    new-instance v1, Lcom/sleepycat/b/c/p$3;

    invoke-direct {v1, p0, p4}, Lcom/sleepycat/b/c/p$3;-><init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;

    move-result-object v0

    .line 1140
    iget-object v3, v0, Lcom/sleepycat/b/c/r;->d:Lcom/sleepycat/b/g/av;

    .line 1142
    :try_start_0
    iget-object v1, v0, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1143
    if-eqz p3, :cond_1

    :try_start_1
    iget-object v4, v0, Lcom/sleepycat/b/c/r;->c:Lcom/sleepycat/b/l/ab;

    .line 25062
    iget-object v4, v4, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 1143
    invoke-virtual {p3, v4}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1144
    new-instance v0, Lcom/sleepycat/b/p;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID mismatch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sleepycat/b/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_0

    .line 25580
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1167
    :cond_0
    throw v0

    .line 1154
    :cond_1
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 1164
    iget-object v3, v0, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/c/i;Z)V

    .line 1165
    iget-object v0, v0, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1167
    if-eqz v1, :cond_2

    .line 25580
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1165
    :cond_2
    return-object v0

    .line 1167
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 475
    .line 6308
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sleepycat/b/l;->b(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    .line 476
    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/n/d;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcom/sleepycat/b/c/i;->n()V

    .line 485
    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;Lcom/sleepycat/b/n/d;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/c/i;
    .locals 16

    .prologue
    .line 526
    const-wide/16 v4, 0x0

    .line 527
    const-wide/16 v2, 0x0

    .line 528
    if-eqz p5, :cond_5

    .line 7062
    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    move-wide v8, v2

    move-wide v10, v4

    move-object v5, v6

    .line 552
    :goto_0
    const/4 v14, 0x0

    .line 553
    const/4 v13, 0x0

    .line 554
    const/4 v15, 0x0

    .line 555
    const/4 v12, 0x0

    .line 557
    :try_start_0
    new-instance v2, Lcom/sleepycat/b/c/i;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/b/c/i;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/l;)V

    .line 562
    if-nez p6, :cond_0

    .line 563
    sget-object v3, Lcom/sleepycat/b/g/a/f;->b:Lcom/sleepycat/b/g/a/f;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/i;->a(Lcom/sleepycat/b/g/a/f;)Lcom/sleepycat/b/g/g;

    move-result-object p6

    .line 565
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g/av;)V

    .line 568
    new-instance v4, Lcom/sleepycat/b/c/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, p1

    invoke-direct {v4, v3, v0}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 570
    if-eqz p5, :cond_7

    .line 576
    :goto_1
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v4, v3, v0, v1}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 582
    if-eqz p4, :cond_1

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/n/d;)V

    .line 587
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v3}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 588
    :try_start_2
    new-instance v6, Lcom/sleepycat/b/c/c;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-direct {v6, v7, v3}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 9064
    :try_start_3
    invoke-virtual {v5}, Lcom/sleepycat/b/c/h;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 589
    new-instance v7, Lcom/sleepycat/b/l/aa;

    invoke-direct {v7, v2}, Lcom/sleepycat/b/l/aa;-><init>(Lcom/sleepycat/b/c/i;)V

    sget-object v12, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v6, v5, v7, v12}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;

    .line 594
    invoke-virtual {v2}, Lcom/sleepycat/b/c/i;->u()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 595
    const/4 v5, 0x1

    .line 597
    if-eqz v6, :cond_2

    .line 9580
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 601
    :cond_2
    if-eqz v4, :cond_3

    .line 10580
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 605
    :cond_3
    if-eqz v3, :cond_4

    .line 606
    invoke-virtual {v3, v5}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 632
    :cond_4
    return-object v2

    .line 541
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v6}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7290
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/sleepycat/b/l;->j:Z

    .line 541
    if-eqz v6, :cond_6

    .line 543
    new-instance v6, Lcom/sleepycat/b/c/h;

    .line 7390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    move-result-wide v2

    .line 543
    invoke-direct {v6, v2, v3}, Lcom/sleepycat/b/c/h;-><init>(J)V

    .line 8055
    iget-wide v2, v6, Lcom/sleepycat/b/c/h;->a:J

    move-wide v8, v2

    move-wide v10, v4

    move-object v5, v6

    .line 544
    goto/16 :goto_0

    .line 546
    :cond_6
    new-instance v6, Lcom/sleepycat/b/c/h;

    .line 8386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 546
    invoke-direct {v6, v4, v5}, Lcom/sleepycat/b/c/h;-><init>(J)V

    .line 9055
    iget-wide v4, v6, Lcom/sleepycat/b/c/h;->a:J

    move-wide v8, v2

    move-wide v10, v4

    move-object v5, v6

    .line 547
    goto/16 :goto_0

    .line 573
    :cond_7
    :try_start_4
    new-instance p5, Lcom/sleepycat/b/l/ab;

    move-object/from16 v0, p5

    invoke-direct {v0, v5}, Lcom/sleepycat/b/l/ab;-><init>(Lcom/sleepycat/b/c/h;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 597
    :catchall_0
    move-exception v2

    move-object v3, v12

    move-object v5, v14

    :goto_2
    if-eqz v5, :cond_8

    .line 9580
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 601
    :cond_8
    if-eqz v4, :cond_9

    .line 10580
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 605
    :cond_9
    if-eqz v3, :cond_a

    .line 606
    invoke-virtual {v3, v15}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 621
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v3, v8, v4

    if-eqz v3, :cond_b

    .line 622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    invoke-virtual {v3, v8, v9, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 625
    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-eqz v3, :cond_c

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x1

    sub-long v4, v10, v4

    invoke-virtual {v3, v10, v11, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    .line 597
    :cond_c
    throw v2

    :catchall_1
    move-exception v2

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v5, v14

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v5, v6

    goto :goto_2
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1450
    sget-object v0, Lcom/sleepycat/b/c/w;->a:Lcom/sleepycat/b/c/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 1494
    :goto_0
    return-object v0

    .line 1452
    :cond_0
    sget-object v0, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    goto :goto_0

    .line 1462
    :cond_1
    :try_start_0
    new-instance v2, Lcom/sleepycat/b/c/c;

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-direct {v2, v0, p1}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1463
    :try_start_1
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-static {p2}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 1465
    sget-object v3, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    sget-object v4, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    invoke-virtual {v2, v0, v3, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 1470
    :goto_1
    if-eqz v0, :cond_8

    .line 1471
    sget-object v0, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ab;

    .line 1473
    sget-boolean v3, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1482
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    .line 1483
    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 35580
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1482
    :cond_2
    throw v0

    .line 1465
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 35062
    :cond_4
    :try_start_2
    iget-object v0, v0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 1477
    if-eqz p3, :cond_5

    .line 1478
    invoke-direct {p0, v2, p3}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/n/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1482
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 1483
    invoke-virtual {v2}, Lcom/sleepycat/b/c/c;->c()V

    .line 35580
    invoke-virtual {v2, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1491
    :cond_6
    if-nez v0, :cond_7

    move-object v0, v1

    .line 1492
    goto :goto_0

    .line 1494
    :cond_7
    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3, p2}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    goto :goto_0

    .line 1482
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;
    .locals 2

    .prologue
    .line 1105
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Lcom/sleepycat/b/c/s; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1107
    :catch_0
    move-exception v0

    .line 1109
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/v;
    .locals 2

    .prologue
    .line 1360
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l/ab;Lcom/sleepycat/b/g/g;)Lcom/sleepycat/b/c/v;
    :try_end_0
    .catch Lcom/sleepycat/b/c/s; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1362
    :catch_0
    move-exception v0

    .line 1364
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method final a(Lcom/sleepycat/b/c/h;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1381
    move v2, v6

    .line 1382
    :cond_0
    :goto_0
    if-nez v2, :cond_a

    .line 1387
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v0}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1388
    :try_start_1
    new-instance v3, Lcom/sleepycat/b/c/c;

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-direct {v3, v0, v5}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catch Lcom/sleepycat/b/an; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1389
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/m;

    .line 34064
    invoke-virtual {p1}, Lcom/sleepycat/b/c/h;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v7

    .line 1389
    invoke-direct {v0, v7}, Lcom/sleepycat/b/m;-><init>([B)V

    sget-object v7, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    sget-object v8, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v0, v7, v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    .line 1394
    :goto_1
    if-eqz v0, :cond_7

    .line 1401
    sget-object v0, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/aa;

    .line 1403
    sget-boolean v7, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v7, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catch Lcom/sleepycat/b/an; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v0

    move-object v0, v3

    move-object v3, v5

    .line 1417
    :goto_2
    if-eqz v0, :cond_1

    .line 1419
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 34580
    invoke-virtual {v0, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1422
    :cond_1
    if-eqz v3, :cond_0

    .line 1423
    invoke-virtual {v3, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 1389
    goto :goto_1

    .line 34143
    :cond_3
    :try_start_3
    iget-object v0, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 34348
    iget-object v7, v0, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    iget-object v0, v0, Lcom/sleepycat/b/c/i;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v7, v0, :cond_6

    move v0, v1

    .line 1405
    :goto_3
    if-nez v0, :cond_b

    .line 1406
    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    :try_end_3
    .catch Lcom/sleepycat/b/an; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v1

    .line 1417
    :goto_4
    if-eqz v3, :cond_4

    .line 1419
    invoke-virtual {v3}, Lcom/sleepycat/b/c/c;->c()V

    .line 34580
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1422
    :cond_4
    if-eqz v5, :cond_5

    .line 1423
    invoke-virtual {v5, v1}, Lcom/sleepycat/b/n/q;->a_(Z)V

    :cond_5
    move v2, v0

    .line 1425
    goto :goto_0

    :cond_6
    move v0, v6

    .line 34348
    goto :goto_3

    :cond_7
    move v0, v1

    .line 1411
    goto :goto_4

    .line 1417
    :catchall_0
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_5
    if-eqz v3, :cond_8

    .line 1419
    invoke-virtual {v3}, Lcom/sleepycat/b/c/c;->c()V

    .line 34580
    invoke-virtual {v3, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1422
    :cond_8
    if-eqz v5, :cond_9

    .line 1423
    invoke-virtual {v5, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 1417
    :cond_9
    throw v0

    .line 1427
    :cond_a
    return-void

    .line 1417
    :catchall_1
    move-exception v0

    move-object v3, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v4

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v0, v4

    move-object v3, v5

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_4
.end method

.method public final a(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/i;)V

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/i;JZ)V
    .locals 10

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    .line 14330
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 727
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 14496
    :cond_1
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 731
    sget-object v1, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15496
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 731
    sget-object v1, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    .line 16238
    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ad;->a(J)V

    goto :goto_0

    .line 735
    :cond_3
    new-instance v4, Lcom/sleepycat/b/m;

    .line 16496
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 17064
    invoke-virtual {v0}, Lcom/sleepycat/b/c/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 735
    invoke-direct {v4, v0}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 743
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 744
    const/4 v0, 0x0

    .line 745
    const/4 v3, 0x0

    .line 747
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v2}, Lcom/sleepycat/b/n/a;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    :try_end_0
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 748
    :try_start_1
    new-instance v1, Lcom/sleepycat/b/c/c;

    iget-object v5, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-direct {v1, v5, v2}, Lcom/sleepycat/b/c/c;-><init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    :try_end_1
    .catch Lcom/sleepycat/b/an; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 749
    :try_start_2
    sget-object v0, Lcom/sleepycat/b/c/e;->a:Lcom/sleepycat/b/c/e;

    sget-object v5, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v1, v4, v0, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 753
    :goto_2
    if-nez v0, :cond_7

    .line 754
    if-eqz p4, :cond_d

    .line 755
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v5, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    sget-object v6, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find database ID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17496
    iget-object v8, p1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 755
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/sleepycat/b/an; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    .line 781
    :goto_3
    if-eqz v0, :cond_5

    .line 782
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 20580
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 785
    :cond_5
    if-eqz v1, :cond_4

    .line 786
    invoke-virtual {v1, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto :goto_1

    .line 749
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 764
    :cond_7
    const-wide/16 v6, -0x1

    cmp-long v0, p2, v6

    if-eqz v0, :cond_8

    .line 18382
    :try_start_3
    iget-object v0, v1, Lcom/sleepycat/b/c/c;->a:Lcom/sleepycat/b/l/a;

    .line 19374
    iget v5, v1, Lcom/sleepycat/b/c/c;->b:I

    .line 764
    invoke-virtual {v0, v5}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v6

    invoke-static {v6, v7, p2, p3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_f

    .line 768
    :cond_8
    sget-object v0, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/c;->b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/aa;

    .line 770
    sget-boolean v5, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v5, :cond_b

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catch Lcom/sleepycat/b/an; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 781
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_9

    .line 782
    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->c()V

    .line 20580
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 785
    :cond_9
    if-eqz v2, :cond_a

    .line 786
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 781
    :cond_a
    throw v0

    .line 772
    :cond_b
    :try_start_4
    new-instance v5, Lcom/sleepycat/b/c/t;

    invoke-direct {v5, v1}, Lcom/sleepycat/b/c/t;-><init>(Lcom/sleepycat/b/c/c;)V

    .line 20143
    iget-object v0, v0, Lcom/sleepycat/b/l/aa;->a:Lcom/sleepycat/b/c/i;

    .line 20485
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->b:Lcom/sleepycat/b/l/ah;

    .line 773
    invoke-virtual {v0, v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;
    :try_end_4
    .catch Lcom/sleepycat/b/an; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 775
    const/4 v0, 0x1

    .line 781
    :goto_5
    if-eqz v1, :cond_c

    .line 782
    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->c()V

    .line 20580
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 785
    :cond_c
    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto/16 :goto_0

    .line 781
    :cond_d
    if-eqz v1, :cond_e

    .line 782
    invoke-virtual {v1}, Lcom/sleepycat/b/c/c;->c()V

    .line 20580
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 785
    :cond_e
    if-eqz v2, :cond_0

    .line 786
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/n/q;->a_(Z)V

    goto/16 :goto_0

    .line 781
    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_3

    :catch_2
    move-exception v1

    move-object v1, v2

    goto/16 :goto_3

    :cond_f
    move v0, v3

    goto :goto_5
.end method

.method public final a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/g/g;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 987
    sget-boolean v0, Lcom/sleepycat/b/c/p;->i:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 992
    :cond_0
    :try_start_0
    const-string v0, "updateConfig"

    new-instance v1, Lcom/sleepycat/b/c/p$1;

    invoke-direct {v1, p0, p3}, Lcom/sleepycat/b/c/p$1;-><init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;
    :try_end_0
    .catch Lcom/sleepycat/b/c/s; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1006
    iget-object v0, v1, Lcom/sleepycat/b/c/r;->a:Lcom/sleepycat/b/c/c;

    .line 1007
    iget-object v7, v1, Lcom/sleepycat/b/c/r;->b:Lcom/sleepycat/b/c/i;

    .line 1008
    iget-object v6, v1, Lcom/sleepycat/b/c/r;->d:Lcom/sleepycat/b/g/av;

    .line 1012
    :try_start_1
    new-instance v2, Lcom/sleepycat/b/m;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v2, v1}, Lcom/sleepycat/b/m;-><init>([B)V

    .line 1013
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/b/c/c;->a([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    invoke-virtual {p0, v7}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1021
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 22580
    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1023
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1003
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->h:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1020
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v7}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 1021
    invoke-virtual {v0}, Lcom/sleepycat/b/c/c;->c()V

    .line 22580
    invoke-virtual {v0, v8}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/c;)V

    .line 1020
    throw v1
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 2080
    const-string v0, "<dbtree lastLocalDbId = \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2082
    const-string v0, "\" lastReplicatedDbId = \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2084
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    const-string v0, "<idDb>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/StringBuilder;Z)V

    .line 2087
    const-string v0, "</idDb><nameDb>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/StringBuilder;Z)V

    .line 2089
    const-string v0, "</nameDb>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    const-string v0, "</dbtree>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 2044
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 2046
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/i;->a(Ljava/nio/ByteBuffer;)V

    .line 2047
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/i;->a(Ljava/nio/ByteBuffer;)V

    .line 2048
    iget-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2049
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 2056
    const/16 v0, 0x8

    if-lt p2, v0, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2058
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2066
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/nio/ByteBuffer;I)V

    .line 2067
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/i;->a(Ljava/nio/ByteBuffer;I)V

    .line 2069
    if-lt p2, v4, :cond_2

    .line 2070
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    .line 2074
    :goto_1
    return-void

    .line 2060
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2061
    if-lt p2, v4, :cond_0

    .line 2062
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 2072
    :cond_2
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    goto :goto_1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1637
    if-eqz p1, :cond_0

    .line 1638
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/i;

    .line 1639
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 1642
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 2105
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 2097
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    .locals 3

    .prologue
    .line 1505
    .line 36517
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 1505
    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/c/i;)V
    .locals 3

    .prologue
    .line 698
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/i;JZ)V

    .line 699
    return-void
.end method

.method public final c(Lcom/sleepycat/b/c/h;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1776
    sget-object v0, Lcom/sleepycat/b/c/p;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    sget-object v0, Lcom/sleepycat/b/c/w;->a:Lcom/sleepycat/b/c/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v0

    .line 1801
    :goto_0
    return-object v0

    .line 1778
    :cond_0
    sget-object v0, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1779
    sget-object v0, Lcom/sleepycat/b/c/w;->b:Lcom/sleepycat/b/c/w;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1798
    :cond_1
    new-instance v0, Lcom/sleepycat/b/c/p$a;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/c/p$a;-><init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/c/h;)V

    .line 1799
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    sget-object v2, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/g;)V

    .line 1801
    iget-object v0, v0, Lcom/sleepycat/b/c/p$a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1810
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1826
    new-instance v1, Lcom/sleepycat/b/c/p$b;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/c/p$b;-><init>(Lcom/sleepycat/b/c/p;Ljava/util/Map;)V

    .line 1827
    iget-object v2, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/g;)V

    .line 1829
    return-object v0
.end method

.method public final c(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 1625
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    if-eq p1, v0, :cond_1

    .line 43306
    sget-boolean v0, Lcom/sleepycat/b/c/i;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43307
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/c/i;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1630
    :cond_1
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1929
    iget-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 1933
    iget-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    .line 1934
    return-void
.end method

.method final f()V
    .locals 1

    .prologue
    .line 1957
    iget-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/p;->g:B

    .line 1958
    return-void
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    .line 44262
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->a()V

    .line 1974
    iget-object v0, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    .line 45262
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->l:Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Lcom/sleepycat/b/a/g;->a()V

    .line 1975
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xa

    .line 2129
    .line 46113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47025
    const-string v1, "                                                                                                                                "

    invoke-virtual {v1, v3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 46114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46115
    const-string v1, "<dbTree lastDbId =\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46116
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46117
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46119
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->e:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46121
    iget-object v1, p0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/c/i;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46123
    const-string v1, "</dbtree>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2129
    return-object v0
.end method
