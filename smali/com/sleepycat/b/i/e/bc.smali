.class public abstract Lcom/sleepycat/b/i/e/bc;
.super Ljava/lang/Object;
.source "WireRecord.java"


# instance fields
.field public final d:Lcom/sleepycat/b/g/ae;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/g/ae;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sleepycat/b/i/e/bc;->d:Lcom/sleepycat/b/g/ae;

    .line 33
    return-void
.end method


# virtual methods
.method final c()Lcom/sleepycat/b/g/af;
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sleepycat/b/i/e/bc;->d:Lcom/sleepycat/b/g/ae;

    .line 1279
    iget-byte v0, v0, Lcom/sleepycat/b/g/ae;->b:B

    .line 41
    invoke-static {v0}, Lcom/sleepycat/b/g/af;->a(B)Lcom/sleepycat/b/g/af;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown header type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/e/bc;->d:Lcom/sleepycat/b/g/ae;

    .line 2279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 46
    :cond_0
    return-object v0
.end method
