.class public Lcom/sleepycat/b/i/c/aj;
.super Lcom/sleepycat/b/c/ad;
.source "RepImpl.java"


# static fields
.field private static aA:I

.field static final synthetic az:Z


# instance fields
.field private aB:Lcom/sleepycat/b/c/i;

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:I

.field private final aH:Ljava/util/concurrent/locks/ReentrantLock;

.field private aI:I

.field private final aJ:Lcom/sleepycat/b/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/ba",
            "<",
            "Lcom/sleepycat/b/i/ad;",
            ">;"
        }
    .end annotation
.end field

.field public aj:Lcom/sleepycat/b/i/i/f;

.field public final ak:Lcom/sleepycat/b/i/c/al;

.field public final al:Lcom/sleepycat/b/i/e/i;

.field public volatile am:Lcom/sleepycat/b/i/c/b/aa;

.field public an:Lcom/sleepycat/b/i/c/b/ac;

.field public ao:Lcom/sleepycat/b/i/c/b/x;

.field public final ap:Lcom/sleepycat/b/i/c/b/z;

.field public final aq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/o/b;",
            ">;"
        }
    .end annotation
.end field

.field public ar:I

.field public as:I

.field public at:Lcom/sleepycat/b/bc;

.field public final au:Lcom/sleepycat/b/p/e;

.field public final av:Lcom/sleepycat/b/p/an;

.field public volatile aw:Ljava/util/concurrent/CountDownLatch;

.field public final ax:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final ay:Lcom/sleepycat/b/i/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const-class v0, Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/aj;->az:Z

    .line 151
    sput v1, Lcom/sleepycat/b/i/c/aj;->aA:I

    return-void

    :cond_0
    move v0, v1

    .line 121
    goto :goto_0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    return-object v0
.end method

.method public static aa()I
    .locals 1

    .prologue
    .line 1222
    sget v0, Lcom/sleepycat/b/i/c/aj;->aA:I

    return v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/aj;)Lcom/sleepycat/b/i/i/f;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    return-object v0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sleepycat/b/c/ad;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C()J
    .locals 2

    .prologue
    .line 1249
    iget v0, p0, Lcom/sleepycat/b/i/c/aj;->aI:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final I()Z
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x1

    return v0
.end method

.method public final J()Z
    .locals 1

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aE:Z

    return v0
.end method

.method public final K()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aE:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final L()I
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/sleepycat/b/i/c/aj;->aG:I

    return v0
.end method

.method public final M()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aD:Z

    return v0
.end method

.method public final O()Lcom/sleepycat/b/p/au;
    .locals 4

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 21472
    new-instance v1, Lcom/sleepycat/b/p/au;

    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    .line 727
    return-object v1
.end method

.method public final P()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 21487
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 737
    return-void
.end method

.method public final Q()Lcom/sleepycat/b/h/u;
    .locals 4

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->A:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    .line 1204
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v2, Lcom/sleepycat/b/i/c/an;->B:Lcom/sleepycat/b/b/e;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v1

    .line 1205
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v3, Lcom/sleepycat/b/i/c/an;->C:Lcom/sleepycat/b/b/e;

    invoke-virtual {v2, v3}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v2

    .line 1207
    new-instance v3, Lcom/sleepycat/b/i/i/o;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sleepycat/b/i/i/o;-><init>(Lcom/sleepycat/b/c/ad;III)V

    return-object v3
.end method

.method public final R()Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 770
    if-nez v0, :cond_0

    .line 771
    const/4 v0, 0x0

    .line 773
    :goto_0
    return v0

    .line 21601
    :cond_0
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public final S()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    sget-object v1, Lcom/sleepycat/b/u;->b:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/u;)V

    .line 758
    :cond_0
    return-void
.end method

.method public final T()Lcom/sleepycat/b/n/y;
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sleepycat/b/i/f/a;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/f/a;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/f/f;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/f/f;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    goto :goto_0
.end method

