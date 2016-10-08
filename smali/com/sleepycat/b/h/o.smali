.class final Lcom/sleepycat/b/h/o;
.super Ljava/lang/Object;
.source "RecoveryManager.java"

# interfaces
.implements Lcom/sleepycat/b/l/aq;


# instance fields
.field a:Z

.field b:Z

.field c:J

.field d:Z

.field private final e:Lcom/sleepycat/b/l/ah;

.field private final f:Lcom/sleepycat/b/l/j;

.field private g:J


# direct methods
.method constructor <init>(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/j;J)V
    .locals 5

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 1911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    iput-wide v2, p0, Lcom/sleepycat/b/h/o;->g:J

    .line 1906
    iput-boolean v0, p0, Lcom/sleepycat/b/h/o;->a:Z

    .line 1907
    iput-boolean v0, p0, Lcom/sleepycat/b/h/o;->b:Z

    .line 1908
    iput-wide v2, p0, Lcom/sleepycat/b/h/o;->c:J

    .line 1909
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/h/o;->d:Z

    .line 1912
    iput-object p1, p0, Lcom/sleepycat/b/h/o;->e:Lcom/sleepycat/b/l/ah;

    .line 1913
    iput-object p2, p0, Lcom/sleepycat/b/h/o;->f:Lcom/sleepycat/b/l/j;

    .line 1914
    iput-wide p3, p0, Lcom/sleepycat/b/h/o;->g:J

    .line 1915
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1924
    iget-object v0, p0, Lcom/sleepycat/b/h/o;->e:Lcom/sleepycat/b/l/ah;

    iget-object v1, p0, Lcom/sleepycat/b/h/o;->f:Lcom/sleepycat/b/l/j;

    new-array v2, v6, [B

    iget-wide v4, p0, Lcom/sleepycat/b/h/o;->g:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/ac;[BJ)Lcom/sleepycat/b/l/e;

    move-result-object v0

    .line 1926
    iget-object v1, p0, Lcom/sleepycat/b/h/o;->f:Lcom/sleepycat/b/l/j;

    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V

    .line 1927
    iput-boolean v6, p0, Lcom/sleepycat/b/h/o;->d:Z

    .line 1929
    if-nez p1, :cond_1

    .line 1930
    iget-object v1, p0, Lcom/sleepycat/b/h/o;->e:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v1, v0, v6}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/e;Z)V

    .line 1931
    iput-boolean v7, p0, Lcom/sleepycat/b/h/o;->a:Z

    .line 1944
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 2213
    :cond_1
    iget-wide v2, p1, Lcom/sleepycat/b/l/e;->b:J

    .line 1933
    iput-wide v2, p0, Lcom/sleepycat/b/h/o;->c:J

    .line 1939
    iget-wide v2, p0, Lcom/sleepycat/b/h/o;->c:J

    iget-wide v4, p0, Lcom/sleepycat/b/h/o;->g:J

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/b/p/j;->b(JJ)I

    move-result v1

    if-gez v1, :cond_0

    .line 1940
    iget-object v1, p0, Lcom/sleepycat/b/h/o;->e:Lcom/sleepycat/b/l/ah;

    invoke-virtual {v1, v0, v6}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/e;Z)V

    .line 1941
    iput-boolean v7, p0, Lcom/sleepycat/b/h/o;->b:Z

    goto :goto_0
.end method
