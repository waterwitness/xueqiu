.class abstract Lcom/sleepycat/b/i/e/av;
.super Lcom/sleepycat/b/i/h/d;
.source "Protocol.java"


# instance fields
.field protected final b:Lcom/sleepycat/b/p/au;

.field final synthetic c:Lcom/sleepycat/b/i/e/t;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/sleepycat/b/i/e/av;->c:Lcom/sleepycat/b/i/e/t;

    .line 760
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 761
    iput-object p2, p0, Lcom/sleepycat/b/i/e/av;->b:Lcom/sleepycat/b/p/au;

    .line 762
    return-void
.end method


# virtual methods
.method public b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 772
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/av;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/sleepycat/b/i/e/av;->b:Lcom/sleepycat/b/p/au;

    .line 1101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 773
    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 774
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 775
    return-object v0
.end method

.method final c()Lcom/sleepycat/b/p/au;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/sleepycat/b/i/e/av;->b:Lcom/sleepycat/b/p/au;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/e/av;->b:Lcom/sleepycat/b/p/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