.method public final U()V
    .locals 7

    .prologue
    .line 1757
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 37979
    iget-object v0, v2, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_1

    .line 37983
    const/4 v1, 0x0

    .line 37992
    :goto_0
    if-nez v1, :cond_2

    .line 37993
    new-instance v0, Lcom/sleepycat/b/p/au;

    .line 38477
    iget-object v1, v2, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 37993
    invoke-direct {v0, v4, v5}, Lcom/sleepycat/b/p/au;-><init>(J)V

    .line 38012
    :goto_1
    iget-object v1, v2, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 40114
    iget-object v1, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 38012
    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    .line 38013
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 38021
    iget-object v3, v2, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38022
    iget-object v3, v2, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v4, v2, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "awaitConsistency target="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allocatedBeforeCkpt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 38029
    :cond_0
    :try_start_0
    sget v3, Lcom/sleepycat/b/i/i/f;->a:I

    invoke-virtual {v2, v1, v3}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/g/al;

    .line 38030
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I
    :try_end_0
    .catch Lcom/sleepycat/b/i/i/k; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-ltz v1, :cond_3

    .line 38032
    :cond_1
    return-void

    .line 37995
    :cond_2
    new-instance v0, Lcom/sleepycat/b/p/au;

    .line 39477
    iget-object v3, v2, Lcom/sleepycat/b/i/i/f;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 37995
    invoke-direct {v0, v4, v5}, Lcom/sleepycat/b/p/au;-><init>(J)V

    .line 37996
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-gez v3, :cond_4

    .line 37997
    iget-object v3, v2, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v4, v2, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Reducing awaitConsistency VLSN from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_1

    .line 38040
    :catch_0
    move-exception v3

    iget-object v3, v2, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v4, v2, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Retrying for vlsn index consistency  before checkpoint, awaiting vlsn "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with ckpt consistency target of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 38061
    :cond_3
    :goto_2
    iget-object v1, v2, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/ad;->n()V

    move-object v1, v0

    goto/16 :goto_0

    .line 38047
    :catch_1
    move-exception v3

    iget-object v3, v2, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v4, v2, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Interrupted while awaiting vlsn index consistency before checkpoint, awaiting vlsn "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with ckpt consistency target of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", will retry"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final Y()Lcom/sleepycat/b/i/w;
    .locals 6

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    check-cast v0, Lcom/sleepycat/b/i/c/o;

    .line 3077
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 3080
    iget-object v1, v0, Lcom/sleepycat/b/i/c/o;->a:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 3081
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3082
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3084
    sget-object v2, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/b/b;

    .line 3087
    if-nez v2, :cond_1

    .line 3089
    invoke-static {v1}, Lcom/sleepycat/b/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3090
    sget-object v5, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/b/b;

    .line 3091
    if-nez v2, :cond_1

    .line 3092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid BDBJE environment configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 4102
    :cond_1
    iget-boolean v2, v2, Lcom/sleepycat/b/b/b;->d:Z

    .line 3098
    if-eqz v2, :cond_0

    .line 3099
    iget-object v2, v0, Lcom/sleepycat/b/i/c/o;->a:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 3103
    :cond_2
    iget-boolean v0, v0, Lcom/sleepycat/b/i/c/o;->d:Z

    .line 5039
    new-instance v1, Lcom/sleepycat/b/i/w;

    invoke-direct {v1, v3, v0}, Lcom/sleepycat/b/i/w;-><init>(Ljava/util/Properties;Z)V

    .line 356
    return-object v1
.end method

