.class public abstract Lcom/sleepycat/b/a/b;
.super Ljava/lang/Object;
.source "BaseUtilizationTracker.java"


# static fields
.field static final synthetic g:Z


# instance fields
.field public b:Lcom/sleepycat/b/c/ad;

.field public c:Lcom/sleepycat/b/a/c;

.field d:J

.field volatile e:J

.field volatile f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sleepycat/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/b;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/a/c;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/a/b;->b:Lcom/sleepycat/b/c/ad;

    .line 48
    iput-object p2, p0, Lcom/sleepycat/b/a/b;->c:Lcom/sleepycat/b/a/c;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/a/b;->d:J

    .line 51
    return-void
.end method

.method public static a(Lcom/sleepycat/b/g/af;)Z
    .locals 1

    .prologue
    .line 333
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/g/af;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/g/af;->v:Lcom/sleepycat/b/g/af;

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/af;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/g/af;)Z
    .locals 1

    .prologue
    .line 343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/g/af;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Lcom/sleepycat/b/a/f;
.end method

.method public final a(J)Lcom/sleepycat/b/a/z;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sleepycat/b/a/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;IZZZZ)V
    .locals 13

    .prologue
    .line 147
    sget-boolean v2, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v2, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/sleepycat/b/a/b;->a(Lcom/sleepycat/b/g/af;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 148
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/sleepycat/b/a/b;->b(Lcom/sleepycat/b/g/af;)Z

    move-result v3

    .line 149
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    .line 150
    if-eqz p6, :cond_4

    .line 151
    invoke-virtual {p0, v4, v5}, Lcom/sleepycat/b/a/b;->b(J)Lcom/sleepycat/b/a/z;

    move-result-object v6

    .line 152
    if-eqz v3, :cond_5

    .line 153
    iget v2, v6, Lcom/sleepycat/b/a/z;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/sleepycat/b/a/z;->i:I

    .line 155
    if-lez p5, :cond_1

    .line 156
    iget v2, v6, Lcom/sleepycat/b/a/z;->j:I

    add-int v2, v2, p5

    iput v2, v6, Lcom/sleepycat/b/a/z;->j:I

    .line 157
    iget v2, v6, Lcom/sleepycat/b/a/z;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/sleepycat/b/a/z;->k:I

    .line 164
    :cond_1
    if-eqz p8, :cond_4

    .line 165
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v8

    .line 166
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_4

    .line 1102
    iget-boolean v2, v6, Lcom/sleepycat/b/a/z;->p:Z

    if-eqz v2, :cond_4

    .line 1105
    const/4 v2, 0x0

    .line 1106
    iget-object v7, v6, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    if-nez v7, :cond_2

    .line 1107
    new-instance v2, Lcom/sleepycat/b/a/t;

    invoke-direct {v2}, Lcom/sleepycat/b/a/t;-><init>()V

    iput-object v2, v6, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    .line 1108
    sget v2, Lcom/sleepycat/b/c/ao;->Q:I

    add-int/lit8 v2, v2, 0x0

    .line 1110
    :cond_2
    iget-object v7, v6, Lcom/sleepycat/b/a/z;->n:Lcom/sleepycat/b/a/t;

    move/from16 v0, p9

    invoke-virtual {v7, v8, v9, v0}, Lcom/sleepycat/b/a/t;->a(JZ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1111
    sget v7, Lcom/sleepycat/b/c/ao;->R:I

    add-int/2addr v2, v7

    .line 1113
    :cond_3
    if-eqz v2, :cond_4

    .line 1114
    invoke-virtual {v6, v2}, Lcom/sleepycat/b/a/z;->a(I)V

    .line 171
    :cond_4
    if-eqz p7, :cond_7

    .line 173
    sget-boolean v2, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v2, :cond_6

    if-nez p3, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No DB for lsn="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 160
    :cond_5
    iget v2, v6, Lcom/sleepycat/b/a/z;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v6, Lcom/sleepycat/b/a/z;->h:I

    .line 162
    sget-boolean v2, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v2, :cond_1

    if-eqz p5, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 175
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v4, v5}, Lcom/sleepycat/b/a/b;->a(Ljava/lang/Object;J)Lcom/sleepycat/b/a/f;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    if-eqz v3, :cond_8

    .line 179
    iget v3, v2, Lcom/sleepycat/b/a/f;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/a/f;->f:I

    .line 181
    if-lez p5, :cond_7

    .line 182
    iget v3, v2, Lcom/sleepycat/b/a/f;->g:I

    add-int v3, v3, p5

    iput v3, v2, Lcom/sleepycat/b/a/f;->g:I

    .line 183
    iget v3, v2, Lcom/sleepycat/b/a/f;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/a/f;->h:I

    .line 192
    :cond_7
    return-void

    .line 186
    :cond_8
    iget v3, v2, Lcom/sleepycat/b/a/f;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/a/f;->e:I

    .line 188
    sget-boolean v2, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v2, :cond_7

    if-eqz p5, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public final a(JLjava/lang/Object;Lcom/sleepycat/b/g/af;I)Z
    .locals 5

    .prologue
    .line 95
    sget-boolean v0, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_0
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/a/b;->b(J)Lcom/sleepycat/b/a/z;

    move-result-object v2

    .line 99
    iget v3, v2, Lcom/sleepycat/b/a/o;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sleepycat/b/a/o;->a:I

    .line 100
    iget v3, v2, Lcom/sleepycat/b/a/o;->b:I

    add-int/2addr v3, p5

    iput v3, v2, Lcom/sleepycat/b/a/o;->b:I

    .line 101
    invoke-static {p4}, Lcom/sleepycat/b/a/b;->b(Lcom/sleepycat/b/g/af;)Z

    move-result v3

    .line 102
    if-eqz v3, :cond_1

    iget v4, v2, Lcom/sleepycat/b/a/o;->g:I

    if-ge v4, p5, :cond_1

    .line 103
    iput p5, v2, Lcom/sleepycat/b/a/o;->g:I

    .line 105
    :cond_1
    invoke-static {p4}, Lcom/sleepycat/b/a/b;->a(Lcom/sleepycat/b/g/af;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    sget-boolean v4, Lcom/sleepycat/b/a/b;->g:Z

    if-nez v4, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No DB for lsn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 109
    :cond_2
    invoke-virtual {p0, p3, v0, v1}, Lcom/sleepycat/b/a/b;->a(Ljava/lang/Object;J)Lcom/sleepycat/b/a/f;

    move-result-object v0

    .line 111
    if-eqz v3, :cond_4

    .line 112
    iget v1, v2, Lcom/sleepycat/b/a/o;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/sleepycat/b/a/o;->e:I

    .line 113
    iget v1, v2, Lcom/sleepycat/b/a/o;->f:I

    add-int/2addr v1, p5

    iput v1, v2, Lcom/sleepycat/b/a/o;->f:I

    .line 114
    if-eqz v0, :cond_3

    .line 115
    iget v1, v0, Lcom/sleepycat/b/a/f;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/a/f;->c:I

    .line 116
    iget v1, v0, Lcom/sleepycat/b/a/f;->d:I

    add-int/2addr v1, p5

    iput v1, v0, Lcom/sleepycat/b/a/f;->d:I

    .line 129
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/sleepycat/b/a/b;->e:J

    int-to-long v2, p5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/a/b;->e:J

    .line 130
    iget-wide v0, p0, Lcom/sleepycat/b/a/b;->e:J

    iget-object v2, p0, Lcom/sleepycat/b/a/b;->c:Lcom/sleepycat/b/a/c;

    iget-wide v2, v2, Lcom/sleepycat/b/a/c;->M:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 119
    :cond_4
    iget v1, v2, Lcom/sleepycat/b/a/o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/sleepycat/b/a/o;->c:I

    .line 120
    iget v1, v2, Lcom/sleepycat/b/a/o;->d:I

    add-int/2addr v1, p5

    iput v1, v2, Lcom/sleepycat/b/a/o;->d:I

    .line 121
    if-eqz v0, :cond_3

    .line 122
    iget v1, v0, Lcom/sleepycat/b/a/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sleepycat/b/a/f;->a:I

    .line 123
    iget v1, v0, Lcom/sleepycat/b/a/f;->b:I

    add-int/2addr v1, p5

    iput v1, v0, Lcom/sleepycat/b/a/f;->b:I

    goto :goto_0

    .line 130
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/Long;J)Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)Lcom/sleepycat/b/a/z;
    .locals 5

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/sleepycat/b/a/b;->d:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 292
    iput-wide p1, p0, Lcom/sleepycat/b/a/b;->d:J

    .line 294
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 295
    iget-object v0, p0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/z;

    .line 296
    if-nez v0, :cond_1

    .line 298
    new-instance v0, Lcom/sleepycat/b/a/z;

    iget-object v2, p0, Lcom/sleepycat/b/a/b;->c:Lcom/sleepycat/b/a/c;

    iget-boolean v2, v2, Lcom/sleepycat/b/a/c;->N:Z

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/sleepycat/b/a/z;-><init>(Lcom/sleepycat/b/a/b;JZ)V

    .line 299
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 301
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iput-object v2, p0, Lcom/sleepycat/b/a/b;->f:Ljava/util/Map;

    .line 304
    :cond_1
    return-object v0
.end method
