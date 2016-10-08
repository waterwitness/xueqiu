.class public final Lcom/sleepycat/b/i/c/i;
.super Lcom/sleepycat/b/i/c/ap;
.source "NodeStateProtocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/av;

.field public final b:Lcom/sleepycat/b/i/c/av;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V
    .locals 3

    .prologue
    .line 32
    const-string v0, "1.0"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sleepycat/b/i/c/ap;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V

    .line 23
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "STATEREQ"

    const-class v2, Lcom/sleepycat/b/i/c/j;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/i;->a:Lcom/sleepycat/b/i/c/av;

    .line 25
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "STATERESP"

    const-class v2, Lcom/sleepycat/b/i/c/k;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/i;->b:Lcom/sleepycat/b/i/c/av;

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/i/c/av;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/i;->a:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/i;->b:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/i;->a([Lcom/sleepycat/b/i/c/av;)V

    .line 39
    sget-object v0, Lcom/sleepycat/b/i/c/an;->K:Lcom/sleepycat/b/b/c;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->L:Lcom/sleepycat/b/b/c;

    invoke-virtual {p0, p3, v0, v1}, Lcom/sleepycat/b/i/c/i;->a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/b/c;Lcom/sleepycat/b/b/c;)V

    .line 42
    return-void
.end method