.method public final Z()V
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    const-string v1, "Releasing commit block latch"

    invoke-static {v0, p0, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 995
    return-void
.end method

.method public final synthetic a(Lcom/sleepycat/b/n/q;Ljava/lang/Throwable;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 42654
    new-instance v0, Lcom/sleepycat/b/i/h;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/b/i/h;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/Throwable;)V

    .line 121
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 40669
    new-instance v0, Lcom/sleepycat/b/i/j;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/j;-><init>(Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 41663
    new-instance v0, Lcom/sleepycat/b/i/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/sleepycat/b/i/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i;)V

    .line 121
    return-object v0
.end method

.method final a(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1560
    if-eqz p2, :cond_0

    .line 1561
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1594
    :goto_0
    return-object v0

    .line 1566
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    if-eqz v1, :cond_3

    .line 1575
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1596
    if-eqz v0, :cond_2

    .line 1597
    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->n()V

    .line 1599
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    .line 1575
    goto :goto_0

    .line 1569
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1579
    :cond_3
    :try_start_2
    new-instance v2, Lcom/sleepycat/b/br;

    invoke-direct {v2}, Lcom/sleepycat/b/br;-><init>()V

    .line 33296
    iput-object p1, v2, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 1581
    new-instance v1, Lcom/sleepycat/b/i/f/d;

    invoke-direct {v1, p0, v2}, Lcom/sleepycat/b/i/f/d;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33379
    :try_start_3
    iget-object v2, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1583
    sget-object v3, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;

    move-result-object v2

    .line 1586
    if-nez v2, :cond_5

    .line 1587
    new-instance v0, Lcom/sleepycat/b/p;

    sget-object v2, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sleepycat/b/p;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1596
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_4

    .line 1597
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 1599
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1596
    throw v0

    .line 1590
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1593
    :try_start_5
    iput-object v2, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    .line 1594
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1596
    if-eqz v0, :cond_6

    .line 1597
    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->n()V

    .line 1599
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v0, v1

    .line 1594
    goto :goto_0

    .line 1596
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method protected final a(Lcom/sleepycat/b/z;)Lcom/sleepycat/b/c/m;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/sleepycat/b/i/c/o;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/i/c/o;-><init>(Lcom/sleepycat/b/z;)V

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/i/p;)Lcom/sleepycat/b/i/u;
    .locals 3

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->E:Lcom/sleepycat/b/c/bd;

    sget-object v1, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/bd;->a(Lcom/sleepycat/b/c/bg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 502
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Lcom/sleepycat/b/i/c/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/b/i/c/b/aa;-><init>(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/i/c/b/ac;Lcom/sleepycat/b/i/c/b/z;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/b/i/c/b/aa;->a(Lcom/sleepycat/b/bc;Lcom/sleepycat/b/i/p;)Lcom/sleepycat/b/i/u;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 511
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->E:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 506
    monitor-exit p0

    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem attempting to join on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->ad()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->E:Lcom/sleepycat/b/c/bd;

    sget-object v2, Lcom/sleepycat/b/c/bg;->q:Lcom/sleepycat/b/c/bg;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/bd;->b(Lcom/sleepycat/b/c/bg;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 500
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    invoke-static {p0, p1, v0}, Lcom/sleepycat/b/i/f/b;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)Lcom/sleepycat/b/i/f/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/i/f/d;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/i/f/d;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V

    goto :goto_0
.end method

.method protected final a()Lcom/sleepycat/b/x;
    .locals 4

    .prologue
    .line 517
    new-instance v0, Lcom/sleepycat/b/i/c/ak;

    .line 7629
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->c:Ljava/io/File;

    .line 517
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->Y()Lcom/sleepycat/b/i/w;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->z()Lcom/sleepycat/b/z;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sleepycat/b/i/c/ak;-><init>(Ljava/io/File;Lcom/sleepycat/b/i/w;Lcom/sleepycat/b/z;Lcom/sleepycat/b/i/c/aj;)V

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Ljava/util/Collection;
    .locals 1
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
    .line 821
    .line 21845
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->z:Lcom/sleepycat/b/j/d;

    check-cast v0, Lcom/sleepycat/b/i/q;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/i/q;->a(Lcom/sleepycat/b/bn;Ljava/lang/Integer;)Lcom/sleepycat/b/i/v;

    move-result-object v0

    .line 822
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i/v;->a()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 13
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
    const/4 v0, 0x0

    .line 1506
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    if-nez v1, :cond_1

    .line 30048
    :cond_0
    :goto_0
    return-object v0

    .line 1509
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    invoke-super {p0, p1}, Lcom/sleepycat/b/c/ad;->a(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v3

    .line 30047
    invoke-interface {v3}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v3

    .line 30048
    goto :goto_0

    .line 30058
    :cond_2
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/o;->c()J

    move-result-wide v6

    .line 30059
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    .line 30062
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 30807
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 31775
    iget-object v1, v1, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 32114
    iget-object v5, v1, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 30063
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 32807
    iget-object v1, v1, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 32808
    invoke-virtual {v1, v5, v0}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/i/c;)Lcom/sleepycat/b/i/i/c;

    move-result-object v0

    .line 32809
    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/c;->c()J

    move-result-wide v8

    .line 30064
    const-wide/16 v0, 0x1

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 30066
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 30067
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30068
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v10, v4, Lcom/sleepycat/b/i/c/b/aa;->D:Lcom/sleepycat/b/c/ad;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CBVLSN file is 0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but these files have no VLSNs and can be deleted :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v10, v11}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 30082
    :cond_3
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v10}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30083
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 30084
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Known unused files before CBVLSN start: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 30087
    :cond_4
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Candidates for deletion: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/aa;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 30091
    :cond_5
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 30093
    invoke-interface {v2}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30105
    :goto_1
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30106
    iget-object v1, v4, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v2, v4, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Replication prevents deletion of "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " files by Cleaner. Start file=0x"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " holds CBVLSN "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 33073
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 30106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end file=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " holds end VLSN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v10, v3}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30101
    :cond_6
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    .line 30102
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/sleepycat/b/aa;)V
    .locals 0

    .prologue
    .line 1782
    invoke-super {p0, p1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/aa;)V

    .line 1783
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->Z()V

    .line 1784
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/al;)V
    .locals 10

    .prologue
    .line 703
    .line 14074
    iget-object v0, p1, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 14295
    iget-object v1, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 15279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 715
    invoke-static {v0}, Lcom/sleepycat/b/g/af;->d(B)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/p/au;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 16082
    iget-wide v2, p1, Lcom/sleepycat/b/g/al;->d:J

    .line 16928
    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    .line 17122
    iget-boolean v0, v4, Lcom/sleepycat/b/i/c/b/q;->d:Z

    if-eqz v0, :cond_3

    .line 17130
    iget-object v0, v4, Lcom/sleepycat/b/i/c/b/q;->e:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/aj;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v4, Lcom/sleepycat/b/i/c/b/q;->f:I

    if-gtz v0, :cond_3

    .line 17134
    :cond_1
    monitor-enter v4

    .line 17135
    :try_start_0
    iget-object v0, v4, Lcom/sleepycat/b/i/c/b/q;->a:Lcom/sleepycat/b/p/au;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-lez v0, :cond_2

    .line 17136
    iget-object v0, v4, Lcom/sleepycat/b/i/c/b/q;->a:Lcom/sleepycat/b/p/au;

    .line 17137
    iput-object v1, v4, Lcom/sleepycat/b/i/c/b/q;->a:Lcom/sleepycat/b/p/au;

    .line 17138
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    iget-wide v8, v4, Lcom/sleepycat/b/i/c/b/q;->c:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    .line 17139
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    iput-wide v2, v4, Lcom/sleepycat/b/i/c/b/q;->c:J

    .line 17140
    iput-object v0, v4, Lcom/sleepycat/b/i/c/b/q;->b:Lcom/sleepycat/b/p/au;

    .line 17143
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 719
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 18074
    iget-object v0, p1, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 18295
    iget-object v0, v0, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 19082
    iget-wide v2, p1, Lcom/sleepycat/b/g/al;->d:J

    .line 20074
    iget-object v4, p1, Lcom/sleepycat/b/g/al;->g:Lcom/sleepycat/b/g/ae;

    .line 20279
    iget-byte v4, v4, Lcom/sleepycat/b/g/ae;->b:B

    .line 17501
    iget-object v5, v1, Lcom/sleepycat/b/i/i/f;->i:Lcom/sleepycat/b/i/i/b;

    .line 21064
    invoke-virtual {v5}, Lcom/sleepycat/b/i/i/b;->b()[Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    .line 21101
    iget-wide v8, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 21064
    long-to-int v7, v8

    iget v5, v5, Lcom/sleepycat/b/i/i/b;->a:I

    and-int/2addr v5, v7

    aget-object v5, v6, v5

    invoke-virtual {v5, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17503
    monitor-enter v1

    .line 17504
    :try_start_1
    iget-object v5, v1, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v5, v0, v2, v3, v4}, Lcom/sleepycat/b/i/i/p;->a(Lcom/sleepycat/b/p/au;JB)V

    .line 17506
    iget-object v2, v1, Lcom/sleepycat/b/i/i/f;->e:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17514
    :try_start_2
    iget-object v3, v1, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 17516
    iget-object v3, v1, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    .line 21351
    iput-object p1, v3, Lcom/sleepycat/b/i/i/i;->a:Lcom/sleepycat/b/g/al;

    .line 17517
    iget-object v3, v1, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/i/i;->countDown()V

    .line 17518
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/sleepycat/b/i/i/f;->c:Lcom/sleepycat/b/i/i/i;

    .line 17519
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/sleepycat/b/i/i/f;->d:Lcom/sleepycat/b/p/au;

    .line 17521
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17522
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17524
    iget-object v2, v1, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17525
    iget-object v2, v1, Lcom/sleepycat/b/i/i/f;->f:Ljava/util/logging/Logger;

    iget-object v1, v1, Lcom/sleepycat/b/i/i/f;->b:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vlsnIndex put "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/sleepycat/b/p/w;->e(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 720
    :cond_5
    return-void

    .line 17143
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 17521
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 17522
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/h/l;)V
    .locals 7

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->A:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v3

    .line 457
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->B:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v4

    .line 458
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->C:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v5

    .line 464
    new-instance v0, Lcom/sleepycat/b/i/c/b/x;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v2, Lcom/sleepycat/b/i/c/an;->p:Lcom/sleepycat/b/b/b;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;)V

    .line 467
    new-instance v0, Lcom/sleepycat/b/i/i/f;

    sget-object v1, Lcom/sleepycat/b/c/w;->e:Lcom/sleepycat/b/c/w;

    invoke-virtual {v1}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/i/f;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/String;IIILcom/sleepycat/b/h/l;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 470
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    .line 5335
    iget-object v0, p1, Lcom/sleepycat/b/h/l;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/z;

    .line 5344
    check-cast v0, Lcom/sleepycat/b/i/f/e;

    iget-object v3, v1, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/i/f/e;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 5346
    :cond_0
    iget-object v0, v1, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    .line 5807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 6775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 7114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 5346
    iput-object v0, v1, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    .line 471
    return-void
