.class public abstract Lcom/sleepycat/b/i/e/ag;
.super Lcom/sleepycat/b/i/e/ad;
.source "Protocol.java"


# instance fields
.field private final a:Lcom/sleepycat/b/am;

.field final synthetic c:Lcom/sleepycat/b/i/e/t;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/am;I)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ag;->c:Lcom/sleepycat/b/i/e/t;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/ad;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 529
    iput-object p2, p0, Lcom/sleepycat/b/i/e/ag;->a:Lcom/sleepycat/b/am;

    .line 530
    iput p3, p0, Lcom/sleepycat/b/i/e/ag;->d:I

    .line 531
    return-void
.end method


# virtual methods
.method public b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 535
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/e/ag;->a:Lcom/sleepycat/b/am;

    invoke-virtual {v2}, Lcom/sleepycat/b/am;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/sleepycat/b/i/e/ag;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/ag;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public c()B
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/sleepycat/b/i/e/ag;->d:I

    int-to-byte v0, v0

    return v0
.end method

.method public d()Lcom/sleepycat/b/am;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sleepycat/b/i/e/ag;->a:Lcom/sleepycat/b/am;

    return-object v0
.end method
