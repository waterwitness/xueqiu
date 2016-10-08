.class public Lcom/sleepycat/b/c/m;
.super Ljava/lang/Object;
.source "DbConfigManager.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field public a:Ljava/util/Properties;

.field public final b:Lcom/sleepycat/b/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/sleepycat/b/c/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/c/m;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/z;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/sleepycat/b/c/m;->b:Lcom/sleepycat/b/z;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/c/m;->a:Ljava/util/Properties;

    .line 78
    :goto_0
    return-void

    .line 1276
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/b/ac;->j()Ljava/util/Properties;

    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/sleepycat/b/c/m;->a:Ljava/util/Properties;

    goto :goto_0
.end method

.method public static a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    .line 8090
    iget-object v0, p1, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 528
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    if-nez v0, :cond_0

    .line 8094
    iget-object v0, p1, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 532
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 495
    sget-object v0, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/b/b;

    .line 497
    if-nez v0, :cond_3

    .line 500
    invoke-static {p1}, Lcom/sleepycat/b/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    sget-object v1, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/b/b;

    .line 502
    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid BDBJE environment configuration"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_0
    const/4 v1, 0x1

    .line 508
    sget-boolean v2, Lcom/sleepycat/b/c/m;->c:Z

    if-nez v2, :cond_1

    .line 5110
    iget-boolean v2, v0, Lcom/sleepycat/b/b/b;->e:Z

    .line 508
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 515
    :goto_0
    if-eqz v0, :cond_4

    .line 6543
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6544
    if-nez v0, :cond_2

    .line 7094
    iget-object v0, v1, Lcom/sleepycat/b/b/b;->b:Ljava/lang/String;

    .line 518
    :cond_2
    :goto_1
    return-object v0

    .line 6110
    :cond_3
    iget-boolean v2, v0, Lcom/sleepycat/b/b/b;->e:Z

    .line 509
    if-eqz v2, :cond_5

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getMultiValueValues() to retrieve Multi-Value parameter values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_4
    invoke-static {p0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v3, v0

    move v0, v1

    move-object v1, v3

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/util/Properties;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 352
    const/4 v1, 0x0

    .line 354
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 355
    if-eqz p0, :cond_7

    .line 356
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p0

    .line 361
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 362
    invoke-virtual {v2, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v1

    .line 370
    :goto_1
    :try_start_1
    invoke-static {v2}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;)V

    .line 375
    invoke-virtual {v2}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 376
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2427
    sget-object v2, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/b/b;

    .line 2430
    if-nez v2, :cond_4

    .line 2432
    invoke-static {v1}, Lcom/sleepycat/b/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2433
    sget-object v4, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/b/b/b;

    .line 2434
    if-eqz v2, :cond_0

    .line 3110
    iget-boolean v4, v2, Lcom/sleepycat/b/b/b;->e:Z

    .line 2434
    if-nez v4, :cond_3

    .line 2436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid BDBJE environment parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 401
    :catch_0
    move-exception v0

    :cond_1
    return-void

    .line 359
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v3, "je.properties"

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    goto :goto_0

    .line 2440
    :cond_3
    const/4 v4, 0x1

    .line 2441
    :try_start_3
    sget-boolean v7, Lcom/sleepycat/b/c/m;->c:Z

    if-nez v7, :cond_5

    .line 4110
    iget-boolean v7, v2, Lcom/sleepycat/b/b/b;->e:Z

    .line 2441
    if-nez v7, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 396
    :catch_1
    move-exception v0

    move-object v1, v3

    .line 397
    :goto_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred when reading "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 400
    throw v2

    :cond_4
    move v4, v5

    .line 2473
    :cond_5
    if-eqz v4, :cond_6

    .line 4580
    :try_start_4
    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 2476
    :cond_6
    const/4 v1, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 396
    :catch_2
    move-exception v0

    goto :goto_3

    :cond_7
    move-object v3, v1

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Properties;)V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 277
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    sget-object v1, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/b/b;

    .line 283
    if-nez v1, :cond_1

    .line 285
    invoke-static {v0}, Lcom/sleepycat/b/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    sget-object v3, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/b/b;

    .line 288
    if-nez v1, :cond_1

    .line 299
    const-string v1, "je.rep."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a valid BDBJE environment configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_2
    return-void
.end method

.method public static a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;ZZ)V
    .locals 1

    .prologue
    .line 630
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;Ljava/lang/String;Z)V

    .line 631
    return-void
.end method

.method public static a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 560
    if-eqz p3, :cond_0

    .line 561
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/b/b;->a(Ljava/lang/String;)V

    .line 9090
    :cond_0
    iget-object v0, p1, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 563
    invoke-virtual {p0, v0, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 564
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 675
    if-nez p0, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 678
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Properties;Lcom/sleepycat/b/b/a;)Z
    .locals 2

    .prologue
    .line 615
    invoke-static {p0, p1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 616
    if-nez v0, :cond_0

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No value for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10090
    iget-object v1, p1, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 620
    :cond_0
    invoke-static {v0}, Lcom/sleepycat/b/c/m;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/b/c;)I
    .locals 3

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const/4 v0, 0x0

    .line 209
    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    invoke-static {v1}, Lcom/sleepycat/b/p/ac;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 221
    :cond_0
    return v0

    .line 212
    :catch_0
    move-exception v1

    .line 218
    sget-boolean v2, Lcom/sleepycat/b/c/m;->c:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/b/e;)I
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const/4 v0, 0x0

    .line 160
    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :cond_0
    return v0

    .line 163
    :catch_0
    move-exception v1

    .line 169
    sget-boolean v2, Lcom/sleepycat/b/c/m;->c:Z

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/b/f;)J
    .locals 4

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v2

    .line 185
    const-wide/16 v0, 0x0

    .line 186
    if-eqz v2, :cond_0

    .line 188
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 197
    :cond_0
    return-wide v0

    .line 189
    :catch_0
    move-exception v2

    .line 194
    sget-boolean v3, Lcom/sleepycat/b/c/m;->c:Z

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final declared-synchronized a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/b/c/m;->a:Ljava/util/Properties;

    .line 2090
    iget-object v1, p1, Lcom/sleepycat/b/b/b;->a:Ljava/lang/String;

    .line 95
    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/sleepycat/b/b/a;)Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/sleepycat/b/c/m;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b(Lcom/sleepycat/b/b/c;)J
    .locals 4

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v2

    .line 232
    const-wide/16 v0, 0x0

    .line 233
    if-eqz v2, :cond_0

    .line 235
    :try_start_0
    invoke-static {v2}, Lcom/sleepycat/b/p/ac;->b(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 245
    :cond_0
    return-wide v0

    .line 236
    :catch_0
    move-exception v2

    .line 242
    sget-boolean v3, Lcom/sleepycat/b/c/m;->c:Z

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
