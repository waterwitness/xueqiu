.class public Lcom/sleepycat/b/g/u;
.super Ljava/lang/Object;
.source "FileReader.java"


# static fields
.field static final synthetic i:Z


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:Ljava/nio/ByteBuffer;

.field protected final e:Lcom/sleepycat/b/c/ad;

.field public final f:Lcom/sleepycat/b/g/m;

.field public g:J

.field public h:I

.field private j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 945
    const-class v0, Lcom/sleepycat/b/g/s;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/u;->i:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILcom/sleepycat/b/c/ad;)V
    .locals 2

    .prologue
    .line 978
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3392
    iget-object v0, p2, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 980
    sget-object v1, Lcom/sleepycat/b/b/d;->M:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/g/u;->k:I

    .line 982
    iput-object p2, p0, Lcom/sleepycat/b/g/u;->e:Lcom/sleepycat/b/c/ad;

    .line 4375
    iget-object v0, p2, Lcom/sleepycat/b/c/ad;->x:Lcom/sleepycat/b/g/m;

    .line 983
    iput-object v0, p0, Lcom/sleepycat/b/g/u;->f:Lcom/sleepycat/b/g/m;

    .line 985
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    .line 986
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sleepycat/b/g/s;->c(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    .line 987
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/g/u;)I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/sleepycat/b/g/u;->j:I

    return v0
.end method


