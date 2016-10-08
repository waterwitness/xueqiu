.class public final Lcom/sleepycat/b/bj;
.super Lcom/sleepycat/b/bm;
.source "SecondaryIntegrityException.java"


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Lcom/sleepycat/b/bm;-><init>(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/bj;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/bm;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bm;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/sleepycat/b/bj;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/bj;-><init>(Ljava/lang/String;Lcom/sleepycat/b/bj;)V

    return-object v0
.end method
