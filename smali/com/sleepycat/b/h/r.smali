.class final Lcom/sleepycat/b/h/r;
.super Ljava/lang/Object;
.source "RollbackTracker.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field final a:Lcom/sleepycat/b/h/p;

.field final b:J

.field final c:J

.field final d:Z

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/n/ad;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/h/r;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/sleepycat/b/h/r;

.field private final j:J

.field private k:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/sleepycat/b/h/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 623
    const-class v0, Lcom/sleepycat/b/h/p;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/h/r;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sleepycat/b/h/p;JJJJLjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/h/p;",
            "JJJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    .line 689
    iput-object p1, p0, Lcom/sleepycat/b/h/r;->a:Lcom/sleepycat/b/h/p;

    .line 690
    iput-wide p2, p0, Lcom/sleepycat/b/h/r;->b:J

    .line 691
    iput-wide p4, p0, Lcom/sleepycat/b/h/r;->j:J

    .line 692
    iput-wide p6, p0, Lcom/sleepycat/b/h/r;->c:J

    .line 4700
    cmp-long v0, p8, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->c:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->c:J

    invoke-static {v0, v1, p8, p9}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 693
    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/b/h/r;->d:Z

    .line 694
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->f:Ljava/util/Map;

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->g:Ljava/util/List;

    .line 696
    iput-object p10, p0, Lcom/sleepycat/b/h/r;->e:Ljava/util/Set;

    .line 697
    return-void

    .line 4700
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/h/p;Lcom/sleepycat/b/n/u;J)V
    .locals 11

    .prologue
    .line 654
    .line 2043
    iget-wide v2, p2, Lcom/sleepycat/b/n/u;->a:J

    .line 2047
    iget-wide v4, p2, Lcom/sleepycat/b/n/u;->b:J

    .line 2278
    iget-wide v8, p1, Lcom/sleepycat/b/h/p;->b:J

    .line 654
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/b/h/r;-><init>(Lcom/sleepycat/b/h/p;JJJJLjava/util/Set;)V

    .line 660
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/b/h/p;Lcom/sleepycat/b/n/v;J)V
    .locals 11

    .prologue
    .line 665
    .line 3060
    iget-wide v2, p2, Lcom/sleepycat/b/n/v;->b:J

    .line 665
    const-wide/16 v6, -0x1

    .line 3278
    iget-wide v8, p1, Lcom/sleepycat/b/h/p;->b:J

    .line 4064
    iget-object v10, p2, Lcom/sleepycat/b/n/v;->c:Ljava/util/Set;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    .line 665
    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/b/h/r;-><init>(Lcom/sleepycat/b/h/p;JJJJLjava/util/Set;)V

    .line 671
    return-void
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/n/u;J)Lcom/sleepycat/b/h/r;
    .locals 4

    .prologue
    .line 851
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/h/r;->a(Lcom/sleepycat/b/n/u;J)Lcom/sleepycat/b/h/r;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 862
    :cond_0
    :goto_0
    return-object p0

    .line 4759
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_2

    .line 4761
    const/4 v0, 0x0

    .line 859
    :goto_1
    if-nez v0, :cond_0

    .line 862
    const/4 p0, 0x0

    goto :goto_0

    .line 4764
    :cond_2
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    .line 4765
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Should not be two RollbackEnds in a row. New RollbackEnd at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/h/r;->a(Ljava/lang/String;)V

    .line 5043
    :cond_3
    iget-wide v0, p1, Lcom/sleepycat/b/n/u;->a:J

    .line 4775
    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-ltz v0, :cond_4

    .line 5047
    iget-wide v0, p1, Lcom/sleepycat/b/n/u;->b:J

    .line 4775
    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-ltz v0, :cond_5

    .line 4779
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RollbackEnd intersects current rollback period "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/h/r;->a(Ljava/lang/String;)V

    .line 4784
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method final a(Lcom/sleepycat/b/n/v;J)Lcom/sleepycat/b/h/r;
    .locals 4

    .prologue
    .line 871
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sleepycat/b/h/r;->a(Lcom/sleepycat/b/n/v;J)Lcom/sleepycat/b/h/r;

    move-result-object v0

    .line 874
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 882
    :cond_0
    :goto_0
    return-object p0

    .line 5801
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_2

    .line 5803
    const/4 v0, 0x0

    .line 879
    :goto_1
    if-nez v0, :cond_0

    .line 882
    const/4 p0, 0x0

    goto :goto_0

    .line 5806
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/b/h/r;->a(J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6060
    iget-wide v0, p1, Lcom/sleepycat/b/n/v;->b:J

    .line 5811
    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {p2, p3, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-ltz v0, :cond_4

    .line 5814
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RollbackStart intersects current rollback period "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/h/r;->a(Ljava/lang/String;)V

    .line 5820
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method final a()V
    .locals 1

    .prologue
    .line 900
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->k:Ljava/util/Iterator;

    .line 901
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/r;

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    .line 903
    iget-object p0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    goto :goto_0

    .line 905
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    .line 907
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 910
    new-instance v0, Lcom/sleepycat/b/aa;

    iget-object v1, p0, Lcom/sleepycat/b/h/r;->a:Lcom/sleepycat/b/h/p;

    .line 6282
    iget-object v1, v1, Lcom/sleepycat/b/h/p;->a:Lcom/sleepycat/b/c/ad;

    .line 910
    sget-object v2, Lcom/sleepycat/b/c/ac;->m:Lcom/sleepycat/b/c/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\ntracker contents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/h/r;->a:Lcom/sleepycat/b/h/p;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/aa;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V

    throw v0
.end method

.method final a(J)Z
    .locals 3

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(JJ)Z
    .locals 3

    .prologue
    .line 929
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/h/r;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/h/r;->e:Ljava/util/Set;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(J)Lcom/sleepycat/b/h/r;
    .locals 3

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/h/r;->b(J)Lcom/sleepycat/b/h/r;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 896
    :cond_0
    :goto_0
    return-object p0

    .line 893
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {p1, p2, v0, v1}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    .line 896
    const/4 p0, 0x0

    goto :goto_0
.end method

.method final b(JJ)Lcom/sleepycat/b/h/r;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sleepycat/b/h/r;->b(JJ)Lcom/sleepycat/b/h/r;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 962
    :cond_0
    :goto_0
    return-object p0

    .line 959
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/h/r;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    const/4 p0, 0x0

    goto :goto_0
.end method

.method final c(J)Z
    .locals 3

    .prologue
    .line 924
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(JJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 970
    invoke-static {p3, p4}, Lcom/sleepycat/b/n/aj;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 978
    :cond_0
    :goto_0
    return v0

    .line 975
    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 978
    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v1

    if-gez v1, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    invoke-static {v2, v3, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(J)V
    .locals 1

    .prologue
    .line 933
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    if-nez v0, :cond_0

    .line 942
    :goto_1
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/h/r;->f(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/h/r;

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    .line 939
    iget-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    invoke-virtual {v0}, Lcom/sleepycat/b/h/r;->a()V

    .line 946
    :cond_1
    iget-object p0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    goto :goto_0

    .line 941
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/h/r;->h:Lcom/sleepycat/b/h/r;

    goto :goto_1
.end method

.method final e(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] should not be within rollbackStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] and rollbackEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1034
    instance-of v1, p1, Lcom/sleepycat/b/h/r;

    if-nez v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    .line 1038
    :cond_1
    check-cast p1, Lcom/sleepycat/b/h/r;

    .line 1039
    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/h/r;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    iget-wide v4, p1, Lcom/sleepycat/b/h/r;->j:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    iget-wide v4, p1, Lcom/sleepycat/b/h/r;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final f(J)Z
    .locals 3

    .prologue
    .line 995
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 1051
    iget-wide v0, p0, Lcom/sleepycat/b/h/r;->b:J

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 1052
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1053
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 1054
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "matchpoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rollbackStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->j:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] rollbackEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/r;->c:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
