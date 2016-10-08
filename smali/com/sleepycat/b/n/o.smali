.class public Lcom/sleepycat/b/n/o;
.super Ljava/lang/Object;
.source "LockType.java"


# static fields
.field public static final a:Lcom/sleepycat/b/n/o;

.field public static final b:Lcom/sleepycat/b/n/o;

.field public static final c:Lcom/sleepycat/b/n/o;

.field public static final d:Lcom/sleepycat/b/n/o;

.field public static final e:Lcom/sleepycat/b/n/o;

.field public static final f:Lcom/sleepycat/b/n/o;

.field public static final g:Lcom/sleepycat/b/n/o;

.field static final synthetic j:Z

.field private static k:[[Lcom/sleepycat/b/n/g;

.field private static l:[[Lcom/sleepycat/b/n/p;


# instance fields
.field public h:Z

.field i:Z

.field private m:I

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 15
    const-class v0, Lcom/sleepycat/b/n/o;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/n/o;->j:Z

    .line 21
    new-instance v0, Lcom/sleepycat/b/n/o;

    const-string v3, "READ"

    invoke-direct {v0, v2, v2, v3}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->a:Lcom/sleepycat/b/n/o;

    .line 23
    new-instance v0, Lcom/sleepycat/b/n/o;

    const-string v3, "WRITE"

    invoke-direct {v0, v1, v1, v3}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->b:Lcom/sleepycat/b/n/o;

    .line 25
    new-instance v0, Lcom/sleepycat/b/n/o;

    const-string v3, "RANGE_READ"

    invoke-direct {v0, v5, v2, v3}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    .line 27
    new-instance v0, Lcom/sleepycat/b/n/o;

    const-string v3, "RANGE_WRITE"

    invoke-direct {v0, v6, v1, v3}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    .line 29
    new-instance v0, Lcom/sleepycat/b/n/o;

    const-string v3, "RANGE_INSERT"

    invoke-direct {v0, v7, v2, v3}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->e:Lcom/sleepycat/b/n/o;

    .line 36
    new-instance v0, Lcom/sleepycat/b/n/o;

    const/4 v3, 0x5

    const-string v4, "NONE"

    invoke-direct {v0, v3, v2, v4}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    .line 43
    new-instance v0, Lcom/sleepycat/b/n/o;

    const/4 v3, 0x6

    const-string v4, "RESTART"

    invoke-direct {v0, v3, v2, v4}, Lcom/sleepycat/b/n/o;-><init>(IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/n/o;->g:Lcom/sleepycat/b/n/o;

    .line 53
    sget-object v0, Lcom/sleepycat/b/n/o;->c:Lcom/sleepycat/b/n/o;

    .line 1169
    iput-boolean v1, v0, Lcom/sleepycat/b/n/o;->i:Z

    .line 54
    sget-object v0, Lcom/sleepycat/b/n/o;->d:Lcom/sleepycat/b/n/o;

    .line 2169
    iput-boolean v1, v0, Lcom/sleepycat/b/n/o;->i:Z

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [[Lcom/sleepycat/b/n/g;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/g;

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/g;

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v7

    aput-object v3, v0, v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/g;

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v7

    aput-object v3, v0, v5

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/g;

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/g;->b:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v7

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/g;

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/g;->c:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/g;->c:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/g;->a:Lcom/sleepycat/b/n/g;

    aput-object v4, v3, v7

    aput-object v3, v0, v7

    sput-object v0, Lcom/sleepycat/b/n/o;->k:[[Lcom/sleepycat/b/n/g;

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [[Lcom/sleepycat/b/n/p;

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/p;

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/p;->c:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/p;->d:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/p;->f:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v7

    aput-object v3, v0, v2

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/p;

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/p;->e:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/p;->e:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v7

    aput-object v3, v0, v1

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/p;

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/p;->f:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/p;->f:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v7

    aput-object v3, v0, v5

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/p;

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v2

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v1

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v5

    sget-object v4, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v6

    sget-object v4, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v7

    aput-object v3, v0, v6

    const/4 v3, 0x5

    new-array v3, v3, [Lcom/sleepycat/b/n/p;

    sget-object v4, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v4, v3, v2

    sget-object v2, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v2, v3, v1

    sget-object v1, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v1, v3, v5

    sget-object v1, Lcom/sleepycat/b/n/p;->a:Lcom/sleepycat/b/n/p;

    aput-object v1, v3, v6

    sget-object v1, Lcom/sleepycat/b/n/p;->b:Lcom/sleepycat/b/n/p;

    aput-object v1, v3, v7

    aput-object v3, v0, v7

    sput-object v0, Lcom/sleepycat/b/n/o;->l:[[Lcom/sleepycat/b/n/p;

    return-void

    :cond_0
    move v0, v2

    .line 15
    goto/16 :goto_0
.end method

.method private constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/sleepycat/b/n/o;->m:I

    .line 151
    iput-boolean p2, p0, Lcom/sleepycat/b/n/o;->h:Z

    .line 152
    iput-object p3, p0, Lcom/sleepycat/b/n/o;->n:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method final a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/g;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/sleepycat/b/n/o;->k:[[Lcom/sleepycat/b/n/g;

    iget v1, p0, Lcom/sleepycat/b/n/o;->m:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/sleepycat/b/n/o;->m:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method final b(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/p;
    .locals 3

    .prologue
    .line 196
    sget-object v0, Lcom/sleepycat/b/n/o;->l:[[Lcom/sleepycat/b/n/p;

    iget v1, p0, Lcom/sleepycat/b/n/o;->m:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/sleepycat/b/n/o;->m:I

    aget-object v0, v0, v1

    .line 197
    sget-boolean v1, Lcom/sleepycat/b/n/o;->j:Z

    if-nez v1, :cond_0

    .line 1057
    iget-boolean v1, v0, Lcom/sleepycat/b/n/p;->i:Z

    .line 197
    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/b/n/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 198
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sleepycat/b/n/o;->n:Ljava/lang/String;

    return-object v0
.end method
