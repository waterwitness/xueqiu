.class public final Lcom/sleepycat/b/c/o;
.super Ljava/lang/Object;
.source "DbEnvState.java"


# static fields
.field public static final a:Lcom/sleepycat/b/c/o;

.field public static final b:Lcom/sleepycat/b/c/o;

.field public static final c:Lcom/sleepycat/b/c/o;

.field public static final d:Lcom/sleepycat/b/c/o;

.field public static final e:[Lcom/sleepycat/b/c/o;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/sleepycat/b/c/o;

    const-string v1, "initialized"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/o;->a:Lcom/sleepycat/b/c/o;

    .line 22
    new-instance v0, Lcom/sleepycat/b/c/o;

    const-string v1, "open"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/o;->b:Lcom/sleepycat/b/c/o;

    .line 23
    new-instance v0, Lcom/sleepycat/b/c/o;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/o;->c:Lcom/sleepycat/b/c/o;

    .line 24
    new-instance v0, Lcom/sleepycat/b/c/o;

    const-string v1, "invalid"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/c/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sleepycat/b/c/o;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/b/c/o;->a:Lcom/sleepycat/b/c/o;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sleepycat/b/c/o;->b:Lcom/sleepycat/b/c/o;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sleepycat/b/c/o;->d:Lcom/sleepycat/b/c/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/c/o;->e:[Lcom/sleepycat/b/c/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sleepycat/b/c/o;->f:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method final a([Lcom/sleepycat/b/c/o;Lcom/sleepycat/b/c/o;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 48
    move v0, v1

    .line 49
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 50
    aget-object v2, p1, v0

    if-ne p0, v2, :cond_1

    .line 51
    const/4 v1, 0x1

    .line 55
    :cond_0
    if-nez v1, :cond_2

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t go from environment state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sleepycat/b/c/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sleepycat/b/c/o;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sleepycat/b/c/o;->f:Ljava/lang/String;

    return-object v0
.end method
