.class public final Lcom/sleepycat/b/i/c/r;
.super Lcom/sleepycat/a/a/k;
.source "RepGroupDB.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Lcom/sleepycat/b/i/c/am;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method

.method public static a(Lcom/sleepycat/b/i/c/am;Lcom/sleepycat/a/a/m;)V
    .locals 4

    .prologue
    .line 839
    .line 1241
    iget-object v0, p0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 2190
    iget-object v1, p0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 3074
    iget-object v2, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 3075
    iget v1, v1, Lcom/sleepycat/b/i/c/b/x;->b:I

    invoke-virtual {p1, v1}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 3208
    iget-object v1, p0, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 841
    invoke-virtual {v1}, Lcom/sleepycat/b/i/o;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sleepycat/a/a/m;->a(I)Lcom/sleepycat/a/a/m;

    .line 4174
    iget-boolean v1, p0, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 842
    invoke-virtual {p1, v1}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 4178
    iget-boolean v1, p0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 843
    invoke-virtual {p1, v1}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 4215
    iget-object v1, p0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    .line 844
    invoke-virtual {p1, v1}, Lcom/sleepycat/a/a/m;->a(Ljava/lang/String;)Lcom/sleepycat/a/a/m;

    .line 4226
    iget v1, p0, Lcom/sleepycat/b/i/c/am;->f:I

    .line 845
    invoke-virtual {p1, v1}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 4825
    iget-object v1, v0, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 5101
    iget-wide v2, v1, Lcom/sleepycat/b/p/au;->c:J

    .line 846
    invoke-virtual {p1, v2, v3}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 5829
    iget-wide v0, v0, Lcom/sleepycat/b/i/c/u;->b:J

    .line 847
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 6186
    iget v0, p0, Lcom/sleepycat/b/i/c/am;->h:I

    .line 848
    invoke-virtual {p1, v0}, Lcom/sleepycat/a/a/m;->b(I)Lcom/sleepycat/a/a/m;

    .line 849
    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 6824
    new-instance v0, Lcom/sleepycat/b/i/c/am;

    invoke-static {p1}, Lcom/sleepycat/b/i/c/b/x;->a(Lcom/sleepycat/a/a/l;)Lcom/sleepycat/b/i/c/b/x;

    move-result-object v1

    invoke-static {}, Lcom/sleepycat/b/i/o;->values()[Lcom/sleepycat/b/i/o;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->c()B

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v3

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v6

    new-instance v7, Lcom/sleepycat/b/i/c/u;

    new-instance v8, Lcom/sleepycat/b/p/au;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Lcom/sleepycat/b/p/au;-><init>(J)V

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v10

    invoke-direct {v7, v8, v10, v11}, Lcom/sleepycat/b/i/c/u;-><init>(Lcom/sleepycat/b/p/au;J)V

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->d()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/b/i/c/am;-><init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/o;ZZLjava/lang/String;ILcom/sleepycat/b/i/c/u;I)V

    .line 820
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 0

    .prologue
    .line 820
    check-cast p1, Lcom/sleepycat/b/i/c/am;

    invoke-static {p1, p2}, Lcom/sleepycat/b/i/c/r;->a(Lcom/sleepycat/b/i/c/am;Lcom/sleepycat/a/a/m;)V

    return-void
.end method
