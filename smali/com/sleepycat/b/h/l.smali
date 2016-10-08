.class public final Lcom/sleepycat/b/h/l;
.super Ljava/lang/Object;
.source "RecoveryInfo.java"


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Lcom/sleepycat/b/h/a;

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:Lcom/sleepycat/b/h/u;

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/n/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->a:J

    .line 24
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->b:J

    .line 25
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->c:J

    .line 26
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->d:J

    .line 27
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->e:J

    .line 28
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->f:J

    .line 34
    iput-wide v0, p0, Lcom/sleepycat/b/h/l;->g:J

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/h/l;->p:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v1, "Recovery Info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, " firstActive="

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/h/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 61
    const-string v1, " ckptStart="

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/h/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 62
    const-string v1, " ckptEnd="

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->e:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/h/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 63
    const-string v1, " lastUsed="

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/h/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 64
    const-string v1, " nextAvail="

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/h/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 65
    const-string v1, " useRoot="

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/h/l;->a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    .line 66
    iget-object v1, p0, Lcom/sleepycat/b/h/l;->h:Lcom/sleepycat/b/h/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " useMinReplicatedNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " useMaxNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, " useMinReplicatedDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, " useMaxDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, " useMinReplicatedTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->m:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, " useMaxTxnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/b/h/l;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
