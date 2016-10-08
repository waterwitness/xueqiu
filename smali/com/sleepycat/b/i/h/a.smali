.class public abstract Lcom/sleepycat/b/i/h/a;
.super Ljava/lang/Object;
.source "BinaryProtocol.java"


# static fields
.field static final synthetic S:Z

.field private static e:I


# instance fields
.field protected final A:I

.field public B:I

.field public final C:Lcom/sleepycat/b/i/c/b/x;

.field public final D:Lcom/sleepycat/b/i/h/e;

.field public final E:Lcom/sleepycat/b/i/h/e;

.field public final F:Lcom/sleepycat/b/i/h/e;

.field public final G:Lcom/sleepycat/b/i/h/e;

.field protected final H:Lcom/sleepycat/b/p/ai;

.field protected final I:Lcom/sleepycat/b/p/z;

.field protected final J:Lcom/sleepycat/b/p/z;

.field protected final K:Lcom/sleepycat/b/p/z;

.field protected final L:Lcom/sleepycat/b/p/z;

.field protected final M:Lcom/sleepycat/b/p/z;

.field protected final N:Lcom/sleepycat/b/p/z;

.field public final O:Lcom/sleepycat/b/p/z;

.field protected final P:Ljava/util/logging/Logger;

.field protected final Q:Ljava/util/logging/Formatter;

.field protected final R:Lcom/sleepycat/b/c/ad;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/sleepycat/b/i/h/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Z

.field private final f:Ljava/nio/ByteBuffer;

.field private final g:Ljava/nio/ByteBuffer;

