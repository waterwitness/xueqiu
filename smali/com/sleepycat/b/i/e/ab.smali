.class public Lcom/sleepycat/b/i/e/ab;
.super Lcom/sleepycat/b/i/e/ag;
.source "Protocol.java"


# instance fields
.field final synthetic a:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/am;I)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/sleepycat/b/i/e/ab;->a:Lcom/sleepycat/b/i/e/t;

    .line 572
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/i/e/ag;-><init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/am;I)V

    .line 573
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/sleepycat/b/i/e/t;->e:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Lcom/sleepycat/b/i/e/ag;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()B
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Lcom/sleepycat/b/i/e/ag;->c()B

    move-result v0

    return v0
.end method

.method public final bridge synthetic d()Lcom/sleepycat/b/am;
    .locals 1

    .prologue
    .line 569
    invoke-super {p0}, Lcom/sleepycat/b/i/e/ag;->d()Lcom/sleepycat/b/am;

    move-result-object v0

    return-object v0
.end method
