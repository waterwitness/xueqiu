.class public final Lcom/sleepycat/b/l/ah;
.super Ljava/lang/Object;
.source "Tree.java"

# interfaces
.implements Lcom/sleepycat/b/g/at;


# static fields
.field public static final synthetic e:Z

.field private static j:Lcom/sleepycat/b/l/af;


# instance fields
.field public a:Lcom/sleepycat/b/c/i;

.field public b:Lcom/sleepycat/b/l/e;

.field public c:I

.field public d:Lcom/sleepycat/b/f/f;

.field private f:Lcom/sleepycat/b/p/ai;

.field private g:Lcom/sleepycat/b/p/o;

.field private h:Lcom/sleepycat/b/p/z;

.field private final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/sleepycat/b/l/am;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Lcom/sleepycat/b/l/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    .line 175
    new-instance v0, Lcom/sleepycat/b/l/af;

    invoke-direct {v0}, Lcom/sleepycat/b/l/af;-><init>()V

    sput-object v0, Lcom/sleepycat/b/l/ah;->j:Lcom/sleepycat/b/l/af;

    return-void

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->i:Ljava/lang/ThreadLocal;

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/c/i;)V

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/b/l/ah;->c:I

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->i:Ljava/lang/ThreadLocal;

    .line 203
    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/c/i;)V

    .line 204
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/c/i;)V

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/f/f;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    return-object v0
.end method

