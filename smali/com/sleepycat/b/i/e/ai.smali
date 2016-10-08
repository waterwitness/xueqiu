.class public Lcom/sleepycat/b/i/e/ai;
.super Lcom/sleepycat/b/i/e/ad;
.source "Protocol.java"


# instance fields
.field final a:Ljava/lang/String;

.field final c:Ljava/util/UUID;

.field public final d:Lcom/sleepycat/b/i/c/b/x;

.field public final e:Ljava/lang/String;

.field public final f:I

.field final g:Lcom/sleepycat/b/i/o;

.field final h:Z

.field final synthetic i:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Ljava/lang/String;Ljava/util/UUID;Lcom/sleepycat/b/i/c/b/x;Ljava/lang/String;ILcom/sleepycat/b/i/o;Z)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ai;->i:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/ad;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 620
    iput-object p2, p0, Lcom/sleepycat/b/i/e/ai;->a:Ljava/lang/String;

    .line 621
    iput-object p3, p0, Lcom/sleepycat/b/i/e/ai;->c:Ljava/util/UUID;

    .line 622
    iput-object p4, p0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 623
    iput-object p5, p0, Lcom/sleepycat/b/i/e/ai;->e:Ljava/lang/String;

    .line 624
    iput p6, p0, Lcom/sleepycat/b/i/e/ai;->f:I

    .line 625
    iput-object p7, p0, Lcom/sleepycat/b/i/e/ai;->g:Lcom/sleepycat/b/i/o;

    .line 626
    iput-boolean p8, p0, Lcom/sleepycat/b/i/e/ai;->h:Z

    .line 627
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 631
    sget-object v0, Lcom/sleepycat/b/i/e/t;->g:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 636
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ai;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ai;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ai;->c:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ai;->d:Lcom/sleepycat/b/i/c/b/x;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ai;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/sleepycat/b/i/e/ai;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ai;->g:Lcom/sleepycat/b/i/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/sleepycat/b/i/e/ai;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/ai;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
