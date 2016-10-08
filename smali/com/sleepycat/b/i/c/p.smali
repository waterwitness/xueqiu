.class public final Lcom/sleepycat/b/i/c/p;
.super Ljava/lang/Object;
.source "RepGroupDB.java"


# static fields
.field public static final c:Lcom/sleepycat/b/m;

.field public static final d:Lcom/sleepycat/b/br;

.field static final e:Lcom/sleepycat/b/br;

.field private static final g:Lcom/sleepycat/b/u;

.field private static final h:Lcom/sleepycat/b/br;

.field private static final i:Lcom/sleepycat/b/u;

.field private static final j:Lcom/sleepycat/b/u;

.field private static final k:Lcom/sleepycat/b/br;


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/aj;

.field public final b:Lcom/sleepycat/b/i/c/t;

.field private final f:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/c/p;->c:Lcom/sleepycat/b/m;

    .line 107
    const-string v0, "$$GROUP_KEY$$"

    sget-object v1, Lcom/sleepycat/b/i/c/p;->c:Lcom/sleepycat/b/m;

    invoke-static {v0, v1}, Lcom/sleepycat/a/a/i;->a(Ljava/lang/String;Lcom/sleepycat/b/m;)V

    .line 120
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/i/c/p;->g:Lcom/sleepycat/b/u;

    .line 125
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/c/p;->h:Lcom/sleepycat/b/br;

    .line 128
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    .line 133
    sput-object v0, Lcom/sleepycat/b/i/c/p;->d:Lcom/sleepycat/b/br;

    sput-object v0, Lcom/sleepycat/b/i/c/p;->e:Lcom/sleepycat/b/br;

    .line 135
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->a:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->b:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/i/c/p;->i:Lcom/sleepycat/b/u;

    .line 140
    new-instance v0, Lcom/sleepycat/b/u;

    sget-object v1, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v2, Lcom/sleepycat/b/w;->b:Lcom/sleepycat/b/w;

    sget-object v3, Lcom/sleepycat/b/v;->b:Lcom/sleepycat/b/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/b/u;-><init>(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V

    sput-object v0, Lcom/sleepycat/b/i/c/p;->j:Lcom/sleepycat/b/u;

    .line 145
    new-instance v0, Lcom/sleepycat/b/br;

    invoke-direct {v0}, Lcom/sleepycat/b/br;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/c/p;->k:Lcom/sleepycat/b/br;

    .line 150
    sget-object v0, Lcom/sleepycat/b/i/c/p;->h:Lcom/sleepycat/b/br;

    sget-object v1, Lcom/sleepycat/b/i/c/p;->g:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 151
    sget-object v0, Lcom/sleepycat/b/i/c/p;->d:Lcom/sleepycat/b/br;

    sget-object v1, Lcom/sleepycat/b/i/c/p;->i:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 152
    sget-object v0, Lcom/sleepycat/b/i/c/p;->k:Lcom/sleepycat/b/br;

    sget-object v1, Lcom/sleepycat/b/i/c/p;->j:Lcom/sleepycat/b/u;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 153
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 168
    new-instance v1, Lcom/sleepycat/b/i/c/t;

    sget-object v2, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v2}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/b/i/c/p;->b:Lcom/sleepycat/b/i/c/t;

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    .line 170
    return-void
.end method

.method static synthetic a()Lcom/sleepycat/b/br;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sleepycat/b/i/c/p;->h:Lcom/sleepycat/b/br;

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    .locals 3

    .prologue
    .line 242
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/q;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v0

    .line 9391
    iget-object v1, v0, Lcom/sleepycat/b/e;->a:Lcom/sleepycat/b/c/c;

    .line 10263
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sleepycat/b/c/c;->i:Z

    .line 246
    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/i/c/p;)Lcom/sleepycat/b/i/c/aj;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    return-object v0
.end method

