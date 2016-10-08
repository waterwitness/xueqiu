.class public Lcom/sleepycat/b/a/g;
.super Ljava/lang/Object;
.source "DbFileSummaryMap.java"


# static fields
.field public static final a:I

.field static final synthetic e:Z


# instance fields
.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/sleepycat/b/c/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lcom/sleepycat/b/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/g;->e:Z

    .line 22
    sget v0, Lcom/sleepycat/b/c/ao;->m:I

    sget v1, Lcom/sleepycat/b/c/ao;->g:I

    add-int/2addr v0, v1

    sget v1, Lcom/sleepycat/b/c/ao;->P:I

    add-int/2addr v0, v1

    sput v0, Lcom/sleepycat/b/a/g;->a:I

    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    .line 43
    sget v0, Lcom/sleepycat/b/c/ao;->l:I

    iput v0, p0, Lcom/sleepycat/b/a/g;->c:I

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget v0, p0, Lcom/sleepycat/b/a/g;->c:I

    sget v1, Lcom/sleepycat/b/c/ao;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sleepycat/b/a/g;->c:I

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;ZZLcom/sleepycat/b/g/m;)Lcom/sleepycat/b/a/f;
    .locals 6

    .prologue
    .line 85
    sget-boolean v0, Lcom/sleepycat/b/a/g;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eq p2, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;

    .line 96
    if-nez v0, :cond_5

    .line 97
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3515
    iget-wide v4, p4, Lcom/sleepycat/b/g/m;->o:J

    .line 97
    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Lcom/sleepycat/b/g/m;->a(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    :cond_2
    new-instance v0, Lcom/sleepycat/b/a/f;

    invoke-direct {v0}, Lcom/sleepycat/b/a/f;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    sget-boolean v2, Lcom/sleepycat/b/a/g;->e:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_3
    iget v1, p0, Lcom/sleepycat/b/a/g;->c:I

    sget v2, Lcom/sleepycat/b/a/g;->a:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/b/a/g;->c:I

    .line 106
    if-eqz p2, :cond_4

    .line 107
    iget-object v1, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    sget v2, Lcom/sleepycat/b/a/g;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/c/ao;->f(J)V

    .line 120
    :cond_4
    sget-boolean v1, Lcom/sleepycat/b/a/g;->e:Z

    if-nez v1, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4515
    iget-wide v4, p4, Lcom/sleepycat/b/g/m;->o:J

    .line 120
    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Lcom/sleepycat/b/g/m;->a(J)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resurrected file: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 124
    :cond_5
    return-object v0
.end method

.method public final a()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    iget v1, p0, Lcom/sleepycat/b/a/g;->c:I

    rsub-int/lit8 v1, v1, 0x0

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->f(J)V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/a/g;->c:I

    .line 158
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)V
    .locals 4

    .prologue
    .line 60
    .line 3508
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 60
    iput-object v0, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    .line 61
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    iget v1, p0, Lcom/sleepycat/b/a/g;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/b/c/ao;->f(J)V

    .line 62
    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/b/a/f;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 196
    .line 5375
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 196
    invoke-virtual {v0}, Lcom/sleepycat/b/g/m;->c()[Ljava/lang/Long;

    move-result-object v1

    .line 197
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 198
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 200
    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 202
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->d:Lcom/sleepycat/b/c/ao;

    sget v3, Lcom/sleepycat/b/a/g;->a:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/b/c/ao;->f(J)V

    .line 203
    iget v0, p0, Lcom/sleepycat/b/a/g;->c:I

    sget v3, Lcom/sleepycat/b/a/g;->a:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sleepycat/b/a/g;->c:I

    goto :goto_0

    .line 206
    :cond_1
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sleepycat/b/a/g;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
