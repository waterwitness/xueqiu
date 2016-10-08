.class public Lcom/sleepycat/b/h/b;
.super Ljava/lang/Object;
.source "CheckpointStart.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field private a:Lcom/sleepycat/b/p/aq;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 5

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/b/h/b;->a:Lcom/sleepycat/b/p/aq;

    .line 36
    iput-wide p1, p0, Lcom/sleepycat/b/h/b;->b:J

    .line 37
    if-nez p3, :cond_0

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/sleepycat/b/h/b;->c:Ljava/lang/String;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iput-object p3, p0, Lcom/sleepycat/b/h/b;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sleepycat/b/h/b;->a:Lcom/sleepycat/b/p/aq;

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/b;->b:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/h/b;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .prologue
    .line 84
    const-string v0, "<CkptStart invoker=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/h/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/h/b;->a:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v0, "\" id=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/h/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sleepycat/b/h/b;->a:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 66
    iget-wide v0, p0, Lcom/sleepycat/b/h/b;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 67
    iget-object v0, p0, Lcom/sleepycat/b/h/b;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/h/b;->a:Lcom/sleepycat/b/p/aq;

    .line 76
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sleepycat/b/h/b;->b:J

    .line 77
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/h/b;->c:Ljava/lang/String;

    .line 78
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    return-wide v0
.end method
