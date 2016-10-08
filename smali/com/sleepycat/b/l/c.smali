.class public Lcom/sleepycat/b/l/c;
.super Ljava/lang/Object;
.source "BINDelta.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# static fields
.field public static final synthetic e:Z


# instance fields
.field public final a:Lcom/sleepycat/b/c/h;

.field public b:J

.field public c:J

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/l/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sleepycat/b/l/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/c;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/sleepycat/b/c/h;

    invoke-direct {v0}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    .line 67
    iput-wide v2, p0, Lcom/sleepycat/b/l/c;->b:J

    .line 68
    iput-wide v2, p0, Lcom/sleepycat/b/l/c;->c:J

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/l/a;)V
    .locals 7

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2468
    iget-wide v0, p1, Lcom/sleepycat/b/l/j;->m:J

    .line 38
    iput-wide v0, p0, Lcom/sleepycat/b/l/c;->b:J

    .line 3255
    iget-wide v0, p1, Lcom/sleepycat/b/l/a;->a:J

    .line 39
    iput-wide v0, p0, Lcom/sleepycat/b/l/c;->c:J

    .line 3748
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 4496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 40
    iput-object v0, p0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    .line 5345
    :goto_0
    iget v1, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 50
    if-ge v0, v1, :cond_1

    .line 51
    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/a;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/sleepycat/b/l/g;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/a;->h(I)[B

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v4

    .line 6032
    iget-object v6, p1, Lcom/sleepycat/b/l/j;->h:[B

    aget-byte v6, v6, v0

    .line 52
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sleepycat/b/l/g;-><init>([BJB)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 60
    return-void
.end method

.method static a(Lcom/sleepycat/b/l/a;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 93
    move v1, v0

    .line 6345
    :goto_0
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 94
    if-ge v0, v2, :cond_1

    .line 95
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l/a;->p(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 6

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 248
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/h;->a()I

    move-result v0

    iget-wide v4, p0, Lcom/sleepycat/b/l/c;->b:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v4, p0, Lcom/sleepycat/b/l/c;->c:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v3}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 254
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/g;

    .line 256
    invoke-virtual {v0}, Lcom/sleepycat/b/l/g;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 254
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 259
    :cond_0
    return v2
.end method

.method public final a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/a;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p2}, Lcom/sleepycat/b/l/a;->B()V

    .line 6724
    :try_start_0
    iput-object p1, p2, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 170
    iget-wide v2, p0, Lcom/sleepycat/b/l/c;->b:J

    .line 7460
    iput-wide v2, p2, Lcom/sleepycat/b/l/j;->m:J

    move v1, v0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/g;

    .line 8104
    iget-object v2, v0, Lcom/sleepycat/b/l/g;->a:[B

    .line 188
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v3, v4}, Lcom/sleepycat/b/l/a;->a([BZZ)I

    move-result v2

    .line 189
    if-ltz v2, :cond_2

    const/high16 v3, 0x10000

    and-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 191
    const v3, -0x10001

    and-int/2addr v2, v3

    .line 8118
    iget-byte v3, v0, Lcom/sleepycat/b/l/g;->c:B

    invoke-static {v3}, Lcom/sleepycat/b/l/j;->a(B)Z

    move-result v3

    .line 197
    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {p2, v2}, Lcom/sleepycat/b/l/a;->b(I)V

    .line 173
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 8125
    :cond_1
    iget-wide v4, v0, Lcom/sleepycat/b/l/g;->b:J

    .line 9111
    iget-byte v0, v0, Lcom/sleepycat/b/l/g;->c:B

    .line 9802
    invoke-virtual {p2, v2, v4, v5}, Lcom/sleepycat/b/l/j;->b(IJ)V

    .line 9803
    iget-object v3, p2, Lcom/sleepycat/b/l/j;->h:[B

    aput-byte v0, v3, v2

    .line 9804
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sleepycat/b/l/j;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lcom/sleepycat/b/l/a;->C()V

    throw v0

    .line 211
    :cond_2
    :try_start_1
    new-instance v2, Lcom/sleepycat/b/l/e;

    .line 10104
    iget-object v3, v0, Lcom/sleepycat/b/l/g;->a:[B

    .line 10125
    iget-wide v4, v0, Lcom/sleepycat/b/l/g;->b:J

    .line 11111
    iget-byte v0, v0, Lcom/sleepycat/b/l/g;->c:B

    .line 211
    invoke-direct {v2, v3, v4, v5, v0}, Lcom/sleepycat/b/l/e;-><init>([BJB)V

    .line 216
    invoke-virtual {p2, v2}, Lcom/sleepycat/b/l/a;->a(Lcom/sleepycat/b/l/e;)Z

    move-result v0

    .line 217
    sget-boolean v2, Lcom/sleepycat/b/l/c;->e:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 11605
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/sleepycat/b/l/j;->e:J

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sleepycat/b/l/a;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-virtual {p2}, Lcom/sleepycat/b/l/a;->C()V

    .line 236
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 303
    const-string v0, "<lastFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-wide v0, p0, Lcom/sleepycat/b/l/c;->b:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v0, "</lastFullLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, "<prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-wide v0, p0, Lcom/sleepycat/b/l/c;->c:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, "</prevDeltaLsn>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v0, "<deltas size=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/g;

    .line 312
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/g;->a(Ljava/lang/StringBuilder;Z)V

    .line 310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;)V

    .line 267
    iget-wide v0, p0, Lcom/sleepycat/b/l/c;->b:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 268
    iget-wide v0, p0, Lcom/sleepycat/b/l/c;->c:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 269
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 271
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/g;

    .line 273
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/g;->a(Ljava/nio/ByteBuffer;)V

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->a:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 282
    if-ge p2, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/l/c;->b:J

    .line 283
    const/16 v0, 0x8

    if-lt p2, v0, :cond_0

    .line 284
    invoke-static {p1}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/l/c;->c:J

    .line 286
    :cond_0
    if-ge p2, v3, :cond_2

    :goto_1
    invoke-static {p1, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 288
    :goto_2
    if-ge v2, v0, :cond_3

    .line 289
    new-instance v1, Lcom/sleepycat/b/l/g;

    invoke-direct {v1}, Lcom/sleepycat/b/l/g;-><init>()V

    .line 290
    invoke-virtual {v1, p1, p2}, Lcom/sleepycat/b/l/g;->a(Ljava/nio/ByteBuffer;I)V

    .line 291
    iget-object v3, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    .line 282
    goto :goto_0

    :cond_2
    move v1, v2

    .line 286
    goto :goto_1

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 296
    return-void
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 320
    const-wide/16 v0, 0x0

    return-wide v0
.end method
