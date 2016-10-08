.class abstract Lcom/sleepycat/b/i/c/s;
.super Ljava/lang/Object;
.source "RepGroupDB.java"


# instance fields
.field private a:Lcom/sleepycat/b/n;

.field final b:Lcom/sleepycat/b/i/c/am;

.field final c:Lcom/sleepycat/b/c/i;

.field protected d:Lcom/sleepycat/b/n/z;

.field final synthetic e:Lcom/sleepycat/b/i/c/p;


# direct methods
.method private constructor <init>(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;)V
    .locals 3

    .prologue
    .line 865
    iput-object p1, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->a:Lcom/sleepycat/b/n;

    .line 867
    iput-object p2, p0, Lcom/sleepycat/b/i/c/s;->b:Lcom/sleepycat/b/i/c/am;

    .line 869
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v0

    .line 2519
    sget-object v1, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    .line 2526
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;

    move-result-object v0

    .line 869
    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->c:Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Lcom/sleepycat/b/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    return-void

    .line 872
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;B)V
    .locals 0

    .prologue
    .line 857
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/c/s;-><init>(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;)V

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method b()V
    .locals 0

    .prologue
    .line 879
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 877
    return-void
.end method

.method final d()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 893
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_4

    .line 894
    iput-object v6, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    .line 896
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/i/f/b;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    invoke-static {}, Lcom/sleepycat/b/i/c/p;->a()Lcom/sleepycat/b/br;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v4}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v4

    .line 3244
    iget-object v4, v4, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 896
    invoke-direct {v0, v2, v3, v4}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    .line 899
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/s;->a()V

    .line 900
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-static {}, Lcom/sleepycat/b/i/c/p;->b()Lcom/sleepycat/b/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/u;)J

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;
    :try_end_0
    .catch Lcom/sleepycat/b/i/g; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sleepycat/b/i/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/b/an; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->n()V

    .line 902
    :cond_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    :try_start_1
    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->a:Lcom/sleepycat/b/n;

    .line 905
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/s;->c()V

    .line 907
    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Phase 1 retry; for node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/s;->b:Lcom/sleepycat/b/i/c/am;

    .line 4197
    iget-object v5, v5, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 5087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 907
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " insufficient active replicas: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sleepycat/b/i/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->n()V

    .line 893
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 913
    :catch_1
    move-exception v0

    .line 914
    :try_start_2
    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->a:Lcom/sleepycat/b/n;

    .line 916
    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Phase 1 retry; for node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/s;->b:Lcom/sleepycat/b/i/c/am;

    .line 5197
    iget-object v5, v5, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 6087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 916
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " insufficient acks: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sleepycat/b/i/e;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 941
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    goto :goto_1

    .line 922
    :catch_2
    move-exception v0

    .line 924
    :try_start_3
    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->a:Lcom/sleepycat/b/n;

    .line 925
    invoke-virtual {p0}, Lcom/sleepycat/b/i/c/s;->b()V

    .line 926
    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Phase 1 retry; for node: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sleepycat/b/i/c/s;->b:Lcom/sleepycat/b/i/c/am;

    .line 6197
    iget-object v5, v5, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 7087
    iget-object v5, v5, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 926
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deadlock exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sleepycat/b/an;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 941
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    goto/16 :goto_1

    .line 932
    :catch_3
    move-exception v0

    .line 933
    :try_start_4
    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Phase 1 failed unexpectedly: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v1, :cond_2

    .line 937
    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 939
    :cond_2
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 941
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v1, :cond_3

    .line 942
    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 941
    :cond_3
    throw v0

    .line 946
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v0}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Phase 1 failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/b/i/c/s;->a:Lcom/sleepycat/b/n;

    invoke-virtual {v3}, Lcom/sleepycat/b/n;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->a:Lcom/sleepycat/b/n;

    throw v0
.end method

.method final e()V
    .locals 5

    .prologue
    .line 955
    :try_start_0
    new-instance v0, Lcom/sleepycat/b/i/f/b;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v1

    invoke-static {}, Lcom/sleepycat/b/i/c/p;->c()Lcom/sleepycat/b/br;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v3

    .line 7244
    iget-object v3, v3, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 955
    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V

    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    .line 7886
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->b:Lcom/sleepycat/b/i/c/am;

    .line 8249
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 7887
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->b:Lcom/sleepycat/b/i/c/am;

    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->c:Lcom/sleepycat/b/c/i;

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/i/c/am;Lcom/sleepycat/b/c/i;)V

    .line 957
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->m()J

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->n()V

    .line 968
    :cond_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v1}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/b/i/c/s;->e:Lcom/sleepycat/b/i/c/p;

    invoke-static {v2}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected failure in Phase 2: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/n;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 963
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 965
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    if-eqz v1, :cond_1

    .line 966
    iget-object v1, p0, Lcom/sleepycat/b/i/c/s;->d:Lcom/sleepycat/b/n/z;

    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 965
    :cond_1
    throw v0
.end method