.end method

.method public final a(Lcom/sleepycat/b/i/f/b;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1080
    .line 22301
    :try_start_0
    iget-boolean v1, p1, Lcom/sleepycat/b/i/f/b;->f:Z

    if-eqz v1, :cond_2

    .line 22302
    const/4 v0, 0x0

    .line 1080
    :goto_0
    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->ax:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lockInterruptibly()V

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Block transaction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23169
    iget-wide v2, p1, Lcom/sleepycat/b/n/q;->k:J

    .line 1085
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending master transfer. Write locks = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sleepycat/b/i/f/b;->A()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aw:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 1091
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->n()V

    .line 1099
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/n/q;)V

    .line 1103
    return-void

    .line 22304
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/sleepycat/b/i/f/b;->f:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    new-instance v1, Lcom/sleepycat/b/bo;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/bo;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/sleepycat/b/n/q;)V
    .locals 3

    .prologue
    .line 862
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/z;->b()Lcom/sleepycat/b/i/ab;

    move-result-object v0

    .line 864
    sget-object v1, Lcom/sleepycat/b/i/c/aj$1;->a:[I

    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/b/i/u;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 869
    :pswitch_0
    new-instance v1, Lcom/sleepycat/b/i/s;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/i/s;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v1

    .line 872
    :pswitch_1
    new-instance v1, Lcom/sleepycat/b/i/af;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/i/af;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v1

    .line 875
    :pswitch_2
    new-instance v1, Lcom/sleepycat/b/i/af;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/b/i/af;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    throw v1

    .line 866
    :pswitch_3
    return-void

    .line 864
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/sleepycat/b/p/au;J)V
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/i/i/f;->a(Lcom/sleepycat/b/p/au;J)V

    .line 1237
    return-void
