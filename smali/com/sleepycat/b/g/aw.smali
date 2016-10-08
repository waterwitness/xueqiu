.class public Lcom/sleepycat/b/g/aw;
.super Lcom/sleepycat/b/g/a;
.source "Trace.java"


# instance fields
.field private a:Lcom/sleepycat/b/p/aq;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 3053
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3055
    new-instance v1, Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    .line 36
    iput-object v1, p0, Lcom/sleepycat/b/g/aw;->a:Lcom/sleepycat/b/p/aq;

    .line 37
    iput-object p1, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/sleepycat/b/g/aw;

    invoke-direct {v0, p1}, Lcom/sleepycat/b/g/aw;-><init>(Ljava/lang/String;)V

    .line 4077
    invoke-static {p0}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4371
    iget-object v1, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 4078
    new-instance v2, Lcom/sleepycat/b/g/a/s;

    invoke-direct {v2, v0}, Lcom/sleepycat/b/g/a/s;-><init>(Lcom/sleepycat/b/g/aw;)V

    sget-object v0, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/b/g/am;->b(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J

    .line 73
    :cond_0
    return-void
.end method

.method private static a(Lcom/sleepycat/b/c/ad;)Z
    .locals 1

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 3330
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 60
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/b/c/ad;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3519
    iget-boolean v0, p0, Lcom/sleepycat/b/c/ad;->X:Z

    .line 60
    if-eqz v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 93
    invoke-static {p0}, Lcom/sleepycat/b/g/aw;->a(Lcom/sleepycat/b/c/ad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5371
    iget-object v0, p0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 94
    new-instance v1, Lcom/sleepycat/b/g/a/s;

    new-instance v2, Lcom/sleepycat/b/g/aw;

    invoke-direct {v2, p1}, Lcom/sleepycat/b/g/aw;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/b/g/a/s;-><init>(Lcom/sleepycat/b/g/aw;)V

    sget-object v2, Lcom/sleepycat/b/g/av;->g:Lcom/sleepycat/b/g/av;

    .line 6247
    iget-object v0, v0, Lcom/sleepycat/b/g/am;->i:Ljava/util/Queue;

    new-instance v3, Lcom/sleepycat/b/g/an;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/sleepycat/b/g/an;-><init>(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;B)V

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sleepycat/b/g/aw;->a:Lcom/sleepycat/b/p/aq;

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(Lcom/sleepycat/b/p/aq;)I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 143
    const-string v0, "<Dbg time=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/sleepycat/b/g/aw;->a:Lcom/sleepycat/b/p/aq;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v0, "<msg val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v0, "</Dbg>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sleepycat/b/g/aw;->a:Lcom/sleepycat/b/p/aq;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V

    .line 124
    iget-object v0, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 134
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/aw;->a:Lcom/sleepycat/b/p/aq;

    .line 135
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    .line 136
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 2

    .prologue
    .line 166
    instance-of v0, p1, Lcom/sleepycat/b/g/aw;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    check-cast p1, Lcom/sleepycat/b/g/aw;

    iget-object v1, p1, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 157
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 194
    if-ne p0, p1, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 199
    :cond_0
    instance-of v0, p1, Lcom/sleepycat/b/g/aw;

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/b/g/aw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sleepycat/b/g/aw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/b/g/aw;->a:Lcom/sleepycat/b/p/aq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