.method private a(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            "[B",
            "Lcom/sleepycat/b/a;",
            ")",
            "Lcom/sleepycat/b/l/j;"
        }
    .end annotation

    .prologue
    .line 1747
    if-eqz p1, :cond_0

    .line 1755
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    :try_end_0
    .catch Lcom/sleepycat/b/l/af; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1772
    :goto_1
    return-object v0

    .line 1768
    :catch_0
    move-exception v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/b/l/ah;->c(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object p1

    goto :goto_0

    .line 1772
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/l/aj;ILcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            "[B",
            "Lcom/sleepycat/b/l/aj;",
            "I",
            "Lcom/sleepycat/b/l/b;",
            "Lcom/sleepycat/b/a;",
            "Ljava/util/Comparator",
            "<[B>;)",
            "Lcom/sleepycat/b/l/j;"
        }
    .end annotation

    .prologue
    .line 1372
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1380
    :cond_0
    const/4 v0, 0x0

    move v8, v0

    move-object v1, p1

    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1382
    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/l/aj;ILcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;
    :try_end_0
    .catch Lcom/sleepycat/b/p/ae; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1394
    :catch_0
    move-exception v0

    .line 23079
    const/4 v0, 0x1

    invoke-direct {p0, p6, v0}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;

    move-result-object v1

    .line 1380
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1398
    :cond_1
    const-string v0, "searchSubTreeInternal should have completed in two tries"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method public static a(Lcom/sleepycat/b/l/j;[BLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            "[B",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/l/ak;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1654
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1655
    :cond_0
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1656
    :cond_1
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    move-object v1, v0

    .line 26345
    :goto_0
    iget v2, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 1665
    if-eqz v2, :cond_9

    .line 27345
    iget v1, p0, Lcom/sleepycat/b/l/j;->f:I

    .line 1670
    const/4 v2, 0x1

    if-le v1, v2, :cond_8

    move-object v1, p0

    .line 1674
    :goto_1
    invoke-virtual {p0, p1, v4, v4}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v2

    .line 1675
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_3

    if-gez v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1678
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 1679
    sget-object v3, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1680
    new-instance v3, Lcom/sleepycat/b/l/ak;

    invoke-direct {v3, p0, v0, v2}, Lcom/sleepycat/b/l/ak;-><init>(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;I)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1690
    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28345
    iget v2, v0, Lcom/sleepycat/b/l/j;->f:I

    .line 1691
    if-eqz v2, :cond_4

    .line 1692
    sget-object v0, Lcom/sleepycat/b/l/ad;->a:Lcom/sleepycat/b/l/ad;

    throw v0

    .line 1699
    :cond_4
    check-cast v0, Lcom/sleepycat/b/l/a;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/a;->p()I

    move-result v0

    if-lez v0, :cond_5

    .line 1700
    sget-object v0, Lcom/sleepycat/b/l/f;->a:Lcom/sleepycat/b/l/f;

    throw v0

    .line 1704
    :cond_5
    if-eqz v1, :cond_6

    .line 1711
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 1713
    :goto_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1714
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ak;

    .line 1715
    iget-object v3, v0, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    if-eq v3, v1, :cond_7

    .line 1718
    iget-object v0, v0, Lcom/sleepycat/b/l/ak;->b:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    .line 1719
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 1728
    :cond_6
    invoke-static {p2}, Lcom/sleepycat/b/l/ah;->a(Ljava/util/ArrayList;)V

    .line 1729
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1731
    :cond_7
    return-void

    :cond_8
    move-object v1, v0

    goto :goto_1

    :cond_9
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    :cond_a
    move-object p0, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/l/ak;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 578
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ak;

    .line 580
    iget-object v0, v0, Lcom/sleepycat/b/l/ak;->b:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_0

    .line 582
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/sleepycat/b/l/ah;)Lcom/sleepycat/b/l/e;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    return-object v0
.end method

.method private b(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 2087
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2089
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 2087
    return-object v0

    .line 2089
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method private b(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            "[B",
            "Lcom/sleepycat/b/a;",
            ")",
            "Lcom/sleepycat/b/l/j;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1790
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v4

    move-object v1, p1

    .line 29345
    :goto_0
    :try_start_0
    iget v0, v1, Lcom/sleepycat/b/l/j;->f:I

    .line 1799
    if-nez v0, :cond_1

    move-object v0, v1

    .line 1836
    :cond_0
    return-object v0

    .line 1805
    :cond_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, p2, v0, v5, v6}, Lcom/sleepycat/b/l/j;->a([BZZLjava/util/Comparator;)I

    move-result v0

    .line 1809
    sget-boolean v5, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v5, :cond_4

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    :catchall_0
    move-exception v0

    move v7, v3

    move-object v3, v1

    move v1, v7

    .line 1839
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1841
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 1843
    :cond_2
    if-eq v3, v2, :cond_3

    .line 1844
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 1838
    :cond_3
    throw v0

    .line 1812
    :cond_4
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/j;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1813
    if-eqz v4, :cond_5

    .line 1814
    :try_start_2
    invoke-virtual {v0, p3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1819
    :goto_2
    const/4 v3, 0x1

    .line 1822
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->P()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1824
    iget-object v2, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 30133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1824
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/l/j;)V

    .line 1825
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->P()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1827
    sget-object v2, Lcom/sleepycat/b/l/ah;->j:Lcom/sleepycat/b/l/af;

    throw v2

    .line 1838
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    move v8, v3

    move-object v3, v1

    move v1, v8

    goto :goto_1

    .line 1817
    :cond_5
    invoke-virtual {v0, p3}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V

    goto :goto_2

    .line 1832
    :cond_6
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1834
    :try_start_3
    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->f()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    if-nez v1, :cond_0

    move-object v2, v0

    move-object v1, v0

    goto :goto_0

    .line 1838
    :catchall_2
    move-exception v1

    move-object v2, v0

    move v7, v3

    move-object v3, v0

    move-object v0, v1

    move v1, v7

    goto :goto_1
.end method

.method private b(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/l/aj;ILcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            "[B",
            "Lcom/sleepycat/b/l/aj;",
            "I",
            "Lcom/sleepycat/b/l/b;",
            "Lcom/sleepycat/b/a;",
            "Ljava/util/Comparator",
            "<[B>;)",
            "Lcom/sleepycat/b/l/j;"
        }
    .end annotation

    .prologue
    .line 1441
    if-nez p1, :cond_1

    .line 1442
    const/4 v1, 0x0

    .line 1581
    :cond_0
    :goto_0
    return-object v1

    .line 1445
    :cond_1
    sget-object v1, Lcom/sleepycat/b/l/aj;->b:Lcom/sleepycat/b/l/aj;

    if-eq p3, v1, :cond_2

    sget-object v1, Lcom/sleepycat/b/l/aj;->c:Lcom/sleepycat/b/l/aj;

    if-ne p3, v1, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    .line 1453
    const-string v1, "searchSubTree passed key and left/right search"

    invoke-static {v1}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1

    .line 1457
    :cond_3
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->E()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1459
    :cond_4
    if-eqz p5, :cond_5

    .line 1460
    const/4 v1, 0x1

    move-object/from16 v0, p5

    iput-boolean v1, v0, Lcom/sleepycat/b/l/b;->a:Z

    .line 1461
    const/4 v1, 0x1

    move-object/from16 v0, p5

    iput-boolean v1, v0, Lcom/sleepycat/b/l/b;->b:Z

    .line 1465
    :cond_5
    const/4 v7, 0x0

    .line 1466
    const/4 v6, 0x0

    .line 1467
    const/4 v5, 0x0

    .line 1468
    const/4 v4, 0x0

    .line 1469
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    move v2, v1

    .line 1471
    :goto_1
    invoke-direct {p0}, Lcom/sleepycat/b/l/ah;->g()Lcom/sleepycat/b/l/am;

    move-result-object v8

    move-object v3, p1

    .line 1477
    :goto_2
    if-eqz v8, :cond_6

    .line 1478
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->u()V

    .line 23345
    :cond_6
    iget v1, v3, Lcom/sleepycat/b/l/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    if-nez v1, :cond_9

    .line 1607
    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    .line 1609
    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->C()V

    :cond_7
    move-object v1, v3

    .line 1484
    goto :goto_0

    .line 1469
    :cond_8
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    .line 1485
    :cond_9
    :try_start_1
    sget-object v1, Lcom/sleepycat/b/l/aj;->a:Lcom/sleepycat/b/l/aj;

    if-ne p3, v1, :cond_d

    .line 1487
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v3, p2, v1, v9, v0}, Lcom/sleepycat/b/l/j;->a([BZZLjava/util/Comparator;)I

    move-result v1

    .line 1500
    :goto_3
    sget-boolean v9, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v9, :cond_10

    if-gez v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1583
    :catchall_0
    move-exception v1

    move v2, v4

    move-object v4, v6

    move-object v6, v3

    move v3, v5

    move-object v5, v7

    .line 1592
    :goto_4
    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    .line 1594
    :try_start_2
    invoke-virtual {v5}, Lcom/sleepycat/b/l/j;->C()V

    .line 1597
    :cond_a
    if-eq v6, v5, :cond_b

    .line 1598
    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1607
    :cond_b
    :goto_5
    if-eqz v4, :cond_c

    if-eqz v2, :cond_c

    .line 1609
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    .line 1583
    :cond_c
    throw v1

    .line 1489
    :cond_d
    :try_start_3
    sget-object v1, Lcom/sleepycat/b/l/aj;->b:Lcom/sleepycat/b/l/aj;

    if-ne p3, v1, :cond_e

    .line 1491
    const/4 v1, 0x0

    goto :goto_3

    .line 1492
    :cond_e
    sget-object v1, Lcom/sleepycat/b/l/aj;->c:Lcom/sleepycat/b/l/aj;

    if-ne p3, v1, :cond_f

    .line 24345
    iget v1, v3, Lcom/sleepycat/b/l/j;->f:I

    .line 1494
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1496
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value of searchType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v1

    throw v1

    .line 1502
    :cond_10
    if-eqz p5, :cond_12

    .line 25345
    iget v9, v3, Lcom/sleepycat/b/l/j;->f:I

    .line 1503
    add-int/lit8 v9, v9, -0x1

    if-eq v1, v9, :cond_11

    .line 1504
    const/4 v9, 0x0

    move-object/from16 v0, p5

    iput-boolean v9, v0, Lcom/sleepycat/b/l/b;->a:Z

    .line 1506
    :cond_11
    if-eqz v1, :cond_12

    .line 1507
    const/4 v9, 0x0

    move-object/from16 v0, p5

    iput-boolean v9, v0, Lcom/sleepycat/b/l/b;->b:Z

    .line 1519
    :cond_12
    if-eqz v2, :cond_14

    invoke-virtual {v3, v1}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v9

    if-nez v9, :cond_14

    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->e()Z

    move-result v9

    if-nez v9, :cond_14

    .line 1523
    if-nez v6, :cond_13

    .line 1529
    sget-object v1, Lcom/sleepycat/b/p/ae;->a:Lcom/sleepycat/b/p/ae;

    throw v1

    .line 1534
    :cond_13
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 1535
    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1541
    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->C()V

    .line 1542
    const/4 v4, 0x0

    .line 1543
    const/4 v6, 0x0

    .line 1545
    :cond_14
    invoke-virtual {v3, v1}, Lcom/sleepycat/b/l/j;->g(I)Lcom/sleepycat/b/l/ac;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/l/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1551
    if-eqz v6, :cond_15

    .line 1552
    :try_start_4
    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->C()V

    .line 1553
    const/4 v4, 0x0

    .line 1557
    :cond_15
    if-eqz v2, :cond_18

    .line 1559
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V

    .line 1563
    :goto_6
    const/4 v5, 0x1

    .line 1565
    if-eqz v8, :cond_16

    .line 1566
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->u()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1570
    :cond_16
    if-eqz v2, :cond_19

    .line 1572
    const/4 v4, 0x1

    move v10, v4

    move-object v4, v3

    move v3, v10

    .line 1577
    :goto_7
    :try_start_5
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->f()Z

    move-result v6

    if-nez v6, :cond_17

    .line 25610
    iget v6, v1, Lcom/sleepycat/b/l/j;->j:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1577
    if-ne v6, p4, :cond_1a

    .line 1607
    :cond_17
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1609
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    goto/16 :goto_0

    .line 1561
    :cond_18
    :try_start_6
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    goto :goto_6

    .line 1583
    :catchall_1
    move-exception v2

    move-object v10, v2

    move v2, v4

    move-object v4, v6

    move-object v6, v3

    move v3, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_4

    .line 1574
    :cond_19
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v3, v4

    move-object v4, v6

    goto :goto_7

    .line 1600
    :catch_0
    move-exception v3

    .line 1601
    iget-object v5, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 26133
    iget-object v5, v5, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 1601
    const-string v6, "Tree"

    const-string v7, "searchSubTreeInternal"

    const-string v8, ""

    invoke-static {v5, v6, v7, v8, v3}, Lcom/sleepycat/b/p/w;->a(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1583
    :catchall_2
    move-exception v2

    move-object v6, v1

    move v10, v3

    move v3, v5

    move-object v5, v1

    move-object v1, v2

    move v2, v10

    goto/16 :goto_4

    :cond_1a
    move-object v6, v4

    move-object v7, v1

    move v4, v3

    move-object v3, v1

    goto/16 :goto_2
.end method

.method private b(Lcom/sleepycat/b/c/i;)V
    .locals 3

    .prologue
    .line 219
    new-instance v0, Lcom/sleepycat/b/f/f;

    const-string v1, "RootLatch"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/f/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 221
    iput-object p1, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 224
    new-instance v0, Lcom/sleepycat/b/p/ai;

    const-string v1, "BTree"

    const-string v2, "Composition of btree, types and counts of nodes."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/ai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->f:Lcom/sleepycat/b/p/ai;

    .line 225
    new-instance v0, Lcom/sleepycat/b/p/z;

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/a;->h:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/z;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->h:Lcom/sleepycat/b/p/z;

    .line 226
    new-instance v0, Lcom/sleepycat/b/p/o;

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->f:Lcom/sleepycat/b/p/ai;

    sget-object v2, Lcom/sleepycat/b/c/a;->i:Lcom/sleepycat/b/p/ag;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/p/o;-><init>(Lcom/sleepycat/b/p/ai;Lcom/sleepycat/b/p/ag;)V

    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->g:Lcom/sleepycat/b/p/o;

    .line 227
    return-void
.end method

.method private c(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    .locals 19

    .prologue
    .line 1873
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1875
    const/4 v7, 0x1

    .line 1876
    const/4 v5, 0x1

    .line 1878
    const/4 v4, 0x0

    .line 1882
    const/4 v3, 0x0

    .line 1896
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->a()V

    .line 1898
    const/4 v3, 0x1

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v9, v3

    move-object/from16 p1, v2

    .line 1903
    :goto_0
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1913
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/l/j;->P()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/l/j;->I()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1914
    :cond_0
    sget-object v2, Lcom/sleepycat/b/l/ah;->j:Lcom/sleepycat/b/l/af;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2034
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    move v4, v9

    .line 2040
    :goto_1
    if-eqz v2, :cond_1

    .line 2041
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 2044
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 2045
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 2046
    :goto_2
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2047
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/ak;

    .line 2048
    iget-object v2, v2, Lcom/sleepycat/b/l/ak;->b:Lcom/sleepycat/b/l/j;

    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    goto :goto_2

    :cond_2
    move-object v3, v2

    move-object v5, v2

    move v2, v4

    .line 30345
    :goto_3
    :try_start_2
    iget v4, v5, Lcom/sleepycat/b/l/j;->f:I

    .line 1922
    if-eqz v4, :cond_12

    .line 1927
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v4, v6}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v6

    .line 1928
    if-eqz v6, :cond_3

    .line 1929
    const/4 v7, 0x0

    .line 31345
    :cond_3
    iget v4, v5, Lcom/sleepycat/b/l/j;->f:I

    .line 1931
    add-int/lit8 v4, v4, -0x1

    if-eq v6, v4, :cond_11

    .line 1932
    const/4 v4, 0x0

    .line 1936
    :goto_4
    sget-boolean v2, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v2, :cond_4

    if-gez v6, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2034
    :catchall_1
    move-exception v2

    move v4, v9

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    goto :goto_1

    .line 1942
    :cond_4
    invoke-virtual {v5, v6}, Lcom/sleepycat/b/l/j;->j(I)Lcom/sleepycat/b/l/ac;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1943
    if-eqz v2, :cond_5

    .line 1946
    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1947
    new-instance v3, Lcom/sleepycat/b/l/ak;

    invoke-direct {v3, v5, v2, v6}, Lcom/sleepycat/b/l/ak;-><init>(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;I)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1952
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->f()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    move-object v3, v2

    move v14, v4

    .line 1954
    :goto_5
    const/4 v5, 0x0

    .line 1955
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 32133
    iget-object v2, v2, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 32371
    iget-object v0, v2, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    move-object/from16 v16, v0

    .line 1968
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v17

    .line 1969
    const-wide/16 v10, -0x1

    .line 1970
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1971
    invoke-interface/range {v17 .. v17}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/b/l/ak;

    move-object v4, v0

    .line 1977
    invoke-interface/range {v17 .. v17}, Ljava/util/ListIterator;->remove()V

    .line 1978
    iget-object v2, v4, Lcom/sleepycat/b/l/ak;->b:Lcom/sleepycat/b/l/j;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1979
    :try_start_5
    iget-object v3, v4, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    .line 1980
    iget v4, v4, Lcom/sleepycat/b/l/ak;->c:I

    .line 1983
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->P()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1984
    if-nez v7, :cond_6

    if-eqz v14, :cond_7

    .line 1985
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/l/ah;->c:I

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;II[BZLcom/sleepycat/b/a;)V

    .line 33342
    :goto_7
    iget-wide v4, v3, Lcom/sleepycat/b/l/j;->c:J

    .line 1996
    const/4 v6, 0x1

    .line 2006
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2007
    sget-boolean v8, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2034
    :catchall_2
    move-exception v3

    move v4, v9

    goto/16 :goto_1

    .line 1992
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sleepycat/b/l/ah;->c:I

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V

    goto :goto_7

    .line 2008
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->g()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/sleepycat/b/l/e;->a(J)V

    .line 2009
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/sleepycat/b/l/j;->a(Z)V

    move v3, v6

    .line 2029
    :goto_8
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->C()V

    .line 2030
    const/4 v2, 0x0

    move-wide v10, v4

    move v5, v3

    move-object v3, v2

    .line 2031
    goto :goto_6

    .line 2012
    :cond_9
    if-eqz v5, :cond_a

    .line 34342
    iget-wide v12, v2, Lcom/sleepycat/b/l/j;->c:J

    .line 2021
    cmp-long v6, v10, v12

    if-nez v6, :cond_b

    .line 2022
    invoke-virtual {v2}, Lcom/sleepycat/b/l/j;->g()J

    move-result-wide v12

    .line 2026
    :goto_9
    invoke-virtual {v3, v4, v12, v13}, Lcom/sleepycat/b/l/j;->c(IJ)V

    :cond_a
    move v3, v5

    move-wide v4, v10

    goto :goto_8

    .line 2024
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v12

    goto :goto_9

    .line 2052
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/b/l/j;->C()V

    .line 2055
    if-eqz v4, :cond_d

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 2034
    :cond_d
    throw v3

    .line 2055
    :cond_e
    if-eqz v9, :cond_f

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 2059
    :cond_f
    return-object p1

    .line 2034
    :catchall_3
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v4

    move v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_1

    :cond_10
    move v3, v6

    goto :goto_8

    :cond_11
    move v4, v2

    goto/16 :goto_4

    :cond_12
    move v14, v2

    goto/16 :goto_5

    :cond_13
    move-object v3, v4

    move/from16 v18, v5

    move-object v5, v2

    move/from16 v2, v18

    goto/16 :goto_3

    :cond_14
    move v9, v3

    move-object/from16 v2, p1

    goto/16 :goto_0
.end method

.method private g()Lcom/sleepycat/b/l/am;
    .locals 1

    .prologue
    .line 399
    invoke-static {}, Lcom/sleepycat/b/c/ad;->s()I

    move-result v0

    if-lez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/am;

    .line 402
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 2278
    const/4 v0, 0x1

    .line 2279
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-eqz v1, :cond_0

    .line 2280
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/e;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2282
    :cond_0
    return v0
.end method

.method public final a(Lcom/sleepycat/b/l/a;Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/a;
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/a;

    return-object v0
.end method

.method public final a(J[BZLcom/sleepycat/b/a;ILjava/util/List;Z)Lcom/sleepycat/b/l/ae;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[BZ",
            "Lcom/sleepycat/b/a;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/l/ag;",
            ">;Z)",
            "Lcom/sleepycat/b/l/ae;"
        }
    .end annotation

    .prologue
    .line 761
    .line 8079
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v2}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;

    move-result-object v2

    .line 763
    new-instance v12, Lcom/sleepycat/b/l/ae;

    invoke-direct {v12}, Lcom/sleepycat/b/l/ae;-><init>()V

    .line 764
    if-eqz v2, :cond_2

    .line 766
    if-eqz p7, :cond_0

    .line 767
    new-instance v3, Lcom/sleepycat/b/l/ag;

    iget-object v4, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 8213
    iget-wide v4, v4, Lcom/sleepycat/b/l/e;->b:J

    .line 8342
    iget-wide v6, v2, Lcom/sleepycat/b/l/j;->c:J

    .line 8345
    iget v8, v2, Lcom/sleepycat/b/l/j;->f:I

    .line 767
    invoke-direct/range {v3 .. v8}, Lcom/sleepycat/b/l/ag;-><init>(JJI)V

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v2

    .line 776
    :goto_0
    :try_start_0
    iget-boolean v2, v12, Lcom/sleepycat/b/l/ae;->b:Z

    if-eqz v2, :cond_2

    .line 784
    sget-object v2, Lcom/sleepycat/b/l/aj;->a:Lcom/sleepycat/b/l/aj;

    move-wide v4, p1

    move-object/from16 v6, p3

    move-object v7, v12

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/sleepycat/b/l/j;->a(J[BLcom/sleepycat/b/l/ae;ZLcom/sleepycat/b/a;IZ)V

    .line 795
    if-eqz p7, :cond_1

    .line 796
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/l/ag;

    iget v4, v12, Lcom/sleepycat/b/l/ae;->e:I

    .line 9028
    iput v4, v2, Lcom/sleepycat/b/l/ag;->d:I

    .line 798
    iget-boolean v2, v12, Lcom/sleepycat/b/l/ae;->b:Z

    if-eqz v2, :cond_1

    .line 799
    new-instance v5, Lcom/sleepycat/b/l/ag;

    iget v2, v12, Lcom/sleepycat/b/l/ae;->e:I

    invoke-virtual {v3, v2}, Lcom/sleepycat/b/l/j;->k(I)J

    move-result-wide v6

    iget-object v2, v12, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 9342
    iget-wide v8, v2, Lcom/sleepycat/b/l/j;->c:J

    .line 799
    iget-object v2, v12, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;

    .line 9345
    iget v10, v2, Lcom/sleepycat/b/l/j;->f:I

    .line 799
    invoke-direct/range {v5 .. v10}, Lcom/sleepycat/b/l/ag;-><init>(JJI)V

    move-object/from16 v0, p7

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_1
    iget-object v3, v12, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;
    :try_end_0
    .catch Lcom/sleepycat/b/p/ae; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 813
    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :catchall_0
    move-exception v2

    .line 821
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 820
    throw v2

    .line 825
    :cond_2
    return-object v12
.end method

.method public final a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/ae;
    .locals 6

    .prologue
    .line 667
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;ILjava/util/List;)Lcom/sleepycat/b/l/ae;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;ILjava/util/List;)Lcom/sleepycat/b/l/ae;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/b/l/j;",
            "Z",
            "Lcom/sleepycat/b/a;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/l/ag;",
            ">;)",
            "Lcom/sleepycat/b/l/ae;"
        }
    .end annotation

    .prologue
    .line 701
    if-nez p1, :cond_0

    .line 702
    const-string v0, "getParentNode passed null"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 706
    :cond_0
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->F()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6685
    :cond_1
    iget-object v4, p1, Lcom/sleepycat/b/l/j;->g:[B

    .line 712
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->I()Z

    .line 713
    invoke-virtual {p1}, Lcom/sleepycat/b/l/j;->C()V

    .line 7342
    iget-wide v2, p1, Lcom/sleepycat/b/l/j;->c:J

    .line 715
    const/4 v9, 0x1

    move-object v1, p0

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/sleepycat/b/l/ah;->a(J[BZLcom/sleepycat/b/a;ILjava/util/List;Z)Lcom/sleepycat/b/l/ae;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/l/ac;[BJ)Lcom/sleepycat/b/l/e;
    .locals 7

    .prologue
    .line 257
    new-instance v0, Lcom/sleepycat/b/l/ai;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/b/l/ai;-><init>(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/ac;[BJB)V

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 642
    sget-object v2, Lcom/sleepycat/b/l/aj;->b:Lcom/sleepycat/b/l/aj;

    move-object v0, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2098
    invoke-virtual {p0}, Lcom/sleepycat/b/l/ah;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2107
    :goto_0
    return-object v0

    .line 2101
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    iget-object v2, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 2102
    if-eqz p2, :cond_1

    .line 2103
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    goto :goto_0

    .line 2105
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->a()V

    .line 415
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-interface {p1, v0}, Lcom/sleepycat/b/l/aq;->a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 415
    return-object v0

    .line 417
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 981
    .line 10345
    iget v0, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 981
    if-nez v0, :cond_0

    .line 10685
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->g:[B

    .line 11610
    :goto_0
    iget v4, p1, Lcom/sleepycat/b/l/j;->j:I

    .line 994
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eq v1, v8, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 983
    :cond_0
    if-eqz p2, :cond_1

    .line 11345
    iget v0, p1, Lcom/sleepycat/b/l/j;->f:I

    .line 984
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v0

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p1, v9}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object p1, v11

    .line 1013
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/a;)Lcom/sleepycat/b/l/ae;

    move-result-object v1

    .line 1015
    iget-boolean v2, v1, Lcom/sleepycat/b/l/ae;->a:Z

    if-eqz v2, :cond_7

    .line 1016
    iget-object v11, v1, Lcom/sleepycat/b/l/ae;->d:Lcom/sleepycat/b/l/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1026
    :try_start_1
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_a

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v1

    if-eq v1, v8, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v10, v11

    .line 1109
    :goto_1
    if-eqz p1, :cond_4

    .line 1114
    :cond_4
    if-eqz v10, :cond_5

    .line 1115
    invoke-virtual {v10}, Lcom/sleepycat/b/l/j;->C()V

    .line 1118
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v9, :cond_6

    .line 1120
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->C()V

    .line 1108
    :cond_6
    throw v0

    .line 1020
    :cond_7
    :try_start_2
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1108
    :catchall_1
    move-exception v0

    move-object v1, v10

    goto :goto_1

    :cond_8
    move-object v1, v10

    .line 1093
    :cond_9
    :goto_2
    return-object v1

    .line 1035
    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v11, v0, v1, v2}, Lcom/sleepycat/b/l/j;->a([BZZ)I

    move-result v2

    .line 1037
    if-eqz p2, :cond_c

    .line 1038
    add-int/lit8 v2, v2, 0x1

    .line 12345
    iget v1, v11, Lcom/sleepycat/b/l/j;->f:I

    .line 1039
    if-ge v2, v1, :cond_b

    move v1, v8

    .line 1045
    :goto_3
    if-eqz v1, :cond_2

    .line 1052
    invoke-virtual {v11, v2}, Lcom/sleepycat/b/l/j;->q(I)Lcom/sleepycat/b/l/ac;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/l/j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1053
    :try_start_4
    invoke-virtual {v1, p3}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1057
    :try_start_5
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1108
    :catchall_2
    move-exception v0

    move v9, v8

    move-object v10, v11

    goto :goto_1

    :cond_b
    move v1, v9

    .line 1039
    goto :goto_3

    .line 1041
    :cond_c
    if-lez v2, :cond_d

    move v1, v8

    .line 1042
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_d
    move v1, v9

    .line 1041
    goto :goto_4

    .line 12610
    :cond_e
    iget v0, v1, Lcom/sleepycat/b/l/j;->j:I

    .line 1059
    if-ne v0, v4, :cond_f

    .line 1060
    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1062
    :try_start_6
    invoke-direct {p0}, Lcom/sleepycat/b/l/ah;->g()Lcom/sleepycat/b/l/am;

    move-result-object v0

    .line 1064
    if-eqz v0, :cond_9

    .line 1065
    invoke-virtual {v1}, Lcom/sleepycat/b/l/j;->u()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    .line 1108
    :catchall_3
    move-exception v0

    move v9, v8

    goto :goto_1

    .line 1077
    :cond_f
    const/4 v2, 0x0

    if-eqz p2, :cond_10

    :try_start_7
    sget-object v3, Lcom/sleepycat/b/l/aj;->b:Lcom/sleepycat/b/l/aj;

    :goto_5
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/l/aj;ILcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    .line 1085
    invoke-virtual {v11}, Lcom/sleepycat/b/l/j;->C()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1089
    :try_start_8
    sget-boolean v2, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v2, :cond_11

    invoke-static {}, Lcom/sleepycat/b/f/d;->a()I

    move-result v2

    if-eq v2, v8, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {}, Lcom/sleepycat/b/f/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1108
    :catchall_4
    move-exception v0

    goto/16 :goto_1

    .line 1077
    :cond_10
    :try_start_9
    sget-object v3, Lcom/sleepycat/b/l/aj;->c:Lcom/sleepycat/b/l/aj;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_5

    .line 13610
    :cond_11
    :try_start_a
    iget v2, v0, Lcom/sleepycat/b/l/j;->j:I

    .line 1091
    if-ne v2, v4, :cond_12

    move-object v1, v0

    .line 1093
    goto/16 :goto_2

    .line 1095
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "subtree did not have a IN at level "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1108
    :catchall_5
    move-exception v0

    move-object v10, v11

    goto/16 :goto_1
.end method

.method public final a(Z)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 2113
    const/4 v0, 0x0

    .line 2114
    invoke-virtual {p0}, Lcom/sleepycat/b/l/ah;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2115
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 35187
    iget-object v0, v0, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 2115
    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 2116
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2117
    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V

    .line 2120
    :cond_0
    return-object v0
.end method

.method public final a([BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sleepycat/b/a;",
            ")",
            "Lcom/sleepycat/b/l/j;"
        }
    .end annotation

    .prologue
    .line 1254
    const/4 v4, 0x0

    move-object v9, v4

    .line 1255
    :goto_0
    if-nez v9, :cond_7

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/f;->c()V

    .line 1257
    const/4 v8, 0x1

    .line 1258
    const/4 v6, 0x0

    .line 1259
    const/4 v5, 0x0

    .line 1261
    const/4 v4, 0x0

    .line 1264
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/b/l/ah;->c()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/j;

    .line 1268
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->P()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1269
    if-nez v6, :cond_0

    .line 1270
    const/4 v4, 0x0

    .line 1271
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v6}, Lcom/sleepycat/b/f/f;->d()V

    .line 1272
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v6}, Lcom/sleepycat/b/f/f;->a()V

    .line 1273
    const/4 v6, 0x1

    .line 1274
    goto :goto_1

    .line 14136
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 15133
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 15371
    iget-object v5, v4, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 15492
    iget-object v10, v4, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 14141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/j;

    .line 14142
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14145
    const/4 v7, 0x0

    .line 14151
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v4, v6}, Lcom/sleepycat/b/l/j;->h(I)[B

    move-result-object v11

    .line 14152
    new-instance v6, Lcom/sleepycat/b/l/j;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sleepycat/b/l/ah;->c:I

    .line 15610
    iget v14, v4, Lcom/sleepycat/b/l/j;->j:I

    .line 14152
    add-int/lit8 v14, v14, 0x1

    invoke-direct {v6, v12, v11, v13, v14}, Lcom/sleepycat/b/l/j;-><init>(Lcom/sleepycat/b/c/i;[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 14154
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 14155
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/l/j;->c(Z)V

    .line 14156
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/sleepycat/b/l/j;->c(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14166
    :try_start_3
    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/l/j;)J

    move-result-wide v12

    .line 14168
    new-instance v7, Lcom/sleepycat/b/l/e;

    invoke-direct {v7, v4, v11, v12, v13}, Lcom/sleepycat/b/l/e;-><init>(Lcom/sleepycat/b/l/ac;[BJ)V

    invoke-virtual {v6, v7}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/e;)Z

    move-result v7

    .line 14170
    sget-boolean v11, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v11, :cond_2

    if-nez v7, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14175
    :catchall_0
    move-exception v5

    .line 14177
    const/4 v7, 0x1

    :try_start_4
    invoke-virtual {v4, v7}, Lcom/sleepycat/b/l/j;->c(Z)V

    .line 14175
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 14194
    :catchall_1
    move-exception v5

    :goto_2
    :try_start_5
    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->C()V

    .line 14195
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    .line 14194
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1301
    :catchall_2
    move-exception v4

    move v5, v8

    .line 1304
    :goto_3
    if-eqz v5, :cond_1

    .line 1305
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v5}, Lcom/sleepycat/b/f/f;->d()V

    .line 1301
    :cond_1
    throw v4

    .line 14172
    :cond_2
    :try_start_6
    invoke-virtual {v6, v5}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v14

    .line 14180
    :try_start_7
    invoke-virtual {v10, v6}, Lcom/sleepycat/b/c/al;->a(Lcom/sleepycat/b/l/j;)V

    .line 14187
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v5, v6}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/l/ac;)V

    .line 14188
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v5, v7, v14, v15}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;J)V

    .line 14189
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sleepycat/b/l/ah;->c:I

    move-object/from16 v0, p2

    invoke-virtual {v4, v6, v5, v7, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V

    .line 14190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->g()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/sleepycat/b/l/e;->a(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 14194
    :try_start_8
    invoke-virtual {v6}, Lcom/sleepycat/b/l/j;->C()V

    .line 14195
    invoke-virtual {v4}, Lcom/sleepycat/b/l/j;->C()V

    .line 14197
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->g:Lcom/sleepycat/b/p/o;

    invoke-virtual {v5}, Lcom/sleepycat/b/p/o;->f()V

    .line 14198
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "RootSplit:"

    .line 16471
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 17133
    iget-object v10, v10, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 17515
    iget-object v10, v10, Lcom/sleepycat/b/c/ad;->v:Ljava/util/logging/Logger;

    .line 16472
    invoke-virtual {v10, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 16473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 16474
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16475
    const-string v7, " newRoot="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 18342
    iget-wide v0, v6, Lcom/sleepycat/b/l/j;->c:J

    move-wide/from16 v16, v0

    .line 16475
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16476
    const-string v6, " newRootLsn="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v14, v15}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16478
    const-string v6, " oldRoot="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 19342
    iget-wide v14, v4, Lcom/sleepycat/b/l/j;->c:J

    .line 16478
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16479
    const-string v4, " oldRootLsn="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v12, v13}, Lcom/sleepycat/b/p/j;->h(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 20133
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 16481
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v4, v5, v6}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1284
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/f;->d()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1285
    const/4 v5, 0x0

    .line 1286
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 21133
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 21379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 1287
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v4, v6}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/c/i;)V

    .line 1288
    const/4 v5, 0x1

    .line 1289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/f;->a()V

    .line 1290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/j;

    .line 1291
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1295
    :goto_4
    const/4 v5, 0x1

    .line 1305
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v6}, Lcom/sleepycat/b/f/f;->d()V

    .line 1310
    if-eqz v4, :cond_7

    .line 1315
    :try_start_a
    sget-boolean v6, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v6, :cond_6

    if-nez v5, :cond_6

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_a
    .catch Lcom/sleepycat/b/l/af; {:try_start_a .. :try_end_a} :catch_0

    .line 1338
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 1293
    :cond_5
    :try_start_b
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/l/j;->b(Lcom/sleepycat/b/a;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_4

    .line 1322
    :catch_1
    move-exception v4

    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->h:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->f()V

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 22133
    iget-object v4, v4, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 22581
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->ae:Lcom/sleepycat/b/p/z;

    invoke-virtual {v4}, Lcom/sleepycat/b/p/z;->f()V

    .line 1324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v4}, Lcom/sleepycat/b/f/f;->a()V

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/b/l/j;

    .line 1326
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/a;)V

    .line 1327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v5}, Lcom/sleepycat/b/f/f;->d()V
    :try_end_c
    .catch Lcom/sleepycat/b/l/af; {:try_start_c .. :try_end_c} :catch_0

    .line 1318
    :cond_6
    :try_start_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    :try_end_d
    .catch Lcom/sleepycat/b/p/ae; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/sleepycat/b/l/af; {:try_start_d .. :try_end_d} :catch_0

    move-result-object v4

    move-object v9, v4

    .line 1320
    goto/16 :goto_0

    .line 1342
    :cond_7
    return-object v9

    .line 1301
    :catchall_3
    move-exception v4

    goto/16 :goto_3

    .line 14194
    :catchall_4
    move-exception v5

    move-object v6, v7

    goto/16 :goto_2
