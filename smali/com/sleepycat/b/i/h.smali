.class public final Lcom/sleepycat/b/i/h;
.super Lcom/sleepycat/b/an;
.source "LockPreemptedException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Lock was preempted by a replication stream replay write operation"

    invoke-direct {p0, p1, v0, p2}, Lcom/sleepycat/b/an;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/h;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 33
    .line 1061
    new-instance v0, Lcom/sleepycat/b/i/h;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/h;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/h;)V

    .line 33
    return-object v0
.end method
