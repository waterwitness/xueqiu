.class public Lcom/sleepycat/b/c/as;
.super Ljava/lang/Object;
.source "NodeSequence.java"


# static fields
.field static final synthetic d:Z


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicLong;

.field public b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final c:Lcom/sleepycat/b/c/ad;

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/sleepycat/b/c/as;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/as;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/sleepycat/b/c/as;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    iput-object v0, p0, Lcom/sleepycat/b/c/as;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sleepycat/b/c/as;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    iput-object p1, p0, Lcom/sleepycat/b/c/as;->c:Lcom/sleepycat/b/c/ad;

    .line 54
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sleepycat/b/c/as;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->a(J)J

    move-result-wide v0

    return-wide v0
.end method
