.class abstract Lcom/sleepycat/b/i/d/l;
.super Lcom/sleepycat/b/i/d/h;
.source "Protocol.java"


# instance fields
.field private final b:Ljava/lang/String;

.field final synthetic c:Lcom/sleepycat/b/i/d/g;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sleepycat/b/i/d/l;->c:Lcom/sleepycat/b/i/d/g;

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/d/h;-><init>(Lcom/sleepycat/b/i/d/g;Ljava/lang/String;)V

    .line 134
    iput-object p3, p0, Lcom/sleepycat/b/i/d/l;->b:Ljava/lang/String;

    .line 135
    iput-wide p4, p0, Lcom/sleepycat/b/i/d/l;->d:J

    .line 136
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/b/i/d/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/d/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/d/l;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