.method public static a(Lcom/sleepycat/b/i/c/aj;Ljava/lang/String;Lcom/sleepycat/b/bc;)Lcom/sleepycat/b/i/c/t;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 197
    .line 3526
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Lcom/sleepycat/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    new-instance v2, Lcom/sleepycat/b/br;

    invoke-direct {v2}, Lcom/sleepycat/b/br;-><init>()V

    .line 207
    sget-object v3, Lcom/sleepycat/b/i/c/p;->e:Lcom/sleepycat/b/br;

    .line 4260
    iget-object v3, v3, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    .line 207
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 4296
    iput-object p2, v2, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 4365
    iput-boolean v5, v2, Lcom/sleepycat/b/br;->h:Z

    .line 213
    :try_start_1
    new-instance v3, Lcom/sleepycat/b/i/f/d;

    invoke-direct {v3, p0, v2}, Lcom/sleepycat/b/i/f/d;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :try_start_2
    invoke-static {p1, v0, v3}, Lcom/sleepycat/b/i/c/p;->b(Ljava/lang/String;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/i/c/t;

    move-result-object v2

    .line 4380
    iget-object v0, v2, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4385
    iget-object v0, v2, Lcom/sleepycat/b/i/c/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v5, v1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 5201
    iget-object v7, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 6099
    iget v7, v7, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 4387
    if-ge v5, v7, :cond_0

    .line 6201
    iget-object v5, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 7099
    iget v5, v5, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 7186
    :cond_0
    iget v7, v0, Lcom/sleepycat/b/i/c/am;->h:I

    .line 4391
    if-ge v1, v7, :cond_5

    .line 8186
    iget v0, v0, Lcom/sleepycat/b/i/c/am;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move v1, v0

    .line 4394
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    new-instance v0, Lcom/sleepycat/b/i/c/t;

    invoke-direct {v0, p1, v5}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;Z)V

    .line 220
    :goto_2
    return-object v0

    .line 4395
    :cond_1
    :try_start_3
    iput v5, v2, Lcom/sleepycat/b/i/c/t;->e:I

    .line 4396
    iput v1, v2, Lcom/sleepycat/b/i/c/t;->d:I

    .line 217
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 222
    if-eqz v4, :cond_3

    .line 223
    invoke-virtual {v4}, Lcom/sleepycat/b/n/z;->n()V

    :cond_3
    move-object v0, v2

    .line 220
    goto :goto_2

    .line 222
    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_4

    .line 223
    invoke-virtual {v1}, Lcom/sleepycat/b/n/z;->n()V

    .line 222
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/i/c/t;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/i/c/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/i/c/t;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lcom/sleepycat/b/i/c/p;->b(Ljava/lang/String;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/i/c/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/i/c/am;Lcom/sleepycat/b/c/i;)V
    .locals 4

    .prologue
    .line 89
    .line 45768
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 46197
    iget-object v1, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 47087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 45769
    invoke-static {v1, v0}, Lcom/sleepycat/a/a/i;->a(Ljava/lang/String;Lcom/sleepycat/b/m;)V

    .line 45771
    new-instance v1, Lcom/sleepycat/b/i/c/r;

    invoke-direct {v1}, Lcom/sleepycat/b/i/c/r;-><init>()V

    .line 45773
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 45774
    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/b/i/c/r;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 45776
    const/4 v1, 0x0

    .line 45778
    :try_start_0
    sget-object v3, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {p2, p0, v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 45780
    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 45781
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_1

    .line 45782
    const-string v0, "Group entry save failed"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45786
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 45787
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 45786
    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 45787
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 45789
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/c/i;)V
    .locals 3

    .prologue
    .line 89
    .line 45740
    new-instance v0, Lcom/sleepycat/b/i/c/q;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/q;-><init>()V

    .line 45741
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 45742
    invoke-virtual {v0, p1, v2}, Lcom/sleepycat/b/i/c/q;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 45744
    const/4 v1, 0x0

    .line 45746
    :try_start_0
    sget-object v0, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {p2, p0, v0}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 45748
    sget-object v0, Lcom/sleepycat/b/i/c/p;->c:Lcom/sleepycat/b/m;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 45749
    sget-object v2, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v2, :cond_1

    .line 45750
    const-string v0, "Group entry save failed"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45754
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 45755
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 45754
    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 45755
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 45757
    :cond_2
    return-void
