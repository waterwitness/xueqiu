.class public Lcom/sleepycat/b/l/a/f;
.super Ljava/lang/Object;
.source "INDupDeleteInfo.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field private a:J

.field private b:[B

.field private c:[B

.field private final d:Lcom/sleepycat/b/c/h;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/sleepycat/b/c/h;

    invoke-direct {v0}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/a/f;->d:Lcom/sleepycat/b/c/h;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, "<INDupDeleteEntry node=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/l/a/f;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/sleepycat/b/l/a/f;->b:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v0, p0, Lcom/sleepycat/b/l/a/f;->c:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v0, p0, Lcom/sleepycat/b/l/a/f;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 113
    const-string v0, "</INDupDeleteEntry>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/sleepycat/b/aa;->b()Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ge p2, v6, :cond_0

    move v0, v1

    .line 89
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/l/a/f;->a:J

    .line 90
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/b/l/a/f;->b:[B

    .line 92
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l/a/f;->c:[B

    .line 93
    iget-object v0, p0, Lcom/sleepycat/b/l/a/f;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 101
    if-lt p2, v6, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/b/l/a/f;->e:Z

    .line 102
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v1, v2

    .line 101
    goto :goto_1
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    return-wide v0
.end method
