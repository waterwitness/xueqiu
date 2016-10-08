.class public Lcom/sleepycat/b/i/d/k;
.super Lcom/sleepycat/b/i/d/l;
.source "Protocol.java"


# instance fields
.field final synthetic b:Lcom/sleepycat/b/i/d/g;

.field private final d:Lcom/sleepycat/b/i/d/d;

.field private final e:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/i/d/d;JJ)V
    .locals 7

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sleepycat/b/i/d/k;->b:Lcom/sleepycat/b/i/d/g;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    .line 189
    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/i/d/l;-><init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;J)V

    .line 190
    iput-object p4, p0, Lcom/sleepycat/b/i/d/k;->d:Lcom/sleepycat/b/i/d/d;

    .line 191
    iput-wide p7, p0, Lcom/sleepycat/b/i/d/k;->e:J

    .line 192
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/i/c/av;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sleepycat/b/i/d/k;->b:Lcom/sleepycat/b/i/d/g;

    iget-object v0, v0, Lcom/sleepycat/b/i/d/g;->c:Lcom/sleepycat/b/i/c/av;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/d/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/d/k;->d:Lcom/sleepycat/b/i/d/d;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/d/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/d/k;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