.end method

.method private static b(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/i/c/t;
    .locals 5

    .prologue
    .line 708
    new-instance v0, Lcom/sleepycat/b/i/c/q;

    invoke-direct {v0}, Lcom/sleepycat/b/i/c/q;-><init>()V

    .line 709
    new-instance v2, Lcom/sleepycat/b/m;

    invoke-direct {v2}, Lcom/sleepycat/b/m;-><init>()V

    .line 711
    const/4 v1, 0x0

    .line 713
    :try_start_0
    sget-object v3, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {p1, p0, v3}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 715
    sget-object v3, Lcom/sleepycat/b/i/c/p;->c:Lcom/sleepycat/b/m;

    sget-object v4, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v3, v2, v4}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 718
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v3, v4, :cond_1

    .line 719
    const-string v0, "Group entry key: $$GROUP_KEY$$ missing from group database"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 724
    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 725
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 729
    :cond_2
    invoke-virtual {v0, v2}, Lcom/sleepycat/b/i/c/q;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/t;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;)Lcom/sleepycat/b/i/c/t;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 258
    new-instance v3, Lcom/sleepycat/b/m;

    invoke-direct {v3}, Lcom/sleepycat/b/m;-><init>()V

    .line 259
    new-instance v4, Lcom/sleepycat/b/m;

    invoke-direct {v4}, Lcom/sleepycat/b/m;-><init>()V

    .line 260
    new-instance v5, Lcom/sleepycat/b/i/c/r;

    invoke-direct {v5}, Lcom/sleepycat/b/i/c/r;-><init>()V

    .line 261
    new-instance v6, Lcom/sleepycat/b/i/c/q;

    invoke-direct {v6}, Lcom/sleepycat/b/i/c/q;-><init>()V

    .line 264
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 266
    new-instance v0, Lcom/sleepycat/b/g;

    invoke-direct {v0}, Lcom/sleepycat/b/g;-><init>()V

    .line 11114
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sleepycat/b/g;->e:Z

    .line 272
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 273
    :goto_0
    :try_start_1
    sget-object v0, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v3, v4, v0}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    sget-object v8, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v8, :cond_3

    .line 276
    invoke-static {v3}, Lcom/sleepycat/a/a/i;->a(Lcom/sleepycat/b/m;)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v8, "$$GROUP_KEY$$"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v6, v4}, Lcom/sleepycat/b/i/c/q;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/t;

    .line 11760
    iget-object v1, v0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 280
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The argument: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " does not match the expected group name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12760
    iget-object v0, v0, Lcom/sleepycat/b/i/c/t;->a:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 298
    :cond_0
    throw v0

    .line 287
    :cond_1
    :try_start_2
    invoke-virtual {v5, v4}, Lcom/sleepycat/b/i/c/r;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 13190
    iget-object v8, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 14099
    iget v8, v8, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 288
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_2
    move-object v1, v0

    .line 290
    goto :goto_0

    .line 291
    :cond_3
    if-nez v1, :cond_4

    .line 292
    const-string v0, "Group key: $$GROUP_KEY$$ is missing"

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 295
    :cond_4
    invoke-virtual {v1, v7}, Lcom/sleepycat/b/i/c/t;->a(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    if-eqz v2, :cond_5

    .line 299
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 296
    :cond_5
    return-object v1

    .line 298
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b()Lcom/sleepycat/b/u;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sleepycat/b/i/c/p;->g:Lcom/sleepycat/b/u;

    return-object v0
.end method

.method static synthetic b(Lcom/sleepycat/b/i/c/p;)Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic c()Lcom/sleepycat/b/br;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/sleepycat/b/i/c/p;->d:Lcom/sleepycat/b/br;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/c/am;)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 14519
    sget-object v1, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    .line 14526
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Lcom/sleepycat/b/p; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    new-instance v6, Lcom/sleepycat/b/m;

    invoke-direct {v6}, Lcom/sleepycat/b/m;-><init>()V

    .line 15197
    iget-object v1, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 16087
    iget-object v1, v1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 398
    invoke-static {v1, v6}, Lcom/sleepycat/a/a/i;->a(Ljava/lang/String;Lcom/sleepycat/b/m;)V

    .line 400
    new-instance v7, Lcom/sleepycat/b/m;

    invoke-direct {v7}, Lcom/sleepycat/b/m;-><init>()V

    .line 401
    new-instance v8, Lcom/sleepycat/b/i/c/r;

    invoke-direct {v8}, Lcom/sleepycat/b/i/c/r;-><init>()V

    .line 406
    :try_start_1
    new-instance v3, Lcom/sleepycat/b/i/f/d;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    sget-object v9, Lcom/sleepycat/b/i/c/p;->d:Lcom/sleepycat/b/br;

    invoke-direct {v3, v1, v9}, Lcom/sleepycat/b/i/f/d;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 407
    :try_start_2
    new-instance v1, Lcom/sleepycat/b/g;

    invoke-direct {v1}, Lcom/sleepycat/b/g;-><init>()V

    .line 16114
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/sleepycat/b/g;->e:Z

    .line 409
    invoke-static {v0, v3, v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 411
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v1, v6, v7, v0}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 413
    sget-object v6, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v0, v6, :cond_8

    .line 415
    invoke-virtual {v8, v7}, Lcom/sleepycat/b/i/c/r;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 16288
    if-eq v0, p1, :cond_5

    .line 16296
    iget v6, v0, Lcom/sleepycat/b/i/c/am;->f:I

    iget v7, p1, Lcom/sleepycat/b/i/c/am;->f:I

    if-eq v6, v7, :cond_3

    .line 416
    :cond_0
    :goto_0
    if-eqz v4, :cond_b

    .line 20174
    iget-boolean v4, v0, Lcom/sleepycat/b/i/c/am;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    if-eqz v4, :cond_7

    .line 445
    if-eqz v1, :cond_1

    .line 446
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 449
    :cond_1
    if-eqz v3, :cond_2

    .line 450
    invoke-virtual {v3}, Lcom/sleepycat/b/n/z;->n()V

    .line 459
    :cond_2
    :goto_1
    return-void

    .line 394
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 16300
    :cond_3
    :try_start_4
    iget-object v6, v0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 16301
    iget-object v6, p1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 16309
    :cond_4
    iget-object v6, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 17087
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 16309
    iget-object v7, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 18087
    iget-object v7, v7, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 16309
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 18208
    iget-object v6, v0, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 19208
    iget-object v7, p1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 16313
    if-ne v6, v7, :cond_0

    :cond_5
    move v4, v5

    .line 16316
    goto :goto_0

    .line 16304
    :cond_6
    iget-object v6, v0, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    iget-object v7, p1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 20190
    :cond_7
    iget-object v4, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 21190
    iget-object v5, v0, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 421
    invoke-virtual {v4, v5}, Lcom/sleepycat/b/i/c/b/x;->a(Lcom/sleepycat/b/i/c/b/x;)V

    .line 435
    iget-object v4, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Present but not ack\'d node: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22201
    iget-object v7, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 23099
    iget v7, v7, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 435
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ack status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 23174
    iget-boolean v0, v0, Lcom/sleepycat/b/i/c/am;->c:Z

    .line 435
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 440
    :cond_8
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 442
    :try_start_5
    invoke-virtual {v3}, Lcom/sleepycat/b/n/z;->m()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 445
    if-eqz v2, :cond_9

    .line 446
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 449
    :cond_9
    if-eqz v2, :cond_a

    .line 450
    invoke-virtual {v2}, Lcom/sleepycat/b/n/z;->n()V

    .line 23505
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding node: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24190
    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 23505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 24570
    new-instance v0, Lcom/sleepycat/b/i/c/p$1;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/i/c/p$1;-><init>(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;)V

    .line 24972
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/s;->d()V

    .line 24974
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/s;->e()V

    .line 23510
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully added node:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25190
    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 23510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HostPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25215
    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->e:Ljava/lang/String;

    .line 23510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 25226
    iget v3, p1, Lcom/sleepycat/b/i/c/am;->f:I

    .line 23510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 26208
    iget-object v3, p1, Lcom/sleepycat/b/i/c/am;->b:Lcom/sleepycat/b/i/o;

    .line 23510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 27197
    iget-object v0, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 28087
    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 457
    sget-object v1, Lcom/sleepycat/b/i/d/b;->a:Lcom/sleepycat/b/i/d/b;

    .line 28463
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 28887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 28463
    invoke-virtual {v2}, Lcom/sleepycat/b/i/c/b/aa;->h()Lcom/sleepycat/b/i/c/t;

    .line 28464
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 29887
    iget-object v2, v2, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 30605
    iget-object v2, v2, Lcom/sleepycat/b/i/c/b/aa;->t:Lcom/sleepycat/b/i/c/b/w;

    .line 31064
    iget-object v3, v2, Lcom/sleepycat/b/i/c/b/w;->b:Lcom/sleepycat/b/i/c/b/aa;

    .line 31421
    iget-object v3, v3, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 31065
    new-instance v4, Lcom/sleepycat/b/i/d/i;

    invoke-static {v3}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/c/t;)Lcom/sleepycat/b/i/d/g;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v3, v0, v1}, Lcom/sleepycat/b/i/d/i;-><init>(Lcom/sleepycat/b/i/d/g;Lcom/sleepycat/b/i/c/t;Ljava/lang/String;Lcom/sleepycat/b/i/d/b;)V

    .line 31067
    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/b/i/c/b/w;->a(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/c/ay;)Ljava/util/List;

    goto/16 :goto_1

    .line 425
    :cond_b
    :try_start_6
    iget-object v2, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incompatible node descriptions. Membership database definition: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/am;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " Transient definition: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/b/i/c/am;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Incompatible node descriptions for node ID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21201
    iget-object v2, p1, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 22099
    iget v2, v2, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 445
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v1, :cond_c

    .line 446
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 449
    :cond_c
    if-eqz v2, :cond_d

    .line 450
    invoke-virtual {v2}, Lcom/sleepycat/b/n/z;->n()V

    .line 445
    :cond_d
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public final a(Lcom/sleepycat/b/p/au;)V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 1042
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 36392
    iget-object v0, v0, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 1043
    sget-object v1, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    sget-object v1, Lcom/sleepycat/b/i/c/an;->p:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v3

    .line 1045
    sget-object v1, Lcom/sleepycat/b/i/c/an;->o:Lcom/sleepycat/b/b/b;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    .line 37074
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 37075
    if-gez v0, :cond_1

    move-object v0, v1

    .line 37084
    :goto_0
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 37085
    if-gez v4, :cond_2

    sget-object v1, Lcom/sleepycat/b/i/c/an;->n:Lcom/sleepycat/b/b/e;

    .line 37094
    iget-object v1, v1, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 37085
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1049
    iget-object v4, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 37519
    sget-object v5, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    .line 37526
    invoke-virtual {v4, v5, v6}, Lcom/sleepycat/b/i/c/aj;->a(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;

    move-result-object v4

    .line 1055
    new-instance v5, Lcom/sleepycat/b/br;

    invoke-direct {v5}, Lcom/sleepycat/b/br;-><init>()V

    .line 1056
    sget-object v6, Lcom/sleepycat/b/i/c/p;->d:Lcom/sleepycat/b/br;

    .line 38260
    iget-object v6, v6, Lcom/sleepycat/b/br;->e:Lcom/sleepycat/b/u;

    .line 1056
    invoke-virtual {v5, v6}, Lcom/sleepycat/b/br;->a(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;

    .line 1057
    sget-object v6, Lcom/sleepycat/b/i/n;->a:Lcom/sleepycat/b/i/n;

    .line 38296
    iput-object v6, v5, Lcom/sleepycat/b/br;->f:Lcom/sleepycat/b/bc;

    .line 1059
    iget-object v6, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 38887
    iget-object v6, v6, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 39454
    iget-object v6, v6, Lcom/sleepycat/b/i/c/b/aa;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 40115
    const/4 v7, -0x1

    iput v7, v6, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 1063
    new-instance v7, Lcom/sleepycat/b/i/f/b;

    iget-object v8, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-direct {v7, v8, v5, v6}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1064
    invoke-static {v7, v4}, Lcom/sleepycat/b/i/c/p;->b(Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/c/i;)Lcom/sleepycat/b/i/c/t;

    move-result-object v8

    .line 1065
    invoke-virtual {v7}, Lcom/sleepycat/b/n/z;->m()J

    .line 40343
    iget v7, v8, Lcom/sleepycat/b/i/c/t;->e:I

    .line 1069
    new-instance v8, Lcom/sleepycat/b/m;

    invoke-direct {v8}, Lcom/sleepycat/b/m;-><init>()V

    .line 1070
    new-instance v9, Lcom/sleepycat/b/m;

    invoke-direct {v9}, Lcom/sleepycat/b/m;-><init>()V

    .line 1076
    add-int/lit8 v10, v7, 0x1

    .line 1077
    invoke-virtual {v6, v10}, Lcom/sleepycat/b/i/c/b/x;->a(I)V

    .line 1079
    new-instance v11, Lcom/sleepycat/b/i/c/am;

    invoke-direct {v11, v3, v0, v1}, Lcom/sleepycat/b/i/c/am;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1080
    new-instance v0, Lcom/sleepycat/b/i/c/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v0, p1, v12, v13}, Lcom/sleepycat/b/i/c/u;-><init>(Lcom/sleepycat/b/p/au;J)V

    .line 41245
    iput-object v0, v11, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 1084
    new-instance v0, Lcom/sleepycat/b/i/f/b;

    iget-object v1, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-direct {v0, v1, v5, v6}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V

    .line 1086
    new-instance v1, Lcom/sleepycat/b/g;

    invoke-direct {v1}, Lcom/sleepycat/b/g;-><init>()V

    .line 42114
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sleepycat/b/g;->e:Z

    .line 1088
    invoke-static {v4, v0, v1}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;

    move-result-object v1

    .line 1090
    :cond_0
    :goto_2
    sget-object v3, Lcom/sleepycat/b/ao;->a:Lcom/sleepycat/b/ao;

    invoke-virtual {v1, v8, v9, v3}, Lcom/sleepycat/b/e;->c(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-ne v3, v4, :cond_4

    .line 1092
    invoke-static {v8}, Lcom/sleepycat/a/a/i;->a(Lcom/sleepycat/b/m;)Ljava/lang/String;

    move-result-object v3

    .line 1094
    const-string v4, "$$GROUP_KEY$$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1095
    new-instance v3, Lcom/sleepycat/b/i/c/q;

    invoke-direct {v3}, Lcom/sleepycat/b/i/c/q;-><init>()V

    .line 1096
    new-instance v4, Lcom/sleepycat/b/i/c/t;

    invoke-direct {v4, v2}, Lcom/sleepycat/b/i/c/t;-><init>(Ljava/lang/String;)V

    .line 42353
    iput v7, v4, Lcom/sleepycat/b/i/c/t;->e:I

    .line 1098
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 1099
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/b/i/c/q;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 1100
    invoke-virtual {v1, v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v3

    .line 1101
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    invoke-virtual {v4, v3}, Lcom/sleepycat/b/av;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37075
    :cond_1
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 37085
    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1106
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Removing node: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/sleepycat/b/p/w;->c(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->b()Lcom/sleepycat/b/av;

    goto :goto_2

    .line 1110
    :cond_4
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 1111
    invoke-virtual {v0}, Lcom/sleepycat/b/n/z;->m()J

    .line 1114
    invoke-virtual {p0, v11}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/i/c/am;)V

    .line 43201
    iget-object v0, v11, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 44099
    iget v0, v0, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 1115
    if-eq v10, v0, :cond_5

    .line 1116
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected nodeid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44201
    iget-object v2, v11, Lcom/sleepycat/b/i/c/am;->a:Lcom/sleepycat/b/i/c/b/x;

    .line 45099
    iget v2, v2, Lcom/sleepycat/b/i/c/b/x;->b:I

    .line 1116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_5
    return-void
.end method

.method public final a(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/p/au;)Z
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 620
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    invoke-virtual {v3}, Lcom/sleepycat/b/i/c/aj;->ag()Lcom/sleepycat/b/c/i;
    :try_end_0
    .catch Lcom/sleepycat/b/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 626
    if-nez v4, :cond_0

    .line 697
    :goto_0
    return v0

    .line 631
    :cond_0
    new-instance v0, Lcom/sleepycat/b/m;

    invoke-direct {v0}, Lcom/sleepycat/b/m;-><init>()V

    .line 32087
    iget-object v3, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 632
    invoke-static {v3, v0}, Lcom/sleepycat/a/a/i;->a(Ljava/lang/String;Lcom/sleepycat/b/m;)V

    .line 633
    new-instance v5, Lcom/sleepycat/b/m;

    invoke-direct {v5}, Lcom/sleepycat/b/m;-><init>()V

    .line 634
    new-instance v6, Lcom/sleepycat/b/i/c/r;

    invoke-direct {v6}, Lcom/sleepycat/b/i/c/r;-><init>()V

    .line 635
    new-instance v7, Lcom/sleepycat/b/i/c/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, p2, v8, v9}, Lcom/sleepycat/b/i/c/u;-><init>(Lcom/sleepycat/b/p/au;J)V

    .line 642
    :try_start_1
    new-instance v3, Lcom/sleepycat/b/i/f/b;

    iget-object v8, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    sget-object v9, Lcom/sleepycat/b/i/c/p;->k:Lcom/sleepycat/b/br;

    iget-object v10, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 32244
    iget-object v10, v10, Lcom/sleepycat/b/i/c/aj;->ao:Lcom/sleepycat/b/i/c/b/x;

    .line 642
    invoke-direct {v3, v8, v9, v10}, Lcom/sleepycat/b/i/f/b;-><init>(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 645
    :try_start_2
    sget-object v8, Lcom/sleepycat/b/g;->a:Lcom/sleepycat/b/g;

    invoke-static {v4, v3, v8}, Lcom/sleepycat/b/i/c/p;->a(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 647
    :try_start_3
    sget-object v4, Lcom/sleepycat/b/ao;->d:Lcom/sleepycat/b/ao;

    invoke-virtual {v2, v0, v5, v4}, Lcom/sleepycat/b/e;->e(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 649
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v4, :cond_3

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not present in group db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 676
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_1
    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {v1}, Lcom/sleepycat/b/e;->close()V

    .line 680
    :cond_1
    if-eqz v2, :cond_2

    .line 684
    invoke-virtual {v2}, Lcom/sleepycat/b/n/z;->n()V

    .line 676
    :cond_2
    throw v0

    .line 655
    :cond_3
    :try_start_4
    invoke-virtual {v6, v5}, Lcom/sleepycat/b/i/c/r;->entryToObject(Lcom/sleepycat/b/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/c/am;

    .line 33241
    iget-object v4, v0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 33825
    iget-object v4, v4, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 657
    invoke-virtual {v4, p2}, Lcom/sleepycat/b/p/au;->a(Lcom/sleepycat/b/p/au;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 676
    if-eqz v2, :cond_4

    .line 677
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 680
    :cond_4
    if-eqz v3, :cond_5

    .line 682
    sget-object v0, Lcom/sleepycat/b/i/c/p;->j:Lcom/sleepycat/b/u;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/u;)J

    .line 690
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 34887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 691
    if-eqz v0, :cond_6

    .line 34992
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 35087
    iget-object v3, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 34992
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/t;->a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v2

    .line 34993
    if-eqz v2, :cond_6

    .line 34998
    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LocalCBVLSN for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 35241
    iget-object v6, v2, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 35825
    iget-object v6, v6, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 34998
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36245
    iput-object v7, v2, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 35003
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/c/b/o;->a(Lcom/sleepycat/b/i/c/t;)V

    :cond_6
    move v0, v1

    .line 659
    goto/16 :goto_0

    .line 34245
    :cond_7
    :try_start_5
    iput-object v7, v0, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 663
    invoke-virtual {v6, v0, v5}, Lcom/sleepycat/b/i/c/r;->objectToEntry(Ljava/lang/Object;Lcom/sleepycat/b/m;)V

    .line 664
    invoke-virtual {v2, v5}, Lcom/sleepycat/b/e;->a(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;

    move-result-object v0

    .line 665
    sget-object v4, Lcom/sleepycat/b/av;->a:Lcom/sleepycat/b/av;

    if-eq v0, v4, :cond_8

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Node ID: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " stored localCBVLSN could not be updated. Status: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 671
    :cond_8
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->f:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Local CBVLSN updated to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for node "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 676
    if-eqz v2, :cond_9

    .line 677
    invoke-virtual {v2}, Lcom/sleepycat/b/e;->close()V

    .line 680
    :cond_9
    if-eqz v3, :cond_a

    .line 682
    sget-object v0, Lcom/sleepycat/b/i/c/p;->j:Lcom/sleepycat/b/u;

    invoke-virtual {v3, v0}, Lcom/sleepycat/b/n/z;->a(Lcom/sleepycat/b/u;)J

    .line 690
    :cond_a
    iget-object v0, p0, Lcom/sleepycat/b/i/c/p;->a:Lcom/sleepycat/b/i/c/aj;

    .line 34887
    iget-object v0, v0, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 691
    if-eqz v0, :cond_b

    .line 34992
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 35087
    iget-object v3, p1, Lcom/sleepycat/b/i/c/b/x;->a:Ljava/lang/String;

    .line 34992
    invoke-virtual {v2, v3}, Lcom/sleepycat/b/i/c/t;->a(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;

    move-result-object v2

    .line 34993
    if-eqz v2, :cond_b

    .line 34998
    iget-object v3, v0, Lcom/sleepycat/b/i/c/b/aa;->x:Ljava/util/logging/Logger;

    iget-object v4, v0, Lcom/sleepycat/b/i/c/b/aa;->i:Lcom/sleepycat/b/i/c/aj;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "LocalCBVLSN for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " updated to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 35241
    iget-object v6, v2, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 35825
    iget-object v6, v6, Lcom/sleepycat/b/i/c/u;->a:Lcom/sleepycat/b/p/au;

    .line 34998
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/b/p/w;->d(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 36245
    iput-object v7, v2, Lcom/sleepycat/b/i/c/am;->g:Lcom/sleepycat/b/i/c/u;

    .line 35003
    iget-object v2, v0, Lcom/sleepycat/b/i/c/b/aa;->r:Lcom/sleepycat/b/i/c/b/o;

    iget-object v0, v0, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    invoke-virtual {v2, v0}, Lcom/sleepycat/b/i/c/b/o;->a(Lcom/sleepycat/b/i/c/t;)V

    :cond_b
    move v0, v1

    .line 697
    goto/16 :goto_0

    .line 676
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1

    .line 623
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
