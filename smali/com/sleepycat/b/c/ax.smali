.class public final Lcom/sleepycat/b/c/ax;
.super Lcom/sleepycat/b/g/a;
.source "ReplicatedDatabaseConfig.java"


# instance fields
.field private a:B

.field private b:I

.field private c:[B

.field private d:[B

.field private e:[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 35
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->c:[B

    .line 36
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->d:[B

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    .line 41
    return-void
.end method

.method constructor <init>(BI[B[B[[B)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sleepycat/b/g/a;-><init>()V

    .line 35
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->c:[B

    .line 36
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->d:[B

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    .line 50
    iput-byte p1, p0, Lcom/sleepycat/b/c/ax;->a:B

    .line 51
    iput p2, p0, Lcom/sleepycat/b/c/ax;->b:I

    .line 53
    if-eqz p3, :cond_0

    .line 54
    iput-object p3, p0, Lcom/sleepycat/b/c/ax;->c:[B

    .line 57
    :cond_0
    if-eqz p4, :cond_1

    .line 58
    iput-object p4, p0, Lcom/sleepycat/b/c/ax;->d:[B

    .line 61
    :cond_1
    if-eqz p5, :cond_2

    .line 62
    iput-object p5, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    .line 64
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/sleepycat/b/c/ax;->b:I

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sleepycat/b/c/ax;->c:[B

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/c/ax;->d:[B

    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    invoke-static {v1}, Lcom/sleepycat/b/c/bk;->a([[B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 71
    new-instance v3, Lcom/sleepycat/b/l;

    invoke-direct {v3}, Lcom/sleepycat/b/l;-><init>()V

    .line 4349
    iput-boolean v2, v3, Lcom/sleepycat/b/l;->d:Z

    .line 73
    iget-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    invoke-static {v0}, Lcom/sleepycat/b/c/i;->b(B)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/l;->a(Z)Lcom/sleepycat/b/l;

    .line 81
    iget-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    invoke-static {v0}, Lcom/sleepycat/b/c/i;->c(B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    invoke-static {v0}, Lcom/sleepycat/b/c/i;->b(B)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 5308
    :goto_0
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/l;->b(Z)V

    .line 83
    iget-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    invoke-static {v0}, Lcom/sleepycat/b/c/i;->a(B)Z

    move-result v0

    .line 6038
    iput-boolean v0, v3, Lcom/sleepycat/b/l;->h:Z

    .line 6277
    iput-boolean v2, v3, Lcom/sleepycat/b/l;->j:Z

    .line 85
    iget v0, p0, Lcom/sleepycat/b/c/ax;->b:I

    .line 6422
    iput v0, v3, Lcom/sleepycat/b/l;->k:I

    .line 87
    new-instance v0, Lcom/sleepycat/b/c/j;

    iget-object v4, p0, Lcom/sleepycat/b/c/ax;->c:[B

    const-string v5, "Btree"

    .line 7369
    iget-object v6, p1, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 87
    invoke-direct {v0, v4, v5, v6}, Lcom/sleepycat/b/c/j;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 7697
    iget-boolean v4, v0, Lcom/sleepycat/b/c/j;->a:Z

    .line 91
    if-eqz v4, :cond_2

    .line 7701
    iget-object v0, v0, Lcom/sleepycat/b/c/j;->b:Ljava/lang/Class;

    .line 92
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/l;->a(Ljava/lang/Class;)Lcom/sleepycat/b/l;

    .line 97
    :goto_1
    new-instance v0, Lcom/sleepycat/b/c/j;

    iget-object v4, p0, Lcom/sleepycat/b/c/ax;->d:[B

    const-string v5, "Duplicate"

    .line 9369
    iget-object v6, p1, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 97
    invoke-direct {v0, v4, v5, v6}, Lcom/sleepycat/b/c/j;-><init>([BLjava/lang/String;Ljava/lang/ClassLoader;)V

    .line 9697
    iget-boolean v4, v0, Lcom/sleepycat/b/c/j;->a:Z

    .line 100
    if-eqz v4, :cond_3

    .line 9701
    iget-object v0, v0, Lcom/sleepycat/b/c/j;->b:Ljava/lang/Class;

    .line 9845
    const-string v1, "Duplicate"

    invoke-static {v0, v1}, Lcom/sleepycat/b/l;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, v3, Lcom/sleepycat/b/l;->m:Ljava/util/Comparator;

    .line 9847
    iput-boolean v2, v3, Lcom/sleepycat/b/l;->o:Z

    .line 106
    :goto_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    .line 11369
    iget-object v2, p1, Lcom/sleepycat/b/c/ad;->J:Ljava/lang/ClassLoader;

    .line 106
    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/c/bk;->a(Ljava/lang/String;[[BLjava/lang/ClassLoader;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/l;->a(Ljava/util/List;)Lcom/sleepycat/b/l;

    .line 110
    return-object v3

    :cond_1
    move v0, v1

    .line 81
    goto :goto_0

    .line 7705
    :cond_2
    iget-object v0, v0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 8536
    const-string v4, "Btree"

    invoke-static {v0, v4}, Lcom/sleepycat/b/l;->a(Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, v3, Lcom/sleepycat/b/l;->l:Ljava/util/Comparator;

    .line 8537
    iput-boolean v1, v3, Lcom/sleepycat/b/l;->n:Z

    goto :goto_1

    .line 10705
    :cond_3
    iget-object v0, v0, Lcom/sleepycat/b/c/j;->c:Ljava/util/Comparator;

    .line 10753
    const-string v2, "Duplicate"

    invoke-static {v0, v2}, Lcom/sleepycat/b/l;->a(Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, v3, Lcom/sleepycat/b/l;->m:Ljava/util/Comparator;

    .line 10755
    iput-boolean v1, v3, Lcom/sleepycat/b/l;->o:Z

    goto :goto_2
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    const-string v0, "<config "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    invoke-static {p1, v0}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/StringBuilder;B)V

    .line 168
    const-string v0, " btcmpSet=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/sleepycat/b/c/ax;->c:[B

    sget-object v4, Lcom/sleepycat/b/g/ar;->a:[B

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "\" dupcmpSet=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sleepycat/b/c/ax;->d:[B

    sget-object v4, Lcom/sleepycat/b/g/ar;->a:[B

    if-eq v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v0, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/c/bk;->a(Ljava/lang/StringBuilder;[[BLjava/util/List;)V

    .line 174
    const-string v0, " />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    :cond_1
    move v1, v2

    .line 170
    goto :goto_1
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 132
    iget-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    iget v0, p0, Lcom/sleepycat/b/c/ax;->b:I

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 134
    iget-object v0, p0, Lcom/sleepycat/b/c/ax;->c:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 135
    iget-object v0, p0, Lcom/sleepycat/b/c/ax;->d:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 136
    iget-object v0, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/c/bk;->a(Ljava/nio/ByteBuffer;[[B)V

    .line 137
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/sleepycat/b/c/ax;->a:B

    .line 148
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/c/ax;->b:I

    .line 150
    if-ge p2, v2, :cond_0

    .line 152
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    .line 154
    :cond_0
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->c:[B

    .line 156
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->d:[B

    .line 158
    if-ge p2, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/b/c/ax;->e:[[B

    .line 161
    return-void

    .line 158
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/b/c/bk;->a(Ljava/nio/ByteBuffer;)[[B

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 186
    instance-of v1, p1, Lcom/sleepycat/b/c/ax;

    if-nez v1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    check-cast p1, Lcom/sleepycat/b/c/ax;

    .line 193
    iget-byte v1, p0, Lcom/sleepycat/b/c/ax;->a:B

    iget-byte v2, p1, Lcom/sleepycat/b/c/ax;->a:B

    if-ne v1, v2, :cond_0

    .line 197
    iget v1, p0, Lcom/sleepycat/b/c/ax;->b:I

    iget v2, p1, Lcom/sleepycat/b/c/ax;->b:I

    if-ne v1, v2, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sleepycat/b/c/ax;->c:[B

    iget-object v2, p1, Lcom/sleepycat/b/c/ax;->c:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sleepycat/b/c/ax;->d:[B

    iget-object v2, p1, Lcom/sleepycat/b/c/ax;->d:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 180
    const-wide/16 v0, 0x0

    return-wide v0
.end method
