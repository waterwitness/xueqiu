.class public Lcom/sleepycat/b/g/a/k;
.super Lcom/sleepycat/b/g/a/d;
.source "LNLogEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sleepycat/b/l/y;",
        ">",
        "Lcom/sleepycat/b/g/a/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic g:Z


# instance fields
.field public c:Lcom/sleepycat/b/l/y;

.field public d:Lcom/sleepycat/b/c/h;

.field public e:J

.field public f:Z

.field private h:[B

.field private i:Lcom/sleepycat/b/n/z;

.field private j:I

.field private final k:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Lcom/sleepycat/b/l/ap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/sleepycat/b/g/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/g/a/k;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[BJZLcom/sleepycat/b/n/z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/g/af;",
            "TT;",
            "Lcom/sleepycat/b/c/h;",
            "[BJZ",
            "Lcom/sleepycat/b/n/z;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/sleepycat/b/g/a/d;-><init>()V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 3052
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(Lcom/sleepycat/b/g/af;)V

    .line 118
    iput-object p2, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 119
    iput-object p3, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 120
    iput-object p4, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    .line 121
    iput-wide p5, p0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 122
    iput-boolean p7, p0, Lcom/sleepycat/b/g/a/k;->f:Z

    .line 123
    iput-object p8, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/k;->k:Ljava/lang/reflect/Constructor;

    .line 127
    sget-boolean v0, Lcom/sleepycat/b/g/a/k;->g:Z

    if-nez v0, :cond_1

    .line 3717
    iget-object v0, p1, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 4708
    iget-boolean v1, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 127
    if-eqz p8, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/d;-><init>(Ljava/lang/Class;)V

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 102
    const-class v0, Lcom/sleepycat/b/l/y;

    if-ne p1, v0, :cond_0

    .line 103
    const-class v0, Lcom/sleepycat/b/l/ap;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/k;->a(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/k;->k:Ljava/lang/reflect/Constructor;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/k;->k:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l/y;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->k:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/c/ad;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->k:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/k;->a(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/b/g/at;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/y;

    .line 249
    :goto_0
    return-object v0

    .line 9076
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/c;->a:Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Lcom/sleepycat/b/g/a/c;->a(Ljava/lang/reflect/Constructor;)Lcom/sleepycat/b/g/at;

    move-result-object v0

    .line 249
    check-cast v0, Lcom/sleepycat/b/l/y;

    goto :goto_0
.end method

.method private static a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/p/au;)V
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/sleepycat/b/g/ae;->b()I

    move-result v0

    .line 19291
    iget v1, p0, Lcom/sleepycat/b/g/ae;->d:I

    .line 413
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/y;->a(I)V

    .line 414
    if-eqz p2, :cond_0

    .line 20101
    iget-wide v0, p2, Lcom/sleepycat/b/p/au;->c:J

    .line 415
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/b/l/y;->b(J)V

    .line 417
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;)Lcom/sleepycat/b/g/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/b/l/y;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/sleepycat/b/g/a/k",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/sleepycat/b/g/a/k;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/g/a/k;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lcom/sleepycat/b/g/a/k;->j:I

    sget v1, Lcom/sleepycat/b/g/a/l;->c:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sleepycat/b/g/a/k;->j:I

    sget v1, Lcom/sleepycat/b/g/a/l;->d:I

    if-eq v0, v1, :cond_0

    .line 529
    const-string v0, "postFetchInit was not called"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 532
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)I
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(I)I

    move-result v0

    return v0
.end method

.method final a(Z)I
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    array-length v1, v0

    .line 334
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->a()I

    move-result v0

    iget-object v2, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/h;->a()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 337
    if-nez p1, :cond_0

    .line 338
    invoke-static {v1}, Lcom/sleepycat/b/g/ar;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 14717
    iget-object v1, v1, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 15708
    iget-boolean v1, v1, Lcom/sleepycat/b/g/aj;->c:Z

    .line 340
    if-eqz v1, :cond_1

    .line 341
    iget-wide v2, p0, Lcom/sleepycat/b/g/a/k;->e:J

    invoke-static {v2, v3}, Lcom/sleepycat/b/g/ar;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    add-int/lit8 v0, v0, 0x1

    .line 343
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->a()I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_1
    return v0
.end method

.method public final a()Lcom/sleepycat/b/c/h;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(Lcom/sleepycat/b/c/i;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/y;->a(Ljava/lang/StringBuilder;Z)V

    .line 258
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/c/h;->a(Ljava/lang/StringBuilder;Z)V

    .line 259
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/b/l/y;->a(Ljava/lang/StringBuilder;[B)V

    .line 260
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 9717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 10708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 260
    if-eqz v0, :cond_1

    .line 261
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/k;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 262
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/k;->e:J

    invoke-static {v0, v1}, Lcom/sleepycat/b/p/j;->g(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    const-string v0, "<knownDeleted val=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-boolean v0, p0, Lcom/sleepycat/b/g/a/k;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, "\"/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/n/z;->a(Ljava/lang/StringBuilder;Z)V

    .line 269
    :cond_1
    return-object p1

    .line 265
    :cond_2
    const-string v0, "false"

    goto :goto_0
.end method

.method public a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/sleepycat/b/g/a/k;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/g/a/k;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5283
    :cond_0
    iget v0, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 148
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    invoke-virtual {v0}, Lcom/sleepycat/b/g/af;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 151
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sleepycat/b/g/a/k;->a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;Z)V

    .line 153
    return-void

    .line 148
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/g/ae;Ljava/nio/ByteBuffer;Z)V
    .locals 8

    .prologue
    .line 167
    .line 6283
    iget v2, p2, Lcom/sleepycat/b/g/ae;->f:I

    .line 168
    const/4 v0, 0x6

    if-ge v2, v0, :cond_5

    const/4 v0, 0x1

    .line 169
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 176
    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/k;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l/y;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 179
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v1, p3, v2}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;I)V

    .line 183
    :cond_0
    new-instance v1, Lcom/sleepycat/b/c/h;

    invoke-direct {v1}, Lcom/sleepycat/b/c/h;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 184
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, p3, v2}, Lcom/sleepycat/b/c/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 187
    if-eqz v0, :cond_1

    .line 188
    const/4 v1, 0x1

    invoke-static {p3, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 6717
    iget-object v1, v1, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 7708
    iget-boolean v1, v1, Lcom/sleepycat/b/g/aj;->c:Z

    .line 193
    if-eqz v1, :cond_3

    .line 199
    invoke-static {p3, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 200
    iget-wide v4, p0, Lcom/sleepycat/b/g/a/k;->e:J

    invoke-static {v4, v5}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Lcom/sleepycat/b/p/j;->d(J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 202
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/sleepycat/b/g/a/k;->e:J

    .line 205
    :cond_2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/sleepycat/b/g/a/k;->f:Z

    .line 210
    new-instance v1, Lcom/sleepycat/b/n/z;

    invoke-direct {v1}, Lcom/sleepycat/b/n/z;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 211
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    invoke-virtual {v1, p3, v2}, Lcom/sleepycat/b/n/z;->a(Ljava/nio/ByteBuffer;I)V

    .line 214
    :cond_3
    if-nez v0, :cond_4

    .line 216
    invoke-direct {p0, p1}, Lcom/sleepycat/b/g/a/k;->a(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 217
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v0, p3, v2}, Lcom/sleepycat/b/l/y;->a(Ljava/nio/ByteBuffer;I)V

    .line 219
    if-eqz p4, :cond_7

    .line 220
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v3

    .line 8291
    iget v1, p2, Lcom/sleepycat/b/g/ae;->d:I

    .line 222
    sub-int v0, v1, v0

    .line 226
    :goto_2
    invoke-static {p3, v0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 8295
    iget-object v1, p2, Lcom/sleepycat/b/g/ae;->e:Lcom/sleepycat/b/p/au;

    .line 230
    invoke-static {p2, v0, v1}, Lcom/sleepycat/b/g/a/k;->a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/p/au;)V

    .line 233
    const/16 v0, 0x8

    if-ge v2, v0, :cond_8

    sget v0, Lcom/sleepycat/b/g/a/l;->b:I

    :goto_3
    iput v0, p0, Lcom/sleepycat/b/g/a/k;->j:I

    .line 235
    return-void

    .line 168
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 205
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 224
    :cond_7
    invoke-static {p3}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_2

    .line 233
    :cond_8
    sget v0, Lcom/sleepycat/b/g/a/l;->a:I

    goto :goto_3
.end method

.method public final a(Lcom/sleepycat/b/g/ae;JLcom/sleepycat/b/p/au;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 20717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 21708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 439
    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0, p2, p3}, Lcom/sleepycat/b/n/z;->e(J)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-static {p1, v0, p4}, Lcom/sleepycat/b/g/a/k;->a(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/p/au;)V

    .line 444
    return-void
.end method

.method public final bridge synthetic a(Lcom/sleepycat/b/g/af;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(Lcom/sleepycat/b/g/af;)V

    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 10717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 11708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 277
    if-eqz v0, :cond_0

    .line 278
    const-string v0, " txn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 12169
    iget-wide v2, v1, Lcom/sleepycat/b/n/q;->k:J

    .line 278
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/sleepycat/b/g/a/d;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    .line 363
    sget-boolean v0, Lcom/sleepycat/b/g/a/k;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/g/a/k;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 365
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/b/g/a/k;->a(Ljava/nio/ByteBuffer;ZI)V

    .line 368
    return-void
.end method

.method final a(Ljava/nio/ByteBuffer;ZI)V
    .locals 2

    .prologue
    .line 380
    invoke-static {p0, p3}, Lcom/sleepycat/b/g/a/k;->b(Lcom/sleepycat/b/g/a/p;I)V

    .line 385
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    .line 16064
    invoke-static {v0, p1, p3}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 387
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 16717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 17708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 387
    if-eqz v0, :cond_1

    .line 388
    iget-wide v0, p0, Lcom/sleepycat/b/g/a/k;->e:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 389
    const/4 v0, 0x0

    .line 390
    iget-boolean v1, p0, Lcom/sleepycat/b/g/a/k;->f:Z

    if-eqz v1, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 393
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 396
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 18110
    invoke-static {v0, p1, p3}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 18755
    invoke-static {v0, p1, p3}, Lcom/sleepycat/b/g/a;->a(Lcom/sleepycat/b/g/ax;Ljava/nio/ByteBuffer;I)V

    .line 400
    if-nez p2, :cond_2

    .line 401
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    invoke-static {p1, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;[B)V

    .line 404
    return-void
.end method

.method public a(Lcom/sleepycat/b/g/a/m;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 582
    instance-of v1, p1, Lcom/sleepycat/b/g/a/k;

    if-nez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    check-cast p1, Lcom/sleepycat/b/g/a/k;

    .line 588
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    iget-object v2, p1, Lcom/sleepycat/b/g/a/k;->d:Lcom/sleepycat/b/c/h;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/c/h;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    if-eqz v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    iget-object v2, p1, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    iget-object v2, p1, Lcom/sleepycat/b/g/a/k;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    iget-object v2, p1, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/l/y;->a(Lcom/sleepycat/b/g/at;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const/4 v0, 0x1

    goto :goto_0

    .line 597
    :cond_3
    iget-object v1, p1, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 464
    iget v0, p0, Lcom/sleepycat/b/g/a/k;->j:I

    sget v1, Lcom/sleepycat/b/g/a/l;->b:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 467
    :goto_0
    if-eqz p1, :cond_2

    sget v0, Lcom/sleepycat/b/g/a/l;->c:I

    :goto_1
    iput v0, p0, Lcom/sleepycat/b/g/a/k;->j:I

    .line 470
    if-nez v1, :cond_3

    .line 480
    :cond_0
    :goto_2
    return-void

    .line 464
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 467
    :cond_2
    sget v0, Lcom/sleepycat/b/g/a/l;->d:I

    goto :goto_1

    .line 475
    :cond_3
    iget v0, p0, Lcom/sleepycat/b/g/a/k;->j:I

    sget v1, Lcom/sleepycat/b/g/a/l;->d:I

    if-eq v0, v1, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/sleepycat/b/g/a/k;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    goto :goto_2
.end method

.method b()[B
    .locals 4

    .prologue
    .line 487
    sget-boolean v0, Lcom/sleepycat/b/g/a/k;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    iget-object v1, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 22249
    iget-object v2, v1, Lcom/sleepycat/b/l/y;->f:[B

    .line 22250
    sget-object v3, Lcom/sleepycat/b/l/w;->b:[B

    iput-object v3, v1, Lcom/sleepycat/b/l/y;->f:[B

    .line 488
    invoke-static {v0, v2}, Lcom/sleepycat/b/c/y;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/sleepycat/b/c/i;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/a/k;->b(Z)V

    .line 452
    return-void
.end method

.method public final bridge synthetic d()Lcom/sleepycat/b/g/af;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/sleepycat/b/g/a/d;->d()Lcom/sleepycat/b/g/af;

    move-result-object v0

    return-object v0
.end method

.method public d_()I
    .locals 2

    .prologue
    .line 320
    sget-boolean v0, Lcom/sleepycat/b/g/a/k;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sleepycat/b/g/a/k;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 322
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/g/a/k;->a(Z)I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 15723
    iget v0, v0, Lcom/sleepycat/b/l/y;->g:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 353
    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/y;->i()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic g()Lcom/sleepycat/b/g/a/m;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/sleepycat/b/g/a/d;->g()Lcom/sleepycat/b/g/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    .line 26287
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    .line 52
    return-object v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 12717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 13708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 295
    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 14169
    iget-wide v0, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 298
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/sleepycat/b/l/y;
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lcom/sleepycat/b/g/a/k;->n()V

    .line 518
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->c:Lcom/sleepycat/b/l/y;

    return-object v0
.end method

.method public final k()[B
    .locals 1

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/sleepycat/b/g/a/k;->n()V

    .line 523
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->h:[B

    return-object v0
.end method

.method public final l()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 22717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 23708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 564
    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 24169
    iget-wide v0, v0, Lcom/sleepycat/b/n/q;->k:J

    .line 565
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 567
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lcom/sleepycat/b/n/z;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->b:Lcom/sleepycat/b/g/af;

    .line 24717
    iget-object v0, v0, Lcom/sleepycat/b/g/af;->N:Lcom/sleepycat/b/g/aj;

    .line 25708
    iget-boolean v0, v0, Lcom/sleepycat/b/g/aj;->c:Z

    .line 571
    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sleepycat/b/g/a/k;->i:Lcom/sleepycat/b/n/z;

    .line 574
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/sleepycat/b/g/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
