.class public final Lcom/sleepycat/b/i/j;
.super Lcom/sleepycat/b/au;
.source "LogOverwriteException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/j;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/sleepycat/b/i/j;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/j;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/j;)V

    return-object v0
.end method
