.class public final Lcom/sleepycat/b/i/s;
.super Lcom/sleepycat/b/i/ac;
.source "ReplicaWriteException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/ac;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/s;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/ac;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/ac;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/sleepycat/b/i/s;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/s;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/s;)V

    return-object v0
.end method
