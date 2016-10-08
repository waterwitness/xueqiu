.class public Lcom/sleepycat/b/ac;
.super Ljava/lang/Object;
.source "EnvironmentMutableConfig.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic u:Z


# instance fields
.field l:Z

.field m:Z

.field protected n:J

.field protected o:Ljava/util/Properties;

.field transient p:Z

.field transient q:Z

.field public transient r:Lcom/sleepycat/b/ag;

.field public s:Lcom/sleepycat/b/a;

.field public t:Lcom/sleepycat/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/sleepycat/b/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/ac;->u:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/sleepycat/b/ac;->l:Z

    .line 99
    iput-boolean v0, p0, Lcom/sleepycat/b/ac;->m:Z

    .line 120
    iput-boolean v1, p0, Lcom/sleepycat/b/ac;->p:Z

    .line 128
    iput-boolean v1, p0, Lcom/sleepycat/b/ac;->q:Z

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/ac;->r:Lcom/sleepycat/b/ag;

    .line 144
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    .line 145
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    invoke-static {v0, p1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/sleepycat/b/u;)V
    .locals 4

    .prologue
    .line 280
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sleepycat/b/ac;->l:Z

    iget-boolean v2, p0, Lcom/sleepycat/b/ac;->m:Z

    invoke-static {v0, v1, v2, p1}, Lcom/sleepycat/b/br;->a(ZZZLcom/sleepycat/b/u;)V

    .line 283
    if-nez p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->bq:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->bq:Lcom/sleepycat/b/b/b;

    invoke-virtual {p1}, Lcom/sleepycat/b/u;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sleepycat/b/ac;->q:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Properties;)V
    .locals 5

    .prologue
    .line 656
    sget-object v0, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 658
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 660
    sget-object v1, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/b/b;

    .line 662
    sget-boolean v3, Lcom/sleepycat/b/ac;->u:Z

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1098
    :cond_1
    iget-boolean v3, v1, Lcom/sleepycat/b/b/b;->c:Z

    .line 663
    if-nez v3, :cond_0

    .line 1102
    iget-boolean v1, v1, Lcom/sleepycat/b/b/b;->d:Z

    .line 663
    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 669
    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is set to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in the config parameter which is incompatible with the value of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in the underlying environment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_2
    if-eqz v3, :cond_0

    goto :goto_0

    .line 680
    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sleepycat/b/ac;->h()Lcom/sleepycat/b/ac;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/sleepycat/b/ac;
    .locals 2

    .prologue
    .line 692
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/ac;

    .line 694
    iget-object v1, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Lcom/sleepycat/b/u;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/b/d;->bq:Lcom/sleepycat/b/b/b;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcom/sleepycat/b/u;->a(Ljava/lang/String;)Lcom/sleepycat/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cacheSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sleepycat/b/ac;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntxnNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/ac;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntxnWriteNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/b/ac;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/ac;->o:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
