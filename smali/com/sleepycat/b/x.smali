.class public Lcom/sleepycat/b/x;
.super Ljava/lang/Object;
.source "Environment.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic d:Z


# instance fields
.field public a:Lcom/sleepycat/b/c/ad;

.field public b:Lcom/sleepycat/b/br;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/i;",
            "Lcom/sleepycat/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/sleepycat/b/ac;

.field private final f:Lcom/sleepycat/b/z;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sleepycat/b/bp;",
            "Lcom/sleepycat/b/bp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/sleepycat/b/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/x;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/z;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 177
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/x;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;Lcom/sleepycat/b/c/ad;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/aw;Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 189
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/x;-><init>(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;Lcom/sleepycat/b/c/ad;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;Lcom/sleepycat/b/c/ad;)V
    .locals 6

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    sget-boolean v0, Lcom/sleepycat/b/x;->d:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    if-nez p5, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 220
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/x;->c:Ljava/util/Map;

    .line 221
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/x;->g:Ljava/util/Map;

    .line 223
    const-string v0, "envHome"

    invoke-static {p1, v0}, Lcom/sleepycat/b/p/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4280
    if-nez p2, :cond_3

    sget-object v0, Lcom/sleepycat/b/z;->a:Lcom/sleepycat/b/z;

    .line 4284
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/b/z;->g()Lcom/sleepycat/b/z;

    move-result-object v0

    .line 4789
    iget-boolean v1, v0, Lcom/sleepycat/b/ac;->p:Z

    .line 4287
    if-eqz v1, :cond_1

    .line 5276
    invoke-virtual {v0}, Lcom/sleepycat/b/ac;->j()Ljava/util/Properties;

    move-result-object v1

    .line 4288
    invoke-static {p1, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/io/File;Ljava/util/Properties;)V

    .line 6247
    :cond_1
    new-instance v1, Lcom/sleepycat/b/ac;

    invoke-direct {v1}, Lcom/sleepycat/b/ac;-><init>()V

    .line 6717
    iget-boolean v2, v0, Lcom/sleepycat/b/ac;->l:Z

    iput-boolean v2, v1, Lcom/sleepycat/b/ac;->l:Z

    .line 6718
    iget-boolean v2, v0, Lcom/sleepycat/b/ac;->m:Z

    iput-boolean v2, v1, Lcom/sleepycat/b/ac;->m:Z

    .line 6719
    invoke-virtual {v0}, Lcom/sleepycat/b/ac;->i()Lcom/sleepycat/b/u;

    move-result-object v2

    .line 7271
    invoke-virtual {v1, v2}, Lcom/sleepycat/b/ac;->a(Lcom/sleepycat/b/u;)V

    .line 6250
    iput-object v1, p0, Lcom/sleepycat/b/x;->e:Lcom/sleepycat/b/ac;

    .line 6252
    sget-object v1, Lcom/sleepycat/b/br;->a:Lcom/sleepycat/b/br;

    invoke-virtual {v1}, Lcom/sleepycat/b/br;->a()Lcom/sleepycat/b/br;

    move-result-object v1

    .line 6254
    iget-object v2, p0, Lcom/sleepycat/b/x;->e:Lcom/sleepycat/b/ac;

    .line 8204
    iget-boolean v2, v2, Lcom/sleepycat/b/ac;->l:Z

    .line 9159
    iget-boolean v3, v1, Lcom/sleepycat/b/br;->b:Z

    iget-boolean v4, v1, Lcom/sleepycat/b/br;->d:Z

    iget-object v5, v1, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    invoke-static {v3, v2, v4, v5}, Lcom/sleepycat/b/br;->a(ZZZLcom/sleepycat/b/u;)V

    .line 9160
    iput-boolean v2, v1, Lcom/sleepycat/b/br;->c:Z

    .line 6255
    iget-object v2, p0, Lcom/sleepycat/b/x;->e:Lcom/sleepycat/b/ac;

    .line 9255
    iget-boolean v2, v2, Lcom/sleepycat/b/ac;->m:Z

    .line 10208
    iget-boolean v3, v1, Lcom/sleepycat/b/br;->b:Z

    iget-boolean v4, v1, Lcom/sleepycat/b/br;->c:Z

    iget-object v5, v1, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    invoke-static {v3, v4, v2, v5}, Lcom/sleepycat/b/br;->a(ZZZLcom/sleepycat/b/u;)V

    .line 10209
    iput-boolean v2, v1, Lcom/sleepycat/b/br;->d:Z

    .line 6256
    iget-object v2, p0, Lcom/sleepycat/b/x;->e:Lcom/sleepycat/b/ac;

    invoke-virtual {v2}, Lcom/sleepycat/b/ac;->i()Lcom/sleepycat/b/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 6258
    if-eqz v0, :cond_4

    .line 6259
    invoke-virtual {v0}, Lcom/sleepycat/b/z;->d()Z

    move-result v2

    .line 10450
    iput-boolean v2, v1, Lcom/sleepycat/b/br;->j:Z

    .line 11373
    iget-boolean v2, v0, Lcom/sleepycat/b/z;->e:Z

    .line 11405
    iput-boolean v2, v1, Lcom/sleepycat/b/br;->i:Z

    .line 6271
    :goto_1
    if-eqz p4, :cond_2

    .line 6272
    invoke-interface {p4}, Lcom/sleepycat/b/c/aw;->a()Lcom/sleepycat/b/bc;

    move-result-object v2

    .line 17296
    iput-object v2, v1, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 6275
    :cond_2
    iput-object v1, p0, Lcom/sleepycat/b/x;->b:Lcom/sleepycat/b/br;

    .line 225
    iput-object v0, p0, Lcom/sleepycat/b/x;->f:Lcom/sleepycat/b/z;

    .line 228
    if-eqz p5, :cond_5

    .line 230
    iput-object p5, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 238
    :goto_2
    return-void

    :cond_3
    move-object v0, p2

    .line 4280
    goto :goto_0

    .line 6264
    :cond_4
    iget-object v2, p0, Lcom/sleepycat/b/x;->b:Lcom/sleepycat/b/br;

    .line 11463
    iget-boolean v2, v2, Lcom/sleepycat/b/br;->j:Z

    .line 12450
    iput-boolean v2, v1, Lcom/sleepycat/b/br;->j:Z

    .line 6266
    iget-object v2, p0, Lcom/sleepycat/b/x;->b:Lcom/sleepycat/b/br;

    .line 13418
    iget-boolean v2, v2, Lcom/sleepycat/b/br;->i:Z

    .line 14405
    iput-boolean v2, v1, Lcom/sleepycat/b/br;->i:Z

    .line 6268
    iget-object v2, p0, Lcom/sleepycat/b/x;->b:Lcom/sleepycat/b/br;

    .line 15304
    iget-object v2, v2, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 16296
    iput-object v2, v1, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/b/x;->a(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    goto :goto_2
.end method

.method private a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/i;Ljava/lang/String;Lcom/sleepycat/b/l;Z)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->g()V

    .line 726
    const-string v0, "databaseName"

    invoke-static {p3, v0}, Lcom/sleepycat/b/p/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iget-object v2, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Environment.open:  name="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sleepycat/b/p/w;->a(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 24290
    iget-boolean v0, p4, Lcom/sleepycat/b/l;->j:Z

    .line 732
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v6

    .line 25104
    :goto_0
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->g:Z

    .line 24597
    if-eqz v2, :cond_0

    .line 26046
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->h:Z

    .line 24597
    if-nez v2, :cond_2

    .line 26104
    :cond_0
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->g:Z

    .line 24597
    if-eqz v2, :cond_1

    .line 26361
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->d:Z

    .line 24597
    if-nez v2, :cond_2

    .line 27046
    :cond_1
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->h:Z

    .line 24597
    if-eqz v2, :cond_4

    .line 27361
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->d:Z

    .line 24597
    if-eqz v2, :cond_4

    .line 24600
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to open Database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and two ore more of the following exclusive properties are true: deferredWrite, temporary, transactional"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v7

    .line 732
    goto :goto_0

    .line 24606
    :cond_4
    iget-object v2, p4, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p4, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 24608
    iget-object v2, p4, Lcom/sleepycat/b/l;->v:Ljava/util/List;

    invoke-static {v2}, Lcom/sleepycat/b/l;->b(Ljava/util/List;)Z

    move-result v2

    .line 24609
    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 24610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "For a replicated Database, triggers must implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/sleepycat/b/m/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27856
    :cond_5
    iget-object v2, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->I()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28290
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->j:Z

    .line 27856
    if-eqz v2, :cond_6

    .line 28396
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->e:Z

    .line 27856
    if-nez v2, :cond_6

    .line 29361
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->d:Z

    .line 27859
    if-nez v2, :cond_6

    .line 27860
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read/Write Database instances for replicated database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be transactional."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27867
    :cond_6
    if-nez p5, :cond_7

    .line 30361
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->d:Z

    .line 27867
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 31326
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->e:Z

    .line 27867
    if-nez v2, :cond_7

    .line 27870
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to open Database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transactionally, but parent Environment is not transactional"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27877
    :cond_7
    iget-object v2, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 31330
    iget-boolean v2, v2, Lcom/sleepycat/b/c/ad;->g:Z

    .line 27877
    if-eqz v2, :cond_8

    .line 31396
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->e:Z

    .line 27877
    if-nez v2, :cond_8

    .line 27878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to open Database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as writable but parent Environment is read only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->E()V

    .line 32361
    iget-boolean v2, p4, Lcom/sleepycat/b/l;->d:Z

    .line 748
    invoke-static {p0, p1, p5, v2, v0}, Lcom/sleepycat/b/n/r;->b(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;

    move-result-object v2

    .line 758
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 34083
    new-instance v3, Lcom/sleepycat/b/n/d;

    invoke-direct {v3, v0, v2}, Lcom/sleepycat/b/n/d;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)V

    .line 33098
    iput-object v3, p2, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;

    .line 33099
    iget-object v8, p2, Lcom/sleepycat/b/i;->g:Lcom/sleepycat/b/n/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 34379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 759
    invoke-virtual {v0, v2, p3, v8}, Lcom/sleepycat/b/c/p;->a(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 763
    if-eqz v3, :cond_b

    :try_start_2
    invoke-virtual {v3}, Lcom/sleepycat/b/c/i;->z()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v6

    .line 766
    :goto_1
    if-eqz v0, :cond_f

    .line 35167
    iget-boolean v0, p4, Lcom/sleepycat/b/l;->b:Z

    .line 767
    if-eqz v0, :cond_c

    .line 35209
    iget-boolean v0, p4, Lcom/sleepycat/b/l;->c:Z

    .line 767
    if-eqz v0, :cond_c

    .line 769
    new-instance v0, Lcom/sleepycat/b/o;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Database "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " already exists"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/b/o;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    :catchall_0
    move-exception v0

    move-object v1, v8

    move v6, v7

    :goto_2
    if-nez v6, :cond_a

    .line 827
    iget-object v4, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 38379
    iget-object v4, v4, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 827
    invoke-virtual {v4, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V

    .line 828
    if-eqz v1, :cond_9

    .line 829
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/n/d;->a_(Z)V

    .line 831
    :cond_9
    invoke-virtual {p2}, Lcom/sleepycat/b/i;->b()V

    .line 838
    :cond_a
    invoke-virtual {v2, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 826
    throw v0

    :cond_b
    move v0, v7

    .line 763
    goto :goto_1

    :cond_c
    move-object v0, p2

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    .line 773
    :try_start_3
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/c/i;Ljava/lang/String;Lcom/sleepycat/b/l;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v3

    move v3, v7

    .line 37160
    :goto_3
    :try_start_4
    iget-object v0, p0, Lcom/sleepycat/b/x;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    invoke-virtual {v2, p2}, Lcom/sleepycat/b/n/q;->a(Lcom/sleepycat/b/i;)V

    .line 38082
    iget-boolean v0, p2, Lcom/sleepycat/b/i;->e:Z

    .line 811
    if-eqz v0, :cond_12

    .line 38089
    iget-object v0, p2, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 38286
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 811
    if-ne v0, v6, :cond_12

    move v0, v6

    .line 815
    :goto_4
    if-nez v3, :cond_d

    if-eqz v0, :cond_e

    .line 816
    :cond_d
    invoke-static {v2, p2, v3}, Lcom/sleepycat/b/c/bh;->a(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/i;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 838
    :cond_e
    invoke-virtual {v2, v6}, Lcom/sleepycat/b/n/q;->a_(Z)V

    .line 839
    return-void

    .line 777
    :cond_f
    :try_start_5
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 35379
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 777
    invoke-virtual {v0, v3}, Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/i;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 780
    if-nez p5, :cond_10

    :try_start_6
    invoke-static {p3}, Lcom/sleepycat/b/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 782
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is a reserved database name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :catchall_1
    move-exception v0

    move v6, v7

    move-object v3, v1

    move-object v1, v8

    goto :goto_2

    .line 36167
    :cond_10
    iget-boolean v0, p4, Lcom/sleepycat/b/l;->b:Z

    .line 786
    if-nez v0, :cond_11

    .line 787
    new-instance v0, Lcom/sleepycat/b/p;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Database "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sleepycat/b/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_11
    invoke-virtual {p2, p0, v2, p3, p4}, Lcom/sleepycat/b/i;->a(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v1

    move v3, v6

    .line 798
    goto :goto_3

    :cond_12
    move v0, v7

    .line 811
    goto :goto_4

    .line 826
    :catchall_2
    move-exception v0

    move v6, v7

    move-object v3, v1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/sleepycat/b/x;)V
    .locals 2

    .prologue
    .line 92
    .line 50268
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 50273
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->g:Z

    .line 50268
    if-eqz v0, :cond_0

    .line 50269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Environment is Read-Only."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 414
    .line 19497
    iget-object v0, p0, Lcom/sleepycat/b/x;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19503
    iget-object v0, p0, Lcom/sleepycat/b/x;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i;

    .line 19504
    const-string v3, ""

    .line 19511
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i;->d()Ljava/lang/String;

    move-result-object v3

    .line 20089
    iget-object v5, v0, Lcom/sleepycat/b/i;->c:Lcom/sleepycat/b/c/i;

    .line 20533
    invoke-virtual {v5}, Lcom/sleepycat/b/c/i;->f()Lcom/sleepycat/b/c/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/b/c/w;->a()Z

    move-result v5

    .line 19513
    if-nez v5, :cond_0

    .line 19514
    add-int/lit8 v1, v1, 0x1

    .line 19515
    const-string v5, "Unclosed Database: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19516
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19518
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/b/i;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19519
    :catch_0
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 19520
    iget-object v5, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v5}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v5

    if-nez v5, :cond_1

    .line 19522
    throw v1

    .line 19524
    :cond_1
    const-string v5, "\nWhile closing Database "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19525
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19526
    const-string v3, " encountered exception: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19527
    invoke-static {v1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 19529
    goto :goto_0

    .line 19531
    :cond_2
    if-lez v1, :cond_3

    .line 19532
    const-string v0, "Databases left open: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19533
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21457
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/x;->g:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 21458
    :goto_1
    if-eqz v2, :cond_7

    .line 21462
    const-string v0, "There "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21463
    if-ne v2, v7, :cond_5

    .line 21464
    const-string v0, "is 1 existing transaction opened"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21465
    const-string v0, " against the Environment.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21472
    :goto_2
    const-string v0, "Aborting open transactions ...\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21474
    iget-object v0, p0, Lcom/sleepycat/b/x;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bp;

    .line 21476
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "aborting "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21477
    invoke-virtual {v0}, Lcom/sleepycat/b/bp;->a()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 21478
    :catch_1
    move-exception v1

    .line 21479
    iget-object v3, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v3}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v3

    if-nez v3, :cond_6

    .line 21481
    throw v1

    .line 21457
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/x;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_1

    .line 21467
    :cond_5
    const-string v0, "are "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21468
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21469
    const-string v0, " existing transactions opened against"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21470
    const-string v0, " the Environment.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 21483
    :cond_6
    const-string v3, "\nWhile aborting transaction "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22259
    iget-wide v4, v0, Lcom/sleepycat/b/bp;->c:J

    .line 21484
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21485
    const-string v0, " encountered exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21486
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 418
    :cond_7
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->f()Z

    move-result v0

    if-nez v0, :cond_8

    .line 22433
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 22496
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 23311
    iget-object v0, v0, Lcom/sleepycat/b/n/aj;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 23312
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sleepycat/b/q/a;

    .line 23313
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/q/a;

    .line 22434
    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    .line 22435
    const-string v1, "There "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22436
    array-length v0, v0

    .line 22437
    if-ne v0, v7, :cond_9

    .line 22438
    const-string v0, "is 1 existing XA transaction opened"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22439
    const-string v0, " in the Environment.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22440
    const-string v0, "It"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22448
    :goto_4
    const-string v0, " will be left open ...\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_8
    return-void

    .line 22442
    :cond_9
    const-string v1, "are "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22443
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22444
    const-string v0, " existing transactions opened in"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22445
    const-string v0, " the Environment.\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22446
    const-string v0, "They"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method


# virtual methods
.method public final a(Z)Lcom/sleepycat/b/bp;
    .locals 2

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->e()V

    .line 1348
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->g()V

    .line 1356
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 39326
    iget-boolean v0, v0, Lcom/sleepycat/b/c/ad;->e:Z

    .line 1356
    if-nez v0, :cond_0

    .line 1357
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transactions can not be used in a non-transactional environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1371
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/x;->b:Lcom/sleepycat/b/br;

    .line 1437
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 50234
    iget-object v1, v1, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 50235
    iget-object v1, v1, Lcom/sleepycat/b/n/aj;->b:Lcom/sleepycat/b/c/ad;

    invoke-static {v1, v0}, Lcom/sleepycat/b/n/z;->c(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;

    move-result-object v0

    .line 1438
    new-instance v1, Lcom/sleepycat/b/bp;

    invoke-direct {v1, p0, v0}, Lcom/sleepycat/b/bp;-><init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/n/z;)V

    .line 50236
    iget-object v0, p0, Lcom/sleepycat/b/x;->g:Ljava/util/Map;

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    return-object v1
.end method

.method public final a(Ljava/io/File;Lcom/sleepycat/b/z;ZLcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;
    .locals 6

    .prologue
    .line 252
    invoke-static {}, Lcom/sleepycat/b/c/n;->a()Lcom/sleepycat/b/c/n;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/b/x;->f:Lcom/sleepycat/b/z;

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lcom/sleepycat/b/x;->a(Ljava/io/File;Lcom/sleepycat/b/c/aw;Lcom/sleepycat/b/z;)Lcom/sleepycat/b/c/aw;

    move-result-object v5

    move-object v1, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/b/c/n;->a(Ljava/io/File;Lcom/sleepycat/b/z;ZZLcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 259
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/c/ad;->a(Lcom/sleepycat/b/x;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    return-object v0

    .line 252
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(Ljava/io/File;Lcom/sleepycat/b/c/aw;Lcom/sleepycat/b/z;)Lcom/sleepycat/b/c/aw;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;
    .locals 6

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->e()V

    .line 586
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    if-nez p3, :cond_0

    .line 590
    :try_start_1
    sget-object v4, Lcom/sleepycat/b/l;->a:Lcom/sleepycat/b/l;

    .line 593
    :goto_0
    new-instance v2, Lcom/sleepycat/b/i;

    invoke-direct {v2, p0}, Lcom/sleepycat/b/i;-><init>(Lcom/sleepycat/b/x;)V

    .line 594
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/i;Ljava/lang/String;Lcom/sleepycat/b/l;Z)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    monitor-exit p0

    return-object v2

    .line 597
    :catch_0
    move-exception v0

    .line 598
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 599
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v4, p3

    goto :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    invoke-direct {p0, v0}, Lcom/sleepycat/b/x;->a(Ljava/lang/StringBuilder;)V

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 410
    :cond_0
    monitor-exit p0

    return-void
.end method

.method final a(Lcom/sleepycat/b/bp;)V
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/sleepycat/b/x;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    return-void
.end method

.method public final a(Lcom/sleepycat/b/bp;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 935
    const-string v0, "databaseName"

    invoke-static {p2, v0}, Lcom/sleepycat/b/p/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    new-instance v0, Lcom/sleepycat/b/x$1;

    invoke-direct {v0, p0, p1, p2, p2}, Lcom/sleepycat/b/x$1;-><init>(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/x$1;->a()Ljava/lang/Object;

    .line 953
    return-void
.end method

.method public final b()Lcom/sleepycat/b/bp;
    .locals 2

    .prologue
    .line 1319
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/b/x;->a(Z)Lcom/sleepycat/b/bp;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 1325
    :cond_0
    throw v0
.end method

.method public final declared-synchronized b(Lcom/sleepycat/b/bp;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/i;
    .locals 6

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sleepycat/b/x;->d:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/sleepycat/b/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 619
    :cond_0
    :try_start_1
    new-instance v2, Lcom/sleepycat/b/i;

    invoke-direct {v2, p0}, Lcom/sleepycat/b/i;-><init>(Lcom/sleepycat/b/x;)V

    .line 620
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/b/x;->a(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/i;Ljava/lang/String;Lcom/sleepycat/b/l;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    monitor-exit p0

    return-object v2
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2023
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->e()V

    .line 2024
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->g()V

    .line 2025
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 50238
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->q:Lcom/sleepycat/b/c/p;

    .line 50239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50241
    iget-object v2, v0, Lcom/sleepycat/b/c/p;->f:Lcom/sleepycat/b/c/i;

    sget-object v3, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    const/4 v4, 0x1

    new-instance v5, Lcom/sleepycat/b/c/p$5;

    invoke-direct {v5, v0, v1}, Lcom/sleepycat/b/c/p$5;-><init>(Lcom/sleepycat/b/c/p;Ljava/util/List;)V

    invoke-static {v2, v3, v4, v5}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/g;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2025
    return-object v1

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v1, :cond_0

    .line 2028
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2030
    :cond_0
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 394
    :goto_0
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->j()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 366
    :try_start_2
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 17907
    invoke-static {}, Lcom/sleepycat/b/c/n;->a()Lcom/sleepycat/b/c/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/n;->a(Lcom/sleepycat/b/c/ad;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 368
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    throw v0

    .line 373
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 375
    :try_start_5
    invoke-direct {p0, v1}, Lcom/sleepycat/b/x;->a(Ljava/lang/StringBuilder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    :try_start_6
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 18641
    invoke-static {}, Lcom/sleepycat/b/c/n;->a()Lcom/sleepycat/b/c/n;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/sleepycat/b/c/n;->a(Lcom/sleepycat/b/c/ad;ZZ)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 389
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 393
    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    :try_start_9
    iget-object v2, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v2}, Lcom/sleepycat/b/c/ad;->j()Z

    move-result v2

    if-nez v2, :cond_2

    .line 382
    throw v0

    .line 384
    :cond_2
    const-string v2, "\nWhile closing Environment encountered exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    .line 393
    :cond_3
    const/4 v0, 0x0

    :try_start_a
    iput-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0
.end method

.method public final d()Lcom/sleepycat/b/bp;
    .locals 2

    .prologue
    .line 2089
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->e()V

    .line 2090
    invoke-virtual {p0}, Lcom/sleepycat/b/x;->g()V

    .line 2092
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 50261
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->y:Lcom/sleepycat/b/n/aj;

    .line 50262
    iget-object v0, v0, Lcom/sleepycat/b/n/aj;->f:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/bp;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    return-object v0

    .line 2093
    :catch_0
    move-exception v0

    .line 2094
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-eqz v1, :cond_0

    .line 2095
    iget-object v1, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/c/ad;->a(Ljava/lang/Error;)V

    .line 2097
    :cond_0
    throw v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-nez v0, :cond_0

    .line 2193
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use non-open Environment object()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 2211
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    if-nez v0, :cond_1

    .line 2227
    :cond_0
    return-void

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    invoke-virtual {v0}, Lcom/sleepycat/b/c/ad;->n()V

    .line 2226
    iget-object v0, p0, Lcom/sleepycat/b/x;->a:Lcom/sleepycat/b/c/ad;

    .line 50263
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->a:Lcom/sleepycat/b/c/o;

    sget-object v1, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    if-ne v0, v1, :cond_0

    .line 50264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use a Environment that has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
