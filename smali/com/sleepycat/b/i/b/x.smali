.class public Lcom/sleepycat/b/i/b/x;
.super Lcom/sleepycat/b/i/c/ap;
.source "Protocol.java"


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

.field private final u:Lcom/sleepycat/b/i/b/t;

.field private final v:Lcom/sleepycat/b/i/b/aj;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/b/t;Lcom/sleepycat/b/i/b/aj;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V
    .locals 3

    .prologue
    .line 79
    const-string v0, "2.0"

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/sleepycat/b/i/c/ap;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/c/ad;)V

    .line 81
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "P"

    const-class v2, Lcom/sleepycat/b/i/b/ad;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->a:Lcom/sleepycat/b/i/c/av;

    .line 82
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "A"

    const-class v2, Lcom/sleepycat/b/i/b/y;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->b:Lcom/sleepycat/b/i/c/av;

    .line 83
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "RE"

    const-class v2, Lcom/sleepycat/b/i/b/af;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->c:Lcom/sleepycat/b/i/c/av;

    .line 84
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "MQ"

    const-class v2, Lcom/sleepycat/b/i/b/aa;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->d:Lcom/sleepycat/b/i/c/av;

    .line 85
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "X"

    const-class v2, Lcom/sleepycat/b/i/b/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->e:Lcom/sleepycat/b/i/c/av;

    .line 87
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "R"

    const-class v2, Lcom/sleepycat/b/i/b/ae;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->f:Lcom/sleepycat/b/i/c/av;

    .line 88
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "PR"

    const-class v2, Lcom/sleepycat/b/i/b/ac;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->g:Lcom/sleepycat/b/i/c/av;

    .line 89
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "AD"

    const-class v2, Lcom/sleepycat/b/i/b/z;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->h:Lcom/sleepycat/b/i/c/av;

    .line 90
    new-instance v0, Lcom/sleepycat/b/i/c/av;

    const-string v1, "MQR"

    const-class v2, Lcom/sleepycat/b/i/b/ab;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/c/av;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/b/x;->i:Lcom/sleepycat/b/i/c/av;

    .line 93
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sleepycat/b/i/c/av;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->a:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->b:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->c:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->d:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->e:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->f:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->g:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->h:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/sleepycat/b/i/b/x;->i:Lcom/sleepycat/b/i/c/av;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/b/x;->a([Lcom/sleepycat/b/i/c/av;)V

    .line 105
    iput-object p1, p0, Lcom/sleepycat/b/i/b/x;->u:Lcom/sleepycat/b/i/b/t;

    .line 106
    iput-object p2, p0, Lcom/sleepycat/b/i/b/x;->v:Lcom/sleepycat/b/i/b/aj;

    .line 108
    sget-object v0, Lcom/sleepycat/b/i/c/an;->G:Lcom/sleepycat/b/b/c;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->H:Lcom/sleepycat/b/b/c;

    invoke-virtual {p0, p5, v0, v1}, Lcom/sleepycat/b/i/b/x;->a(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/b/c;Lcom/sleepycat/b/b/c;)V

    .line 109
    return-void
.end method
