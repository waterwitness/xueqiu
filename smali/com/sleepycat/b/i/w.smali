.class public final Lcom/sleepycat/b/i/w;
.super Lcom/sleepycat/b/i/x;
.source "ReplicationConfig.java"

# interfaces
.implements Lcom/sleepycat/b/c/aw;


# static fields
.field public static final a:Lcom/sleepycat/b/i/w;


# instance fields
.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1018
    new-instance v0, Lcom/sleepycat/b/i/w;

    invoke-direct {v0}, Lcom/sleepycat/b/i/w;-><init>()V

    sput-object v0, Lcom/sleepycat/b/i/w;->a:Lcom/sleepycat/b/i/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1036
    invoke-direct {p0}, Lcom/sleepycat/b/i/x;-><init>()V

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/w;->e:Z

    .line 1037
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Z)V
    .locals 1

    .prologue
    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/i/x;-><init>(Ljava/util/Properties;Z)V

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/b/i/w;->e:Z

    .line 1088
    return-void
.end method

.method public static d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1601
    invoke-virtual {v2}, Lcom/sleepycat/b/i/w;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v2}, Lcom/sleepycat/b/i/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing group name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1605
    :cond_1
    invoke-direct {v2}, Lcom/sleepycat/b/i/w;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-direct {v2}, Lcom/sleepycat/b/i/w;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1606
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing node name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1609
    :cond_3
    invoke-direct {v2}, Lcom/sleepycat/b/i/w;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-direct {v2}, Lcom/sleepycat/b/i/w;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1610
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing node host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1612
    :cond_5
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1161
    const/4 v0, 0x0

    iget-object v0, v0, Lcom/sleepycat/b/i/w;->b:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->p:Lcom/sleepycat/b/b/b;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1244
    const/4 v0, 0x0

    iget-object v0, v0, Lcom/sleepycat/b/i/w;->b:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->o:Lcom/sleepycat/b/b/b;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/sleepycat/b/bc;
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/sleepycat/b/i/w;->b:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->m:Lcom/sleepycat/b/b/b;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    invoke-static {v0}, Lcom/sleepycat/b/i/h/q;->a(Ljava/lang/String;)Lcom/sleepycat/b/bc;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/sleepycat/b/i/w;->b:Ljava/util/Properties;

    sget-object v1, Lcom/sleepycat/b/i/c/an;->a:Lcom/sleepycat/b/b/b;

    invoke-static {v0, v1}, Lcom/sleepycat/b/c/m;->a(Ljava/util/Properties;Lcom/sleepycat/b/b/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/sleepycat/b/i/w;
    .locals 1

    .prologue
    .line 1461
    :try_start_0
    invoke-super {p0}, Lcom/sleepycat/b/i/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/i/w;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sleepycat/b/i/w;->c()Lcom/sleepycat/b/i/w;

    move-result-object v0

    return-object v0
.end method
