.class public final Lcom/sleepycat/b/i/d/g;
.super Lcom/sleepycat/b/i/c/ap;
.source "Protocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/av;

.field public final b:Lcom/sleepycat/b/i/c/av;

.field public final c:Lcom/sleepycat/b/i/c/av;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    const-string v0, "1.0"

    invoke-direct {p0, v0, p1, p2, v3}, Lcom/sleepycat/b/i/c/ap;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V

    .line 34
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "GCHG"

    const-class v2, Lcom/sleepycat/b/i/d/i;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/d/g;->a:Lcom/sleepycat/b/i/c/av;

    .line 37
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "JG"

    const-class v2, Lcom/sleepycat/b/i/d/j;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/d/g;->b:Lcom/sleepycat/b/i/c/av;

    .line 40
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "LG"

    const-class v2, Lcom/sleepycat/b/i/d/k;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/d/g;->c:Lcom/sleepycat/b/i/c/av;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/i/c/av;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/d/g;->a:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/d/g;->b:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/d/g;->c:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/d/g;->a([Lcom/sleepycat/b/i/c/av;)V

    .line 52
    sget-object v0, Lcom/sleepycat/b/i/c/an;->M:Lcom/sleepycat/b/b/c;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->N:Lcom/sleepycat/b/b/c;

    invoke-virtual {p0, v3, v0, v1}, Lcom/sleepycat/b/i/d/g;->a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/b/c;Lcom/sleepycat/b/b/c;)V

    .line 55
    return-void
.end method
