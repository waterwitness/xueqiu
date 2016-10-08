.class public final Lcom/sleepycat/b/i/c/q;
.super Lcom/sleepycat/a/a/k;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Lcom/sleepycat/b/i/c/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 4796
    new-instance v0, Lcom/sleepycat/b/i/c/t;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/UUID;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v3

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v4

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;Ljava/util/UUID;IIILjava/util/Map;)V

    .line 792
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 792
    check-cast p1, Lcom/sleepycat/b/i/c/t;

    .line 2760
    iget-object v0, p1, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 1807
    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 3304
    iget-object v0, p1, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 1808
    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 4304
    iget-object v0, p1, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 1809
    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 4314
    iget v0, p1, Lcom/sleepycat/b/i/c/t;->c:I

    .line 1810
    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 4324
    iget v0, p1, Lcom/sleepycat/b/i/c/t;->d:I

    .line 1811
    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 4343
    iget v0, p1, Lcom/sleepycat/b/i/c/t;->e:I

    .line 1812
    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 792
    return-void
.end method