.end method

.method protected final a(Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/aw;)V
    .locals 2

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/aw;)V

    .line 289
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->j:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/aj;->ar:I

    .line 291
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->k:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/aj;->as:I

    .line 293
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->f:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/aj;->aI:I

    .line 295
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->m:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/String;)Lcom/sleepycat/b/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->at:Lcom/sleepycat/b/bc;

    .line 297
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->ae:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aE:Z

    .line 299
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->af:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aF:Z

    .line 301
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->ag:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/aj;->aG:I

    .line 303
    return-void
.end method

.method protected final declared-synchronized a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    if-eqz v0, :cond_0

    .line 8379
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 537
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    .line 539
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    const-string v1, "Group member database shutdown"

    invoke-static {v0, p0, v1}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->l()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shutting down node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/i/c/aj;->a(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Z)V
    .locals 10

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    if-eqz v0, :cond_3

    .line 564
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    .line 9094
    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/f/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9096
    :try_start_1
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9097
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    iget-object v4, v2, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unregistering open replay txn: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9169
    iget-wide v6, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 9097
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 9270
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i/f/e;->x()V

    .line 9272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/i/f/e;->b(Z)V
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9102
    :catch_0
    move-exception v1

    .line 9103
    :try_start_2
    iget-object v4, v2, Lcom/sleepycat/b/i/c/b/ac;->C:Ljava/util/logging/Logger;

    iget-object v5, v2, Lcom/sleepycat/b/i/c/b/ac;->d:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Replay txn: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10169
    iget-wide v8, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 9103
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " unregistration failed: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sleepycat/b/n;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 9108
    :cond_1
    :try_start_3
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/ac;->D:Z

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 565
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->ak:Lcom/sleepycat/b/i/c/al;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/c/al;->a(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    monitor-exit p0

    return-void
.end method

.method public final a(Lcom/sleepycat/b/o/b;)Z
    .locals 2

    .prologue
    .line 1615
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    monitor-enter v1

    .line 1616
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aC:Z

    if-eqz v0, :cond_0

    .line 1617
    const/4 v0, 0x0

    monitor-exit v1

    .line 1623
    :goto_0
    return v0

    .line 1619
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/i/c/aj;->az:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1622
    invoke-super {p0, p1}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/o/b;)Z

    .line 1623
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ab()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->o:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 1391
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1392
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final ac()I
    .locals 2

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->o:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 1404
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1405
    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->n:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    goto :goto_0
