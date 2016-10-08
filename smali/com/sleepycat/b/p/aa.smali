.class public Lcom/sleepycat/b/p/aa;
.super Lcom/sleepycat/b/g/a;
.source "Matchpoint.java"


# instance fields
.field private a:Lcom/sleepycat/b/p/aq;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sleepycat/b/p/aa;->a:Lcom/sleepycat/b/p/aq;

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v0

    iget v1, p0, Lcom/sleepycat/b/p/aa;->b:I

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 105
    const-string v0, "<Matchpoint"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/p/aa;->a:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, "\" master=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/b/p/aa;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sleepycat/b/p/aa;->a:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 88
    iget v0, p0, Lcom/sleepycat/b/p/aa;->b:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 89
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/p/aa;->a:Lcom/sleepycat/b/p/aq;

    .line 97
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/p/aa;->b:I

    .line 98
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    instance-of v1, p1, Lcom/sleepycat/b/p/aa;

    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    check-cast p1, Lcom/sleepycat/b/p/aa;

    .line 126
    iget-object v1, p1, Lcom/sleepycat/b/p/aa;->a:Lcom/sleepycat/b/p/aq;

    iget-object v2, p0, Lcom/sleepycat/b/p/aa;->a:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/p/aq;->a(Lcom/sleepycat/b/p/aq;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/sleepycat/b/p/aa;->b:I

    iget v2, p0, Lcom/sleepycat/b/p/aa;->b:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method