.end method

.method public final a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sleepycat/b/l/aj;",
            "Lcom/sleepycat/b/l/b;",
            "Lcom/sleepycat/b/a;",
            "Ljava/util/Comparator",
            "<[B>;)",
            "Lcom/sleepycat/b/l/j;"
        }
    .end annotation

    .prologue
    .line 1237
    .line 14069
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/sleepycat/b/l/ah;->b(Lcom/sleepycat/b/a;Z)Lcom/sleepycat/b/l/j;

    move-result-object v1

    .line 1239
    if-eqz v1, :cond_0

    .line 1240
    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/b/l/ah;->a(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/l/aj;ILcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v0

    .line 1243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/c/i;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 2726
    iget v0, p1, Lcom/sleepycat/b/c/i;->s:I

    .line 236
    iput v0, p0, Lcom/sleepycat/b/l/ah;->c:I

    .line 237
    return-void
.end method

.method public final a(Lcom/sleepycat/b/l/e;Z)V
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 252
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;Z)V
    .locals 1

    .prologue
    .line 2313
    const-string v0, "<root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-eqz v0, :cond_0

    .line 2315
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/e;->a(Ljava/lang/StringBuilder;Z)V

    .line 2317
    :cond_0
    const-string v0, "</root>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    .line 2290
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2291
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v0, p1}, Lcom/sleepycat/b/l/e;->a(Ljava/nio/ByteBuffer;)V

    .line 2294
    :cond_0
    return-void

    .line 2289
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2301
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 2302
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2303
    :goto_0
    if-eqz v0, :cond_0

    .line 35261
    new-instance v0, Lcom/sleepycat/b/l/ai;

    invoke-direct {v0, p0, v1}, Lcom/sleepycat/b/l/ai;-><init>(Lcom/sleepycat/b/l/ah;B)V

    .line 2304
    iput-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 2305
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/b/l/e;->a(Ljava/nio/ByteBuffer;I)V

    .line 2307
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2302
    goto :goto_0
