.class public final Lcom/sleepycat/b/n/ae;
.super Ljava/lang/Object;
.source "TxnChain.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/n/ae;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/sleepycat/b/c/i;

.field private final b:[B


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/a/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/c/i;",
            "Lcom/sleepycat/b/g/a/k",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p2}, Lcom/sleepycat/b/g/a/k;->k()[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/n/ae;-><init>(Lcom/sleepycat/b/c/i;[B)V

    .line 322
    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/b/c/i;[B)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/sleepycat/b/n/ae;->a:Lcom/sleepycat/b/c/i;

    .line 326
    iput-object p2, p0, Lcom/sleepycat/b/n/ae;->b:[B

    .line 327
    return-void
.end method

.method private a(Lcom/sleepycat/b/n/ae;)I
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sleepycat/b/n/ae;->a:Lcom/sleepycat/b/c/i;

    .line 1496
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 330
    iget-object v1, p1, Lcom/sleepycat/b/n/ae;->a:Lcom/sleepycat/b/c/i;

    .line 2496
    iget-object v1, v1, Lcom/sleepycat/b/c/i;->a:Lcom/sleepycat/b/c/h;

    .line 330
    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->a(Lcom/sleepycat/b/c/h;)I

    move-result v0

    .line 331
    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/n/ae;->b:[B

    iget-object v1, p1, Lcom/sleepycat/b/n/ae;->b:[B

    iget-object v2, p0, Lcom/sleepycat/b/n/ae;->a:Lcom/sleepycat/b/c/i;

    .line 3097
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->p:Ljava/util/Comparator;

    .line 337
    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/l/w;->a([B[BLjava/util/Comparator;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 316
    check-cast p1, Lcom/sleepycat/b/n/ae;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/ae;->a(Lcom/sleepycat/b/n/ae;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 342
    instance-of v1, p1, Lcom/sleepycat/b/n/ae;

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/sleepycat/b/n/ae;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/n/ae;->a(Lcom/sleepycat/b/n/ae;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 361
    const-string v0, "Hashing not supported"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method
