.class public Lcom/sleepycat/b/i/e/ap;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field final a:Lcom/sleepycat/b/p/au;

.field final b:[Lcom/sleepycat/b/i/c/am;

.field final synthetic c:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;[Lcom/sleepycat/b/i/c/am;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ap;->c:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 1300
    iput-object p2, p0, Lcom/sleepycat/b/i/e/ap;->a:Lcom/sleepycat/b/p/au;

    .line 1301
    iput-object p3, p0, Lcom/sleepycat/b/i/e/ap;->b:[Lcom/sleepycat/b/i/c/am;

    .line 1302
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1317
    sget-object v0, Lcom/sleepycat/b/i/e/t;->v:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 1312
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ap;->a:Lcom/sleepycat/b/p/au;

    .line 2101
    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    .line 1312
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ap;->b:[Lcom/sleepycat/b/i/c/am;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/ap;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
