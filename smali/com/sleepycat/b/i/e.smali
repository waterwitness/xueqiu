.class public Lcom/sleepycat/b/i/e;
.super Lcom/sleepycat/b/au;
.source "InsufficientAcksException.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:I

.field private final c:I

.field private final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/sleepycat/b/i/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/i/e;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/f/b;IILjava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transaction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1169
    iget-wide v2, p1, Lcom/sleepycat/b/n/q;->k:J

    .line 70
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  VLSN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2133
    iget-object v1, p1, Lcom/sleepycat/b/i/f/b;->a:Lcom/sleepycat/b/p/au;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", initiated at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%1tT. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2336
    iget-wide v4, p1, Lcom/sleepycat/b/i/f/b;->c:J

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Insufficient acks for policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2433
    iget-object v1, p1, Lcom/sleepycat/b/n/z;->D:Lcom/sleepycat/b/u;

    .line 3297
    iget-object v1, v1, Lcom/sleepycat/b/u;->g:Lcom/sleepycat/b/v;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Need replica acks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3322
    iget v1, p1, Lcom/sleepycat/b/i/f/b;->b:I

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Missing replica acks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms. FeederState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v6, v0, v7}, Lcom/sleepycat/b/au;-><init>(Lcom/sleepycat/b/n/q;ZLjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    sget-boolean v0, Lcom/sleepycat/b/i/e;->a:Z

    if-nez v0, :cond_0

    .line 4322
    iget v0, p1, Lcom/sleepycat/b/i/f/b;->b:I

    .line 81
    if-le p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 82
    :cond_0
    iput p2, p0, Lcom/sleepycat/b/i/e;->b:I

    .line 5322
    iget v0, p1, Lcom/sleepycat/b/i/f/b;->b:I

    .line 83
    iput v0, p0, Lcom/sleepycat/b/i/e;->c:I

    .line 84
    iput p3, p0, Lcom/sleepycat/b/i/e;->e:I

    .line 85
    iput-object p4, p0, Lcom/sleepycat/b/i/e;->f:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/b/i/e;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/au;-><init>(Ljava/lang/String;Lcom/sleepycat/b/au;)V

    .line 107
    iget v0, p2, Lcom/sleepycat/b/i/e;->b:I

    iput v0, p0, Lcom/sleepycat/b/i/e;->b:I

    .line 108
    iget v0, p2, Lcom/sleepycat/b/i/e;->c:I

    iput v0, p0, Lcom/sleepycat/b/i/e;->c:I

    .line 109
    iget v0, p2, Lcom/sleepycat/b/i/e;->e:I

    iput v0, p0, Lcom/sleepycat/b/i/e;->e:I

    .line 110
    iget-object v0, p2, Lcom/sleepycat/b/i/e;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/b/i/e;->f:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/sleepycat/b/au;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/sleepycat/b/i/e;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/b/i/e;-><init>(Ljava/lang/String;Lcom/sleepycat/b/i/e;)V

    return-object v0
.end method
