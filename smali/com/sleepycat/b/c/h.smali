.class public final Lcom/sleepycat/b/c/h;
.super Lcom/sleepycat/b/g/a;
.source "DatabaseId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/b/g/a;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/c/h;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/sleepycat/b/c/h;->a:J

    .line 43
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/sleepycat/b/c/h;)I
    .locals 4

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    const-string v0, "null arg"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    iget-wide v2, p1, Lcom/sleepycat/b/c/h;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 103
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    iget-wide v2, p1, Lcom/sleepycat/b/c/h;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 105
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 156
    const-string v0, "<dbId id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 137
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 175
    instance-of v1, p1, Lcom/sleepycat/b/c/h;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/c/h;->a:J

    check-cast p1, Lcom/sleepycat/b/c/h;

    iget-wide v4, p1, Lcom/sleepycat/b/c/h;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/sleepycat/b/c/h;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/h;->a(Lcom/sleepycat/b/c/h;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/b/c/h;

    if-nez v2, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    check-cast p1, Lcom/sleepycat/b/c/h;

    iget-wide v2, p1, Lcom/sleepycat/b/c/h;->a:J

    iget-wide v4, p0, Lcom/sleepycat/b/c/h;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sleepycat/b/c/h;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