.end method

.method public final ad()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 1412
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->ac()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final ae()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1423
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->x:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1433
    :goto_0
    return-object v0

    .line 1427
    :cond_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1430
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 26030
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26031
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host and port pair was missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26034
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 26037
    if-gez v4, :cond_2

    .line 26038
    sget-object v1, Lcom/sleepycat/b/i/c/an;->n:Lcom/sleepycat/b/b/e;

    .line 26094
    iget-object v1, v1, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 26038
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 26044
    :goto_2
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 1431
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26040
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 26041
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 1433
    goto :goto_0
.end method

.method public final af()Lcom/sleepycat/b/c/i;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1447
    sget-boolean v0, Lcom/sleepycat/b/i/c/aj;->az:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->R()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1450
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    if-eqz v0, :cond_1

    .line 1457
    const-string v0, "GroupDb should not exist."

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 1452
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 1464
    :cond_1
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    .line 1465
    new-instance v1, Lcom/sleepycat/b/u;

    sget-object v3, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v4, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v5, Lcom/sleepycat/b/v;->b:Lcom/sleepycat/b/v;

    invoke-direct {v1, v3, v4, v5}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 1468
    sget-object v1, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    .line 26296
    iput-object v1, v0, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 1469
    new-instance v1, Lcom/sleepycat/b/i/f/b;

    .line 27244
    iget-object v3, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 1469
    invoke-direct {v1, p0, v0, v3}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1474
    :try_start_3
    new-instance v0, Lcom/sleepycat/b/l;

    invoke-direct {v0}, Lcom/sleepycat/b/l;-><init>()V

    .line 28142
    const/4 v3, 0x1

    .line 28151
    iput-boolean v3, v0, Lcom/sleepycat/b/l;->b:Z

    .line 28349
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sleepycat/b/l;->d:Z

    .line 29193
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sleepycat/b/l;->c:Z

    .line 29268
    const/4 v3, 0x1

    .line 29277
    iput-boolean v3, v0, Lcom/sleepycat/b/l;->j:Z

    .line 29379
    iget-object v3, p0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1480
    sget-object v4, Lcom/sleepycat/b/c/w;->d:Lcom/sleepycat/b/c/w;

    invoke-virtual {v4}, Lcom/sleepycat/b/c/w;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 1482
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1483
    const/4 v1, 0x0

    .line 1485
    if-eqz v2, :cond_2

    .line 1486
    :try_start_4
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 1490
    :cond_2
    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1492
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1494
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aB:Lcom/sleepycat/b/c/i;

    return-object v0

    .line 1485
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 1486
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 1485
    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public final ag()Lcom/sleepycat/b/c/i;
    .locals 2

    .prologue
    .line 1540
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Lcom/sleepycat/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1543
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final ah()Z
    .locals 2

    .prologue
    .line 1610
    .line 33392
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 1610
    sget-object v1, Lcom/sleepycat/b/i/c/an;->s:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    return v0
