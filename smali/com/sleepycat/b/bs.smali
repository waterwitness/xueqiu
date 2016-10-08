.class public final Lcom/sleepycat/b/bs;
.super Ljava/lang/Object;
.source "TransactionStats.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Lcom/sleepycat/b/p/ai;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/p/ai;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sleepycat/b/bs;->a:Lcom/sleepycat/b/p/ai;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sleepycat/b/bs;->a:Lcom/sleepycat/b/p/ai;

    sget-object v1, Lcom/sleepycat/b/c/bl;->a:Lcom/sleepycat/b/p/ag;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Lcom/sleepycat/b/p/ag;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sleepycat/b/bs;->a:Lcom/sleepycat/b/p/ai;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/ai;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
