.class public Lcom/sleepycat/b/i/c/b/q;
.super Ljava/lang/Object;
.source "LocalCBVLSNTracker.java"


# static fields
.field static final synthetic g:Z


# instance fields
.field public a:Lcom/sleepycat/b/p/au;

.field public b:Lcom/sleepycat/b/p/au;

.field public c:J

.field public d:Z

.field public final e:Lcom/sleepycat/b/i/c/aj;

.field public volatile f:I

.field private final h:Lcom/sleepycat/b/i/i/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sleepycat/b/i/c/b/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/b/q;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/c/b/q;->d:Z

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/q;->f:I

    .line 1520
    iget-object v0, p1, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 72
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->e:Lcom/sleepycat/b/i/c/aj;

    .line 74
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->e:Lcom/sleepycat/b/i/c/aj;

    .line 1807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 74
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->h:Lcom/sleepycat/b/i/i/f;

    .line 77
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->h:Lcom/sleepycat/b/i/i/f;

    .line 2775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 3118
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->f:Lcom/sleepycat/b/p/au;

    .line 77
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->b:Lcom/sleepycat/b/p/au;

    .line 78
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->b:Lcom/sleepycat/b/p/au;

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/q;->a:Lcom/sleepycat/b/p/au;

    .line 81
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/i/c/b/q;->c:J

    .line 82
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/i/c/b/q;->g:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sleepycat/b/i/c/b/q;->f:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/sleepycat/b/i/c/b/q;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/i/c/b/q;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    monitor-exit p0

    return-void
.end method
