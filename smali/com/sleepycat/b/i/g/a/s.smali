.class public Lcom/sleepycat/b/i/g/a/s;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field final a:I

.field final synthetic b:Lcom/sleepycat/b/i/g/a/i;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/g/a/i;I)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sleepycat/b/i/g/a/s;->b:Lcom/sleepycat/b/i/g/a/i;

    .line 292
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 293
    iput p2, p0, Lcom/sleepycat/b/i/g/a/s;->a:I

    .line 294
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Lcom/sleepycat/b/i/g/a/i;->g:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    .prologue
    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sleepycat/b/i/g/a/s;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/g/a/s;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
