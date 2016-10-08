.class public Lcom/sleepycat/b/g/l;
.super Ljava/lang/Object;
.source "FileHeader.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# instance fields
.field a:J

.field b:J

.field public c:I

.field private d:Lcom/sleepycat/b/p/aq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(JJ)V
    .locals 5

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/sleepycat/b/g/l;->a:J

    .line 37
    iput-wide p3, p0, Lcom/sleepycat/b/g/l;->b:J

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/b/g/l;->d:Lcom/sleepycat/b/p/aq;

    .line 40
    const/16 v0, 0x8

    iput v0, p0, Lcom/sleepycat/b/g/l;->c:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x18

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 148
    const-string v0, "<FileHeader num=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-wide v0, p0, Lcom/sleepycat/b/g/l;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v0, "\" lastEntryInPrevFileOffset=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-wide v0, p0, Lcom/sleepycat/b/g/l;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, "\" logVersion=\"0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v0, p0, Lcom/sleepycat/b/g/l;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "\" time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/l;->d:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sleepycat/b/g/l;->d:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0}, Lcom/sleepycat/b/p/aq;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 117
    iget-wide v0, p0, Lcom/sleepycat/b/g/l;->a:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;J)V

    .line 118
    iget-wide v0, p0, Lcom/sleepycat/b/g/l;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;J)V

    .line 119
    iget v0, p0, Lcom/sleepycat/b/g/l;->c:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 120
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/l;->d:Lcom/sleepycat/b/p/aq;

    .line 131
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/l;->a:J

    .line 132
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/l;->b:J

    .line 133
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/l;->c:I

    .line 140
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/b/g/l;->a(Ljava/lang/StringBuilder;Z)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
