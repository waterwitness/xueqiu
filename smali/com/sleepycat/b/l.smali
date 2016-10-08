.class public Lcom/sleepycat/b/l;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/sleepycat/b/l;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:Z

.field p:Z

.field q:Z

.field r:Z

.field public s:Lcom/sleepycat/b/a;

.field public t:Lcom/sleepycat/b/b;

.field u:Lcom/sleepycat/b/be;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;"
        }
    .end annotation
.end field

.field w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/sleepycat/b/l;

    invoke-direct {v0}, Lcom/sleepycat/b/l;-><init>()V

    sput-object v0, Lcom/sleepycat/b/l;->a:Lcom/sleepycat/b/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->b:Z

    .line 98
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->c:Z

    .line 99
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->d:Z

    .line 100
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->e:Z

    .line 101
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->f:Z

    .line 102
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->g:Z

    .line 103
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->h:Z

    .line 104
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->i:Z

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/l;->j:Z

    .line 108
    iput-object v2, p0, Lcom/sleepycat/b/l;->l:Ljava/util/Comparator;

    .line 109
    iput-object v2, p0, Lcom/sleepycat/b/l;->m:Ljava/util/Comparator;

    .line 110
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->n:Z

    .line 111
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->o:Z

    .line 112
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->p:Z

    .line 113
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->q:Z

    .line 114
    iput-boolean v1, p0, Lcom/sleepycat/b/l;->r:Z

    .line 115
    iput-object v2, p0, Lcom/sleepycat/b/l;->s:Lcom/sleepycat/b/a;

    .line 116
    iput-object v2, p0, Lcom/sleepycat/b/l;->t:Lcom/sleepycat/b/b;

    .line 117
    iput-object v2, p0, Lcom/sleepycat/b/l;->u:Lcom/sleepycat/b/be;

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    .line 128
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Comparator",
            "<[B>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1493
    if-nez p0, :cond_0

    .line 1494
    const/4 v0, 0x0

    .line 1506
    :goto_0
    return-object v0

    .line 1497
    :cond_0
    const-class v0, Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is is not valid as a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " comparator because it does not  implement java.util.Comparator."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1506
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/sleepycat/b/c/i;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " comparator is not valid. Perhaps you have not implemented a zero-parameter constructor for the comparator or the comparator class cannot be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 1468
    if-nez p0, :cond_0

    .line 1469
    const/4 p0, 0x0

    .line 1475
    :goto_0
    return-object p0

    .line 1473
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0, p1}, Lcom/sleepycat/b/c/i;->a(Ljava/util/Comparator;ZLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    .line 1477
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " comparator is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static b(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1630
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sleepycat/b/m/b;

    .line 1633
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1635
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/m/d;

    .line 1648
    invoke-interface {v0}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1649
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate trigger name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/sleepycat/b/m/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1652
    :cond_1
    instance-of v0, v0, Lcom/sleepycat/b/m/b;

    if-eq v1, v0, :cond_0

    .line 1654
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conflicting trigger types in list:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    :cond_2
    return v1
.end method


# virtual methods
.method public a()Lcom/sleepycat/b/l;
    .locals 1

    .prologue
    .line 1347
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1349
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;)Lcom/sleepycat/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Comparator",
            "<[B>;>;)",
            "Lcom/sleepycat/b/l;"
        }
    .end annotation

    .prologue
    .line 609
    .line 2621
    const-string v0, "Btree"

    invoke-static {p1, v0}, Lcom/sleepycat/b/l;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/l;->l:Ljava/util/Comparator;

    .line 2623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/l;->n:Z

    .line 610
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/sleepycat/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sleepycat/b/m/d;",
            ">;)",
            "Lcom/sleepycat/b/l;"
        }
    .end annotation

    .prologue
    .line 931
    .line 2940
    iput-object p1, p0, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    .line 2942
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-object p0

    .line 2946
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/b/l;->b(Ljava/util/List;)Z

    goto :goto_0
.end method

.method public final a(Z)Lcom/sleepycat/b/l;
    .locals 1

    .prologue
    .line 246
    .line 2255
    iput-boolean p1, p0, Lcom/sleepycat/b/l;->f:Z

    .line 2256
    if-eqz p1, :cond_0

    .line 2257
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/l;->b(Z)V

    .line 247
    :cond_0
    return-object p0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 317
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sleepycat/b/l;->f:Z

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key prefixing is mandatory for databases with duplicates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    iput-boolean p1, p0, Lcom/sleepycat/b/l;->i:Z

    .line 322
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/sleepycat/b/l;->a()Lcom/sleepycat/b/l;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "allowCreate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexclusiveCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntransactional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsortedDuplicates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndeferredWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntemporary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nkeyPrefixing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/l;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
