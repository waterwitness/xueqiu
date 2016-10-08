.class public Lcom/sleepycat/b/p/au;
.super Ljava/lang/Object;
.source "VLSN.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/b/g/at;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/p/au;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/sleepycat/b/p/au;

.field public static final b:Lcom/sleepycat/b/p/au;


# instance fields
.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    new-instance v0, Lcom/sleepycat/b/p/au;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    sput-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    .line 57
    new-instance v0, Lcom/sleepycat/b/p/au;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    sput-object v0, Lcom/sleepycat/b/p/au;->b:Lcom/sleepycat/b/p/au;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lcom/sleepycat/b/p/au;->c:J

    .line 69
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 176
    const/16 v0, 0x8

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 206
    const-string v0, "<vlsn v=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/sleepycat/b/p/au;->c:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 185
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 197
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/p/au;->c:J

    .line 198
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 223
    instance-of v1, p1, Lcom/sleepycat/b/p/au;

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lcom/sleepycat/b/p/au;->c:J

    check-cast p1, Lcom/sleepycat/b/p/au;

    iget-wide v4, p1, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/p/au;)Z
    .locals 4

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/sleepycat/b/p/au;->c:J

    iget-wide v2, p0, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/sleepycat/b/p/au;)I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 146
    iget-wide v4, p0, Lcom/sleepycat/b/p/au;->c:J

    sget-object v3, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iget-wide v6, v3, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-wide v4, p1, Lcom/sleepycat/b/p/au;->c:J

    sget-object v3, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iget-wide v6, v3, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-wide v4, p0, Lcom/sleepycat/b/p/au;->c:J

    sget-object v3, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iget-wide v6, v3, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    move v0, v1

    .line 153
    goto :goto_0

    .line 156
    :cond_2
    iget-wide v4, p1, Lcom/sleepycat/b/p/au;->c:J

    sget-object v3, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iget-wide v6, v3, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    move v0, v2

    .line 158
    goto :goto_0

    .line 1101
    :cond_3
    iget-wide v4, p1, Lcom/sleepycat/b/p/au;->c:J

    .line 162
    iget-wide v6, p0, Lcom/sleepycat/b/p/au;->c:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    move v0, v2

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-wide v2, p0, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 167
    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/sleepycat/b/p/au;->c:J

    sget-object v2, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    iget-wide v2, v2, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 51
    check-cast p1, Lcom/sleepycat/b/p/au;

    invoke-virtual {p0, p1}, Lcom/sleepycat/b/p/au;->b(Lcom/sleepycat/b/p/au;)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/sleepycat/b/p/au;
    .locals 6

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sleepycat/b/p/au;->b:Lcom/sleepycat/b/p/au;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sleepycat/b/p/au;

    iget-wide v2, p0, Lcom/sleepycat/b/p/au;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    goto :goto_0
.end method

.method public final e()Lcom/sleepycat/b/p/au;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/sleepycat/b/p/au;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sleepycat/b/p/au;->a:Lcom/sleepycat/b/p/au;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/sleepycat/b/p/au;

    iget-wide v2, p0, Lcom/sleepycat/b/p/au;->c:J

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/sleepycat/b/p/au;-><init>(J)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 79
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    instance-of v1, p1, Lcom/sleepycat/b/p/au;

    if-eqz v1, :cond_0

    .line 87
    check-cast p1, Lcom/sleepycat/b/p/au;

    .line 88
    iget-wide v2, p1, Lcom/sleepycat/b/p/au;->c:J

    iget-wide v4, p0, Lcom/sleepycat/b/p/au;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/sleepycat/b/p/au;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 232
    const-string v0, "%,d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/sleepycat/b/p/au;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
