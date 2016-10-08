.class public abstract Lcom/sleepycat/b/i/e/al;
.super Lcom/sleepycat/b/i/e/ad;
.source "Protocol.java"


# instance fields
.field public final c:I

.field public final d:Lcom/sleepycat/b/i/c/b/x;

.field final synthetic e:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;I)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sleepycat/b/i/e/al;->e:Lcom/sleepycat/b/i/e/t;

    .line 311
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/ad;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 312
    iput p2, p0, Lcom/sleepycat/b/i/e/al;->c:I

    .line 313
    invoke-static {p1}, Lcom/sleepycat/b/i/e/t;->a(Lcom/sleepycat/b/i/e/t;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/e/al;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 314
    return-void
.end method


# virtual methods
.method public b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sleepycat/b/i/e/al;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/e/al;->d:Lcom/sleepycat/b/i/c/b/x;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/al;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
