.class public Lcom/sleepycat/b/i/c/x;
.super Lcom/sleepycat/b/i/c/ap;
.source "RepGroupProtocol.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/av;

.field public final b:Lcom/sleepycat/b/i/c/av;

.field public final c:Lcom/sleepycat/b/i/c/av;

.field public final d:Lcom/sleepycat/b/i/c/av;

.field public final e:Lcom/sleepycat/b/i/c/av;

.field public final f:Lcom/sleepycat/b/i/c/av;

.field public final g:Lcom/sleepycat/b/i/c/av;

.field public final h:Lcom/sleepycat/b/i/c/av;

.field public final i:Lcom/sleepycat/b/i/c/av;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V
    .locals 3

    .prologue
    .line 56
    const-string v0, "3"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sleepycat/b/i/c/ap;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V

    .line 33
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "ENREQ"

    const-class v2, Lcom/sleepycat/b/i/c/z;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->a:Lcom/sleepycat/b/i/c/av;

    .line 35
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "ENRESP"

    const-class v2, Lcom/sleepycat/b/i/c/aa;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->b:Lcom/sleepycat/b/i/c/av;

    .line 37
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "RMREQ"

    const-class v2, Lcom/sleepycat/b/i/c/af;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->c:Lcom/sleepycat/b/i/c/av;

    .line 39
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "GREQ"

    const-class v2, Lcom/sleepycat/b/i/c/ad;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->d:Lcom/sleepycat/b/i/c/av;

    .line 41
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "GRESP"

    const-class v2, Lcom/sleepycat/b/i/c/ae;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->e:Lcom/sleepycat/b/i/c/av;

    .line 43
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "GRFAIL"

    const-class v2, Lcom/sleepycat/b/i/c/ab;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->f:Lcom/sleepycat/b/i/c/av;

    .line 45
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "UPDADDR"

    const-class v2, Lcom/sleepycat/b/i/c/ai;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->g:Lcom/sleepycat/b/i/c/av;

    .line 47
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "TMASTER"

    const-class v2, Lcom/sleepycat/b/i/c/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->h:Lcom/sleepycat/b/i/c/av;

    .line 49
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "TMRESP"

    const-class v2, Lcom/sleepycat/b/i/c/ah;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/x;->i:Lcom/sleepycat/b/i/c/av;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sleepycat/b/i/c/av;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->a:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->b:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->c:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->d:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->e:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->f:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->g:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->h:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/sleepycat/b/i/c/x;->i:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/x;->a([Lcom/sleepycat/b/i/c/av;)V

    .line 70
    sget-object v0, Lcom/sleepycat/b/i/c/an;->K:Lcom/sleepycat/b/b/c;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->L:Lcom/sleepycat/b/b/c;

    invoke-virtual {p0, p3, v0, v1}, Lcom/sleepycat/b/i/c/x;->a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/b/c;Lcom/sleepycat/b/b/c;)V

    .line 73
    return-void
.end method