.end method

.method public final ai()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34244
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 1709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1710
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 34479
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->ap:Lcom/sleepycat/b/i/c/b/z;

    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/z;->a()Lcom/sleepycat/b/i/u;

    move-result-object v2

    .line 1710
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    if-eqz v1, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 35189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/b/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nGlobalCBVLSN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 35933
    iget-object v3, v1, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    .line 36073
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/o;->a:Lcom/sleepycat/b/p/au;

    .line 35189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 36421
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 35189
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    if-eqz v1, :cond_1

    .line 1717
    const-string v1, "vlsnRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 36775
    iget-object v1, v1, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v1

    .line 1718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    if-eqz v1, :cond_2

    .line 1722
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->an:Lcom/sleepycat/b/i/c/b/ac;

    .line 37130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37131
    const-string v3, "lastReplayedTxn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/b/i/c/b/ac;->g:Lcom/sleepycat/b/i/c/b/ae;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37132
    const-string v3, " lastReplayedVLSN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/b/i/c/b/ac;->h:Lcom/sleepycat/b/p/au;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37133
    const-string v3, " numActiveReplayTxns="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/ac;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37134
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final aj()V
    .locals 3

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aJ:Lcom/sleepycat/b/ba;

    if-nez v0, :cond_1

    .line 1774
    :cond_0
    return-void

    .line 1769
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aJ:Lcom/sleepycat/b/ba;

    invoke-interface {v0}, Lcom/sleepycat/b/ba;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1770
    new-instance v0, Lcom/sleepycat/b/aa;

    sget-object v1, Lcom/sleepycat/b/c/ac;->s:Lcom/sleepycat/b/c/ac;

    const-string v2, "ReplicatedEnvironmentConfig.syncupProgressListener: "

    invoke-direct {v0, p0, v1, v2}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
.end method

.method public final b(J)Lcom/sleepycat/b/n/z;
    .locals 7

    .prologue
    .line 1192
    new-instance v1, Lcom/sleepycat/b/i/f/e;

    sget-object v3, Lcom/sleepycat/b/br;->a:Lcom/sleepycat/b/br;

    iget-object v6, p0, Lcom/sleepycat/b/i/c/aj;->v:Ljava/util/logging/Logger;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/i/f/e;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;JLjava/util/logging/Logger;)V

    return-object v1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, "com.sleepycat.je.rep.jmx.RepJEMonitor"

    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/o/b;)V
    .locals 2

    .prologue
    .line 1628
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    monitor-enter v1

    .line 1629
    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/i/c/aj;->az:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1630
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

    .line 1631
    invoke-super {p0, p1}, Lcom/sleepycat/b/c/ad;->b(Lcom/sleepycat/b/o/b;)V

    .line 1632
    return-void
.end method

.method public final b(ZZ)V
    .locals 3

    .prologue
    .line 1363
    if-nez p1, :cond_0

    .line 1369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This environment must be converted for replication. using com.sleepycat.je.rep.util.DbEnableReplication."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24319
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->aE:Z

    .line 1375
    if-eq p2, v0, :cond_1

    .line 1376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sleepycat/b/i/c/an;->ae:Lcom/sleepycat/b/b/a;

    .line 25090
    iget-object v2, v2, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter may not be changed. Previous value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " New value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25319
    iget-boolean v2, p0, Lcom/sleepycat/b/i/c/aj;->aE:Z

    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :cond_1
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, "com.sleepycat.je.rep.jmx.RepJEDiagnostics"

    return-object v0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->aq:Ljava/util/Set;

    monitor-enter v1

    .line 1646
    :try_start_0
    iput-boolean p1, p0, Lcom/sleepycat/b/i/c/aj;->aC:Z

    .line 1647
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 24023
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->p:Lcom/sleepycat/b/i/c/b/q;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/q;->a()V

    .line 1312
    return-void
