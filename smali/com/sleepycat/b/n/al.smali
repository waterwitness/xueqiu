.class public final Lcom/sleepycat/b/n/al;
.super Ljava/lang/Object;
.source "UndoReader.java"


# instance fields
.field public final a:Lcom/sleepycat/b/g/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/b/g/a/k",
            "<*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/sleepycat/b/l/y;

.field public final c:Lcom/sleepycat/b/c/i;

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/g/a/k;Lcom/sleepycat/b/l/y;JLcom/sleepycat/b/c/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/g/a/k",
            "<*>;",
            "Lcom/sleepycat/b/l/y;",
            "J",
            "Lcom/sleepycat/b/c/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sleepycat/b/n/al;->a:Lcom/sleepycat/b/g/a/k;

    .line 39
    iput-object p2, p0, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    .line 40
    iput-wide p3, p0, Lcom/sleepycat/b/n/al;->d:J

    .line 41
    iput-object p5, p0, Lcom/sleepycat/b/n/al;->c:Lcom/sleepycat/b/c/i;

    .line 42
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/ad;JLjava/util/Map;)Lcom/sleepycat/b/n/al;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/ad;",
            "J",
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/c/h;",
            "Lcom/sleepycat/b/c/i;",
            ">;)",
            "Lcom/sleepycat/b/n/al;"
        }
    .end annotation

    .prologue
    .line 56
    .line 3371
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/g/am;->c(J)Lcom/sleepycat/b/g/a/m;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/g/a/k;

    .line 3552
    iget-object v0, v2, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 59
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/b/c/i;

    .line 60
    if-nez v6, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DB not found during non-recovery undo/rollback, id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 65
    :cond_0
    invoke-virtual {v2, v6}, Lcom/sleepycat/b/g/a/k;->c(Lcom/sleepycat/b/c/i;)V

    .line 66
    invoke-virtual {v2}, Lcom/sleepycat/b/g/a/k;->j()Lcom/sleepycat/b/l/y;

    move-result-object v3

    .line 68
    invoke-virtual {v3, v6, p1, p2}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/c/i;J)V

    .line 70
    new-instance v1, Lcom/sleepycat/b/n/al;

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/b/n/al;-><init>(Lcom/sleepycat/b/g/a/k;Lcom/sleepycat/b/l/y;JLcom/sleepycat/b/c/i;)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/n/al;->b:Lcom/sleepycat/b/l/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/n/al;->d:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