.field protected final z:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/sleepycat/b/i/h/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/h/a;->S:Z

    .line 236
    const/16 v0, 0x4000

    sput v0, Lcom/sleepycat/b/i/h/a;->e:I

    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/x;IILcom/sleepycat/b/c/ad;)V
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    .line 82
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->a:Ljava/util/Map;

    .line 95
    new-instance v1, Lcom/sleepycat/b/i/h/e;

    const/16 v2, 0x3e9

    const-class v3, Lcom/sleepycat/b/i/h/b;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/i/h/e;-><init>(SLjava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->D:Lcom/sleepycat/b/i/h/e;

    .line 98
    new-instance v1, Lcom/sleepycat/b/i/h/e;

    const/16 v2, 0x3ea

    const-class v3, Lcom/sleepycat/b/i/h/j;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/i/h/e;-><init>(SLjava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->E:Lcom/sleepycat/b/i/h/e;

    .line 101
    new-instance v1, Lcom/sleepycat/b/i/h/e;

    const/16 v2, 0x3eb

    const-class v3, Lcom/sleepycat/b/i/h/c;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/i/h/e;-><init>(SLjava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->F:Lcom/sleepycat/b/i/h/e;

    .line 104
    new-instance v1, Lcom/sleepycat/b/i/h/e;

    const/16 v2, 0x3ec

    const-class v3, Lcom/sleepycat/b/i/h/f;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/i/h/e;-><init>(SLjava/lang/Class;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->G:Lcom/sleepycat/b/i/h/e;

    .line 242
    sget v1, Lcom/sleepycat/b/i/h/a;->e:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->f:Ljava/nio/ByteBuffer;

    .line 245
    sget v1, Lcom/sleepycat/b/i/h/a;->e:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->g:Ljava/nio/ByteBuffer;

    .line 134
    iput-object p1, p0, Lcom/sleepycat/b/i/h/a;->C:Lcom/sleepycat/b/i/c/b/x;

    .line 135
    iput p2, p0, Lcom/sleepycat/b/i/h/a;->A:I

    .line 136
    iput p3, p0, Lcom/sleepycat/b/i/h/a;->B:I

    .line 137
    iput-object p4, p0, Lcom/sleepycat/b/i/h/a;->R:Lcom/sleepycat/b/c/ad;

    .line 139
    if-eqz p4, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->P:Ljava/util/logging/Logger;

    .line 144
    :goto_0
    new-instance v1, Lcom/sleepycat/b/i/h/w;

    invoke-direct {v1, p1}, Lcom/sleepycat/b/i/h/w;-><init>(Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->Q:Ljava/util/logging/Formatter;

    .line 146
    new-instance v1, Lcom/sleepycat/b/p/ai;

    const-string v2, "BinaryProtocol"

    const-string v3, "Network traffic due to the replication stream."

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    .line 148
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->a:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->I:Lcom/sleepycat/b/p/z;

    .line 149
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->b:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->J:Lcom/sleepycat/b/p/z;

    .line 150
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->c:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->K:Lcom/sleepycat/b/p/z;

    .line 151
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->d:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->L:Lcom/sleepycat/b/p/z;

    .line 152
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->e:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->M:Lcom/sleepycat/b/p/z;

    .line 153
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->f:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->N:Lcom/sleepycat/b/p/z;

    .line 154
    new-instance v1, Lcom/sleepycat/b/p/z;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    sget-object v3, Lcom/sleepycat/b/i/h/l;->k:Lcom/sleepycat/b/p/ag;

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->O:Lcom/sleepycat/b/p/z;

    .line 159
    new-array v1, v5, [Lcom/sleepycat/b/i/h/e;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->D:Lcom/sleepycat/b/i/h/e;

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->E:Lcom/sleepycat/b/i/h/e;

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->F:Lcom/sleepycat/b/i/h/e;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->G:Lcom/sleepycat/b/i/h/e;

    aput-object v3, v1, v2

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v2, v1, v0

    .line 164
    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->a:Ljava/util/Map;

    .line 3337
    iget-short v4, v2, Lcom/sleepycat/b/i/h/e;->a:S

    .line 164
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate op: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4337
    iget-short v1, v2, Lcom/sleepycat/b/i/h/e;->a:S

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/p/w;->b(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/b/i/h/a;->P:Ljava/util/logging/Logger;

    goto/16 :goto_0

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/h/a;->b:I

    .line 170
    if-eqz p4, :cond_4

    .line 4392
    iget-object v2, p4, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 172
    sget-object v0, Lcom/sleepycat/b/i/c/an;->l:Lcom/sleepycat/b/b/f;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/f;)J

    move-result-wide v0

    .line 174
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    .line 4508
    iget-object v0, p4, Lcom/sleepycat/b/c/ad;->n:Lcom/sleepycat/b/c/ao;

    .line 5201
    iget-object v0, v0, Lcom/sleepycat/b/c/ao;->ac:Lcom/sleepycat/b/c/ar;

    .line 5321
    iget-wide v0, v0, Lcom/sleepycat/b/c/ar;->a:J

    .line 174
    shr-long/2addr v0, v6

    :cond_3
    iput-wide v0, p0, Lcom/sleepycat/b/i/h/a;->c:J

    .line 177
    sget-object v0, Lcom/sleepycat/b/i/c/an;->ah:Lcom/sleepycat/b/b/a;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/h/a;->d:Z

    .line 184
    :goto_2
    return-void

    .line 181
    :cond_4
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/sleepycat/b/i/h/a;->c:J

    .line 182
    iput-boolean v6, p0, Lcom/sleepycat/b/i/h/a;->d:Z

    goto :goto_2
.end method

.method static synthetic a(Lcom/sleepycat/b/i/h/a;I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 10270
    sget v0, Lcom/sleepycat/b/i/h/a;->e:I

    if-gt p1, v0, :cond_0

    .line 10271
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 10272
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 10273
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->g:Ljava/nio/ByteBuffer;

    :goto_0
    return-object v0

    .line 10275
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;Lcom/sleepycat/b/i/c/b/x;)V
    .locals 7

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/sleepycat/b/i/h/d;->b()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->M:Lcom/sleepycat/b/p/z;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 552
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->N:Lcom/sleepycat/b/p/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/p/z;->f()V

    .line 554
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 555
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 556
    invoke-interface {p2, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 557
    if-nez v1, :cond_0

    .line 564
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->J:Lcom/sleepycat/b/p/z;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 569
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->P:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    sget-object v1, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    if-ne p3, v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->P:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->R:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->Q:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sent "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 583
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 584
    return-void

    .line 575
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->P:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->R:Lcom/sleepycat/b/c/ad;

    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->Q:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sent to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10087
    iget-object v6, p3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 575
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 430
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 431
    sget-boolean v2, Lcom/sleepycat/b/i/h/a;->S:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 432
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 433
    invoke-interface {p1, p2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 434
    if-gtz v2, :cond_0

    .line 435
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected bytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " read bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->I:Lcom/sleepycat/b/p/z;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 440
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 441
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/sleepycat/b/i/h/a;->d:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/sleepycat/d/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public final a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;
    .locals 8

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/h/a;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 459
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    .line 7390
    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 7391
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/e;

    .line 7393
    if-nez v0, :cond_0

    .line 7394
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->R:Lcom/sleepycat/b/c/ad;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown message op id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Known op ids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/b/aa;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 8373
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/sleepycat/b/i/h/e;->b:Ljava/lang/reflect/Constructor;

    .line 464
    iget-object v2, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 465
    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->K:Lcom/sleepycat/b/p/z;

    add-int/lit8 v4, v2, 0x6

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/p/z;->b(J)V

    .line 466
    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->L:Lcom/sleepycat/b/p/z;

    invoke-virtual {v3}, Lcom/sleepycat/b/p/z;->f()V

    .line 467
    if-lez v2, :cond_3

    .line 468
    int-to-long v4, v2

    iget-wide v6, p0, Lcom/sleepycat/b/i/h/a;->c:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Message op: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Body size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is too large.  maxSizeAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/sleepycat/b/i/h/a;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nIf a larger value is needed, set the \'je.rep.maxMessageSize\' parameter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v0

    .line 9255
    :cond_1
    :try_start_2
    sget v0, Lcom/sleepycat/b/i/h/a;->e:I

    if-gt v2, v0, :cond_2

    .line 9256
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 9257
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 9258
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->f:Ljava/nio/ByteBuffer;

    .line 478
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/h/a;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 479
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/d;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 498
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    return-object v0

    .line 9260
    :cond_2
    :try_start_3
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_3
    if-gez v2, :cond_4

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Message op: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Body size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 487
    :cond_4
    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/h/d;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    iget-object v1, p0, Lcom/sleepycat/b/i/h/a;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 493
    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 495
    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final a(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/b/i/h/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sleepycat/b/i/h/d;",
            ">(",
            "Ljava/nio/channels/ReadableByteChannel;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/h/a;->a(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    return-object v0

    .line 516
    :cond_0
    new-instance v1, Lcom/sleepycat/b/i/h/g;

    invoke-direct {v1, v0, p2}, Lcom/sleepycat/b/i/h/g;-><init>(Lcom/sleepycat/b/i/h/d;Ljava/lang/Class;)V

    throw v1
.end method

.method public final a(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sleepycat/b/i/h/a;->H:Lcom/sleepycat/b/p/ai;

    .line 7103
    iget-boolean v1, p1, Lcom/sleepycat/b/bn;->c:Z

    .line 226
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/p/ai;->a(Z)Lcom/sleepycat/b/p/ai;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V
    .locals 1

    .prologue
    .line 526
    .line 10044
    iget-object v0, p2, Lcom/sleepycat/b/i/h/o;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 526
    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/i/h/a;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;Lcom/sleepycat/b/i/c/b/x;)V

    .line 527
    return-void
.end method

.method public final a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;)V
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/sleepycat/b/i/c/b/x;->c:Lcom/sleepycat/b/i/c/b/x;

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/b/i/h/a;->a(Lcom/sleepycat/b/i/h/d;Ljava/nio/channels/WritableByteChannel;Lcom/sleepycat/b/i/c/b/x;)V

    .line 537
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/h/a;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 286
    array-length v1, v0

    invoke-static {p2, v1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 287
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 288
    return-void
.end method

.method public final a([Lcom/sleepycat/b/i/h/e;)V
    .locals 5

    .prologue
    .line 193
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 194
    iget-object v3, p0, Lcom/sleepycat/b/i/h/a;->a:Ljava/util/Map;

    .line 5337
    iget-short v4, v2, Lcom/sleepycat/b/i/h/e;->a:S

    .line 194
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate op: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6337
    iget-short v1, v2, Lcom/sleepycat/b/i/h/e;->a:S

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    return-void
.end method
