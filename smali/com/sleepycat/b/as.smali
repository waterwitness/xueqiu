.class public final Lcom/sleepycat/b/as;
.super Lcom/sleepycat/b/an;
.source "LockTimeoutException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/as;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/an;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/sleepycat/b/as;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/as;-><init>(Ljava/lang/String;Lcom/sleepycat/b/as;)V

    return-object v0
.end method
