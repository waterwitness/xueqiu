.class public Lcom/sleepycat/b/i/g/a/v;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field final a:[B

.field final b:[B

.field final c:Lcom/sleepycat/b/p/au;

.field final synthetic d:Lcom/sleepycat/b/i/g/a/i;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/g/a/i;Lcom/sleepycat/b/i/g/a/w;)V
    .locals 1

    .prologue
    .line 370
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/v;->d:Lcom/sleepycat/b/i/g/a/i;

    .line 371
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 1041
    iget-object v0, p2, Lcom/sleepycat/b/i/g/a/w;->a:[B

    .line 372
    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/v;->a:[B

    .line 1045
    iget-object v0, p2, Lcom/sleepycat/b/i/g/a/w;->b:[B

    .line 373
    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/v;->b:[B

    .line 1049
    iget-object v0, p2, Lcom/sleepycat/b/i/g/a/w;->c:Lcom/sleepycat/b/p/au;

    .line 374
    iput-object v0, p0, Lcom/sleepycat/b/i/g/a/v;->c:Lcom/sleepycat/b/p/au;

    .line 375
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/sleepycat/b/i/g/a/i;->i:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 386
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/v;->a:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/v;->b:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/g/a/v;->c:Lcom/sleepycat/b/p/au;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/g/a/v;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
