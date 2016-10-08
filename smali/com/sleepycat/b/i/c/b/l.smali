.class final Lcom/sleepycat/b/i/c/b/l;
.super Lcom/sleepycat/b/p/aj;
.source "Feeder.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Lcom/sleepycat/b/i/e/t;

.field final synthetic c:Lcom/sleepycat/b/i/c/b/h;

.field private d:J

.field private e:J

.field private f:J

.field private final g:Lcom/sleepycat/b/i/c/aj;

.field private final h:Z

.field private final i:I

.field private final j:Lcom/sleepycat/b/i/h/n;

.field private final k:Lcom/sleepycat/b/p/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 605
    const-class v0, Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/l;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/i/c/aj;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 634
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    .line 639
    new-instance v0, Lcom/sleepycat/b/i/c/b/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/i/c/b/j;-><init>(Lcom/sleepycat/b/i/c/b/h;B)V

    const-string v1, "Feeder Output"

    invoke-direct {p0, p2, v0, v1}, Lcom/sleepycat/b/p/aj;-><init>(Lcom/sleepycat/b/c/ad;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;)V

    .line 607
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/l;->d:J

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    .line 611
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/l;->e:J

    .line 614
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/l;->f:J

    .line 640
    iput-object p2, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    .line 641
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 2528
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 642
    sget-object v1, Lcom/sleepycat/b/i/c/an;->X:Lcom/sleepycat/b/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/b/i/c/b/l;->h:Z

    .line 644
    sget-object v1, Lcom/sleepycat/b/i/c/an;->V:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/l;->i:I

    .line 646
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/h;->j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/h;->j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;

    move-result-object v0

    .line 4220
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/m;->i:Lcom/sleepycat/b/i/h/n;

    .line 647
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->j:Lcom/sleepycat/b/i/h/n;

    .line 648
    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/h;->j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;

    move-result-object v0

    .line 4224
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/m;->j:Lcom/sleepycat/b/p/an;

    .line 648
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->k:Lcom/sleepycat/b/p/an;

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "FeederManager"

    const-string v2, "A feeder is a replication stream connection between a master and replica nodes."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    new-instance v1, Lcom/sleepycat/b/i/h/n;

    sget-object v2, Lcom/sleepycat/b/i/c/b/n;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/i/h/n;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->j:Lcom/sleepycat/b/i/h/n;

    .line 655
    new-instance v1, Lcom/sleepycat/b/p/an;

    sget-object v2, Lcom/sleepycat/b/i/c/b/n;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/b/p/an;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->k:Lcom/sleepycat/b/p/an;

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/e/s;)V
    .locals 4

    .prologue
    .line 847
    invoke-static {}, Lcom/sleepycat/b/i/c/b/h;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 21125
    iget-object v0, p2, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 21279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 849
    invoke-static {v0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 22708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 851
    if-nez v0, :cond_2

    .line 853
    :cond_0
    invoke-static {}, Lcom/sleepycat/b/i/c/b/h;->c()J

    .line 862
    :cond_1
    return-void

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initiating message spray: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 859
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    goto :goto_0
.end method

.method private b()V
    .locals 8

    .prologue
    .line 875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 876
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/l;->d:J

    sub-long v0, v2, v0

    .line 878
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->p(Lcom/sleepycat/b/i/c/b/h;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v6

    .line 882
    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    new-instance v0, Lcom/sleepycat/b/i/e/ae;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23101
    iget-wide v4, v6, Lcom/sleepycat/b/p/au;->c:J

    .line 882
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/e/ae;-><init>(Lcom/sleepycat/b/i/e/t;JJ)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 884
    iput-wide v2, p0, Lcom/sleepycat/b/i/c/b/l;->d:J

    .line 24101
    iget-wide v0, v6, Lcom/sleepycat/b/p/au;->c:J

    .line 886
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v2

    .line 25101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 886
    sub-long/2addr v0, v2

    .line 887
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->j:Lcom/sleepycat/b/i/h/n;

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/i/h/n;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->k:Lcom/sleepycat/b/p/an;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v1

    .line 26087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 27038
    iput-object v1, v0, Lcom/sleepycat/b/p/an;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Lcom/sleepycat/b/i/h/o;)V

    .line 900
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 27512
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/b/aa;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 900
    return v0
.end method

.method public final run()V
    .locals 14

    .prologue
    .line 710
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->n(Lcom/sleepycat/b/i/c/b/h;)I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/h;->o(Lcom/sleepycat/b/i/c/b/h;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/c/b/aa;II)Lcom/sleepycat/b/i/e/t;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    .line 712
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Feeder Output for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    .line 4266
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/h;->i:Lcom/sleepycat/b/i/c/b/x;

    .line 5087
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 712
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->j(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/m;

    move-result-object v0

    .line 5189
    iget v5, v0, Lcom/sleepycat/b/i/c/b/m;->e:I

    .line 717
    if-lez v5, :cond_0

    .line 718
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Test delay of:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms. after each message sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 5532
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 5807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 6775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    const-string v3, "Feeder output thread for replica %s started at VLSN %,d master at %,d VLSN delta=%,d socket=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v7}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v7

    .line 7087
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 725
    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v7}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v7

    .line 7101
    iget-wide v8, v7, Lcom/sleepycat/b/p/au;->c:J

    .line 725
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    .line 7114
    iget-object v7, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 8101
    iget-wide v8, v7, Lcom/sleepycat/b/p/au;->c:J

    .line 725
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    .line 8114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 9101
    iget-wide v8, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 725
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    .line 10101
    iget-wide v10, v0, Lcom/sleepycat/b/p/au;->c:J

    .line 725
    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x4

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v6}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 737
    const/4 v3, 0x0

    .line 738
    const/4 v2, 0x0

    .line 745
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/l;->b()V

    .line 746
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 10528
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 11392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 746
    sget-object v1, Lcom/sleepycat/b/i/c/an;->U:Lcom/sleepycat/b/b/c;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/c;)I

    move-result v0

    .line 748
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/h/p;->a(I)V

    .line 11674
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->m(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11675
    const/4 v0, 0x0

    .line 750
    :goto_1
    if-nez v0, :cond_18

    .line 751
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 13133
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 14075
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14076
    :try_start_1
    iget-boolean v0, v1, Lcom/sleepycat/b/i/a/a;->a:Z

    if-nez v0, :cond_8

    .line 14077
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    :cond_2
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->g(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->p(Lcom/sleepycat/b/i/c/b/h;)I

    move-result v4

    invoke-interface {v0, v1, v4}, Lcom/sleepycat/b/i/e/f;->a(Lcom/sleepycat/b/p/au;I)Lcom/sleepycat/b/i/e/s;

    move-result-object v6

    .line 764
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->i(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/e/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e/n;->e()V

    .line 765
    if-nez v6, :cond_9

    .line 767
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/l;->b()V

    .line 790
    :goto_3
    if-lez v5, :cond_1

    .line 791
    int-to-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 822
    if-eqz v3, :cond_14

    .line 824
    throw v3

    .line 11677
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 12129
    iget-wide v0, v0, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 11677
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_7

    .line 11678
    iget-wide v0, p0, Lcom/sleepycat/b/i/c/b/l;->f:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_4

    .line 11679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/l;->f:J

    .line 11682
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/sleepycat/b/i/c/b/l;->f:J

    sub-long/2addr v0, v6

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    .line 13129
    iget-wide v6, v4, Lcom/sleepycat/b/i/c/b/aa;->s:J

    .line 11682
    cmp-long v0, v0, v6

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 11685
    :goto_4
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    if-gez v0, :cond_6

    .line 11689
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 11682
    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    .line 11692
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    new-instance v1, Lcom/sleepycat/b/i/e/as;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v6, p0, Lcom/sleepycat/b/i/c/b/l;->f:J

    invoke-direct {v1, v4, v6, v7}, Lcom/sleepycat/b/i/e/as;-><init>(Lcom/sleepycat/b/i/e/t;J)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 11696
    const-string v0, "Shutdown message sent to: %s  Shutdown elapsed time: %,dms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v6}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sleepycat/b/i/c/b/l;->f:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11702
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v1, v4, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 11705
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 14081
    :cond_8
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, v1, Lcom/sleepycat/b/i/a/a;->a:Z

    .line 14082
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14084
    :try_start_5
    iget-object v0, v1, Lcom/sleepycat/b/i/a/a;->d:Ljava/util/logging/Logger;

    iget-object v1, v1, Lcom/sleepycat/b/i/a/a;->c:Lcom/sleepycat/b/i/c/aj;

    const-string v4, "Arbitration is inactivated"

    invoke-static {v0, v1, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_2

    .line 800
    :catch_1
    move-exception v0

    .line 822
    if-eqz v3, :cond_15

    .line 824
    throw v3

    .line 14082
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 803
    :catch_2
    move-exception v0

    .line 822
    if-eqz v3, :cond_16

    .line 824
    throw v3

    .line 14916
    :cond_9
    :try_start_8
    invoke-virtual {v6}, Lcom/sleepycat/b/i/e/s;->b()J

    move-result-wide v8

    .line 14919
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_a

    .line 14920
    new-instance v0, Lcom/sleepycat/b/i/e/y;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/i/e/y;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/i/e/s;)V

    .line 19175
    :goto_5
    iget-object v1, v6, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 19295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 18962
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 18963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected VLSN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " log entry VLSN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20175
    iget-object v1, v6, Lcom/sleepycat/b/i/e/s;->d:Lcom/sleepycat/b/g/ae;

    .line 20295
    iget-object v1, v1, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 18963
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 804
    :catch_3
    move-exception v0

    .line 814
    :try_start_9
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 817
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 822
    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v13, v0

    move-object v0, v1

    move-object v1, v13

    :goto_6
    if-eqz v2, :cond_13

    .line 824
    throw v2

    .line 14925
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v0

    .line 15536
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 15811
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->al:Lcom/sleepycat/b/i/e/i;

    .line 16080
    iget-object v0, v0, Lcom/sleepycat/b/i/e/i;->a:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/e/j;

    .line 16081
    if-nez v0, :cond_c

    const/4 v0, 0x0

    move-object v4, v0

    .line 14926
    :goto_7
    sget-object v0, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    .line 14927
    if-eqz v4, :cond_f

    .line 16340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v10, v4, Lcom/sleepycat/b/i/f/b;->c:J

    sub-long/2addr v0, v10

    long-to-int v0, v0

    iput v0, v4, Lcom/sleepycat/b/i/f/b;->e:I

    .line 16351
    iget v0, v4, Lcom/sleepycat/b/i/f/b;->e:I

    if-lez v0, :cond_d

    iget v0, v4, Lcom/sleepycat/b/i/f/b;->e:I

    iget v1, v4, Lcom/sleepycat/b/i/f/b;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 14930
    :goto_8
    iget-wide v10, p0, Lcom/sleepycat/b/i/c/b/l;->e:J

    add-long/2addr v10, v0

    iput-wide v10, p0, Lcom/sleepycat/b/i/c/b/l;->e:J

    .line 14931
    iget v7, p0, Lcom/sleepycat/b/i/c/b/l;->i:I

    int-to-long v10, v7

    cmp-long v7, v0, v10

    if-lez v7, :cond_b

    .line 14932
    const-string v7, "Feeder for: %s, Txn: %,d  log to rep stream time %,dms. Total transfer time: %,dms."

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v12}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v12

    .line 17087
    iget-object v12, v12, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 14932
    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v11

    const/4 v8, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v8

    const/4 v0, 0x3

    iget-wide v8, p0, Lcom/sleepycat/b/i/c/b/l;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 14939
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    invoke-static {v1, v7, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 14941
    :cond_b
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/b/l;->h:Z

    if-nez v0, :cond_e

    const/4 v1, 0x1

    .line 17433
    :goto_9
    iget-object v0, v4, Lcom/sleepycat/b/n/z;->D:Lcom/sleepycat/b/u;

    .line 18289
    iget-object v0, v0, Lcom/sleepycat/b/u;->f:Lcom/sleepycat/b/w;

    move v4, v1

    move-object v1, v0

    .line 14953
    :goto_a
    new-instance v0, Lcom/sleepycat/b/i/e/w;

    iget-object v7, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v7, v4, v1, v6}, Lcom/sleepycat/b/i/e/w;-><init>(Lcom/sleepycat/b/i/e/t;ZLcom/sleepycat/b/w;Lcom/sleepycat/b/i/e/s;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_5

    .line 818
    :catch_4
    move-exception v0

    .line 820
    :try_start_b
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v1

    .line 20520
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 820
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/aj;->a(Ljava/lang/Error;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 822
    if-eqz v0, :cond_17

    .line 824
    throw v0

    .line 16081
    :cond_c
    :try_start_c
    iget-object v0, v0, Lcom/sleepycat/b/i/e/j;->b:Lcom/sleepycat/b/i/f/b;

    move-object v4, v0

    goto/16 :goto_7

    .line 16351
    :cond_d
    const-wide/16 v0, 0x0

    goto :goto_8

    .line 14941
    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    .line 14949
    :cond_f
    const/4 v1, 0x0

    .line 14950
    sget-object v0, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    move v4, v1

    move-object v1, v0

    goto :goto_a

    .line 18968
    :cond_10
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/aj;->N()Z

    move-result v1

    if-nez v1, :cond_11

    .line 18969
    sget-boolean v1, Lcom/sleepycat/b/i/c/b/l;->b:Z

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "node="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->q(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sleepycat/b/i/e/s;->a(Ljava/lang/String;)Z

    .line 772
    :cond_11
    invoke-direct {p0, v0, v6}, Lcom/sleepycat/b/i/c/b/l;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/e/s;)V

    .line 774
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->a:Lcom/sleepycat/b/i/e/t;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/h/p;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V

    .line 776
    iget-boolean v0, p0, Lcom/sleepycat/b/i/c/b/l;->h:Z

    if-eqz v0, :cond_12

    .line 781
    invoke-virtual {v6}, Lcom/sleepycat/b/i/e/s;->b()J

    move-result-wide v0

    .line 782
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_12

    .line 783
    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4, v0, v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;J)V

    .line 786
    :cond_12
    invoke-direct {p0}, Lcom/sleepycat/b/i/c/b/l;->b()V

    .line 787
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/b/p/au;->d()Lcom/sleepycat/b/p/au;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/i/c/b/h;->b(Lcom/sleepycat/b/i/c/b/h;Lcom/sleepycat/b/p/au;)Lcom/sleepycat/b/p/au;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/sleepycat/b/i/e/o; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_3

    .line 822
    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_6

    .line 840
    :goto_b
    goto/32 :goto_b

    .line 826
    :cond_13
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Feeder output for replica "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v5}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v5

    .line 21087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shutdown. feeder VLSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v5}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentTxnEndVLSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v5}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 838
    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v2, v1}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    .line 822
    throw v0

    .line 826
    :cond_14
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feeder output for replica "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v4

    .line 21087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown. feeder VLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentTxnEndVLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    :goto_c
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    .line 840
    :goto_d
    return-void

    .line 826
    :cond_15
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feeder output for replica "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v4

    .line 21087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown. feeder VLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentTxnEndVLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    goto :goto_c

    .line 826
    :cond_16
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feeder output for replica "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v4

    .line 21087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown. feeder VLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentTxnEndVLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 838
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    goto/16 :goto_c

    .line 826
    :cond_17
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feeder output for replica "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v4

    .line 21087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown. feeder VLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentTxnEndVLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    goto/16 :goto_b

    .line 822
    :cond_18
    if-eqz v3, :cond_19

    .line 824
    throw v3

    .line 826
    :cond_19
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/b/h;->k(Lcom/sleepycat/b/i/c/b/h;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/l;->g:Lcom/sleepycat/b/i/c/aj;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Feeder output for replica "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->c(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v4

    .line 21087
    iget-object v4, v4, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 826
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shutdown. feeder VLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->f(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currentTxnEndVLSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/b/h;->a(Lcom/sleepycat/b/i/c/b/h;)Lcom/sleepycat/b/i/c/b/aa;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/b/i/c/b/aa;->g()Lcom/sleepycat/b/p/au;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/l;->c:Lcom/sleepycat/b/i/c/b/h;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/b/h;->a(Ljava/lang/Exception;)V

    goto/16 :goto_d

    .line 822
    :catchall_3
    move-exception v1

    move-object v13, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v13

    goto/16 :goto_6
.end method
