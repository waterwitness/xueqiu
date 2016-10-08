.class public Lcom/sleepycat/b/i/e/u;
.super Lcom/sleepycat/b/i/h/d;
.source "Protocol.java"


# instance fields
.field public final a:J

.field final synthetic b:Lcom/sleepycat/b/i/e/t;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/e/t;J)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/sleepycat/b/i/e/u;->b:Lcom/sleepycat/b/i/e/t;

    .line 1141
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/d;-><init>(Lcom/sleepycat/b/i/h/a;)V

    .line 1142
    iput-wide p2, p0, Lcom/sleepycat/b/i/e/u;->a:J

    .line 1143
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/h/e;
    .locals 1

    .prologue
    .line 1147
    sget-object v0, Lcom/sleepycat/b/i/e/t;->q:Lcom/sleepycat/b/i/h/e;

    return-object v0
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 1153
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/e/u;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1154
    iget-wide v2, p0, Lcom/sleepycat/b/i/e/u;->a:J

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 1155
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1156
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " txn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/e/u;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
