.class public final Lcom/sleepycat/b/a/f;
.super Ljava/lang/Object;
.source "DbFileSummary.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private c()Lcom/sleepycat/b/a/f;
    .locals 2

    .prologue
    .line 140
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a/f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/sleepycat/b/a/f;->a:I

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/b/a/f;->b:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/f;->c:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/f;->d:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/f;->e:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/f;->f:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/f;->g:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sleepycat/b/a/f;->h:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 102
    const-string v0, "<summary totalINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v0, p0, Lcom/sleepycat/b/a/f;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "\" totalINSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v0, p0, Lcom/sleepycat/b/a/f;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "\" totalLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v0, p0, Lcom/sleepycat/b/a/f;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "\" totalLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v0, p0, Lcom/sleepycat/b/a/f;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, "\" obsoleteINCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v0, p0, Lcom/sleepycat/b/a/f;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "\" obsoleteLNCount=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v0, p0, Lcom/sleepycat/b/a/f;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v0, "\" obsoleteLNSize=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v0, p0, Lcom/sleepycat/b/a/f;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "\" obsoleteLNSizeCounted=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v0, p0, Lcom/sleepycat/b/a/f;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/sleepycat/b/a/f;->a:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 73
    iget v0, p0, Lcom/sleepycat/b/a/f;->b:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 74
    iget v0, p0, Lcom/sleepycat/b/a/f;->c:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 75
    iget v0, p0, Lcom/sleepycat/b/a/f;->d:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 76
    iget v0, p0, Lcom/sleepycat/b/a/f;->e:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 77
    iget v0, p0, Lcom/sleepycat/b/a/f;->f:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 78
    iget v0, p0, Lcom/sleepycat/b/a/f;->g:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 79
    iget v0, p0, Lcom/sleepycat/b/a/f;->h:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 80
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->a:I

    .line 88
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->b:I

    .line 89
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->c:I

    .line 90
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->d:I

    .line 91
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->e:I

    .line 92
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->f:I

    .line 93
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->g:I

    .line 94
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/a/f;->h:I

    .line 95
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sleepycat/b/a/f;->c()Lcom/sleepycat/b/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/a/f;->a(Ljava/lang/StringBuilder;Z)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
