.class public Lcom/sleepycat/b/r;
.super Lcom/sleepycat/b/an;
.source "DeadlockException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/r;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 74
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/sleepycat/b/r;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/r;-><init>(Ljava/lang/String;Lcom/sleepycat/b/r;)V

    return-object v0
.end method
