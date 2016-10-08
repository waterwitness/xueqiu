.class public final Lcom/sleepycat/b/l/al;
.super Ljava/lang/Object;
.source "TreeLocation.java"


# instance fields
.field public a:Lcom/sleepycat/b/l/a;

.field public b:I

.field public c:[B

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/al;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/b/l/al;->b:I

    .line 25
    iput-object v1, p0, Lcom/sleepycat/b/l/al;->c:[B

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/l/al;->d:J

    .line 27
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<TreeLocation bin=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    if-nez v1, :cond_0

    .line 33
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :goto_0
    const-string v1, "\" index=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "\" lnKey=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Lcom/sleepycat/b/l/al;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "\" childLsn=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-wide v2, p0, Lcom/sleepycat/b/l/al;->d:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    .line 1342
    iget-wide v2, v1, Lcom/sleepycat/b/l/j;->c:J

    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