# virtual methods
.method final a(I)V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sleepycat/b/g/s;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    .line 1044
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 994
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/b/g/u;->a(JI)V

    .line 996
    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->e(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/b/g/u;->b:J

    .line 997
    iget-wide v0, p0, Lcom/sleepycat/b/g/u;->b:J

    iput-wide v0, p0, Lcom/sleepycat/b/g/u;->c:J

    .line 998
    return-void
.end method

.method public final a(JI)V
    .locals 1

    .prologue
    .line 1009
    iput-wide p1, p0, Lcom/sleepycat/b/g/u;->a:J

    .line 1010
    iput p3, p0, Lcom/sleepycat/b/g/u;->j:I

    .line 1011
    return-void
.end method

.method public a(JJJZ)V
    .locals 5

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->f:Lcom/sleepycat/b/g/m;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;

    move-result-object v1

    .line 1061
    :try_start_0
    iput-wide p3, p0, Lcom/sleepycat/b/g/u;->b:J

    .line 5052
    iget v0, v1, Lcom/sleepycat/b/g/j;->c:I

    .line 1062
    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/b/g/u;->a(JI)V

    .line 1063
    invoke-virtual {p0, v1, p5, p6}, Lcom/sleepycat/b/g/u;->a(Lcom/sleepycat/b/g/j;J)Z

    move-result v0

    .line 1069
    if-nez v0, :cond_0

    if-nez p7, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Detected a log file gap when reading backwards. Target position = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p5, p6}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " starting position = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end position = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/g/u;->c:J

    invoke-static {p1, p2, v2, v3}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    .line 1081
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/j;J)Z
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1159
    .line 1160
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1161
    iget-object v1, p0, Lcom/sleepycat/b/g/u;->f:Lcom/sleepycat/b/g/m;

    .line 7044
    iget-object v2, p1, Lcom/sleepycat/b/g/j;->a:Ljava/io/RandomAccessFile;

    .line 1161
    iget-object v3, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->b:J

    .line 7048
    iget-wide v6, p1, Lcom/sleepycat/b/g/j;->d:J

    .line 1161
    invoke-virtual/range {v1 .. v8}, Lcom/sleepycat/b/g/m;->a(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    const/4 v8, 0x1

    .line 1167
    iget v0, p0, Lcom/sleepycat/b/g/u;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/g/u;->h:I

    .line 7052
    iget v0, p1, Lcom/sleepycat/b/g/j;->c:I

    .line 1174
    iput v0, p0, Lcom/sleepycat/b/g/u;->j:I

    .line 1183
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/b/g/u;->b:J

    iget-object v2, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/sleepycat/b/g/s;->d(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/g/u;->c:J

    .line 1184
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/sleepycat/b/g/s;->c(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    .line 1185
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/sleepycat/b/g/u;->b:J

    sub-long v2, p2, v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    .line 1187
    return v8
.end method

.method public a(ZI)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1095
    invoke-virtual {p0, p2}, Lcom/sleepycat/b/g/u;->b(I)V

    .line 1100
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/g/u;->f:Lcom/sleepycat/b/g/m;

    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1106
    :try_start_1
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->c:J

    iput-wide v4, p0, Lcom/sleepycat/b/g/u;->b:J

    .line 1107
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->b:J

    invoke-virtual {p0, v1, v4, v5}, Lcom/sleepycat/b/g/u;->a(Lcom/sleepycat/b/g/j;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1136
    if-eqz v1, :cond_0

    .line 1137
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    .line 1112
    :cond_0
    const/4 v0, 0x0

    .line 1134
    :cond_1
    :goto_0
    return v0

    .line 1116
    :cond_2
    if-eqz p1, :cond_4

    .line 1117
    :try_start_2
    new-instance v0, Lcom/sleepycat/b/g/t;

    const-string v2, "Single file only"

    invoke-direct {v0, v2}, Lcom/sleepycat/b/g/t;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1136
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1137
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    .line 1136
    :cond_3
    throw v0

    .line 1120
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/b/g/u;->f:Lcom/sleepycat/b/g/m;

    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/sleepycat/b/g/m;->a(JZ)Ljava/lang/Long;

    move-result-object v3

    .line 1124
    if-nez v3, :cond_5

    .line 1125
    new-instance v0, Lcom/sleepycat/b/g/t;

    invoke-direct {v0}, Lcom/sleepycat/b/g/t;-><init>()V

    throw v0

    .line 1128
    :cond_5
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1130
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/b/g/u;->f:Lcom/sleepycat/b/g/m;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 1131
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6052
    iget v4, v1, Lcom/sleepycat/b/g/j;->c:I

    .line 1131
    invoke-virtual {p0, v2, v3, v4}, Lcom/sleepycat/b/g/u;->a(JI)V

    .line 1132
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/b/g/u;->b:J

    .line 1133
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sleepycat/b/g/u;->a(Lcom/sleepycat/b/g/j;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1136
    if-eqz v1, :cond_1

    .line 1137
    invoke-virtual {v1}, Lcom/sleepycat/b/g/j;->a()V

    goto :goto_0

    .line 1136
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 1203
    if-le p1, v0, :cond_1

    .line 1206
    iget v1, p0, Lcom/sleepycat/b/g/u;->k:I

    if-ge v0, v1, :cond_0

    .line 1212
    iget v0, p0, Lcom/sleepycat/b/g/u;->k:I

    if-ge p1, v0, :cond_2

    .line 1215
    rem-int/lit16 v0, p1, 0x400

    .line 1216
    rsub-int v0, v0, 0x400

    add-int/2addr v0, p1

    .line 1217
    iget v1, p0, Lcom/sleepycat/b/g/u;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1222
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1226
    iget-wide v0, p0, Lcom/sleepycat/b/g/u;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/b/g/u;->g:J

    .line 1229
    :cond_1
    return-void

    .line 1220
    :cond_2
    iget v0, p0, Lcom/sleepycat/b/g/u;->k:I

    goto :goto_0
.end method

.method public final b(J)Z
    .locals 3

    .prologue
    .line 1019
    iget-wide v0, p0, Lcom/sleepycat/b/g/u;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/b/g/u;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(J)V
    .locals 5

    .prologue
    .line 1032
    sget-boolean v0, Lcom/sleepycat/b/g/u;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/g/u;->b(J)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/sleepycat/b/g/u;->b:J

    sub-long v2, p1, v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/sleepycat/b/g/s;->a(Ljava/nio/ByteBuffer;I)Ljava/nio/Buffer;

    .line 1037
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1264
    iget-wide v2, p0, Lcom/sleepycat/b/g/u;->a:J

    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->b:J

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v2

    .line 1265
    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->a:J

    iget-wide v6, p0, Lcom/sleepycat/b/g/u;->c:J

    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v4

    .line 1266
    const-string v1, "window covers "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    const-string v1, " positioned at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    iget-wide v2, p0, Lcom/sleepycat/b/g/u;->a:J

    iget-wide v4, p0, Lcom/sleepycat/b/g/u;->b:J

    iget-object v1, p0, Lcom/sleepycat/b/g/u;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/b/p/j;->a(JJ)J

    move-result-wide v2

    .line 1272
    invoke-static {v2, v3}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
