.class public Lcom/sleepycat/b/i/c/t;
.super Ljava/lang/Object;
.source "RepGroupImpl.java"


# static fields
.field static final synthetic g:Z

.field private static final i:Ljava/util/UUID;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/util/UUID;

.field final c:I

.field d:I

.field e:I

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/b/i/c/am;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sleepycat/b/i/c/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    const-class v0, Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/c/t;->g:Z

    .line 91
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/sleepycat/b/i/c/t;->i:Ljava/util/UUID;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;IIILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/b/i/c/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/i/c/t;->d:I

    .line 129
    iput-object p1, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 131
    iput p3, p0, Lcom/sleepycat/b/i/c/t;->c:I

    .line 132
    iput p4, p0, Lcom/sleepycat/b/i/c/t;->d:I

    .line 133
    iput p5, p0, Lcom/sleepycat/b/i/c/t;->e:I

    .line 135
    const/4 v0, 0x2

    if-eq v0, p3, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected membership database version: 2 Encountered unsupported version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p0, p6}, Lcom/sleepycat/b/i/c/t;->a(Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 104
    if-eqz p2, :cond_0

    sget-object v2, Lcom/sleepycat/b/i/c/t;->i:Ljava/util/UUID;

    :goto_0
    const/4 v3, 0x2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;Ljava/util/UUID;IIILjava/util/Map;)V

    .line 110
    return-void

    .line 104
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    goto :goto_0
.end method

.method private static a(Lcom/sleepycat/a/a/k;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sleepycat/a/a/k",
            "<TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    new-instance v0, Lcom/sleepycat/a/a/m;

    const/16 v2, 0x64

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Lcom/sleepycat/a/a/m;-><init>([B)V

    .line 411
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/a/a/k;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V

    .line 2259
    iget-object v2, v0, Lcom/sleepycat/c/d;->b:[B

    .line 2280
    iget v3, v0, Lcom/sleepycat/c/d;->a:I

    .line 415
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 416
    aget-byte v4, v2, v0

    and-int/lit8 v4, v4, 0xf

    .line 417
    aget-byte v5, v2, v0

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    .line 418
    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/i/c/am;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    new-instance v0, Lcom/sleepycat/b/i/c/r;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/r;-><init>()V

    .line 458
    invoke-static {v0, p0}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/a/a/k;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/UUID;)Z
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/sleepycat/b/i/c/t;->i:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x1

    return v0
.end method

.method public static b(Lcom/sleepycat/b/i/c/am;)[B
    .locals 2

    .prologue
    .line 469
    new-instance v0, Lcom/sleepycat/b/i/c/r;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/r;-><init>()V

    .line 470
    new-instance v0, Lcom/sleepycat/a/a/m;

    const/16 v1, 0x64

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/a/a/m;-><init>([B)V

    .line 471
    invoke-static {p0, v0}, Lcom/sleepycat/b/i/c/r;->a(Lcom/sleepycat/b/i/c/am;Lcom/sleepycat/a/a/m;)V

    .line 3259
    iget-object v0, v0, Lcom/sleepycat/c/d;->b:[B

    .line 472
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;
    .locals 3

    .prologue
    .line 714
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/i/c/t;->b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v0

    .line 715
    if-nez v0, :cond_1

    .line 716
    const/4 v0, 0x0

    .line 722
    :cond_0
    return-object v0

    .line 7178
    :cond_1
    iget-boolean v1, v0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 718
    if-eqz v1, :cond_0

    .line 719
    new-instance v0, Lcom/sleepycat/b/i/m;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Node no longer a member:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/i/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/net/InetSocketAddress;)Lcom/sleepycat/b/i/c/am;
    .locals 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 579
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/am;->a()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5178
    iget-boolean v2, v0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 579
    if-nez v2, :cond_0

    .line 583
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/c/w;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 563
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 4178
    iget-boolean v3, v0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 564
    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i/c/w;->a(Lcom/sleepycat/b/i/c/am;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    :cond_2
    return-object v1
.end method

.method public final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sleepycat/b/i/c/am;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    .line 288
    if-nez p1, :cond_1

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/t;->h:Ljava/util/Map;

    .line 296
    :cond_0
    return-void

    .line 292
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/t;->h:Ljava/util/Map;

    .line 293
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 294
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->h:Ljava/util/Map;

    .line 1197
    iget-object v3, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 2087
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 294
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/sleepycat/b/i/c/t;->i:Ljava/util/UUID;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 746
    return-object v0
.end method

.method public final b(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/i/c/w;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 643
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 6178
    iget-boolean v3, v0, Lcom/sleepycat/b/i/c/am;->d:Z

    .line 644
    if-nez v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i/c/w;->a(Lcom/sleepycat/b/i/c/am;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 645
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/am;->a()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_2
    return-object v1
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 437
    new-instance v0, Lcom/sleepycat/b/i/c/q;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/q;-><init>()V

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    invoke-static {v0, p0}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/a/a/k;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 442
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {v0}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/b/i/c/am;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Lcom/sleepycat/b/i/c/t$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/t$1;-><init>(Lcom/sleepycat/b/i/c/t;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sleepycat/b/i/c/am;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Lcom/sleepycat/b/i/c/t$2;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/t$2;-><init>(Lcom/sleepycat/b/i/c/t;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/t;->a(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    if-ne p0, p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 245
    goto :goto_0

    .line 247
    :cond_2
    instance-of v2, p1, Lcom/sleepycat/b/i/c/t;

    if-nez v2, :cond_3

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_3
    check-cast p1, Lcom/sleepycat/b/i/c/t;

    .line 251
    iget v2, p0, Lcom/sleepycat/b/i/c/t;->d:I

    iget v3, p1, Lcom/sleepycat/b/i/c/t;->d:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 252
    goto :goto_0

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 255
    iget-object v2, p1, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 256
    goto :goto_0

    .line 258
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 259
    goto :goto_0

    .line 261
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    if-nez v2, :cond_7

    .line 262
    iget-object v2, p1, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    if-eqz v2, :cond_8

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 266
    goto :goto_0

    .line 269
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    if-nez v2, :cond_9

    .line 270
    iget-object v2, p1, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    if-eqz v2, :cond_a

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_9
    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    iget-object v3, p1, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 274
    goto :goto_0

    .line 276
    :cond_a
    iget v2, p0, Lcom/sleepycat/b/i/c/t;->c:I

    iget v3, p1, Lcom/sleepycat/b/i/c/t;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/t;->b(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    new-instance v0, Lcom/sleepycat/b/i/c/t$3;

    invoke-direct {v0, p0}, Lcom/sleepycat/b/i/c/t$3;-><init>(Lcom/sleepycat/b/i/c/t;)V

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/t;->b(Lcom/sleepycat/b/i/c/w;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/t;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    iget v0, p0, Lcom/sleepycat/b/i/c/t;->d:I

    add-int/lit8 v0, v0, 0x1f

    .line 228
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 235
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/sleepycat/b/i/c/t;->c:I

    add-int/2addr v0, v1

    .line 236
    return v0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_1

    .line 233
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    const-string v0, "Group info ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7304
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->b:Ljava/util/UUID;

    .line 857
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n Representation version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7314
    iget v2, p0, Lcom/sleepycat/b/i/c/t;->c:I

    .line 857
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n Change version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7324
    iget v2, p0, Lcom/sleepycat/b/i/c/t;->d:I

    .line 857
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n Max rep node ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7343
    iget v2, p0, Lcom/sleepycat/b/i/c/t;->e:I

    .line 857
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sleepycat/b/i/c/t;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 866
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 869
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
