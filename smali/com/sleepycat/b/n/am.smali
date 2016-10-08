.class public final Lcom/sleepycat/b/n/am;
.super Ljava/lang/Object;
.source "WriteLockInfo.java"


# static fields
.field static final g:Lcom/sleepycat/b/n/am;


# instance fields
.field public a:J

.field public b:Z

.field public c:I

.field public d:Lcom/sleepycat/b/c/i;

.field public e:Z

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/sleepycat/b/n/am;

    invoke-direct {v0}, Lcom/sleepycat/b/n/am;-><init>()V

    sput-object v0, Lcom/sleepycat/b/n/am;->g:Lcom/sleepycat/b/n/am;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide v2, p0, Lcom/sleepycat/b/n/am;->a:J

    .line 58
    iput-wide v2, p0, Lcom/sleepycat/b/n/am;->a:J

    .line 59
    iput-boolean v1, p0, Lcom/sleepycat/b/n/am;->b:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/n/am;->e:Z

    .line 61
    iput-boolean v1, p0, Lcom/sleepycat/b/n/am;->f:Z

    .line 62
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/i;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sleepycat/b/n/am;->d:Lcom/sleepycat/b/c/i;

    .line 90
    iput p2, p0, Lcom/sleepycat/b/n/am;->c:I

    .line 91
    return-void
.end method

.method public final a(Lcom/sleepycat/b/n/am;)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p1, Lcom/sleepycat/b/n/am;->d:Lcom/sleepycat/b/c/i;

    iput-object v0, p0, Lcom/sleepycat/b/n/am;->d:Lcom/sleepycat/b/c/i;

    .line 111
    iget v0, p1, Lcom/sleepycat/b/n/am;->c:I

    iput v0, p0, Lcom/sleepycat/b/n/am;->c:I

    .line 112
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abortLsn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/n/am;->a:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortKnownDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/n/am;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " neverLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/n/am;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " createdThisTxn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/n/am;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " abortLogSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/n/am;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
