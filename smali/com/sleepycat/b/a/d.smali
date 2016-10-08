.class public final Lcom/sleepycat/b/a/d;
.super Ljava/lang/Object;
.source "CleanerLogSummary.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/a/ab;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/a/d;->b:J

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/a/d;->c:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/List;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/a/ab;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    .line 33
    iput-wide p2, p0, Lcom/sleepycat/b/a/d;->b:J

    .line 34
    iput p4, p0, Lcom/sleepycat/b/a/d;->c:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/sleepycat/b/a/d;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/b/a/d;->c:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/ab;

    .line 60
    iget v3, v0, Lcom/sleepycat/b/a/ab;->a:I

    invoke-static {v3}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 61
    iget v3, v0, Lcom/sleepycat/b/a/ab;->b:I

    invoke-static {v3}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 62
    iget v3, v0, Lcom/sleepycat/b/a/ab;->c:I

    invoke-static {v3}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 63
    iget v0, v0, Lcom/sleepycat/b/a/ab;->d:I

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 128
    const-string v0, "<CleanerLogSummary endFileNumAtLastAdjustment=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/a/d;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v0, "\" initialAdjustments=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/a/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, "\" recentLNSizesAndCounts=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/ab;

    .line 133
    const-string v2, "Cor:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget v2, v0, Lcom/sleepycat/b/a/ab;->a:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    iget v2, v0, Lcom/sleepycat/b/a/ab;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v2, "-Est:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget v2, v0, Lcom/sleepycat/b/a/ab;->c:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    iget v0, v0, Lcom/sleepycat/b/a/ab;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_0
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/sleepycat/b/a/d;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 70
    iget v0, p0, Lcom/sleepycat/b/a/d;->c:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 71
    iget-object v0, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 72
    iget-object v0, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/ab;

    .line 73
    iget v2, v0, Lcom/sleepycat/b/a/ab;->a:I

    invoke-static {p1, v2}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 74
    iget v2, v0, Lcom/sleepycat/b/a/ab;->b:I

    invoke-static {p1, v2}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 75
    iget v2, v0, Lcom/sleepycat/b/a/ab;->c:I

    invoke-static {p1, v2}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 76
    iget v0, v0, Lcom/sleepycat/b/a/ab;->d:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 8

    .prologue
    .line 81
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/a/d;->b:J

    .line 82
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/d;->c:I

    .line 83
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 84
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 85
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 86
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 87
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 88
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 89
    iget-object v6, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    new-instance v7, Lcom/sleepycat/b/a/ab;

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/sleepycat/b/a/ab;-><init>(IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 96
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 106
    instance-of v1, p1, Lcom/sleepycat/b/a/d;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    check-cast p1, Lcom/sleepycat/b/a/d;

    .line 110
    iget-wide v2, p0, Lcom/sleepycat/b/a/d;->b:J

    iget-wide v4, p1, Lcom/sleepycat/b/a/d;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 113
    iget v1, p0, Lcom/sleepycat/b/a/d;->c:I

    iget v2, p1, Lcom/sleepycat/b/a/d;->c:I

    if-ne v1, v2, :cond_0

    .line 116
    iget-object v1, p0, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    iget-object v2, p1, Lcom/sleepycat/b/a/d;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/sleepycat/b/a/d;->b:J

    iget v2, p0, Lcom/sleepycat/b/a/d;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/a/d;->a(Ljava/lang/StringBuilder;Z)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
