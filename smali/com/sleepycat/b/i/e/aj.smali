.class public Lcom/sleepycat/b/i/e/aj;
.super Lcom/sleepycat/b/i/e/ad;
.source "Protocol.java"


# instance fields
.field public final a:Ljava/util/UUID;

.field final synthetic c:Lcom/sleepycat/b/i/e/t;

.field private final d:Lcom/sleepycat/b/i/c/b/x;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;Ljava/util/UUID;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sleepycat/b/i/e/aj;->c:Lcom/sleepycat/b/i/e/t;

    .line 700
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/e/ad;-><init>(Lcom/sleepycat/b/i/e/t;)V

    .line 701
    iput-object p2, p0, Lcom/sleepycat/b/i/e/aj;->a:Ljava/util/UUID;

    .line 702
    iput-object p3, p0, Lcom/sleepycat/b/i/e/aj;->d:Lcom/sleepycat/b/i/c/b/x;

    .line 703
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/sleepycat/b/i/e/t;->h:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 713
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/b/i/e/aj;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sleepycat/b/i/e/aj;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sleepycat/b/i/e/aj;->d:Lcom/sleepycat/b/i/c/b/x;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/aj;->a([Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
