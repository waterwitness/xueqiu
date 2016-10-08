.class final Lcom/sleepycat/b/i/b/o;
.super Ljava/lang/RuntimeException;
.source "Proposer.java"


# instance fields
.field final a:Ljava/net/InetSocketAddress;


# direct methods
.method constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/sleepycat/b/i/b/o;->a:Ljava/net/InetSocketAddress;

    .line 480
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "More recent proposal at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/i/b/o;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
