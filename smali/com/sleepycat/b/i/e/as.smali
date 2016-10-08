.class public Lcom/sleepycat/b/i/e/as;
.super Lcom/sleepycat/b/i/h/k;
.source "Protocol.java"


# instance fields
.field public final a:J

.field final synthetic b:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;J)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/sleepycat/b/i/e/as;->b:Lcom/sleepycat/b/i/e/t;

    .line 1008
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/k;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 1009
    iput-wide p2, p0, Lcom/sleepycat/b/i/e/as;->a:J

    .line 1010
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1014
    sget-object v0, Lcom/sleepycat/b/i/e/t;->w:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 1023
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/as;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/as;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