.end method

.method public final e()Ljava/util/SortedSet;
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
    .line 827
    new-instance v0, Lcom/sleepycat/b/i/h/ah;

    invoke-direct {v0}, Lcom/sleepycat/b/i/h/ah;-><init>()V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/ah;->a()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/sleepycat/b/j/d;
    .locals 1

    .prologue
    .line 832
    new-instance v0, Lcom/sleepycat/b/i/q;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/q;-><init>(Lcom/sleepycat/b/i/c/aj;)V

    return-object v0
.end method

.method protected final h()Ljava/util/logging/Formatter;
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/sleepycat/b/i/c/b/x;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->u:Lcom/sleepycat/b/c/m;

    sget-object v2, Lcom/sleepycat/b/i/c/an;->p:Lcom/sleepycat/b/b/b;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/c/b/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 315
    new-instance v0, Lcom/sleepycat/b/i/h/w;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    return-object v0
.end method

.method public final o()V
    .locals 4

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/aj;->w()V

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 13605
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->t:Lcom/sleepycat/b/i/c/b/w;

    .line 14055
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/sleepycat/b/i/c/b/w;->a:J

    .line 676
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->l()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 684
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->ak:Lcom/sleepycat/b/i/c/al;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/al;->b()V
    :try_end_1
    .catch Lcom/sleepycat/b/n; {:try_start_1 .. :try_end_1} :catch_1

    .line 690
    :goto_1
    :try_start_2
    invoke-super {p0}, Lcom/sleepycat/b/c/ad;->o()V
    :try_end_2
    .catch Lcom/sleepycat/b/n; {:try_start_2 .. :try_end_2} :catch_0

    .line 694
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected final p()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 582
    invoke-super {p0}, Lcom/sleepycat/b/c/ad;->p()V

    .line 584
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/aj;->m:Z

    if-eqz v0, :cond_7

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    sget-object v1, Lcom/sleepycat/b/c/p;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 10677
    :try_start_1
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->o()Z

    move-result v0

    .line 589
    if-nez v0, :cond_0

    .line 590
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->p()V

    .line 11461
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sleepycat/b/c/i;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 594
    :cond_0
    if-eqz v1, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/p;->c()Ljava/util/Map;

    move-result-object v3

    .line 601
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/h;

    .line 604
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/p;->b(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 605
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sleepycat/b/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 608
    invoke-virtual {v1}, Lcom/sleepycat/b/c/i;->p()V

    .line 12461
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sleepycat/b/c/i;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 612
    :cond_3
    if-eqz v1, :cond_2

    .line 613
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 595
    iget-object v2, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 594
    :cond_4
    throw v0

    .line 612
    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_5

    .line 613
    iget-object v1, p0, Lcom/sleepycat/b/i/c/aj;->q:Lcom/sleepycat/b/c/p;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 612
    :cond_5
    throw v0

    .line 622
    :cond_6
    new-instance v0, Lcom/sleepycat/b/c;

    invoke-direct {v0}, Lcom/sleepycat/b/c;-><init>()V

    .line 13123
    iput-boolean v5, v0, Lcom/sleepycat/b/c;->b:Z

    .line 13157
    iput-boolean v5, v0, Lcom/sleepycat/b/c;->e:Z

    .line 625
    const-string v1, "Environment conversion"

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/c;Ljava/lang/String;)Z

    .line 627
    :cond_7
    return-void

    .line 612
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 594
    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized q()V
    .locals 1

    .prologue
    .line 639
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->l()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :cond_0
    :goto_0
    :try_start_1
    invoke-super {p0}, Lcom/sleepycat/b/c/ad;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 647
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
