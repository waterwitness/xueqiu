.class public final Lcom/sleepycat/b/c/az;
.super Lcom/sleepycat/b/c/bb;
.source "SortedLSNTreeWalker.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final e:Lcom/sleepycat/b/l/c;

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const-class v0, Lcom/sleepycat/b/c/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/az;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sleepycat/b/l/j;ILcom/sleepycat/b/l/c;J)V
    .locals 2

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/c/bb;-><init>(Lcom/sleepycat/b/l/j;I)V

    .line 205
    sget-boolean v0, Lcom/sleepycat/b/c/az;->a:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/c/az;->a:Z

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 207
    :cond_1
    iput-object p3, p0, Lcom/sleepycat/b/c/az;->e:Lcom/sleepycat/b/l/c;

    .line 208
    iput-wide p4, p0, Lcom/sleepycat/b/c/az;->f:J

    .line 209
    return-void
.end method


# virtual methods
.method final a()Lcom/sleepycat/b/l/c;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sleepycat/b/c/az;->e:Lcom/sleepycat/b/l/c;

    return-object v0
.end method

.method final b()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/sleepycat/b/c/az;->f:J

    return-wide v0
.end method

.method final c()J
    .locals 7

    .prologue
    .line 229
    sget v0, Lcom/sleepycat/b/c/ao;->m:I

    sget v1, Lcom/sleepycat/b/c/ao;->V:I

    add-int/2addr v0, v1

    int-to-long v4, v0

    iget-object v2, p0, Lcom/sleepycat/b/c/az;->e:Lcom/sleepycat/b/l/c;

    .line 1337
    sget v0, Lcom/sleepycat/b/c/ao;->x:I

    sget v1, Lcom/sleepycat/b/c/ao;->W:I

    add-int/2addr v0, v1

    iget-object v1, v2, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 1340
    iget-object v2, v2, Lcom/sleepycat/b/l/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/g;

    .line 2134
    sget v1, Lcom/sleepycat/b/c/ao;->y:I

    iget-object v0, v0, Lcom/sleepycat/b/l/g;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 1341
    add-long/2addr v0, v2

    move-wide v2, v0

    .line 1342
    goto :goto_0

    .line 229
    :cond_0
    add-long v0, v4, v2

    return-wide v0
.end method
