.class public Lcom/sleepycat/b/p/j;
.super Ljava/lang/Object;
.source "DbLsn.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/sleepycat/b/p/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/p/j;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static a(I)J
    .locals 4

    .prologue
    .line 142
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(J)J
    .locals 2

    .prologue
    .line 92
    const-wide v0, 0xffffffffL

    invoke-static {v0, v1, p0, p1}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(JI)J
    .locals 6

    .prologue
    const-wide v2, 0xffffffffL

    .line 83
    int-to-long v0, p2

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(JJ)J
    .locals 6

    .prologue
    const-wide v2, 0xffffffffL

    .line 74
    and-long v0, p2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(JJJ)J
    .locals 10

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v2, -0x1

    .line 201
    sget-boolean v0, Lcom/sleepycat/b/p/j;->a:Z

    if-nez v0, :cond_0

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 203
    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    .line 204
    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 205
    const-wide/16 v6, 0x0

    .line 207
    :goto_0
    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 208
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6127
    and-long v0, p0, v8

    .line 7127
    and-long v2, v6, v8

    .line 209
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 217
    :goto_1
    return-wide v0

    .line 210
    :cond_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 211
    sub-long/2addr v0, v2

    move-wide v2, p4

    move-wide v4, p0

    invoke-static/range {v0 .. v7}, Lcom/sleepycat/b/p/j;->a(JJJJ)J

    move-result-wide v0

    goto :goto_1

    .line 214
    :cond_2
    sub-long/2addr v2, v0

    move-wide v4, p4

    move-wide v8, p0

    invoke-static/range {v2 .. v9}, Lcom/sleepycat/b/p/j;->a(JJJJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    move-wide v6, p2

    goto :goto_0
.end method

.method private static a(JJJJ)J
    .locals 6

    .prologue
    const-wide v4, 0xffffffffL

    .line 262
    mul-long v0, p0, p2

    .line 8127
    and-long v2, p4, v4

    .line 263
    add-long/2addr v0, v2

    .line 9127
    and-long v2, p6, v4

    .line 264
    sub-long/2addr v0, v2

    .line 265
    return-wide v0
.end method

.method public static a(Ljava/lang/Long;)J
    .locals 2

    .prologue
    .line 107
    if-nez p0, :cond_0

    .line 108
    const-wide/16 v0, -0x1

    .line 111
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static b(JJ)I
    .locals 8

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/16 v2, -0x1

    .line 156
    cmp-long v0, p0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NULL_LSN lsn1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lsn2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 163
    :cond_1
    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    .line 164
    invoke-static {p2, p3}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    .line 165
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 2127
    and-long v0, p0, v6

    .line 3127
    and-long v2, p2, v6

    .line 166
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->c(JJ)I

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_2
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/p/j;->c(JJ)I

    move-result v0

    goto :goto_0
.end method

.method public static b(JI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6025
    const-string v1, "                                                                                                                                "

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)Z
    .locals 4

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(JJ)I
    .locals 2

    .prologue
    .line 146
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 147
    const/4 v0, -0x1

    .line 151
    :goto_0
    return v0

    .line 148
    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(J)Z
    .locals 2

    .prologue
    .line 103
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(J)J
    .locals 4

    .prologue
    .line 119
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(J)J
    .locals 2

    .prologue
    .line 127
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static f(J)I
    .locals 2

    .prologue
    .line 138
    .line 1127
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    .line 138
    long-to-int v0, v0

    return v0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<DbLsn val=\"0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4127
    const-wide v2, 0xffffffffL

    and-long/2addr v2, p0

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5127
    const-wide v2, 0xffffffffL

    and-long/2addr v2, p0

    .line 180
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
