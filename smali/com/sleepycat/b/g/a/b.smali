.class public final Lcom/sleepycat/b/g/a/b;
.super Lcom/sleepycat/b/g/a/q;
.source "BINDeltaLogEntry.java"

# interfaces
.implements Lcom/sleepycat/b/g/a/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a/q",
        "<",
        "Lcom/sleepycat/b/l/c;",
        ">;",
        "Lcom/sleepycat/b/g/a/i;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/l/c;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/b/g/a/q;-><init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/sleepycat/b/l/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/q;-><init>(Ljava/lang/Class;)V

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/c/h;
    .locals 1

    .prologue
    .line 61
    .line 5102
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 61
    check-cast v0, Lcom/sleepycat/b/l/c;

    .line 5106
    iget-object v0, v0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    .line 62
    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/g/a/b;->b(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/l/j;
    .locals 4

    .prologue
    .line 52
    .line 3102
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 52
    check-cast v0, Lcom/sleepycat/b/l/c;

    .line 4133
    iget-object v1, p1, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 4371
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 3141
    iget-wide v2, v0, Lcom/sleepycat/b/l/c;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/g/am;->e(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/l/a;

    .line 3144
    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/l/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/a;)V

    .line 53
    return-object v1
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 72
    .line 6102
    iget-object v0, p0, Lcom/sleepycat/b/g/a/q;->c:Lcom/sleepycat/b/g/at;

    .line 72
    check-cast v0, Lcom/sleepycat/b/l/c;

    .line 6122
    iget-wide v0, v0, Lcom/sleepycat/b/l/c;->c:J

    .line 73
    return-wide v0
.end method
