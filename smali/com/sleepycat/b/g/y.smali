.class public Lcom/sleepycat/b/g/y;
.super Lcom/sleepycat/b/g/s;
.source "LNFileReader.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/g/af;",
            "Lcom/sleepycat/b/g/a/m;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/sleepycat/b/g/a/m;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sleepycat/b/g/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/y;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/ad;IJZJJJ)V
    .locals 14

    .prologue
    .line 70
    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p5

    move-wide/from16 v7, p3

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-direct/range {v3 .. v13}, Lcom/sleepycat/b/g/s;-><init>(Lcom/sleepycat/b/c/ad;IZJLjava/lang/Long;JJ)V

    .line 73
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/sleepycat/b/g/y;->d:J

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/b/g/y;->a:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/g/af;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sleepycat/b/g/af;->b()Lcom/sleepycat/b/g/a/m;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method protected final a()Z
    .locals 6

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->k:Lcom/sleepycat/b/g/ae;

    .line 1303
    iget-object v0, v0, Lcom/sleepycat/b/g/ae;->g:Lcom/sleepycat/b/g/au;

    .line 89
    invoke-virtual {p0}, Lcom/sleepycat/b/g/y;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/b/g/y;->d:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sleepycat/b/g/au;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 94
    :cond_0
    new-instance v0, Lcom/sleepycat/b/g/af;

    iget-object v1, p0, Lcom/sleepycat/b/g/y;->k:Lcom/sleepycat/b/g/ae;

    .line 2279
    iget-byte v1, v1, Lcom/sleepycat/b/g/ae;->b:B

    .line 94
    invoke-direct {v0, v1}, Lcom/sleepycat/b/g/af;-><init>(B)V

    .line 98
    iget-object v1, p0, Lcom/sleepycat/b/g/y;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/g/a/m;

    iput-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final a(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    iget-object v1, p0, Lcom/sleepycat/b/g/y;->e:Lcom/sleepycat/b/c/ad;

    iget-object v2, p0, Lcom/sleepycat/b/g/y;->k:Lcom/sleepycat/b/g/ae;

    invoke-interface {v0, v1, v2, p1}, Lcom/sleepycat/b/g/a/m;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    instance-of v0, v0, Lcom/sleepycat/b/g/a/k;

    return v0
.end method

.method public final h()Lcom/sleepycat/b/g/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/b/g/a/k",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    return-object v0
.end method

.method public final i()Lcom/sleepycat/b/g/a/o;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    instance-of v0, v0, Lcom/sleepycat/b/g/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/o;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/sleepycat/b/c/h;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    .line 2552
    iget-object v0, v0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 147
    return-object v0
.end method

.method public final k()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/a/k;->l()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/b/n/ak;

    return v0
.end method

.method public final m()J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ak;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/ak;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Lcom/sleepycat/b/q/a;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ak;

    .line 3038
    iget-object v0, v0, Lcom/sleepycat/b/n/ak;->d:Lcom/sleepycat/b/q/a;

    .line 175
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/b/n/ah;

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/b/n/v;

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/b/n/u;

    return v0
.end method

.method public final r()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/b/n/ac;

    return v0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ac;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/ac;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    invoke-interface {v0}, Lcom/sleepycat/b/g/a/m;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/n/ah;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/ah;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    .line 3556
    iget-wide v0, v0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 235
    return-wide v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sleepycat/b/g/y;->b:Lcom/sleepycat/b/g/a/m;

    check-cast v0, Lcom/sleepycat/b/g/a/k;

    .line 3560
    iget-boolean v0, v0, Lcom/sleepycat/b/g/a/k;->f:Z

    .line 242
    return v0
.end method
