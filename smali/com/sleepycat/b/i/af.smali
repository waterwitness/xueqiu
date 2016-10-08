.class public final Lcom/sleepycat/b/i/af;
.super Lcom/sleepycat/b/i/ac;
.source "UnknownMasterException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/ac;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/ac;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/ac;)V

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/af;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/ac;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/ac;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/sleepycat/b/i/af;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/af;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/af;)V

    return-object v0
.end method
