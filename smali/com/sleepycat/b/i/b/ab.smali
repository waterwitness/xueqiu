.class public Lcom/sleepycat/b/i/b/ab;
.super Lcom/sleepycat/b/i/b/z;
.source "Protocol.java"


# instance fields
.field final synthetic e:Lcom/sleepycat/b/i/b/x;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sleepycat/b/i/b/ab;->e:Lcom/sleepycat/b/i/b/x;

    .line 397
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/i/b/z;-><init>(Lcom/sleepycat/b/i/b/x;Lcom/sleepycat/b/i/b/s;Lcom/sleepycat/b/i/b/ai;)V

    .line 398
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ab;->e:Lcom/sleepycat/b/i/b/x;

    iget-object v0, v0, Lcom/sleepycat/b/i/b/x;->i:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sleepycat/b/i/b/ab;->j:Ljava/lang/String;

    return-object v0
.end method