.end method

.method public final a(Lcom/sleepycat/b/g/at;)Z
    .locals 1

    .prologue
    .line 2332
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 867
    invoke-virtual {p1}, Lcom/sleepycat/b/l/al;->a()V

    .line 869
    if-eqz p3, :cond_0

    .line 870
    invoke-virtual {p0, p2, p5}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;

    move-result-object v3

    .line 877
    :goto_0
    if-nez v3, :cond_1

    .line 914
    :goto_1
    return v9

    .line 873
    :cond_0
    sget-object v4, Lcom/sleepycat/b/l/aj;->a:Lcom/sleepycat/b/l/aj;

    move-object v2, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, v5

    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/b/l/ah;->a([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;

    move-result-object v3

    goto :goto_0

    .line 882
    :cond_1
    :try_start_0
    move-object v0, v3

    check-cast v0, Lcom/sleepycat/b/l/a;

    move-object v2, v0

    iput-object v2, p1, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    .line 893
    if-nez p4, :cond_6

    move v2, v9

    move v4, v8

    .line 897
    :goto_2
    iget-object v5, p1, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    invoke-virtual {v5, p2, v2, v4}, Lcom/sleepycat/b/l/a;->a([BZZ)I

    move-result v2

    iput v2, p1, Lcom/sleepycat/b/l/al;->b:I

    .line 901
    if-eqz p4, :cond_3

    .line 902
    iget v2, p1, Lcom/sleepycat/b/l/al;->b:I

    if-ltz v2, :cond_2

    iget v2, p1, Lcom/sleepycat/b/l/al;->b:I

    const/high16 v4, 0x10000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    move v2, v8

    .line 904
    :goto_3
    iget v4, p1, Lcom/sleepycat/b/l/al;->b:I

    const v5, -0x10001

    and-int/2addr v4, v5

    iput v4, p1, Lcom/sleepycat/b/l/al;->b:I

    .line 909
    :goto_4
    if-eqz v2, :cond_5

    .line 910
    iget-object v2, p1, Lcom/sleepycat/b/l/al;->a:Lcom/sleepycat/b/l/a;

    iget v4, p1, Lcom/sleepycat/b/l/al;->b:I

    invoke-virtual {v2, v4}, Lcom/sleepycat/b/l/a;->k(I)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/sleepycat/b/l/al;->d:J

    move v9, v8

    .line 911
    goto :goto_1

    :cond_2
    move v2, v9

    .line 902
    goto :goto_3

    .line 906
    :cond_3
    iget v2, p1, Lcom/sleepycat/b/l/al;->b:I

    if-ltz v2, :cond_4

    move v2, v8

    goto :goto_4

    :cond_4
    move v2, v9

    goto :goto_4

    .line 913
    :cond_5
    iput-object p2, p1, Lcom/sleepycat/b/l/al;->c:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 916
    :catch_0
    move-exception v2

    .line 917
    invoke-virtual {v3}, Lcom/sleepycat/b/l/j;->C()V

    .line 918
    throw v2

    :cond_6
    move v2, v8

    move v4, v9

    goto :goto_2
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 2324
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;
    .locals 2

    .prologue
    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 426
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    invoke-interface {p1, v0}, Lcom/sleepycat/b/l/aq;->a(Lcom/sleepycat/b/l/e;)Lcom/sleepycat/b/l/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    .line 426
    return-object v0

    .line 428
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method public final b(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sleepycat/b/l/ak;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 605
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 607
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 6133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 6371
    iget-object v6, v0, Lcom/sleepycat/b/c/ad;->w:Lcom/sleepycat/b/g/am;

    .line 611
    const/4 v0, 0x0

    move-wide v2, v4

    .line 612
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 613
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ak;

    .line 615
    cmp-long v7, v2, v4

    if-eqz v7, :cond_0

    .line 616
    iget-object v7, v0, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    iget v8, v0, Lcom/sleepycat/b/l/ak;->c:I

    invoke-virtual {v7, v8, v2, v3}, Lcom/sleepycat/b/l/j;->c(IJ)V

    .line 618
    :cond_0
    iget-object v2, v0, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    invoke-virtual {v2, v6}, Lcom/sleepycat/b/l/j;->a(Lcom/sleepycat/b/g/am;)J

    move-result-wide v2

    goto :goto_0

    .line 621
    :cond_1
    const/4 v1, 0x0

    .line 622
    if-eqz v0, :cond_4

    .line 624
    sget-boolean v1, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/sleepycat/b/l/ak;->a:Lcom/sleepycat/b/l/j;

    invoke-virtual {v0}, Lcom/sleepycat/b/l/j;->J()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 626
    :cond_2
    sget-boolean v0, Lcom/sleepycat/b/l/ah;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 627
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;J)V

    .line 628
    const/4 v0, 0x1

    .line 630
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 273
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-nez v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 3187
    iget-object v1, v1, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 277
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 3213
    iget-wide v2, v1, Lcom/sleepycat/b/l/e;->b:J

    .line 277
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 282
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-nez v0, :cond_0

    .line 366
    const-wide/16 v0, -0x1

    .line 368
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 4213
    iget-wide v0, v0, Lcom/sleepycat/b/l/e;->b:J

    goto :goto_0
.end method

.method public final e()J
    .locals 6

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->c()V

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/l/e;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/j;

    .line 4610
    iget v1, v0, Lcom/sleepycat/b/l/j;->j:I

    .line 382
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 5345
    iget v0, v0, Lcom/sleepycat/b/l/j;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v2, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v2}, Lcom/sleepycat/b/f/f;->d()V

    .line 387
    int-to-double v2, v0

    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 5726
    iget v0, v0, Lcom/sleepycat/b/c/i;->s:I

    .line 387
    int-to-double v4, v0

    add-int/lit8 v0, v1, -0x1

    int-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 385
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->a:Lcom/sleepycat/b/c/i;

    .line 36133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 36492
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->t:Lcom/sleepycat/b/c/al;

    .line 2344
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    if-eqz v1, :cond_1

    .line 2345
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->c()V

    .line 2347
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->b:Lcom/sleepycat/b/l/e;

    .line 37187
    iget-object v1, v1, Lcom/sleepycat/b/l/e;->a:Lcom/sleepycat/b/l/ac;

    .line 2348
    if-eqz v1, :cond_0

    .line 2349
    invoke-virtual {v1, v0}, Lcom/sleepycat/b/l/ac;->a(Lcom/sleepycat/b/c/al;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v0}, Lcom/sleepycat/b/f/f;->d()V

    .line 2355
    :cond_1
    return-void

    .line 2352
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/l/ah;->d:Lcom/sleepycat/b/f/f;

    invoke-virtual {v1}, Lcom/sleepycat/b/f/f;->d()V

    throw v0
.end method
