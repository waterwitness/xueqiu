.class public final Lcom/sleepycat/b/i/k;
.super Lcom/sleepycat/b/i/ac;
.source "MasterStateException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/ab;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/i/ac;-><init>(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i/ab;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/k;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/ac;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/ac;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 14
    .line 1044
    new-instance v0, Lcom/sleepycat/b/i/k;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/k;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/k;)V

    .line 14
    return-object v0
.end method
