.class public final Lcom/sleepycat/b/i/e/p;
.super Ljava/lang/Object;
.source "MasterSuggestionGenerator.java"

# interfaces
.implements Lcom/sleepycat/b/i/b/b;


# instance fields
.field private final a:Lcom/sleepycat/b/i/c/b/aa;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/b/aa;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/e/p;->b:Z

    .line 40
    iput-object p1, p0, Lcom/sleepycat/b/i/e/p;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/b/s;)J
    .locals 3

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sleepycat/b/i/e/p;->b:Z

    if-eqz v0, :cond_0

    .line 53
    const-wide v0, 0x7fffffffffffffffL

    .line 61
    :goto_0
    return-wide v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/e/p;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 3380
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->l:Lcom/sleepycat/b/i/c/b/b;

    .line 55
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/i/c/b/b;->a(Lcom/sleepycat/b/i/b/s;)V

    .line 57
    iget-object v0, p0, Lcom/sleepycat/b/i/e/p;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 3478
    iget-object v1, v0, Lcom/sleepycat/b/i/c/b/aa;->y:Lcom/sleepycat/b/i/c/b/g;

    .line 4462
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->g:Lcom/sleepycat/b/i/e/n;

    .line 3478
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->f:Lcom/sleepycat/b/i/c/b/m;

    .line 5092
    invoke-virtual {v2}, Lcom/sleepycat/b/i/e/n;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5240
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/m;->c:Lcom/sleepycat/b/i/h/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/h/af;->size()I

    move-result v0

    .line 5096
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/i/c/b/g;->a(Lcom/sleepycat/b/i/p;)I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 57
    :goto_1
    if-eqz v0, :cond_2

    .line 58
    const-wide v0, 0x7ffffffffffffffeL

    goto :goto_0

    .line 5096
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/e/p;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 5532
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    .line 5807
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->aj:Lcom/sleepycat/b/i/i/f;

    .line 6775
    iget-object v0, v0, Lcom/sleepycat/b/i/i/f;->h:Lcom/sleepycat/b/i/i/p;

    invoke-virtual {v0}, Lcom/sleepycat/b/i/i/p;->b()Lcom/sleepycat/b/i/i/m;

    move-result-object v0

    .line 7114
    iget-object v0, v0, Lcom/sleepycat/b/i/i/m;->c:Lcom/sleepycat/b/p/au;

    .line 8101
    iget-wide v0, v0, Lcom/sleepycat/b/p/au;->c:J

    goto :goto_0
.end method

.method public final a()Lcom/sleepycat/b/i/b/ai;
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sleepycat/b/i/e/p;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 1458
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->b:Ljava/net/InetSocketAddress;

    .line 46
    new-instance v1, Lcom/sleepycat/b/i/b/l;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iget-object v3, p0, Lcom/sleepycat/b/i/e/p;->a:Lcom/sleepycat/b/i/c/b/aa;

    .line 2454
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 46
    invoke-direct {v1, v2, v0, v3}, Lcom/sleepycat/b/i/b/l;-><init>(Ljava/lang/String;ILcom/sleepycat/b/i/c/b/x;)V

    return-object v1
.end method
