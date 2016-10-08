.class public final Lcom/sleepycat/b/bu;
.super Lcom/sleepycat/b/an;
.source "TransactionTimeoutException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/bu;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/sleepycat/b/bu;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/bu;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bu;)V

    return-object v0
.end method
