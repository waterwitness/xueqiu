.class public Lcom/sleepycat/b/i/x;
.super Ljava/lang/Object;
.source "ReplicationMutableConfig.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic d:Z


# instance fields
.field protected b:Ljava/util/Properties;

.field public transient c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sleepycat/b/i/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/x;->d:Z

    .line 318
    sget-object v0, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    .line 319
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/x;->c:Z

    .line 336
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    .line 337
    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Z)V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/b/i/x;->c:Z

    .line 346
    iput-boolean p2, p0, Lcom/sleepycat/b/i/x;->c:Z

    .line 347
    invoke-direct {p0, p1}, Lcom/sleepycat/b/i/x;->a(Ljava/util/Properties;)V

    .line 349
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    .line 350
    iget-object v0, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 351
    return-void
.end method

.method private a(Ljava/util/Properties;)V
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 557
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 560
    sget-object v1, Lcom/sleepycat/b/b/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/b/b/b;

    .line 562
    if-nez v1, :cond_1

    .line 563
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a valid JE environment configuration"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_1
    iget-boolean v3, p0, Lcom/sleepycat/b/i/x;->c:Z

    if-eqz v3, :cond_0

    .line 568
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sleepycat/b/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    invoke-static {v0, p1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/x;

    .line 618
    iget-object v1, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Properties;

    iput-object v1, v0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    .line 619
    return-object v0
.end method

.method public final e()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sleepycat/b/i/x;->b:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
